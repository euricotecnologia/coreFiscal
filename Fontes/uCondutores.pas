unit uCondutores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniGUIBaseClasses,
  uniDBEdit, uniLabel, uniBasicGrid, uniDBGrid, uniEdit, uniRadioGroup,
  uniPageControl, uniButton, uniBitBtn, uniPanel;

type
  TfCondutores = class(TUniFrame)
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
    dbNome: TUniDBEdit;
    Label11: TUniLabel;
    dbCpf: TUniDBEdit;
    btnVoltar: TUniBitBtn;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    dsCondutores: TDataSource;
    btnExcluir: TUniBitBtn;
    UniLabel5: TUniLabel;
    procedure btnCancelaClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure dsCondutoresStateChange(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure bPesqClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uClsBase, uPrincipal;



procedure TfCondutores.bPesqClick(Sender: TObject);
begin
    with UniMainModule.qCondutores do
    begin
        close;
        sql.Clear;
        sql.Add('select * from CONDUTORES WHERE ID_EMITENTE = :IDEMITENTE  ');
        if eCliePesq.Text <> '' then
        begin
          if rFiltro.ItemIndex = 0 then
            SQL.Add(' and  nome like :nome ')
          else
            SQL.Add(' and  cpf like :nome ');
          ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
        end;
        SQL.Add(' order by NOME ');
        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
        Open;
    end;
end;

procedure TfCondutores.btnCancelaClick(Sender: TObject);
begin
      uniMainModule.qCondutores.Cancel;
      btnInclui.SetFocus;
end;

procedure TfCondutores.btnIncluiClick(Sender: TObject);
begin
     PG.ActivePage := UniTabSheet2;
     uniMainModule.qCondutores.Append;
     dbNome.Setfocus;
end;

procedure TfCondutores.btnSalvaClick(Sender: TObject);
var   lbase: TBase;
begin
     try
         if uniMainModule.qCondutores.State in [dsEdit,dsInsert] then
         begin
             if dbNome.Text = '' then
             begin
                  ShowMessage('Existem campos obrigatórios a serem preenchidos !');
                  dbNome.SetFocus;
                  Abort;
             end;

             if dbCpf.Text = '' then
             begin
                  ShowMessage('Existem campos obrigatórios a serem preenchidos !');
                  dbCpf.SetFocus;
                  Abort;
             end;

             if uniMainModule.qCondutoresCODIGO.AsString = '' then
             begin
                  uniMainModule.qCondutoresCODIGO.Value         := lbase.pegaseg('CONDUTORES', 'CODIGO',UniMainModule.Banco);
                  uniMainModule.qCondutoresID_EMITENTE.asString := uniMainModule.CodigoEmitente;
                  uniMainModule.qCondutores.Post;
                  uniMainModule.qCondutores.ApplyUpdates;
                  uniMainModule.qCondutores.CommitUpdates;
                  btnInclui.SetFocus;
             end
             else
             begin
                  uniMainModule.qCondutores.Post;
                  uniMainModule.qCondutores.ApplyUpdates;
                  uniMainModule.qCondutores.CommitUpdates;
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

procedure TfCondutores.btnVoltarClick(Sender: TObject);
begin
      PG.ActivePage := UniTabSheet1;
end;

procedure TfCondutores.dsCondutoresStateChange(Sender: TObject);
begin
      btnInclui.Enabled  := uniMainModule.qCondutores.State in [dsBrowse];
      btnExcluir.Enabled := uniMainModule.qCondutores.State in [dsBrowse];
      btnVoltar.Enabled  := UniMainModule.qCondutores.State in [dsBrowse];
      btnSalva.Enabled   := uniMainModule.qCondutores.State in [dsEdit, dsInsert];
      btnCancela.Enabled := uniMainModule.qCondutores.State in [dsEdit, dsInsert];
end;

procedure TfCondutores.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
    if Column.Field.Name = 'qCondutoresID_EMITENTE' then
    begin
        if UniMainModule.qCondutoresCODIGO.AsString <> '' then
        begin
            PG.ActivePage := UniTabSheet2;
            UniMainModule.qCondutores.Edit;
            dbNome.SetFocus;
        end;
    end;
end;

procedure TfCondutores.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'ID_EMITENTE') then
    begin
      DoNotDispose := True;
      OutImage := fPrincipal.imgEdit.Picture.Graphic;
    end;
end;

procedure TfCondutores.UniFrameCreate(Sender: TObject);
begin
     uniMainModule.qCondutores.Close;
     uniMainModule.qCondutores.ParamByName('IDEMITENTE').asString := uniMainModule.CodigoEmitente;
     uniMainModule.qCondutores.Open;
end;

end.
