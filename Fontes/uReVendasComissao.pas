unit uReVendasComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxExportPDF, frxDBSet,
  uniButton, uniBitBtn, uniDateTimePicker, uniCheckBox,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniLabel,
  uniGUIBaseClasses, uniRadioGroup, frxExportBaseDialog;

type
  TreVendasComissao = class(TUniForm)
    UniRadioGroup4: TUniRadioGroup;
    UniLabel1: TUniLabel;
    eVendedor: TUniDBLookupComboBox;
    cVendedor: TUniCheckBox;
    UniRadioGroup3: TUniRadioGroup;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    eInicio: TUniDateTimePicker;
    eFinal: TUniDateTimePicker;
    frxVisualizar: TfrxReport;
    frxDB: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    dsVisualizar: TDataSource;
    qNotasCab: TFDQuery;
    qNotasCabNOME: TStringField;
    qNotasCabCOMISSAO: TCurrencyField;
    qNotasCabID: TIntegerField;
    qNotasCabDTEMISSAO: TDateField;
    qNotasCabCPF_CONSUMIDOR: TStringField;
    qNotasCabNOME_CONSUMIDOR: TStringField;
    qNotasCabVALOR_DESCONTO: TBCDField;
    qNotasCabVALOR_ACRESCIMO: TBCDField;
    qNotasCabTOTAL_PRODUTOS: TBCDField;
    qNotasCabTOTAL_NOTA: TBCDField;
    qNotasCabQUANT: TBCDField;
    qNotasCabNUMERO: TStringField;
    qVendedor: TFDQuery;
    qVendedorCODIGO: TIntegerField;
    qVendedorID: TIntegerField;
    qVendedorNOME: TStringField;
    dsVendedores: TDataSource;
    tVendedores: TFDTransaction;
    qNotasCabVALORCOMISSAO: TFMTBCDField;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function reVendasComissao: TreVendasComissao;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uPDF;

function reVendasComissao: TreVendasComissao;
begin
  Result := TreVendasComissao(UniMainModule.GetFormInstance(TreVendasComissao));
end;

procedure TreVendasComissao.UniButton1Click(Sender: TObject);
var
  xDataRel : String;
begin
      WITH qNotasCab do
      begin
          close;
          sql.Clear;
          sql.Add('select ((vendedores.comissao * NOTAS_CAB.TOTAL_NOTA) / 100) as valorComissao,'+
          ' vendedores.nome, vendedores.comissao, NOTAS_CAB.ID,NOTAS_CAB.DTEMISSAO, '+
          ' NOTAS_CAB.CPF_CONSUMIDOR, NOTAS_CAB.NOME_CONSUMIDOR,NOTAS_CAB.VALOR_DESCONTO,'+
          ' NOTAS_CAB.VALOR_ACRESCIMO, NOTAS_CAB.TOTAL_PRODUTOS,NOTAS_CAB.TOTAL_NOTA, '+
          ' NOTAS_CAB.QUANT,NOTAS_CAB.NUMERO from NOTAS_CAB '+
          ' LEFT OUTER JOIN vendedores ON (NOTAS_CAB.vendedor = vendedores.id AND '+
          ' NOTAS_CAB.COD_EMITENTE = vendedores.idemitente)   '+
          ' WHERE NOTAS_CAB.COD_EMITENTE = :e                 '+
          ' AND NOTAS_CAB.DTEMISSAO >= :vIni and NOTAS_CAB.DTEMISSAO <= :vFim ');

          if cVendedor.Checked = false then
             sql.Add(' AND NOTAS_CAB.vendedor = '+QuotedStr(eVendedor.KeyValue));

          sql.Add(' ORDER BY NOTAS_CAB.ID ');

          ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          ParamByName('vIni').AsDate := eInicio.DateTime;
          ParamByName('vFim').AsDate := eFinal.DateTime;

          open;
      end;

      if eVendedor.Text <> '' then
          frxVisualizar.Variables['Cliente'] := QuotedStr(eVendedor.Text)
      else
          frxVisualizar.variables['Cliente'] := QuotedStr('Geral');

      frxVisualizar.Variables['Periodo'] := QuotedStr(eInicio.Text+' a '+eFinal.Text);

      xDataRel        := FormatDateTime('yyyymmddhhmmsszzz', Now);
      unimainModule.NomePDF         := xDataRel + '.PDF';

      frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

      frxVisualizar.PrepareReport(True);

      frxPDF.ShowDialog:=false;
      frxVisualizar.Export(frxPDF);

      fPDF.Caption          := unimainModule.NomePDF;
      fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
      fPDF.Show();
end;

procedure TreVendasComissao.UniButton2Click(Sender: TObject);
begin
     close;
end;

procedure TreVendasComissao.UniFormShow(Sender: TObject);
begin
     eInicio.DateTime := Date;
     eFinal.DateTime  := date;

     with qVendedor do
     begin
          close;
          sql.Clear;
          sql.Add('select * from VENDEDORES where IDEMITENTE = :IDEMITENTE ');
          SQL.Add(' order By nome ');
          ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
          Open;
     end;
end;

end.
