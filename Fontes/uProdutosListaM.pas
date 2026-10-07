unit uProdutosListaM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniEdit, unimEdit, uniLabel, unimLabel,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, unimDBListGrid, uniRadioButton,
  unimRadio, Data.DB;

type
  TfProdutosListaM = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimContainerPanel2: TUnimContainerPanel;
    eCliePesq: TUnimEdit;
    UnimButton1: TUnimButton;
    UnimContainerPanel18: TUnimContainerPanel;
    rCodigo: TUnimRadio;
    rNome: TUnimRadio;
    dsProdutos: TDataSource;
    UnimDBListGrid1: TUnimDBListGrid;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimDBListGrid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fProdutosListaM: TfProdutosListaM;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fProdutosListaM: TfProdutosListaM;
begin
  Result := TfProdutosListaM(UniMainModule.GetFormInstance(TfProdutosListaM));
end;

procedure TfProdutosListaM.UnimButton1Click(Sender: TObject);
begin
      with UniMainModule.qProdutos do
      begin
          close;
          sql.Clear;
          sql.Add('select margem,estoque,IDPRODUTO,CODIGO,EAN,DESCRICAO,DESCRICAO_COMPLETA,NCM,CEST,CUSTO,PRECO,UN,CST,ICMS ');
          sql.Add('      ,IPI,PESOBRUTO,PESOLIQ,CFOP,CSOSN,MVA,PREDICMS,ORIGEM,CSTIPI,CSTPIS,CSTCOFINS,ALIQPIS');
          sql.Add('      ,ALIQCOFINS,OPER_ENTRADA_DENTRO,OPER_ENTRADA_FORA,OPER_SAIDA_DENTRO,OPER_SAIDA_FORA');
          sql.Add('      ,IDEMITENTE,OPER_DEVOLUCAO_DENTRO,OPER_DEVOLUCAO_FORA,CODIGO_ANP,DESC_ANP,PGPL_ANP,PGNN_ANP,PGNI_ANP,VPART_ANP');
          sql.Add('from PRODUTOS WHERE IDEMITENTE = :IDEMITENTE ');
          ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
          if eCliePesq.Text <> '' then
          begin
            if rNome.Checked = true then
              SQL.Add(' and descricao like :nome ')
            else
              SQL.Add(' and codigo like :nome ');
            ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
          end;
          SQL.Add(' order by descricao ');
          Open;
      end;
end;

procedure TfProdutosListaM.UnimDBListGrid1Click(Sender: TObject);
begin
      ShowMessage('No momento só é possivel visualizar a lista de produtos!');
end;

end.
