unit uContasReceberLancar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniEdit, uniDBEdit,
  uniDateTimePicker, uniDBDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniBasicGrid, uniDBGrid, uniButton,
  Data.DB, uniLabel, uniPanel, uniBitBtn;

type
  TfContasReceberLancar = class(TUniForm)
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
    dsReceberCab: TDataSource;
    UniPanel1: TUniPanel;
    UniLabel15: TUniLabel;
    bGerarParcelas: TUniBitBtn;
    btnCancela: TUniBitBtn;
    procedure UniFormShow(Sender: TObject);
    procedure bGerarParcelasClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
  private
    codigo, fatura : integer;

    procedure pesquisar;
  public
    { Public declarations }
  end;

function fContasReceberLancar: TfContasReceberLancar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uClsBase;

function fContasReceberLancar: TfContasReceberLancar;
begin
  Result := TfContasReceberLancar(UniMainModule.GetFormInstance(TfContasReceberLancar));
end;

procedure TfContasReceberLancar.bGerarParcelasClick(Sender: TObject);
var  lbase: TBase;
     parcelas, cont : integer;
     Vencimento : TDateTime;
     valorParcela : Real;
begin
     try
         if eCliente.KeyValue = null then
         begin
              Showmessage('Informe o Cliente para continuar!');
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
               fatura       := lbase.ultimoCampo('RECEBERCAB', 'FATURA','IDemitente',UniMainModule.Banco);

               while cont <= parcelas do
               begin

                      ExecSQL('insert into RECEBERCAB                    '+
                      ' ( ID,IDEMITENTE,CODIGO,FATURA,DATA,DATAVCTO,     '+
                      ' VALOR,SALDO,OBS,PARCELA, CLIENTE ) '+
                      ' values                                           '+
                      '( :ID,:IDEMITENTE,:CODIGO,:FATURA,:DATA,:DATAVCTO,'+
                      ' :VALOR,:SALDO,:OBS,:PARCELA,:CLIENTE)',
                      [lbase.pegaseg('RECEBERCAB', 'ID', UniMainModule.Banco),
                       UniMainModule.CodigoEmitente.ToInteger,
                       lbase.ultimoCampo('RECEBERCAB', 'CODIGO','IDemitente',UniMainModule.Banco),
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

procedure TfContasReceberLancar.btnCancelaClick(Sender: TObject);
begin
     close;
end;

procedure TfContasReceberLancar.pesquisar;
begin
     with UniMainModule do
     begin
          qReceberCab.Close;
          qReceberCab.SQL.Clear;
          qReceberCab.SQL.Add('Select rc.*, c.nomefantasia,c.razaosocial '+
          ' from ReceberCab rc                                           '+
          ' left join clientes c on (c.idcliente = rc.cliente and        '+
          ' rc.IDemitente = C.idemitente )                   '+
          ' WHERE rc.IDemitente = :E and rc.fatura = :f ORDER BY RC.ID ');

          qReceberCab.ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          qReceberCab.ParamByName('f').AsInteger := fatura;
          qReceberCab.open;

          qReceberCor.Close;
     end;
end;

procedure TfContasReceberLancar.UniFormShow(Sender: TObject);
begin
     UniMainModule.qReceberCab.Close;

     with UniMainModule.qClientes do
     begin
          close;
          sql.Clear;
          sql.Add(' select tipo, REGIMECLIENTE,IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,'+
          'NOMEFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO,NRO,');
          sql.Add(' COMPLEMENTO,BAIRRO,CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,'+
          'CONSUMIDORFINAL,IDEMITENTE,email,emailautomatico,dataNascimento');
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
