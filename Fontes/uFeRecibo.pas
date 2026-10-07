unit uFeRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniGUIBaseClasses, uniPanel, frxClass,
  frxExportPDF, frxDBSet, Data.DB, uniButton, uniBitBtn,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniCheckBox,
  uniDateTimePicker, uniRadioGroup, uniEdit, frxExportBaseDialog;

type
  TfeRecibo = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel15: TUniLabel;
    UniRadioGroup4: TUniRadioGroup;
    UniLabel5: TUniLabel;
    eCliente: TUniDBLookupComboBox;
    frxRecibo: TfrxReport;
    dsClientes: TDataSource;
    frxDB: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    UniRadioGroup1: TUniRadioGroup;
    eNumero: TUniEdit;
    eReferente: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel6: TUniLabel;
    eValor: TUniFormattedNumberEdit;
    frxEmpresa: TfrxDBDataset;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function feRecibo: TfeRecibo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uPDF;

function feRecibo: TfeRecibo;
begin
  Result := TfeRecibo(UniMainModule.GetFormInstance(TfeRecibo));
end;

procedure TfeRecibo.UniButton2Click(Sender: TObject);
var
  xDataRel : String;
begin
     frxRecibo.Variables['Numero']    := QuotedStr(eNumero.Text);
     frxRecibo.Variables['Valor']     := QuotedStr(eValor.Text);
     frxRecibo.Variables['Referente'] := QuotedStr(eReferente.Text);

     xDataRel              := FormatDateTime('yyyymmddhhmmsszzz', Now);
     unimainModule.NomePDF := xDataRel + '.PDF';

     frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

     frxRecibo.PrepareReport(True);

     frxPDF.ShowDialog := false;
     frxRecibo.Export(frxPDF);

     fPDF.Caption          := unimainModule.NomePDF;
     fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
     fPDF.Show();
end;

procedure TfeRecibo.UniButton3Click(Sender: TObject);
begin
     close;
end;

procedure TfeRecibo.UniFormShow(Sender: TObject);
begin
    with UniMainModule.qClientes do
    begin
        close;
        sql.Clear;
        sql.Add(' select tipo, REGIMECLIENTE,IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,NOMEFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO,NRO,');
        sql.Add(' COMPLEMENTO,BAIRRO,CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,CONSUMIDORFINAL,IDEMITENTE, '+
        ' email,emailautomatico,dataNascimento ');
        sql.Add(' from CLIENTES where IDEMITENTE=:IDEMITENTE ');
        SQL.Add(' order By NomeFantasia ');
        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
        Open;
        Offline;
    end;
end;

end.
