unit uBuscarNfeMdfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIForm, uniBasicGrid, uniDBGrid, uniRadioButton, uniButton,
  uniBitBtn, uniMultiItem, uniComboBox, uniEdit, uniDateTimePicker,

  dateUtils,

  uniGroupBox, uniGUIBaseClasses, uniPanel, Data.DB;

type
  TfBuscarNfeMdfe = class(TUniForm)
    UniPanel2: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    eInicio: TUniDateTimePicker;
    eFinal: TUniDateTimePicker;
    UniGroupBox2: TUniGroupBox;
    eNota: TUniEdit;
    UniGroupBox3: TUniGroupBox;
    rFantasia: TUniRadioButton;
    rRazao: TUniRadioButton;
    rGeral: TUniRadioButton;
    eCliente: TUniEdit;
    DBGrid2: TUniDBGrid;
    dsNotas: TDataSource;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    procedure btnNovoProdClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fBuscarNfeMdfe: TfBuscarNfeMdfe;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fBuscarNfeMdfe: TfBuscarNfeMdfe;
begin
  Result := TfBuscarNfeMdfe(UniMainModule.GetFormInstance(TfBuscarNfeMdfe));
end;

procedure TfBuscarNfeMdfe.btnNovoProdClick(Sender: TObject);
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
          sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''A''  ');
          sql.Add(' AND NOTAS_CAB.MODELO = 55 ');

          if rGeral.Checked = false then
          begin
               if rFantasia.Checked = true then
                  sql.Add(' AND CLIENTES.NOMEFANTASIA like :cliente ')
               else if rRazao.Checked = true then
                  sql.Add(' AND CLIENTES.RAZAOSOCIAL like  :cliente ')
          end;

          sql.Add(' ORDER BY NOTAS_CAB.ID ');
          ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          ParamByName('vIni').AsDate := eInicio.DateTime;
          ParamByName('vFim').AsDate := eFinal.DateTime;
          if rGeral.Checked = false then
             ParamByName('cliente').asString := '%'+eCliente.Text+'%';
          open;
      end;
end;

procedure TfBuscarNfeMdfe.UniBitBtn2Click(Sender: TObject);
begin
     close;
end;

procedure TfBuscarNfeMdfe.UniFormShow(Sender: TObject);
begin
     eInicio.DateTime := StartOfTheMonth(now) ;
     eFinal.DateTime  := EndOfTheMonth(now) ;
end;

end.
