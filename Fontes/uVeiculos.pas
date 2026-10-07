unit uVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBEdit, uniLabel, uniBasicGrid, uniDBGrid,
  uniEdit, uniRadioGroup, uniPageControl, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniPanel, Data.DB, uniMultiItem,
  uniComboBox, uniDBComboBox;

type
  TfVeiculos = class(TUniFrame)
    dsVeiculos: TDataSource;
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
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
    dbCarro: TUniDBEdit;
    Label11: TUniLabel;
    dbPlaca: TUniDBEdit;
    btnVoltar: TUniBitBtn;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    btnExcluir: TUniBitBtn;
    UniLabel2: TUniLabel;
    dbUF: TUniDBComboBox;
    UniLabel3: TUniLabel;
    UniLabel5: TUniLabel;
    dbTara: TUniDBFormattedNumberEdit;
    procedure bPesqClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure dsVeiculosStateChange(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uClsBase, uPrincipal;



procedure TfVeiculos.bPesqClick(Sender: TObject);
begin
    with UniMainModule.qVeiculo do
    begin
        close;
        sql.Clear;
        sql.Add('select id_Emitente,ID,CODIGO,CARRO,PLACA,UF,TARA from veiculos '+
        ' WHERE ID_EMITENTE = :IDEMITENTE   ');
        if eCliePesq.Text <> '' then
        begin
          if rFiltro.ItemIndex = 0 then
            SQL.Add(' and  CARRO like :nome ')
          else
            SQL.Add(' and  PLACA like :nome ');
          ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
        end;
        SQL.Add(' order by CARRO ');
        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
        Open;
    end;
end;

procedure TfVeiculos.btnCancelaClick(Sender: TObject);
begin
      uniMainModule.qVeiculo.Cancel;
      btnInclui.SetFocus;
end;

procedure TfVeiculos.btnIncluiClick(Sender: TObject);
begin
     PG.ActivePage := UniTabSheet2;
     uniMainModule.qVeiculo.Append;
     dbcarro.Setfocus;
end;

procedure TfVeiculos.btnSalvaClick(Sender: TObject);
var   lbase: TBase;
begin
     try
     if uniMainModule.qVeiculo.State in [dsEdit,dsInsert] then
     begin
         if dbCarro.Text = '' then
         begin
              ShowMessage('O campo carro é obrigatório!');
              dbcarro.SetFocus;
              Abort;
         end;

         if dbPlaca.Text = '' then
         begin
              ShowMessage('o Campo Placa é obrigatório!');
              dbPlaca.SetFocus;
              Abort;
         end;

         if dbuf.Text = '' then
         begin
              ShowMessage('A UF é obrigatória!');
              dbuf.SetFocus;
              Abort;
         end;

         if dbtara.value = 0 then
         begin
              ShowMessage('O campo tara é obrigatório!');
              dbtara.SetFocus;
              Abort;
         end;

         if uniMainModule.qVeiculoCODIGO.AsString = '' then
         begin
              uniMainModule.qVeiculoID.Value             := lbase.pegaseg('VEICULOS', 'ID',UniMainModule.Banco);
              uniMainModule.qVeiculoID_EMITENTE.asString := uniMainModule.CodigoEmitente;
              uniMainModule.qVeiculoCODIGO.Value         := lbase.pegaseg('VEICULOS', 'CODIGO',UniMainModule.Banco);
              uniMainModule.qVeiculo.Post;
              uniMainModule.qVeiculo.ApplyUpdates;
              uniMainModule.qVeiculo.CommitUpdates;
              btnInclui.SetFocus;
         end
         else
         begin
              uniMainModule.qVeiculo.Post;
              uniMainModule.qVeiculo.ApplyUpdates;
              uniMainModule.qVeiculo.CommitUpdates;
              btnInclui.SetFocus;
         end;

         ShowMessage('Registro atualizado com sucesso!');
     end;
     except
          On E: Exception do
          begin
               ShowMessage('Ocorreu um erro: '+e.Message);
          end;
     end;
end;

procedure TfVeiculos.btnVoltarClick(Sender: TObject);
begin
     PG.ActivePage := UniTabSheet1;
end;

procedure TfVeiculos.dsVeiculosStateChange(Sender: TObject);
begin
      btnInclui.Enabled  := uniMainModule.qveiculo.State in [dsBrowse];
      btnExcluir.Enabled := uniMainModule.qveiculo.State in [dsBrowse];
      btnVoltar.Enabled  := UniMainModule.qveiculo.State in [dsBrowse];
      btnSalva.Enabled   := uniMainModule.qveiculo.State in [dsEdit, dsInsert];
      btnCancela.Enabled := uniMainModule.qveiculo.State in [dsEdit, dsInsert];
end;

procedure TfVeiculos.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
    if Column.Field.Name = 'qVeiculoID' then
    begin
        if UniMainModule.qVeiculoCODIGO.AsString <> '' then
        begin
            PG.ActivePage := UniTabSheet2;
            UniMainModule.qVeiculo.Edit;
            dbCarro.SetFocus;
        end;
    end;
end;

procedure TfVeiculos.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'ID') then
    begin
        DoNotDispose := True;
        OutImage := fPrincipal.imgEdit.Picture.Graphic;
    end;

    if SameText(AField.FieldName, 'CODIGO') then
    begin
        DoNotDispose := True;
        OutImage     := fPrincipal.imgDelete.Picture.Graphic;
    end;
end;

procedure TfVeiculos.UniFrameCreate(Sender: TObject);
begin
     uniMainModule.qVeiculo.Close;
     uniMainModule.qVeiculo.ParamByName('IDEMITENTE').asString := uniMainModule.CodigoEmitente;
     uniMainModule.qVeiculo.Open;
end;

end.
