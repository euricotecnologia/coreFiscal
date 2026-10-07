unit uProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniEdit, uniDBEdit,
  uniLabel, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniPageControl,
  uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel, uniRadioGroup, uniComboBox,
  uniMultiItem, uniDBComboBox, uniDBLookupComboBox, uniDBNavigator,
  uniBasicGrid, uniDBGrid;

type
  TfProdutos = class(TUniForm)
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    UniBitBtn5: TUniBitBtn;
    PG: TUniPageControl;
    TabSheet1: TUniTabSheet;
    TabSheet2: TUniTabSheet;
    qProdutos: TFDQuery;
    dsProdutos: TDataSource;
    qProdutosIDPRODUTO: TIntegerField;
    qProdutosCODIGO: TStringField;
    qProdutosEAN: TStringField;
    qProdutosDESCRICAO: TStringField;
    qProdutosDESCRICAO_COMPLETA: TStringField;
    qProdutosNCM: TStringField;
    qProdutosCEST: TStringField;
    qProdutosCUSTO: TBCDField;
    qProdutosPRECO: TBCDField;
    qProdutosUN: TStringField;
    qProdutosCST: TStringField;
    qProdutosICMS: TBCDField;
    qProdutosIPI: TBCDField;
    qProdutosPESOBRUTO: TBCDField;
    qProdutosPESOLIQ: TBCDField;
    qProdutosCFOP: TStringField;
    qProdutosCSOSN: TStringField;
    qProdutosMVA: TBCDField;
    qProdutosPREDICMS: TBCDField;
    qProdutosORIGEM: TIntegerField;
    qProdutosCSTIPI: TStringField;
    qProdutosCSTPIS: TStringField;
    qProdutosCSTCOFINS: TStringField;
    qProdutosALIQPIS: TCurrencyField;
    qProdutosALIQCOFINS: TCurrencyField;
    qProdutosOPER_ENTRADA_DENTRO: TIntegerField;
    qProdutosOPER_ENTRADA_FORA: TIntegerField;
    qProdutosOPER_SAIDA_DENTRO: TIntegerField;
    qProdutosOPER_SAIDA_FORA: TIntegerField;
    qProdutosIDEMITENTE: TSmallintField;
    qProdutosOPER_DEVOLUCAO_DENTRO: TIntegerField;
    qProdutosOPER_DEVOLUCAO_FORA: TIntegerField;
    qProdutosCODIGO_ANP: TStringField;
    qAux: TFDQuery;
    qNCM: TFDQuery;
    qMax: TFDQuery;
    qCEST: TFDQuery;
    qTES: TFDQuery;
    qNCMID: TIntegerField;
    qNCMCODIGO: TStringField;
    qNCMDESCRICAO: TStringField;
    qTESID: TIntegerField;
    qTESDESCRICAO: TStringField;
    qTESCFOP: TStringField;
    qTESALIQICMS: TCurrencyField;
    qTESREDBCICMS: TCurrencyField;
    qTESALIQICMSST: TCurrencyField;
    qTESREDBCICMSST: TCurrencyField;
    qTESMVAICMSST: TCurrencyField;
    qTESCSTIPI: TStringField;
    qTESALIQIPI: TCurrencyField;
    qTESCSTPIS: TStringField;
    qTESALIQPIS: TCurrencyField;
    qTESALIQPISST: TCurrencyField;
    qTESCSTCOFINS: TStringField;
    qTESALIQCOFINS: TCurrencyField;
    qTESALIQCOFINSST: TCurrencyField;
    qTESDESTACA_ICMS: TIntegerField;
    qTESDESTACA_IPI: TIntegerField;
    qTESDESTACA_PIS: TIntegerField;
    qTESDESTACA_COFINS: TIntegerField;
    qTESCST: TStringField;
    qTESCSOSN: TStringField;
    dsTES: TDataSource;
    UniLabel1: TUniLabel;
    DBEdit2: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel3: TUniLabel;
    dbeNome: TUniDBEdit;
    UniLabel4: TUniLabel;
    cbNCM: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    cbOrigem: TUniComboBox;
    UniLabel6: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniRadioGroup1: TUniRadioGroup;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    cbOpSaidaDentro: TUniDBLookupComboBox;
    cbOpSaidaFora: TUniDBLookupComboBox;
    dsNCM: TDataSource;
    dsCEST: TDataSource;
    UniTabSheet1: TUniTabSheet;
    UniPanel4: TUniPanel;
    rFiltro: TUniRadioGroup;
    UniLabel13: TUniLabel;
    eCliePesq: TUniEdit;
    bPesq: TUniBitBtn;
    UniDBGrid1: TUniDBGrid;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    btnExcluir: TUniBitBtn;
    UniBitBtn1: TUniBitBtn;
    dsProdutoPesq: TDataSource;
    qProdutoPesq: TFDQuery;
    qProdutoPesqCODIGO: TStringField;
    qProdutoPesqDESCRICAO: TStringField;
    qProdutoPesqPRECO: TBCDField;
    qProdutoPesqIDPRODUTO: TIntegerField;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    procedure qProdutosBeforePost(DataSet: TDataSet);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormCreate(Sender: TObject);
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
    procedure dsProdutosStateChange(Sender: TObject);
    procedure UniBitBtn5Click(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure cbNCMExit(Sender: TObject);
    procedure cbOrigemChange(Sender: TObject);
    procedure bPesqClick(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn6Click(Sender: TObject);
  private

    function ProximoCodigo(TableName, Field: String): Integer;

  public
    { Public declarations }
  end;

function fProdutos: TfProdutos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDM, DataFun;

function fProdutos: TfProdutos;
begin
  Result := TfProdutos(UniMainModule.GetFormInstance(TfProdutos));
end;

{ TfProdutos }

procedure TfProdutos.bPesqClick(Sender: TObject);
begin

      qProdutoPesq.Close;
      qProdutoPesq.SQL.Clear;
      qProdutoPesq.SQL.Add('select idproduto, codigo, descricao, preco from '+
      ' PRODUTOS WHERE IDEMITENTE = :IDEMITENTE  ');
      if eCliePesq.Text <> '' then
      begin
           if rFiltro.ItemIndex = 0 then
              qProdutoPesq.SQL.Add(' and  descricao like :nome ')
           else
              qProdutoPesq.SQL.Add(' and  codigo like :nome ');
      end;
      qProdutoPesq.SQL.Add(' order by descricao ');
      qProdutoPesq.ParamByName('IDEMITENTE').Value := strToInt(dm.CodigoEmitente);
      if eCliePesq.Text <> '' then
         qProdutoPesq.ParamByName('nome').AsString := '%'+eCliePesq.Text+'%';
      qProdutoPesq.Open;

end;

procedure TfProdutos.btnCancelaClick(Sender: TObject);
begin
      if (qProdutos.State in [dsInsert, dsEdit]) then
      begin
            qProdutos.Cancel;
            btnInclui.SetFocus;
      end;
end;

procedure TfProdutos.btnExcluirClick(Sender: TObject);
begin
     if qProdutos.IsEmpty then
       Abort;

      MessageDlg('DESEJA EXCLUIR ESTE REGISTRO?', mtConfirmation, mbYesNo,
      procedure(Sender: TComponent; Res: Integer)
      begin
          case Res of
            mrYes :
            begin
               qProdutos.Delete;
            end;
            mrNo  :
            begin

            end;
          end;
      end);
end;

procedure TfProdutos.btnIncluiClick(Sender: TObject);
begin
     qProdutos.Append;
     PG.ActivePage := TabSheet1;
     DBEdit2.Setfocus;
end;

procedure TfProdutos.btnSalvaClick(Sender: TObject);
begin
     if qProdutos.State in [dsEdit,dsInsert] then
     begin
         if dbeNome.Text = '' then
         begin
              ShowMessage('Existem campos obrigatórios a serem preenchidos !');
              dbeNome.SetFocus;
              Abort;
         end;

         if cbOpSaidaDentro.Text = '' then
         begin
              ShowMessage('Atenção!'+#13#10+'Operação de Saída Dentro do Estado precisa ser preenchida!');
              PG.ActivePage := TabSheet2;
              cbOpSaidaDentro.SetFocus;
              Abort;
         end;

         if cbOpSaidaFora.Text = '' then
         begin
              ShowMessage('Atenção!'+#13#10+'Operação de Saída Fora do Estado precisa ser preenchida!');
              PG.ActivePage := TabSheet2;
              cbOpSaidaFora.SetFocus;
              Abort;
         end;

         if qProdutosIDPRODUTO.AsString = '' then
         begin
              qProdutosIDPRODUTO.Value  := ProximoCodigo('PRODUTOS', 'IDPRODUTO');
              qProdutosIDEmitente.Value := strToInt(dm.CodigoEmitente);//
              qProdutos.Post;
              btnInclui.SetFocus;
         end
         else
         begin
              qProdutos.Post;
              btnInclui.SetFocus;
         end;
         ShowMessage('Registro Atualizado!');
     end;
end;

procedure TfProdutos.cbNCMExit(Sender: TObject);
var i:integer;
begin
      qCest.Close;
      for I := 8 downto 2 do
      begin
           if I = 3 then Continue;
           qcest.SQL.Clear;
           qcest.SQL.Add('Select * from TBCEST WHERE NCM LIKE ''%'+copy(Trim(cbNCM.Text),1,I)+'''');
           try
              qcest.Open;
              if qcest.RecordCount > 0 then
               break;
            finally
            end;
      end;
end;

procedure TfProdutos.cbOrigemChange(Sender: TObject);
begin
     if not (dsProdutos.State in [dsEdit,dsInsert]) then
       qprodutos.Edit;
     qprodutosOrigem.AsInteger:=cbOrigem.ItemIndex;
end;

procedure TfProdutos.dsProdutosDataChange(Sender: TObject; Field: TField);
var i:integer;
begin
      qCest.Close;
      for I := 8 downto 2 do
      begin
         if I = 3 then Continue;
         qcest.SQL.Clear;
         qcest.SQL.Add('Select * from TBCEST WHERE NCM LIKE ''%'+copy(Trim(cbNCM.Text),1,I)+'''');
         try
            qcest.Open;
            if qcest.RecordCount > 0 then
             break;
          finally
          end;
      end;
      //--------
      if not (qprodutos.State in [dsEdit,dsInsert]) then
        cbOrigem.ItemIndex := qProdutosOrigem.AsInteger;
      //--------
end;

procedure TfProdutos.dsProdutosStateChange(Sender: TObject);
begin
      btnInclui.Enabled  := qProdutos.State in [dsBrowse];
      btnExcluir.Enabled := qProdutos.State in [dsBrowse];
      btnSalva.Enabled   := qProdutos.State in [dsEdit, dsInsert];
      btnCancela.Enabled := qProdutos.State in [dsEdit, dsInsert];
end;

function TfProdutos.ProximoCodigo(TableName, Field: String): Integer;
begin
      qMax.Close;
      qMax.SQL.Clear;
      qMax.SQL.Add('SELECT MAX(' + Field + ') AS ULTIMO FROM ' + TableName);
      qMax.Open;

      if qMax.FieldByName('ULTIMO').AsString = '' then
         Result := 1
      else
         Result := StrToInt(qMax.FieldByName('ULTIMO').AsString) + 1;
end;

procedure TfProdutos.qProdutosBeforePost(DataSet: TDataSet);
begin
      qProdutosOrigem.AsInteger := cbOrigem.ItemIndex;
end;

procedure TfProdutos.UniBitBtn1Click(Sender: TObject);
begin
      PG.ActivePage := UniTabSheet1;
end;

procedure TfProdutos.UniBitBtn2Click(Sender: TObject);
begin
      PG.ActivePage := TabSheet1;
end;

procedure TfProdutos.UniBitBtn5Click(Sender: TObject);
begin
      Close;
end;

procedure TfProdutos.UniBitBtn6Click(Sender: TObject);
begin
       PG.ActivePage := TabSheet2;
end;

procedure TfProdutos.UniDBGrid1DblClick(Sender: TObject);
begin
      qProdutos.Close;
      qProdutos.ParamByName('IDEMITENTE').Value := strToInt(dm.CodigoEmitente);
      qProdutos.ParamByName('IDPRODUTO').Value  := qProdutoPesqIDPRODUTO.AsInteger;
      qProdutos.Open();

      PG.ActivePage := TabSheet1;
end;

procedure TfProdutos.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
       qProdutos.Close;
       qTES.Close;
       qNCM.Close;
       qCEST.Close;
end;

procedure TfProdutos.UniFormCreate(Sender: TObject);
begin
      qProdutoPesq.ParamByName('IDEMITENTE').Value := strToInt(dm.CodigoEmitente);//
      qProdutoPesq.Open();

   //   qProdutos.ParamByName('IDEMITENTE').Value := strToInt(dm.CodigoEmitente);//
      qProdutos.Open;

      qTES.Open;
      qNCM.Open;
      qCEST.Open;
end;

end.
