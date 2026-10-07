unit uServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  uniGUIBaseClasses,  Data.DB, FireDAC.Comp.DataSet, uniDBEdit,
  uniLabel, uniBasicGrid, uniDBGrid, uniButton, uniBitBtn, uniEdit,
  uniRadioGroup, uniPanel, uniPageControl;

type
  TfServico = class(TUniFrame)
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
    evenda: TUniDBFormattedNumberEdit;
    qServico: TFDQuery;
    tServico: TFDTransaction;
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    UniLabel5: TUniLabel;
    UniLabel2: TUniLabel;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    dsServicos: TDataSource;
    qServicoIDEMITENTE: TIntegerField;
    qServicoID: TIntegerField;
    qServicoCODIGO: TIntegerField;
    qServicoNOME: TStringField;
    qServicoVALOR: TCurrencyField;
    qServicoCOMISSAO: TCurrencyField;
    procedure bPesqClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure dsServicosStateChange(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
  private
    procedure pesquisar;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uClsBase, uPrincipal;

{ TfServico }

procedure TfServico.bPesqClick(Sender: TObject);
begin
     Pesquisar;
end;

procedure TfServico.btnCancelaClick(Sender: TObject);
begin
     qServico.Cancel;
     btnInclui.Setfocus;
end;

procedure TfServico.btnIncluiClick(Sender: TObject);
begin
    PG.ActivePage := UniTabSheet2;
    if not qServico.Active then
       qServico.Active := true;
    qServico.Append;
    dbNome.Setfocus;
end;

procedure TfServico.btnSalvaClick(Sender: TObject);
var
  lbase : tbase;
  lcodcli : integer;
begin
    try
        if qServico.State in [dsEdit, dsInsert] then
        begin
            if dbNome.Text = '' then
            begin
              ShowMessage('Nome é um campo obrigatório!');
              dbNome.Setfocus;
              Abort;
            end;

            if qServicoCODIGO.IsNull then
            begin
              lbase := TBase.Create;
              qServicoID.Value              := lbase.pegaseg('SERVICOS', 'ID',UniMainModule.Banco);
              qServicoCODIGO.Value          := lbase.pegasegLocal('SERVICOS', 'codigo',UniMainModule.Banco);
              qServicoIDEMITENTE.AsInteger := UniMainModule.CodigoEmitente.ToInteger; //
              lbase.Free;
            end;

            qServico.post;
            qServico.ApplyUpdates;
            qServico.CommitUpdates;
        end;
        ShowMessage('Registro atualizado com sucesso!');
    except
      On E: Exception do
      begin
        showmessage('Ocorreu um erro: '+e.Message);
      end;
    end;
end;

procedure TfServico.btnVoltarClick(Sender: TObject);
begin
     PG.ActivePage := UniTabSheet1;
end;

procedure TfServico.dsServicosStateChange(Sender: TObject);
begin
    btnInclui.Enabled  := qServico.State in [dsBrowse];
    btnVoltar.Enabled  := qServico.State in [dsBrowse];
    btnSalva.Enabled   := qServico.State in [dsEdit, dsInsert];
    btnCancela.Enabled := qServico.State in [dsEdit, dsInsert];
end;

procedure TfServico.pesquisar;
begin
    with qServico do
    begin
        close;
        sql.Clear;
        sql.Add('select * from SERVICOS where IDEMITENTE = :IDEMITENTE ');
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

procedure TfServico.UniDBGrid1DblClick(Sender: TObject);
begin
    if qServicoID.AsString <> '' then
    begin
        PG.ActivePage := UniTabSheet2;
        qServico.Edit;
    end;
end;

end.
