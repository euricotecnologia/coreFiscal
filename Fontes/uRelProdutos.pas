unit uRelProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniCheckBox, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniLabel, uniRadioGroup,
  uniGUIBaseClasses, uniButton, uniBitBtn, uniEdit, frxExportPDF,
  frxExportBaseDialog;

type
  TrelProdutos = class(TUniForm)
    rFiltro: TUniRadioGroup;
    eCliePesq: TUniEdit;
    UniLabel2: TUniLabel;
    frxVisualizar: TfrxReport;
    frxDB: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    qVisualizar: TFDQuery;
    dsVisualizar: TDataSource;
    qVisualizarESTOQUE: TBCDField;
    qVisualizarCODIGO: TStringField;
    qVisualizarEAN: TStringField;
    qVisualizarDESCRICAO: TStringField;
    qVisualizarNCM: TStringField;
    qVisualizarCEST: TStringField;
    qVisualizarUN: TStringField;
    rEstoque: TUniRadioGroup;
    rOrdem: TUniRadioGroup;
    qVisualizarCUSTO: TFMTBCDField;
    qVisualizarPRECO: TFMTBCDField;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function relProdutos: TrelProdutos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uPDF;

function relProdutos: TrelProdutos;
begin
  Result := TrelProdutos(UniMainModule.GetFormInstance(TrelProdutos));
end;

procedure TrelProdutos.UniButton2Click(Sender: TObject);
var
  xDataRel : String;
begin
    with qVisualizar do
    begin
        close;
        sql.Clear;
        sql.Add('select estoque,CODIGO,EAN,DESCRICAO,NCM,CEST,CUSTO,PRECO,UN');
        sql.Add('from PRODUTOS WHERE IDEMITENTE = :IDEMITENTE ');

        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;

        if eCliePesq.Text <> '' then
        begin
            if rFiltro.ItemIndex = 0 then
              SQL.Add(' and codigo like :nome ')
            else if rFiltro.ItemIndex = 1 then
              SQL.Add(' and EAN like :nome ')
            else if rFiltro.ItemIndex = 2 then
              SQL.Add(' and Descricao like :nome ');
            ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
        end;

        if rEstoque.ItemIndex = 0 then
            SQL.Add(' and estoque > 0 ');

        if rOrdem.ItemIndex = 0 then
            SQL.Add(' order by codigo ')
        else
            SQL.Add(' order by descricao ');

        Open;
    end;

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


procedure TrelProdutos.UniButton3Click(Sender: TObject);
begin
     close
end;

end.
