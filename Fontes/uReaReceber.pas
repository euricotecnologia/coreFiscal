unit uReaReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, frxClass, frxExportPDF, frxDBSet, uniButton,
  uniBitBtn, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniCheckBox, uniDateTimePicker, uniLabel,
  uniGUIBaseClasses, uniRadioGroup, uniPanel, frxExportBaseDialog;

type
  TReaReceber = class(TUniForm)
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
    frxDB: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    frxAgrupado: TfrxReport;
    dsReceberCab: TDataSource;
    UniPanel1: TUniPanel;
    UniLabel15: TUniLabel;
    dsClientes: TDataSource;
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

function ReaReceber: TReaReceber;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uPDF;

function ReaReceber: TReaReceber;
begin
     Result := TReaReceber(UniMainModule.GetFormInstance(TReaReceber));
end;

procedure TReaReceber.UniButton2Click(Sender: TObject);
begin
     with UniMainModule do
     begin
          qReceberCab.Close;
          qReceberCab.SQL.Clear;
          qReceberCab.SQL.Add('Select rc.*, c.nomefantasia,  '+
          ' c.razaosocial from ReceberCab rc                 '+
          ' left join clientes c on (c.idcliente = rc.cliente and '+
          ' rc.IDemitente = C.idemitente )                   '+
          ' WHERE rc.IDemitente = :E ');

          if cCliente.Checked = false then
             qReceberCab.sql.Add(' AND rc.cliente = :cliente ');

          if cEmissao.Checked = false then
             qReceberCab.sql.Add(' AND ( rc.data between :dataIni and :dataFim) ');

          if cVencimento.Checked = false then
             qReceberCab.sql.Add(' AND ( rc.dataVcto between :dataIni and :dataFim) ');

          qReceberCab.sql.Add(' ORDER BY RC.ID ');

          qReceberCab.ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;

          if cCliente.Checked = false then
          begin
              qReceberCab.ParamByName('cliente').asInteger := eCliente.KeyValue;
              frxAgrupado.Variables['Cliente'] := QuotedStr(eCliente.Text)
          end
          else
              frxAgrupado.variables['Cliente'] := QuotedStr('Geral');

          if cEmissao.Checked = false then
          begin
               qReceberCab.ParamByName('dataIni').AsDate := eInicio.DateTime;
               qReceberCab.ParamByName('dataFim').AsDate := eFinal.DateTime;
               frxAgrupado.Variables['PeriodoEmissao'] := QuotedStr(eInicio.Text+' a '+eFinal.Text);
          end
          else
               frxAgrupado.Variables['PeriodoEmissao'] := QuotedStr('Geral');

          if cVencimento.Checked = false then
          begin
               qReceberCab.ParamByName('dataIni').AsDate := eInicio2.DateTime;
               qReceberCab.ParamByName('dataFim').AsDate := eFinal2.DateTime;
               frxAgrupado.Variables['PeriodoVencimento'] := QuotedStr(eInicio2.Text+' a '+eFinal2.Text);
          end
          else
               frxAgrupado.Variables['PeriodoVencimento'] := QuotedStr('Geral');

          qReceberCab.open;

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

procedure TReaReceber.UniButton3Click(Sender: TObject);
begin
     close;
end;

procedure TReaReceber.UniFormShow(Sender: TObject);
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
