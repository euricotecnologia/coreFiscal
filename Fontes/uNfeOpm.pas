unit uNfeOpm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniDateTimePicker, unimDatePicker, uniLabel, unimLabel, uniGUIBaseClasses,
  uniMultiItem, unimSelect, uniEdit, unimEdit, uniBasicGrid, uniDBGrid,
  unimDBListGrid, uniButton, unimButton, Data.DB, system.DateUtils, uniToolBar,
  unimToolbar;

type
  TfNfeOPm = class(TUnimForm)
    UnimContainerPanel7: TUnimContainerPanel;
    UnimContainerPanel8: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    eInicio: TUnimDatePicker;
    UnimDBListGrid1: TUnimDBListGrid;
    dsNotas: TDataSource;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimContainerPanel10: TUnimContainerPanel;
    UnimLabel4: TUnimLabel;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimContainerPanel4: TUnimContainerPanel;
    edNumero: TUnimNumberEdit;
    UnimToolBar1: TUnimToolBar;
    UnimButton2: TUnimButton;
    UnimContainerPanel6: TUnimContainerPanel;
    UnimLabel3: TUnimLabel;
    cbFiltro: TUnimSelect;
    UnimContainerPanel9: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    eFinal: TUnimDatePicker;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnimButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    NomePDF, NomeXML : String;
  end;

function fNfeOPm: TfNfeOPm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uPDF, uPdfM;

function fNfeOPm: TfNfeOPm;
begin
  Result := TfNfeOPm(UniMainModule.GetFormInstance(TfNfeOPm));
end;

procedure TfNfeOPm.UnimButton1Click(Sender: TObject);
var
  sCondicao                                   : String;
  totalNotas, Canceladas, Validas, naoEmitidas: Currency;
