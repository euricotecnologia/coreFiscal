unit uframetransf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,ACBrValidador,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,ACBrConsultaCNPJ,
  uniGUIClasses, uniGUIFrame, uniSpeedButton, uniDBLookupComboBox, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBEdit, uniLabel, uniBasicGrid, uniDBGrid,
  uniEdit, uniRadioGroup, uniPageControl, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniPanel, Data.DB;

type
  TfrmTransp = class(TUniFrame)
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
    btnVoltar: TUniBitBtn;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    dsTransp: TDataSource;
    UniLabel15: TUniLabel;
    dblTipo: TUniDBComboBox;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    EditCNPJ: TUniDBEdit;
    Label12: TUniLabel;
    dbedit8: TUniDBEdit;
    Label11: TUniLabel;
    Label9: TUniLabel;
    dbeNome: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniLabel10: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    dblUf: TUniDBComboBox;
    UniLabel12: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    procedure bPesqClick(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure dsTranspStateChange(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
  private
    procedure Editar;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uPrincipal, uClsBase;



procedure TfrmTransp.bPesqClick(Sender: TObject);
begin
      with UniMainModule.qTransp do
      begin
          close;
          sql.Clear;
          sql.Add('select * from transportador');
          sql.Add('where idemitente = :e');
          ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          if eCliePesq.Text <> '' then
          begin
            if rFiltro.ItemIndex = 0 then
              SQL.Add(' and  NOME     like :nome ')
            else
              SQL.Add(' and  cpf_cnpj like :nome ');
            ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
          end;
          open;
      end;
end;

procedure TfrmTransp.btnCancelaClick(Sender: TObject);
begin
      UniMainModule.qTransp.Cancel;
      btnInclui.Setfocus;
end;

procedure TfrmTransp.btnIncluiClick(Sender: TObject);
begin
      PG.ActivePage := UniTabSheet2;
      UniMainModule.qTransp.open;
      UniMainModule.qTransp.Append;
      UniMainModule.qTranspTIPOPESSOA.Value := 'JURIDICA';
      dblTipo.Text              := 'JURIDICA';
      dblTipo.Setfocus;
end;

procedure TfrmTransp.btnSalvaClick(Sender: TObject);
var
  lbase : tbase;
begin
    if UniMainModule.qTransp.State in [dsEdit, dsInsert] then
    begin
        if dblTipo.Text = 'FISICA' then
        begin
            UniMainModule.docValido.Documento := UniMainModule.soNumero(EditCNPJ.Text);
            UniMainModule.docValido.TipoDocto := docCPF;

            if not UniMainModule.docValido.validar then
            begin
              ShowMessage('O conteúdo do campo CPF está incorreto!');
              EditCNPJ.Setfocus;
              Abort;
            end;
        end
        else
        begin
            UniMainModule.docValido.Documento := UniMainModule.soNumero(EditCNPJ.Text);
            UniMainModule.docValido.TipoDocto := docCNPJ;

            if not UniMainModule.docValido.validar then
            begin
                ShowMessage('O conteúdo do campo CNPJ está incorreto!');
                EditCNPJ.Setfocus;
                Abort;
            end;

            UniMainModule.docValido.Documento   := UniMainModule.soNumero(dbedit8.Text);
            UniMainModule.docValido.TipoDocto   := docInscEst;
            UniMainModule.docValido.Complemento := UniDBComboBox1.Text;

            if not UniMainModule.docValido.validar then
            begin
                ShowMessage('O conteúdo do campo Inscrição Estadual está incorreto!');
                dbedit8.Setfocus;
                Abort;
            end;
        end;

        if dbeNome.Text = '' then
        begin
            ShowMessage('Existem campos obrigatórios a serem preenchidos!');
            dbeNome.Setfocus;
            Abort;
        end;

        if UniMainModule.qTranspIDTRANSP.AsString.IsEmpty then
        begin
            lbase := TBase.Create;
            UniMainModule.qTranspIDTRANSP.AsInteger                     := lbase.pegaseg('TRANSPORTADOR', 'IDTRANSP',UniMainModule.Banco);
            UniMainModule.qTransp.FieldByName('IDEMITENTE').AsInteger   := UniMainModule.CodigoEmitente.ToInteger; //
            UniMainModule.qTransp.post;
            UniMainModule.qTransp.ApplyUpdates;
            UniMainModule.qTransp.CommitUpdates;
            lbase.Free;
            dblTipo.Setfocus;
        end
        else
        begin
            UniMainModule.qTransp.post;
            UniMainModule.qTransp.ApplyUpdates;
            UniMainModule.qTransp.CommitUpdates;
            dblTipo.Setfocus;
        end;
    end;
end;

procedure TfrmTransp.btnVoltarClick(Sender: TObject);
begin
     if UniMainModule.qTransp.State in [dsEdit, dsInsert] then
        UniMainModule.qTransp.Cancel;

     PG.ActivePage := UniTabSheet1;
end;

procedure TfrmTransp.dsTranspStateChange(Sender: TObject);
begin
    btnInclui.Enabled  := UniMainModule.qTransp.State in [dsBrowse];
  //  btnVoltar.Enabled  := UniMainModule.qTransp.State in [dsBrowse];
    btnSalva.Enabled   := UniMainModule.qTransp.State in [dsEdit, dsInsert];
    btnCancela.Enabled := UniMainModule.qTransp.State in [dsEdit, dsInsert];
end;

procedure TfrmTransp.Editar;
begin
    if UniMainModule.qTranspIDTRANSP.AsString <> '' then
    begin
        PG.ActivePage := UniTabSheet2;
        UniMainModule.qTransp.Edit;
    end;
end;

procedure TfrmTransp.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
    if Column.Field.Name = 'qTranspUF' then
    begin
        if UniMainModule.qTranspIDTRANSP.AsString <> '' then
        begin
            MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
            procedure(Sender: TComponent; Res: Integer)
            begin
                case Res of
                    mrYes :
                    begin
                    Try
                        UniMainModule.qTransp.Delete;
                        UniMainModule.qTransp.ApplyUpdates;
                        UniMainModule.qTransp.CommitUpdates;

                    except on e: exception do
                    begin
                        ShowMessage('Erro:'+e.Message);
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

    if Column.Field.Name = 'qTranspNUMERO' then
       Editar;
end;

procedure TfrmTransp.UniDBGrid1DblClick(Sender: TObject);
begin
     Editar;
end;

procedure TfrmTransp.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'UF') then
    begin
        DoNotDispose := True;
        OutImage := fPrincipal.imgDelete.Picture.Graphic;
    end;

    if SameText(AField.FieldName, 'NUMERO') then
    begin
        DoNotDispose := True;
        OutImage := fPrincipal.imgEdit.Picture.Graphic;
    end;
end;

end.
