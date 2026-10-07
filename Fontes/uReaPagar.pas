unit uReaPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, frxClass, frxExportPDF, frxDBSet,
  uniPanel, uniButton, uniBitBtn, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniCheckBox, uniDateTimePicker, uniLabel,
  uniGUIBaseClasses, uniRadioGroup, frxExportBaseDialog;

type
  TReApagar = class(TUniForm)
    UniRadioGroup3: TUniRadioGroup;
    UniLabel3: TUniLabel;
    eInicio: TUniDateTimePicker;
    UniLabel4: TUniLabel;
    eFinal: TUniDateTimePicker;
    UniRadioGroup1: TUniRadioGroup;
    UniLabel1: TUniLabel;
    eInicio2: TUniDateTimePicker;
    UniLabel2: TUniLabel;
    eFinal2: TUniDateTimePicker;
    cEmissao: TUniCheckBox;
    cVencimento: TUniCheckBox;
    UniRadioGroup4: TUniRadioGroup;
    UniLabel5: TUniLabel;
    eCliente: TUniDBLookupComboBox;
    cCliente: TUniCheckBox;
    UniPanel1: TUniPanel;
    UniLabel15: TUniLabel;
    frxPDF: TfrxPDFExport;
    frxAgrupado: TfrxReport;
    dsPagarCab: TDataSource;
    dsClientes: TDataSource;
    frxDB: TfrxDBDataset;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ReApagar: TReApagar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uPDF;

function ReApagar: TReApagar;
begin
  Result := TReApagar(UniMainModule.GetFormInstance(TReApagar));
end;

procedure TReApagar.UniButton2Click(Sender: TObject);
begin
     with UniMainModule do
     begin
          qPagarCab.Close;
          qPagarCab.SQL.Clear;
          qPagarCab.SQL.Add('Select rc.*, c.nomefantasia,  '+
          ' c.razaosocial from PagarCab rc                 '+
          ' left join clientes c on (c.idcliente = rc.Fornecedor and '+
          ' rc.IDemitente = C.idemitente )                   '+
          ' WHERE rc.IDemitente = :E ');

          if cCliente.Checked = false then
             qPagarCab.sql.Add(' AND rc.Fornecedor = :cliente ');

          if cEmissao.Checked = false then
             qPagarCab.sql.Add(' AND ( rc.data between :dataIni and :dataFim) ');

          if cVencimento.Checked = false then
             qPagarCab.sql.Add(' AND ( rc.dataVcto between :dataIni and :dataFim) ');

          qPagarCab.sql.Add(' ORDER BY RC.ID ');

          qPagarCab.ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;

          if cCliente.Checked = false then
          begin
              qPagarCab.ParamByName('cliente').asInteger := eCliente.KeyValue;
              frxAgrupado.Variables['Cliente'] := QuotedStr(eCliente.Text)
          end
          else
              frxAgrupado.variables['Cliente'] := QuotedStr('Geral');

          if cEmissao.Checked = false then
          begin
               qPagarCab.ParamByName('dataIni').AsDate := eInicio.DateTime;
               qPagarCab.ParamByName('dataFim').AsDate := eFinal.DateTime;
               frxAgrupado.Variables['PeriodoEmissao'] := QuotedStr(eInicio.Text+' a '+eFinal.Text);
          end
          else
               frxAgrupado.Variables['PeriodoEmissao'] := QuotedStr('Geral');

          if cVencimento.Checked = false then
          begin
               qPagarCab.ParamByName('dataIni').AsDate := eInicio2.DateTime;
               qPagarCab.ParamByName('dataFim').AsDate := eFinal2.DateTime;
               frxAgrupado.Variables['PeriodoVencimento'] := QuotedStr(eInicio2.Text+' a '+eFinal2.Text);
          end
          else
               frxAgrupado.Variables['PeriodoVencimento'] := QuotedStr('Geral');

          qPagarCab.open;

          xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
          unimainModule.NomePDF  := xDataRel + '.PDF';

          frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

          frxAgrupado.PrepareReport(True);

          frxPDF.ShowDialog:=false;
          frxAgrupado.Export(frxPDF);
     end;

    fPDF.Caption          := unimainModule.NomePDF;
    fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
    fPDF.Show();
end;

procedure TReApagar.UniButton3Click(Sender: TObject);
begin
     close;
end;

procedure TReApagar.UniFormShow(Sender: TObject);
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
