unit uframeTes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniDBComboBox,
  uniMultiItem, uniComboBox, uniDBLookupComboBox, uniRadioGroup, uniLabel,
  uniEdit, uniDBEdit, uniDBNavigator, uniButton, uniBitBtn, uniGUIBaseClasses,
  uniPanel, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniBasicGrid,
  uniDBGrid, uniPageControl, uniSpeedButton;

type
  TframeTes = class(TUniFrame)
    qCFOP: TFDQuery;
    qCFOPID: TIntegerField;
    qCFOPCFOP: TIntegerField;
    qCFOPNATUREZA: TStringField;
    qCFOPTIPO: TIntegerField;
    qCFOPOBS1: TStringField;
    qCFOPOBS2: TStringField;
    qTES: TFDQuery;
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
    qTESIDEMITENTE: TIntegerField;
    dsCFOP: TDataSource;
    dsTes: TDataSource;
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    PG: TUniPageControl;
    Consulta: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniLabel1: TUniLabel;
    eId: TUniDBEdit;
    DBEdit2: TUniDBEdit;
    UniLabel2: TUniLabel;
    cbCFOP: TUniDBLookupComboBox;
    UniRadioGroup1: TUniRadioGroup;
    UniLabel3: TUniLabel;
    cbST: TUniDBComboBox;
    UniLabel4: TUniLabel;
    cbCSOSN: TUniDBComboBox;
    UniLabel13: TUniLabel;
    DBEdit1: TUniDBEdit;
    UniLabel14: TUniLabel;
    DBEdit5: TUniDBEdit;
    UniLabel15: TUniLabel;
    DBEdit4: TUniDBEdit;
    UniLabel16: TUniLabel;
    DBEdit6: TUniDBEdit;
    UniLabel17: TUniLabel;
    DBEdit8: TUniDBEdit;
    UniLabel8: TUniLabel;
    dbEDIT3: TUniDBEdit;
    cbCSTIPI: TUniDBComboBox;
    UniLabel7: TUniLabel;
    UniRadioGroup4: TUniRadioGroup;
    UniLabel10: TUniLabel;
    DBEdit11: TUniDBEdit;
    dbEdit10: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniLabel6: TUniLabel;
    cbCOFINS: TUniDBComboBox;
    UniRadioGroup3: TUniRadioGroup;
    UniLabel12: TUniLabel;
    DBEdit9: TUniDBEdit;
    DBEdit7: TUniDBEdit;
    UniLabel11: TUniLabel;
    cbCSTPIS: TUniDBComboBox;
    UniLabel5: TUniLabel;
    UniRadioGroup2: TUniRadioGroup;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    UniPanel4: TUniPanel;
    eCliePesq: TUniEdit;
    bPesq: TUniBitBtn;
    UniDBGrid1: TUniDBGrid;
    UniBitBtn1: TUniBitBtn;
    bCFOP: TUniSpeedButton;
    UniLabel18: TUniLabel;
    procedure btnCancelaClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure bPesqClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure dsTesStateChange(Sender: TObject);
    procedure bCFOPClick(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
  private
    procedure Pesquisar;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uPesquisa, MainModule, uClsBase, uPrincipal;

procedure TframeTes.bCFOPClick(Sender: TObject);
begin
    fPesquisa.Tag := 4;
    fPesquisa.showModal;
  //  cbCFOP.KeyValue := fPesquisa.wCodigo;
    cbST.SetFocus;
end;

procedure TframeTes.bPesqClick(Sender: TObject);
begin
    pesquisar;
end;

procedure TframeTes.btnCancelaClick(Sender: TObject);
begin
    UniMainModule.qTES.Cancel;
    btnInclui.SetFocus;
end;

procedure TframeTes.btnIncluiClick(Sender: TObject);
begin
    UniMainModule.qTES.Append;
    UniMainModule.qTESALIQICMS.Value     := 0;
    UniMainModule.qTESALIQICMSST.Value   := 0;
    UniMainModule.qTESALIQIPI.Value      := 0;
    UniMainModule.qTESALIQPIS.Value      := 0;
    UniMainModule.qTESALIQPISST.Value    := 0;
    UniMainModule.qTESALIQCOFINS.Value   := 0;
    UniMainModule.qTESALIQCOFINSST.Value := 0;
    UniMainModule.qTESMVAICMSST.Value    := 0;
    UniMainModule.qTESREDBCICMS.Value    := 0;
    UniMainModule.qTESREDBCICMSST.Value  := 0;
    UniMainModule.qTESIDEMITENTE.Value   := UniMainModule.CodigoEmitente.ToInteger;
    PG.ActivePageIndex := 1;
    DBEdit2.SetFocus;
end;

procedure TframeTes.btnSalvaClick(Sender: TObject);
var
  lbase: TBase;
begin
      if UniMainModule.qTES.State in [dsEdit, dsInsert] then
      begin
          if DBEdit2.Text = '' then
          begin
            ShowMessage('Existem campos obrigatórios a serem preenchidos!');
            DBEdit2.SetFocus;
            Abort;
          end;

          if (cbST.Text = '') and (UniMainModule.qEmitenteCRT.AsString = '3') then
          begin
            ShowMessage('É necessário informar a situação tributária do produto!');
            cbST.SetFocus;
            Abort;
          end;

          if (cbCSOSN.Text = '') and (UniMainModule.qEmitenteCRT.AsString <> '3') then
          begin
            ShowMessage('É necessário informar o CSOSN do produto!');
            cbCSOSN.SetFocus;
            Abort;
          end;

          if eId.Text = '' then
          begin
            lbase := tBase.create;
            UniMainModule.qTESID.Value := lbase.GerarCodigo('GEN_TBTES_ID',UniMainModule.Banco);
            lbase.Free;
          end;

          UniMainModule.qTES.post;
          UniMainModule.qTES.ApplyUpdates;
          UniMainModule.qTES.CommitUpdates;

          btnInclui.SetFocus;
          ShowMessage('Registro atualizado com sucesso!');
      end;
end;

procedure TframeTes.dsTesStateChange(Sender: TObject);
begin
    btnInclui.Enabled  := UniMainModule.qTES.State in [dsBrowse];
    UniBitBtn1.Enabled := UniMainModule.qTES.State in [dsBrowse];
    btnSalva.Enabled   := UniMainModule.qTES.State in [dsEdit, dsInsert];
    btnCancela.Enabled := UniMainModule.qTES.State in [dsEdit, dsInsert];
end;

procedure TframeTes.Pesquisar;
begin
    with UniMainModule.qTES do
    begin
        close;
        sql.Clear;
        sql.Add('select ID,DESCRICAO,CFOP,ALIQICMS,REDBCICMS,ALIQICMSST,REDBCICMSST,MVAICMSST,CSTIPI,ALIQIPI,CSTPIS');
        sql.Add('      ,ALIQPIS,ALIQPISST,CSTCOFINS,ALIQCOFINS,ALIQCOFINSST,DESTACA_ICMS,DESTACA_IPI,DESTACA_PIS');
        sql.Add('      ,DESTACA_COFINS,CST,CSOSN,IDEMITENTE from TBTES where IDEMITENTE=:emit');
        ParamByName('emit').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
        if eCliePesq.Text <> '' then
        begin
          sql.Add(' and  descricao like :nome ');
          ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
        end;
        sql.Add(' order by descricao ');
        open;
    end;
end;

procedure TframeTes.UniBitBtn1Click(Sender: TObject);
begin
    PG.ActivePage := Consulta;
end;

procedure TframeTes.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
    if Column.Field.Name = 'qTESCFOP' then
    begin
      if UniMainModule.qTESID.AsString <> '' then
      begin
      MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
      procedure(Sender: TComponent; Res: Integer)
      begin
          case Res of
              mrYes :
              begin
                Try
                  UniMainModule.qTES.Delete;
                  UniMainModule.qTES.ApplyUpdates;
                  UniMainModule.qTES.CommitUpdates;
                except on e: exception do
                  begin
                      ShowMessage('Ocorreu o seguinte erro: '+e.Message);
                  end;
                end;
              end;
              mrNo  :
              begin
              end;
          end;
      end);
    end;
    end;

    if Column.Field.Name = 'qTESCSOSN' then
    begin
      if UniMainModule.qTESID.AsString <> '' then
      begin
        PG.ActivePage := UniTabSheet2;
        UniMainModule.qTES.Edit;
      end;
    end;
end;

procedure TframeTes.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'CFOP') then
    begin
      DoNotDispose := True;
      OutImage := fPrincipal.imgDelete.Picture.Graphic;
    end;

    if SameText(AField.FieldName, 'CSOSN') then
    begin
      DoNotDispose := True;
      OutImage := fPrincipal.imgEdit.Picture.Graphic;
    end;
end;

procedure TframeTes.UniFrameCreate(Sender: TObject);
begin
     UniMainModule.qCFOP.open();
     pesquisar;
end;

procedure TframeTes.UniFrameDestroy(Sender: TObject);
begin
     UniMainModule.qTES.close;
     UniMainModule.qCFOP.close;
end;

end.
