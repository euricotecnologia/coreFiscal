unit uCadRapidoProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniPanel, uniPageControl,
  uniGUIBaseClasses, uniDBEdit, uniBitBtn, uniSpeedButton, uniComboBox,
  uniMultiItem, uniDBComboBox, uniDBLookupComboBox, uniEdit, uniLabel, Data.DB,
  uniBasicGrid, uniDBGrid, uniImage;

type
  TfCadRapidoProd = class(TUniForm)
    PG: TUniPageControl;
    tabOpcoes: TUniTabSheet;
    TabCadastro: TUniTabSheet;
    TabDados: TUniTabSheet;
    UniLabel1: TUniLabel;
    DBEdit2: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel3: TUniLabel;
    dbeNome: TUniDBEdit;
    UniLabel4: TUniLabel;
    cbNCM: TUniDBLookupComboBox;
    UniLabel6: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel7: TUniLabel;
    cbCEST: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    eCusto: TUniDBFormattedNumberEdit;
    UniLabel14: TUniLabel;
    eMargem: TUniDBFormattedNumberEdit;
    UniLabel9: TUniLabel;
    evenda: TUniDBFormattedNumberEdit;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    UniLabel11: TUniLabel;
    cbOpSaidaDentro: TUniDBLookupComboBox;
    UniLabel12: TUniLabel;
    cbOpSaidaFora: TUniDBLookupComboBox;
    dsTES: TDataSource;
    dsNCM: TDataSource;
    dsCEST: TDataSource;
    UniDBGrid1: TUniDBGrid;
    DsEntradaCor: TDataSource;
    UniPanel1: TUniPanel;
    UniLabel5: TUniLabel;
    Image1: TUniImage;
    Image8: TUniImage;
    Image9: TUniImage;
    image10: TUniImage;
    image4: TUniImage;
    bVincular: TUniBitBtn;
    bcadastrar: TUniBitBtn;
    bFechar: TUniBitBtn;
    procedure bVincularClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure eMargemChange(Sender: TObject);
    procedure evendaChange(Sender: TObject);
    procedure bcadastrarClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fCadRapidoProd: TfCadRapidoProd;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uCompra;

function fCadRapidoProd: TfCadRapidoProd;
begin
  Result := TfCadRapidoProd(UniMainModule.GetFormInstance(TfCadRapidoProd));
end;

procedure TfCadRapidoProd.btnCancelaClick(Sender: TObject);
begin
     UniMainModule.qEntradaCor.cancel;
     close;
end;

procedure TfCadRapidoProd.btnSalvaClick(Sender: TObject);
begin
     if UniMainModule.qEntradaCorUN.AsString = ''  then
     begin
          ShowMessage('O campo UN é obrigatório!');
          exit;
     end;

     UniMainModule.qEntradaCor.post;
     UniMainModule.qEntradaCor.ApplyUpdates;
     UniMainModule.qEntradaCor.CommitUpdates;

     fCompra.CadastraProduto(0);

     ShowMessage('Registro alterado com sucesso!');
     close;
end;

procedure TfCadRapidoProd.eMargemChange(Sender: TObject);
begin
     if eMargem.Value > 0 then
         evenda.value := eCusto.value + (eCusto.value * emargem.value)/100
     else
         evenda.value := 0;
end;

procedure TfCadRapidoProd.evendaChange(Sender: TObject);
begin
     if evenda.Value > 0 then
         eMargem.value := ((evenda.value - ecusto.value)/ecusto.value)*100
     else
         evenda.value := 0;
end;

procedure TfCadRapidoProd.UniFormShow(Sender: TObject);
begin
     pg.ActivePage := tabOpcoes;

     with UniMainModule.qTES do
     begin
          close;
          sql.Clear;
          sql.Add('select ID,DESCRICAO,CFOP,ALIQICMS,REDBCICMS,ALIQICMSST,REDBCICMSST,MVAICMSST,CSTIPI,ALIQIPI,CSTPIS');
          sql.Add('      ,ALIQPIS,ALIQPISST,CSTCOFINS,ALIQCOFINS,ALIQCOFINSST,DESTACA_ICMS,DESTACA_IPI,DESTACA_PIS');
          sql.Add('      ,DESTACA_COFINS,CST,CSOSN,IDEMITENTE from TBTES where IDEMITENTE = :e');
          ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          open;
     end;

     UniMainModule.qNCM.Open;
     UniMainModule.qCEST.Open;

     if UniMainModule.qEntradaCorNOVO.AsString = 'S' then
         bcadastrar.Enabled := true
     else
         bcadastrar.Enabled := false
end;

procedure TfCadRapidoProd.bVincularClick(Sender: TObject);
begin
     close;
     fCompra.Associa(1);
end;

procedure TfCadRapidoProd.bcadastrarClick(Sender: TObject);
begin
     pg.ActivePage := TabCadastro;
     UniMainModule.qEntradaCor.Edit;
end;

procedure TfCadRapidoProd.bFecharClick(Sender: TObject);
begin
     close;
end;

end.