begin
    WITH UniMainModule.qNotasCab do
    begin
        close;
        sql.Clear;
        sql.Add('select CLIENTES.NOMEFANTASIA,CLIENTES.CPF_CNPJ,CLIENTES.RAZAOSOCIAL,CLIENTES.FONE,CLIENTES.ENDERECO,');
        sql.Add('CLIENTES.UF,CLIENTES.CEP,NOTAS_CAB.ID,NOTAS_CAB.SERIE,NOTAS_CAB.MODELO,NOTAS_CAB.COD_EMITENTE,');
        sql.Add('NOTAS_CAB.NATUREZA_OPER,NOTAS_CAB.CRT,NOTAS_CAB.ALIQ_SIMPLES,NOTAS_CAB.TIPONOTA');
        sql.Add(',NOTAS_CAB.DTEMISSAO,NOTAS_CAB.DTSAIDA,NOTAS_CAB.IDCLIENTE,NOTAS_CAB.CPF_CONSUMIDOR');
        sql.Add(',NOTAS_CAB.NOME_CONSUMIDOR,NOTAS_CAB.IDTRANSP,NOTAS_CAB.TIPOFRETE,NOTAS_CAB.PLACAVEICULO');
        sql.Add(',NOTAS_CAB.UFVEICULO,NOTAS_CAB.COD_ANTT,NOTAS_CAB.BASE_ICMS,NOTAS_CAB.VALOR_ICMS ');
        sql.Add(',NOTAS_CAB.BASE_ICMS_ST,NOTAS_CAB.VALOR_ICMS_ST,NOTAS_CAB.VALOR_FRETE,NOTAS_CAB.VALOR_DESCONTO ');
        sql.Add(',NOTAS_CAB.VALOR_ACRESCIMO,NOTAS_CAB.VALOR_SEGURO,NOTAS_CAB.VALOR_OUTRAS_DESP,NOTAS_CAB.VALOR_IPI ');
        sql.Add(',NOTAS_CAB.BASE_IPI,NOTAS_CAB.TOTAL_PRODUTOS,NOTAS_CAB.TOTAL_NOTA,NOTAS_CAB.QUANT  ');
        sql.Add(',NOTAS_CAB.ESPECIE,NOTAS_CAB.MARCA,NOTAS_CAB.NUMERO,NOTAS_CAB.PESOBRUTO,NOTAS_CAB.PESOLIQUIDO ');
        sql.Add(',NOTAS_CAB.STATUS_NOTA,NOTAS_CAB.DADOS_ADICIONAIS,NOTAS_CAB.FORMA_PGTO,NOTAS_CAB.XML_NOTA ');
        sql.Add(',NOTAS_CAB.CSTAT,NOTAS_CAB.XSTAT,NOTAS_CAB.AMBIENTE,NOTAS_CAB.TIPOEMISSAO,NOTAS_CAB.PROTOCOLO ');
        sql.Add(',NOTAS_CAB.DATA_HORARECIBO,NOTAS_CAB.CHAVE_ACESSO,NOTAS_CAB.FINALIDADE,NOTAS_CAB.XML_ORIGINAL ');
        sql.Add(',NOTAS_CAB.CHAVE_ACESSO_ORIGINAL,NOTAS_CAB.DATA_CANCELA,NOTAS_CAB.PROTOCOLO_CANC,'+
        ' NOTAS_CAB.DATA_INUTILIZA,NOTAS_CAB.PROTOCOLO_INUTILIZA,CFOPVENDA     ');
        sql.Add('from NOTAS_CAB  ');
        sql.Add('LEFT OUTER JOIN CLIENTES ON (NOTAS_CAB.IDCLIENTE=CLIENTES.IDCLIENTE AND NOTAS_CAB.COD_EMITENTE=CLIENTES.IDEMITENTE) ');
        sql.Add('WHERE NOTAS_CAB.COD_EMITENTE = :e');
        sql.Add('AND NOTAS_CAB.DTEMISSAO >= :vIni and NOTAS_CAB.DTEMISSAO <= :vFim ');
        ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
        if cbFiltro.ItemIndex = 1 then
          sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''V''  ');
        if cbFiltro.ItemIndex = 2 then
          sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''A''  '); //
        if cbFiltro.ItemIndex = 3 then
          sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''R''  '); //
        if cbFiltro.ItemIndex = 4 then
          sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''C''  '); // Camcelada
        if cbFiltro.ItemIndex = 5 then
          sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''P''  '); // Pendente
        if edNumero.Value > 0 then begin
          sql.Add('AND NOTAS_CAB.ID = :ID');
          ParamByName('ID').Value:= edNumero.Value;
        end;


//        if rEmissao.ItemIndex = 0 then
//          sql.Add(' AND NOTAS_CAB.TIPOEMISSAO = 1 ');
//        if rEmissao.ItemIndex = 1 then
//          sql.Add(' AND NOTAS_CAB.TIPOEMISSAO = 2 ');
        if unimainModule.Modelo = 65 then
          sql.Add(' AND NOTAS_CAB.MODELO = 65 ')
        else if unimainModule.Modelo = 55 then
          sql.Add(' AND NOTAS_CAB.MODELO = 55 ');
        ParamByName('vIni').AsDate := eInicio.Date;
        ParamByName('vFim').AsDate := eFinal.Date;
        open;
    end;
end;

procedure TfNfeOPm.UnimButton2Click(Sender: TObject);
begin
      if not UniMainModule.qNotasCab.Active then
        exit;

      if UniMainModule.qNotasCabXML_NOTA.AsString <> '' then
      begin
          UniMainModule.posVenda := 'N';
          uniMainModule.interna  := 'S';
          fPdfM.ShowModal;
      end
      else
          ShowMessage('Nota não emitida!');
end;

procedure TfNfeOPm.UnimFormClose(Sender: TObject; var Action: TCloseAction);
begin
     UniMainModule.qNotasCab.Close;
end;

procedure TfNfeOPm.UnimFormShow(Sender: TObject);
begin
    if unimainModule.modelo = 65 then
        Caption := 'Notas NFCe'
    else if unimainModule.modelo = 55 then
        caption := 'Notas NFe';

    eInicio.Date := StartOfTheMonth(now);
    eFinal.Date  := EndOfTheMonth(now);
end;

end.
