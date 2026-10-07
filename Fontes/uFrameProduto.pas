unit uFrameProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniComboBox,
  uniMultiItem, uniDBComboBox, uniDBLookupComboBox, uniDBEdit, uniBasicGrid,
  uniDBGrid, uniEdit, uniLabel, uniRadioGroup, uniPageControl, uniButton,
  uniBitBtn, uniGUIBaseClasses, uniPanel, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniSpeedButton;

type
  TframeProduto = class(TUniFrame)
    dsCEST: TDataSource;
    dsNCM: TDataSource;
    dsTES: TDataSource;
    dsProdutos: TDataSource;
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    PG: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel4: TUniPanel;
    rFiltro: TUniRadioGroup;
    eCliePesq: TUniEdit;
    bPesq: TUniBitBtn;
    UniDBGrid1: TUniDBGrid;
    TabSheet1: TUniTabSheet;
    UniLabel1: TUniLabel;
    DBEdit2: TUniDBEdit;
    UniLabel2: TUniLabel;
    eCodigoBarra: TUniDBEdit;
    UniLabel3: TUniLabel;
    dbeNome: TUniDBEdit;
    UniLabel4: TUniLabel;
    cbNCM: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    cbOrigem: TUniComboBox;
    UniLabel6: TUniLabel;
    eUn: TUniDBEdit;
    UniLabel7: TUniLabel;
    cbCEST: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    UniBitBtn1: TUniBitBtn;
    TabSheet2: TUniTabSheet;
    UniRadioGroup1: TUniRadioGroup;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    cbOpSaidaDentro: TUniDBLookupComboBox;
    cbOpSaidaFora: TUniDBLookupComboBox;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    bNCM: TUniSpeedButton;
    bCest: TUniSpeedButton;
    btnExcluir: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    UniLabel13: TUniLabel;
    eCusto: TUniDBFormattedNumberEdit;
    eEstoque: TUniDBFormattedNumberEdit;
    evenda: TUniDBFormattedNumberEdit;
    UniLabel14: TUniLabel;
    eMargem: TUniDBFormattedNumberEdit;
    UniLabel15: TUniLabel;
    rFiltro2: TUniRadioGroup;
    bEstoque: TUniSpeedButton;
    UniRadioGroup2: TUniRadioGroup;
    UniLabel10: TUniLabel;
    eCodigoAnp: TUniDBEdit;
    UniLabel16: TUniLabel;
    eDESC_ANP: TUniDBEdit;
    UniLabel17: TUniLabel;
    ePGPL_ANP: TUniDBEdit;
    UniLabel18: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel19: TUniLabel;
    ePGNI_ANP: TUniDBEdit;
    UniLabel20: TUniLabel;
    eVPART_ANP: TUniDBEdit;
    UniLabel21: TUniLabel;
    procedure bPesqClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure cbNCMExit(Sender: TObject);
    procedure cbOrigemChange(Sender: TObject);
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
    procedure dsProdutosStateChange(Sender: TObject);
    procedure qProdutosBeforePost(DataSet: TDataSet);
    procedure UniFrameDestroy(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure bNCMClick(Sender: TObject);
    procedure bCestClick(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure btnExcluirClick(Sender: TObject);
    procedure UniBitBtn6Click(Sender: TObject);
    procedure eMargemChange(Sender: TObject);
    procedure evendaChange(Sender: TObject);
    procedure eCodigoBarraExit(Sender: TObject);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure bEstoqueClick(Sender: TObject);


  private

    procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);

  public

    parametro: String;

  end;

implementation

{$R *.dfm}

uses uPesquisa, MainModule, uClsBase, uPrincipal;

procedure TframeProduto.bCestClick(Sender: TObject);
begin
      fPesquisa.Tag        := 2;
      fPesquisa.parametro1 := parametro;
      fPesquisa.showModal;

      cbCEST.KeyValue      := fPesquisa.wCodigo;
      eCusto.SetFocus;
end;

procedure TframeProduto.bEstoqueClick(Sender: TObject);
begin
     Prompt('@*Entre com a senha de Gerente', '', mtInformation, mbOKCancel, PromptCallBack, False);
end;

procedure TframeProduto.bNCMClick(Sender: TObject);
begin
      fPesquisa.Tag := 1;
      fPesquisa.showModal;
      cbNCM.KeyValue := fPesquisa.wCodigo;
      cbOrigem.SetFocus;
end;

procedure TframeProduto.bPesqClick(Sender: TObject);
begin
      with UniMainModule.qProdutos do
      begin
          close;
          sql.Clear;
          sql.Add('select margem, estoque, IDPRODUTO,CODIGO,EAN,DESCRICAO,DESCRICAO_COMPLETA,NCM,CEST,CUSTO,PRECO,UN,CST,ICMS ');
          sql.Add('      ,IPI,PESOBRUTO,PESOLIQ,CFOP,CSOSN,MVA,PREDICMS,ORIGEM,CSTIPI,CSTPIS,CSTCOFINS,ALIQPIS   ');
          sql.Add('      ,ALIQCOFINS,OPER_ENTRADA_DENTRO,OPER_ENTRADA_FORA,OPER_SAIDA_DENTRO,OPER_SAIDA_FORA     ');
          sql.Add('      ,IDEMITENTE,OPER_DEVOLUCAO_DENTRO,OPER_DEVOLUCAO_FORA,CODIGO_ANP,DESC_ANP,PGPL_ANP,PGNN_ANP,PGNI_ANP,VPART_ANP');
          sql.Add('from PRODUTOS WHERE IDEMITENTE = :IDEMITENTE ');
          ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;

          if eCliePesq.Text <> '' then
          begin
              if rFiltro.ItemIndex = 0 then
                  SQL.Add(' and codigo  like :nome ')
              else if rfiltro.ItemIndex = 1 then
                  SQL.Add(' and descricao like :nome ')
              else
                  SQL.Add(' and EAN like :nome ');

              ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
          end;

          SQL.Add(' order by descricao ');
          Open;
          offline;
      end;
end;

procedure TframeProduto.btnCancelaClick(Sender: TObject);
begin
      MessageDlg('Deseja Alterar este Registro?', mtConfirmation, mbYesNo,
      procedure(Sender: TComponent; Res: Integer)
      begin
          case Res of
              mrYes :
              begin
              Try
                if (UniMainModule.qProdutos.State in [dsInsert, dsEdit]) then
                begin
                  UniMainModule.qProdutos.Cancel;
                  btnInclui.SetFocus;
                end;
              except on e: exception do
                begin

                  Showmessage('Ocorreu o seguinte erro: '+e.Message);
                end;
              end;

              end;
              mrNo  :
              begin
              end;
          end;
      end);
end;

procedure TframeProduto.btnExcluirClick(Sender: TObject);
begin
     if UniMainModule.qProdutos.IsEmpty then
       Abort;
end;

procedure TframeProduto.btnIncluiClick(Sender: TObject);
begin
      UniMainModule.qProdutos.Append;
      PG.ActivePage := TabSheet1;
      eCodigoBarra.SetFocus;
end;

procedure TframeProduto.btnSalvaClick(Sender: TObject);
var
  lbase : tbase;
begin
      if UniMainModule.qProdutos.State in [dsEdit, dsInsert] then
      begin
          if dbeNome.Text = '' then
          begin
              ShowMessage('Nome é um campo obrigatório!');
              dbeNome.SetFocus;
              exit;
          end;

          if eUn.Text = '' then
          begin
              ShowMessage( 'UN é um campo obrigatório!');
              eUn.SetFocus;
              exit;
          end;

          if cbNCM.ItemIndex = -1 then
          begin
              ShowMessage( 'NCM é um campo obrigatório!');
              cbNCM.SetFocus;
              exit;
          end;

          if cbOpSaidaDentro.Text = '' then
          begin
              ShowMessage( 'Operação de Saída Dentro do Estado precisa ser preenchida!');
              PG.ActivePage := TabSheet2;
              cbOpSaidaDentro.SetFocus;
              exit;
          end;

          if cbOpSaidaFora.Text = '' then
          begin
              ShowMessage( 'Operação de Saída Fora do Estado precisa ser preenchida!');
              PG.ActivePage := TabSheet2;
              cbOpSaidaFora.SetFocus;
              Abort;
          end;

          if UniMainModule.qProdutosIDPRODUTO.AsString = '' then
          begin
              lbase := TBase.Create;

              UniMainModule.qProdutosIDPRODUTO.AsInteger  := lbase.pegaseg('PRODUTOS', 'IDPRODUTO',UniMainModule.Banco);
              UniMainModule.qProdutosCODIGO.AsInteger     := lbase.pegasegLocal('PRODUTOS', 'CODIGO',UniMainModule.Banco);
              UniMainModule.qProdutosIDEMITENTE.AsInteger := UniMainModule.CodigoEmitente.ToInteger; //
              if UniMainModule.qProdutosESTOQUE.AsString = '' then
                 UniMainModule.qProdutosESTOQUE.value     := 0;
              UniMainModule.qProdutos.post;
              UniMainModule.qProdutos.ApplyUpdates;
              UniMainModule.qProdutos.CommitUpdates;
              lbase.Free;
          end
          else
          begin
              UniMainModule.qProdutos.post;
              UniMainModule.qProdutos.ApplyUpdates;
              UniMainModule.qProdutos.CommitUpdates;
          end;
          ShowMessage( 'Registro incluido ou alterado com sucesso!');
      end;
end;

procedure TframeProduto.cbNCMExit(Sender: TObject);
var
  i: Integer;
begin
      UniMainModule.qCEST.Close;
      for i := 8 downto 2 do
      begin
          if i = 3 then
            Continue;

          UniMainModule.qCEST.SQL.Clear;
          UniMainModule.qCEST.SQL.Add('Select * from TBCEST WHERE NCM LIKE ''%' + copy(Trim(cbNCM.Text), 1, i) + '''');

          parametro := copy(Trim(cbNCM.Text), 1, i);
          try
            UniMainModule.qCEST.Open;
            if UniMainModule.qCEST.RecordCount > 0 then
              break;
          finally
          end;
      end;
end;

procedure TframeProduto.cbOrigemChange(Sender: TObject);
begin
      if not(dsProdutos.State in [dsEdit, dsInsert]) then
        UniMainModule.qProdutos.Edit;
      UniMainModule.qProdutosORIGEM.AsInteger := cbOrigem.ItemIndex;
end;

procedure TframeProduto.dsProdutosDataChange(Sender: TObject; Field: TField);
var
  i: Integer;
begin
      UniMainModule.qCEST.Close;
      for i := 8 downto 2 do
      begin
          if i = 3 then
            Continue;
          UniMainModule.qCEST.SQL.Clear;
          UniMainModule.qCEST.SQL.Add('Select * from TBCEST WHERE NCM LIKE ''%' + copy(Trim(cbNCM.Text), 1, i) + '''');
          try
            UniMainModule.qCEST.Open;
            if UniMainModule.qCEST.RecordCount > 0 then
              break;
          finally
          end;
      end;
      // --------
      if not(UniMainModule.qProdutos.State in [dsEdit, dsInsert]) then
        cbOrigem.ItemIndex := UniMainModule.qProdutosORIGEM.AsInteger;
      // --------
end;

procedure TframeProduto.dsProdutosStateChange(Sender: TObject);
begin
      btnInclui.Enabled  := UniMainModule.qProdutos.State in [dsBrowse];
      UniBitBtn1.Enabled := UniMainModule.qProdutos.State in [dsBrowse];
      btnSalva.Enabled   := UniMainModule.qProdutos.State in [dsEdit, dsInsert];
      UniBitBtn3.Enabled := UniMainModule.qProdutos.State in [dsEdit, dsInsert];
      btnCancela.Enabled := UniMainModule.qProdutos.State in [dsEdit, dsInsert];
      UniBitBtn4.Enabled := UniMainModule.qProdutos.State in [dsEdit, dsInsert];
end;

procedure TframeProduto.eMargemChange(Sender: TObject);
begin
     if eMargem.Value > 0 then
         evenda.value := eCusto.value + (eCusto.value * emargem.value)/100
     else
         evenda.value := 0;
end;

procedure TframeProduto.evendaChange(Sender: TObject);
begin
     if evenda.Value > 0 then
         eMargem.value := ((evenda.value - ecusto.value)/ecusto.value)*100
     else
         evenda.value := 0;
end;

procedure TframeProduto.PromptCallBack(Sender: TComponent; AResult: Integer;
  AText: string);
begin
      if AResult = mrOK then
      begin
           if AText = 'estoque' then
           begin
                eEstoque.Enabled := true;
           end
           else
           begin
                eEstoque.Enabled := false;
                ShowMessage('Senha incorreta');
           end;
      end;
end;

procedure TframeProduto.qProdutosBeforePost(DataSet: TDataSet);
begin
      UniMainModule.qProdutosORIGEM.AsInteger := cbOrigem.ItemIndex;
end;

procedure TframeProduto.UniBitBtn1Click(Sender: TObject);
begin
      PG.ActivePage := UniTabSheet1;
end;

procedure TframeProduto.UniBitBtn2Click(Sender: TObject);
begin
      btnInclui.Enabled := True;
      PG.ActivePage     := TabSheet1;
end;

procedure TframeProduto.UniBitBtn6Click(Sender: TObject);
begin
     PG.ActivePage := TabSheet2;
end;

procedure TframeProduto.eCodigoBarraExit(Sender: TObject);
begin
      if UniMainModule.qProdutosIDPRODUTO.AsString = '' then
      begin
           if eCodigoBarra.Text <> '' then
           begin
               with UniMainModule.QGeral do
               begin
                    close;
                    sql.Clear;
                    sql.Add('Select EAN From PRODUTOS where EAN = '+
                    QuotedStr(eCodigoBarra.Text)+' and IDEMITENTE = '+QuotedStr(UniMainModule.CodigoEmitente));
                    open;

                    if not IsEmpty then
                    begin
                         ShowMessage('Este código ja esta em uso para outro produto!');
                         eCodigoBarra.Clear;
                         eCodigoBarra.SetFocus;
                    end;
               end;
           end;
      end;
end;

procedure TframeProduto.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
      if Column.Field.Name = 'qProdutosCSTCOFINS' then
      begin
          if UniMainModule.qProdutosIDPRODUTO.AsString <> '' then
          begin
              MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
              procedure(Sender: TComponent; Res: Integer)
              begin
                  case Res of
                      mrYes :
                      begin
                      Try
                        UniMainModule.qProdutos.Delete;
                        UniMainModule.qProdutos.ApplyUpdates;
                        UniMainModule.qProdutos.CommitUpdates;

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

      if Column.Field.Name = 'qProdutosCSTPIS' then
      begin
        if UniMainModule.qProdutosIDPRODUTO.AsString <> '' then
        begin
          PG.ActivePageIndex := 1;
          UniMainModule.qProdutos.Edit;
        end;
      end;

      if Column.Field.Name = 'qProdutosCST' then
      begin
        if UniMainModule.qProdutosIDPRODUTO.AsString <> '' then
        begin
          PG.ActivePageIndex := 2;
          UniMainModule.qProdutos.Edit;
        end;
      end;
end;

procedure TframeProduto.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
   if (Column.Field.DataSet.FieldByName('ESTOQUE').value > 0) then
   begin
        Attribs.Font.Color := clBlack;
   end
   else
   begin
        Attribs.Font.Color := clRed;
        Attribs.Font.Style := [fsBold];
   end;
end;

procedure TframeProduto.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'CSTCOFINS') then
    begin
        DoNotDispose := True;
        OutImage     := fPrincipal.imgDelete.Picture.Graphic;
    end;
    if SameText(AField.FieldName, 'CSTPIS') then
    begin
        DoNotDispose := True;
        OutImage     := fPrincipal.imgEdit.Picture.Graphic;
    end;
    if SameText(AField.FieldName, 'CST') then
    begin
        DoNotDispose := True;
        OutImage     := fPrincipal.imgImposto.Picture.Graphic;
    end;
end;

procedure TframeProduto.UniFrameDestroy(Sender: TObject);
begin
  UniMainModule.qProdutos.Close;
  UniMainModule.qTES.Close;
  UniMainModule.qNCM.Close;
  UniMainModule.qCEST.Close;
end;

procedure TframeProduto.UniFrameCreate(Sender: TObject);
begin
      PG.ActivePage := UniTabSheet1;
      UniMainModule.qProdutos.Open;

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

      eEstoque.Enabled := false;
end;

end.
