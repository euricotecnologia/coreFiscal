unit uConsProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, Data.DB, uniButton,
  uniBitBtn, uniEdit, uniLabel, uniRadioGroup, uniGUIBaseClasses, uniPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniImage;

type
  TfConsProd = class(TUniForm)
    UniPanel1: TUniPanel;
    Filtro: TUniRadioGroup;
    UniLabel1: TUniLabel;
    ePesq: TUniEdit;
    bPesq: TUniBitBtn;
    bConfirma: TUniBitBtn;
    bCancela: TUniBitBtn;
    DBGrid1: TUniDBGrid;
    filtro2: TUniRadioGroup;
    qProdutos: TFDQuery;
    dsProduto: TDataSource;
    qProdutosESTOQUE: TBCDField;
    qProdutosCODIGO: TStringField;
    qProdutosEAN: TStringField;
    qProdutosDESCRICAO: TStringField;
    qProdutosNCM: TStringField;
    qProdutosCUSTO: TBCDField;
    qProdutosPRECO: TBCDField;
    qProdutosUN: TStringField;
    UniPanel2: TUniPanel;
    UniLabel2: TUniLabel;
    Image1: TUniImage;
    Image8: TUniImage;
    Image9: TUniImage;
    image10: TUniImage;
    image4: TUniImage;
    rOrdem: TUniRadioGroup;
    procedure bPesqClick(Sender: TObject);
    procedure bConfirmaClick(Sender: TObject);
    procedure bCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fConsProd: TfConsProd;

implementation

{$R *.dfm}

uses
  //uOsOticaDados,
  MainModule, uniGUIApplication, uCompra,  uOsDados;

function fConsProd: TfConsProd;
begin
     Result := TfConsProd(UniMainModule.GetFormInstance(TfConsProd));
end;

procedure TfConsProd.bPesqClick(Sender: TObject);
begin
     with qProdutos do
     begin
          close;
          sql.Clear;
          sql.Add('select ESTOQUE,CODIGO,EAN,DESCRICAO,NCM,CUSTO,PRECO,UN '+
          ' from PRODUTOS WHERE IDEMITENTE = :IDEMITENTE ');
          ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
          if ePesq.Text <> '' then
          begin
            if filtro2.ItemIndex = 1 then
              SQL.Add(' and descricao like :nome ')
            else if filtro2.ItemIndex = 2 then
              SQL.Add(' and EAN like :nome ')
            else
              SQL.Add(' and codigo like :nome ');

            if Filtro.ItemIndex = 0 then
               ParamByName('nome').AsString := ePesq.Text+'%'
            else
               ParamByName('nome').AsString := '%'+ePesq.Text+'%';
          end;

          if rOrdem.ItemIndex = 0 then
              SQL.Add(' order by codigo ')
          else
              SQL.Add(' order by descricao ');

          Open;

          offline;
     end;
end;

procedure TfConsProd.bConfirmaClick(Sender: TObject);
begin
     if tag = 1 then
        // fOsOticaDados.COD_LOCALIZA := qProdutosCODIGO.AsInteger
     else if tag = 2 then
         fOsDados.COD_LOCALIZA      := qProdutosCODIGO.AsInteger
     else if tag = 98 then
         fCompra.COD_LOCALIZA       := qProdutosCODIGO.AsInteger;
     close;
end;

procedure TfConsProd.bCancelaClick(Sender: TObject);
begin
     close;
end;

end.
