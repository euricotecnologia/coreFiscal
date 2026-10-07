unit uVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniGUIBaseClasses,
  uniDBRadioGroup, uniImage, uniSpeedButton, uniDBLookupComboBox, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBEdit, uniLabel, uniBasicGrid, uniDBGrid,
  uniEdit, uniRadioGroup, uniPageControl, uniButton, uniBitBtn, uniPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfVendedor = class(TUniFrame)
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    dsVendedores: TDataSource;
    UniLabel5: TUniLabel;
    PG: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel4: TUniPanel;
    rFiltro: TUniRadioGroup;
    eCliePesq: TUniEdit;
    bPesq: TUniBitBtn;
    UniDBGrid1: TUniDBGrid;
    UniTabSheet2: TUniTabSheet;
    UniPanel3: TUniPanel;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    Label9: TUniLabel;
    dbNome: TUniDBEdit;
    Label11: TUniLabel;
    btnVoltar: TUniBitBtn;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    btnExcluir: TUniBitBtn;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    evenda: TUniDBFormattedNumberEdit;
    qVendedor: TFDQuery;
    tVendedores: TFDTransaction;
    qVendedorIDEMITENTE: TIntegerField;
    qVendedorID: TIntegerField;
    qVendedorCODIGO: TIntegerField;
    qVendedorNOME: TStringField;
    qVendedorLOGIN: TStringField;
    qVendedorSENHA: TStringField;
    qVendedorNOME_VENDA: TStringField;
    qVendedorCOMISSAO: TCurrencyField;
    procedure dsVendedoresStateChange(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure bPesqClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniFrameCreate(Sender: TObject);
  private
    procedure pesquisar;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uClsBase, uPrincipal;



procedure TfVendedor.bPesqClick(Sender: TObject);
begin
     Pesquisar;
end;

procedure TfVendedor.btnCancelaClick(Sender: TObject);
begin
     qVendedor.Cancel;
     btnInclui.Setfocus;
end;

procedure TfVendedor.btnIncluiClick(Sender: TObject);
begin
    PG.ActivePage := UniTabSheet2;
    if not qVendedor.Active then
       qVendedor.Active := true;
    qVendedor.Append;
    dbNome.Setfocus;
end;

procedure TfVendedor.btnSalvaClick(Sender: TObject);
var
  lbase : tbase;
  lcodcli : integer;
begin
    try
        if qVendedor.State in [dsEdit, dsInsert] then
        begin
            if dbNome.Text = '' then
            begin
              ShowMessage( 'Nome é um campo obrigatório!');
              dbNome.Setfocus;
              Abort;
            end;

            if qVendedorCODIGO.IsNull then
            begin
              lbase := TBase.Create;
              qVendedorID.Value              := lbase.pegaseg('VENDEDORES', 'ID',UniMainModule.Banco);
              qVendedorCODIGO.Value          := lbase.pegasegLocal('VENDEDORES', 'codigo',UniMainModule.Banco);
              qVendedorIDEMITENTE.AsInteger := UniMainModule.CodigoEmitente.ToInteger; //
              lbase.Free;
            end;

            qVendedor.post;
            qVendedor.ApplyUpdates;
            qVendedor.CommitUpdates;
        end;

        ShowMessage('Registro atualizado com sucesso!');

    except
      On E: Exception do
      begin
        showmessage('Ocorreu um erro: '+e.Message);
      end;
    end;
end;

procedure TfVendedor.btnVoltarClick(Sender: TObject);
begin
     PG.ActivePage := UniTabSheet1;
end;

procedure TfVendedor.dsVendedoresStateChange(Sender: TObject);
begin
    btnInclui.Enabled  := qVendedor.State in [dsBrowse];
    btnVoltar.Enabled  := qVendedor.State in [dsBrowse];
    btnSalva.Enabled   := qVendedor.State in [dsEdit, dsInsert];
    btnCancela.Enabled := qVendedor.State in [dsEdit, dsInsert];
    // dblcliente.Enabled := qClientes.State in [dsBrowse];
end;

procedure TfVendedor.pesquisar;
begin
    with qVendedor do
    begin
        close;
        sql.Clear;
        sql.Add('select * from VENDEDORES where IDEMITENTE = :IDEMITENTE ');
        if eCliePesq.Text <> '' then
        begin
          if rFiltro.ItemIndex = 0 then
            SQL.Add(' and  nome like :nome ')
          else if rFiltro.ItemIndex = 1 then
            SQL.Add(' and  login like :nome ')    ;
          ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
        end;
        SQL.Add(' order By nome ');
        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
        Open;
    end;
end;

procedure TfVendedor.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
//    if Column.Field.Name = 'qClientesUF' then
//    begin
//        if qVendedorID.AsString <> '' then
//        begin
//            sa.QuestionBasic('Deseja excluir este registro?',
//            procedure(const ButtonClicked: TAButton)
//            begin
//                if AButtonToStr(ButtonClicked) = 'Confirm' then
//                begin
//                    Try
//                        UniMainModule.qClientes.Delete;
//      //                  UniMainModule.qClientes.post;
//                        UniMainModule.qClientes.ApplyUpdates;
//                        unimainModule.qClientes.CommitUpdates;
//                        sa.ScreenMask.Hide;
//                    except on e: exception do
//                    begin
//                        sa.ScreenMask.Hide;
//                        UniMainModule.sa.error('Erro','Ocorreu o seguinte erro: '+e.Message);
//                    end;
//                    end;
//                end
//                else
//                  UniMainModule.sa.ScreenMask.Hide;
//            end);
//        end;
//        UniMainModule.sa.ScreenMask.Hide;
//    end;

    if Column.Field.Name = 'qVendedorLOGIN' then
    begin
        if qVendedorID.AsString <> '' then
        begin
            PG.ActivePage := UniTabSheet2;
            qVendedor.Edit;
        end;
    end;
end;


procedure TfVendedor.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'UF') then
    begin
      DoNotDispose := True;
      OutImage := fPrincipal.imgDelete.Picture.Graphic;
    end;

    if SameText(AField.FieldName, 'LOGIN') then
    begin
      DoNotDispose := True;
      OutImage := fPrincipal.imgEdit.Picture.Graphic;
    end;
end;

procedure TfVendedor.UniFrameCreate(Sender: TObject);
begin
  //   Pesquisar;
end;

end.
