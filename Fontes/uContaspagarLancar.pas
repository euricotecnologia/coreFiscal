unit uContaspagarLancar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniPanel, Data.DB, uniEdit, uniComboBox,
  uniDateTimePicker, uniBasicGrid, uniDBGrid, uniButton,
  uniGUIBaseClasses, uniMultiItem, uniDBComboBox, uniDBLookupComboBox, uniBitBtn;

type
  TfContasPagarLancar = class(TUniForm)
    eCliente: TUniDBLookupComboBox;
    UniDBGrid1: TUniDBGrid;
    UniEdit1: TUniEdit;
    eData: TUniDateTimePicker;
    eDescricao: TUniEdit;
    eVencimento: TUniDateTimePicker;
    eParcelamento: TUniComboBox;
    eParcelas: TUniFormattedNumberEdit;
    eValor: TUniFormattedNumberEdit;
    dsClientes: TDataSource;
    dsPagarCab: TDataSource;
    UniPanel1: TUniPanel;
    UniLabel15: TUniLabel;
    btnCancela: TUniBitBtn;
    bGerarParcelas: TUniBitBtn;
    procedure bGerarParcelasClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
  private
    codigo, fatura : integer;

    procedure pesquisar;
  public
    { Public declarations }
  end;

function fContasPagarLancar: TfContasPagarLancar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uClsBase;

function fContasPagarLancar: TfContasPagarLancar;
begin
  Result := TfContasPagarLancar(UniMainModule.GetFormInstance(TfContasPagarLancar));
end;

procedure TfContasPagarLancar.bGerarParcelasClick(Sender: TObject);
var  lbase          : TBase;
     parcelas, cont : integer;
     Vencimento     : TDateTime;
     valorParcela   : Real;
begin
     try
         if eCliente.KeyValue = null then
         begin
              Showmessage('Informe o Fornecedor para continuar!');
              eCliente.SetFocus;
              exit;
         end;

         if eValor.Value = 0 then
         begin
              Showmessage('Informe o valor para continuar!');
              eValor.SetFocus;
              exit;
         end;

         if eparcelas.Value = 0 then
         begin
              Showmessage('Informe o numero de parcelas para continuar!');
              eParcelas.SetFocus;
              exit;
         end;

         with UniMainModule.Banco do
         begin
               StartTransaction;

               parcelas     := StrToInt(eParcelas.Text);
               cont         := 1;
               Vencimento   := eVencimento.DateTime;
               valorParcela := eValor.Value / eParcelas.Value;
               fatura       := lbase.ultimoCampo('PAGARCAB', 'FATURA','IDemitente',UniMainModule.Banco);

               while cont <= parcelas do
               begin
                      ExecSQL('insert into PAGARCAB                    '+
                      ' ( ID,IDEMITENTE,CODIGO,FATURA,DATA,DATAVCTO,     '+
                      ' VALOR,SALDO,OBS,PARCELA,FORNECEDOR ) '+
                      ' values                                           '+
                      '( :ID,:IDEMITENTE,:CODIGO,:FATURA,:DATA,:DATAVCTO,'+
                      ' :VALOR,:SALDO,:OBS,:PARCELA,:FORNECEDOR)',
                      [lbase.pegaseg('PAGARCAB', 'ID', UniMainModule.Banco),
                       UniMainModule.CodigoEmitente.ToInteger,
                       lbase.ultimoCampo('PAGARCAB', 'CODIGO','IDemitente',UniMainModule.Banco),
                       fatura,
                       eData.DateTime,    // Data
                       Vencimento,        // Vencimento
                       valorParcela,      // valor parcela
                       valorParcela,      // Saldo
                       eDescricao.Text,   // Obs
                       cont,              // Parcela
                       eCliente.KeyValue  // Cliente
                       ]);

                       inc(cont);
                       if eParcelamento.ItemIndex = 0 then
                          Vencimento := Vencimento + 7
                       else if eParcelamento.ItemIndex = 1 then
                          Vencimento := Vencimento + 15
                       else if eParcelamento.ItemIndex = 2 then
                          Vencimento := IncMonth( Vencimento, 1) // 30
                       else if eParcelamento.ItemIndex = 3 then
                          Vencimento := IncMonth( Vencimento, 3) // 90
                       else if eParcelamento.ItemIndex = 1 then
                          Vencimento := IncMonth( Vencimento, 6) // 180
                       else if eParcelamento.ItemIndex = 1 then
                          Vencimento := IncMonth( Vencimento, 12) // 365;
               end;

               Commit;

               Showmessage('Lançamento realizado com sucesso!');
               pesquisar;
         end;
     except on e:exception do
     begin
         ShowMessage('Erro: '+e.Message);
     end;
     end;
end;

procedure TfContasPagarLancar.btnCancelaClick(Sender: TObject);
begin
     close;
end;

procedure TfContasPagarLancar.pesquisar;
begin
     with UniMainModule do
     begin
          qPagarCab.Close;
          qPagarCab.SQL.Clear;
          qPagarCab.SQL.Add('Select pc.*, c.nomefantasia,c.razaosocial '+
          ' from PagarCab pc                                           '+
          ' left join clientes c on (c.idcliente = pc.fornecedor and        '+
          ' pc.IDemitente = C.idemitente )                   '+
          ' WHERE pc.IDemitente = :E and pc.fatura = :f ORDER BY PC.ID ');
          qPagarCab.ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          qPagarCab.ParamByName('f').AsInteger := fatura;
          qPagarCab.open;

          qPagarCor.Close;
     end;
end;

procedure TfContasPagarLancar.UniFormShow(Sender: TObject);
begin
     UniMainModule.qPagarCab.Close;

     with UniMainModule.qClientes do
     begin
          close;
          sql.Clear;
          sql.Add(' select tipo, REGIMECLIENTE,IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,'+
          'NOMEFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO,NRO,');
          sql.Add(' COMPLEMENTO,BAIRRO,CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,'+
          'CONSUMIDORFINAL,IDEMITENTE,email,emailautomatico,dataNascimento ');
          sql.Add(' from CLIENTES where IDEMITENTE=:IDEMITENTE ');
          SQL.Add(' order By NomeFantasia ');
          ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
          Open;
          Offline;
     end;

     eParcelamento.ItemIndex := 2;
     eVencimento.DateTime    := IncMonth(date,1);
     eDescricao.SetFocus;
end;

end.
