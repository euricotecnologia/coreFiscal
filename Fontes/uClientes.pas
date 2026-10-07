unit uClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel,
  uniEdit, uniDBEdit, uniLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniDBLookupComboBox,
  uniMultiItem, uniComboBox, uniDBComboBox, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,ACBrValidador, uniDBNavigator, uniRadioGroup,
  uniBasicGrid, uniDBGrid, uniPageControl;

type
  TfClientes = class(TUniForm)
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    UniBitBtn5: TUniBitBtn;
    qClientes: TFDQuery;
    dsClientes: TDataSource;
    qClientesIDCLIENTE: TIntegerField;
    qClientesTIPOPESSOA: TStringField;
    qClientesRAZAOSOCIAL: TStringField;
    qClientesNOMEFANTASIA: TStringField;
    qClientesRG_IE: TStringField;
    qClientesCPF_CNPJ: TStringField;
    qClientesFONE: TStringField;
    qClientesFAX: TStringField;
    qClientesENDERECO: TStringField;
    qClientesNRO: TStringField;
    qClientesCOMPLEMENTO: TStringField;
    qClientesBAIRRO: TStringField;
    qClientesCIDADE: TStringField;
    qClientesCODMUNICIPIO: TStringField;
    qClientesUF: TStringField;
    qClientesCEP: TStringField;
    qClientesOBSERVACAO: TStringField;
    qClientesCONSUMIDORFINAL: TStringField;
    qClientesIDEMITENTE: TIntegerField;
    qMax: TFDQuery;
    qIbge: TFDQuery;
    qIbgeID: TStringField;
    qIbgeIDUF: TStringField;
    qIbgeNOME: TStringField;
    dsIbge: TDataSource;
    PG: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniPanel3: TUniPanel;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    Label9: TUniLabel;
    dbeNome: TUniDBEdit;
    Label1: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    Label11: TUniLabel;
    dbedit7: TUniDBEdit;
    Label12: TUniLabel;
    dbedit8: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniLabel12: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBEdit13: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniDBEdit14: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    dblTipo: TUniDBComboBox;
    dbcCf: TUniDBComboBox;
    dblUf: TUniDBComboBox;
    dblMunicipio: TUniDBLookupComboBox;
    UniPanel4: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    rFiltro: TUniRadioGroup;
    qClientePesq: TFDQuery;
    dsClientePesq: TDataSource;
    UniLabel2: TUniLabel;
    eCliePesq: TUniEdit;
    qClientePesqNOMEFANTASIA: TStringField;
    qClientePesqRAZAOSOCIAL: TStringField;
    qClientePesqRG_IE: TStringField;
    qClientePesqFONE: TStringField;
    qClientePesqCPF_CNPJ: TStringField;
    bPesq: TUniBitBtn;
    qClientePesqIDCLIENTE: TIntegerField;
    UniBitBtn1: TUniBitBtn;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    btnExcluir: TUniBitBtn;
    procedure dblMunicipioChange(Sender: TObject);
    procedure dblUfChange(Sender: TObject);
    procedure dsClientesDataChange(Sender: TObject; Field: TField);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure dsClientesStateChange(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniBitBtn5Click(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure bPesqClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    function ProximoCodigo(TableName, Field: String): Integer;
  public
    { Public declarations }
  end;

function fClientes: TfClientes;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDM, uPrincipal;

function fClientes: TfClientes;
begin
  Result := TfClientes(UniMainModule.GetFormInstance(TfClientes));
end;

procedure TfClientes.dblMunicipioChange(Sender: TObject);
begin
    if qClientes.State in [dsEdit,dsInsert] then
       qClientesCODMUNICIPIO.Value := qIbgeID.Value;
end;

procedure TfClientes.dblUfChange(Sender: TObject);
begin
    qIbge.Close;
    qIbge.SQL.Clear;
    qIbge.SQL.Text := 'select * from MUNICIPIOS where IDUF = :vUF order by NOME';
    qIbge.ParamByName('vUF').AsString := dblUf.Text;
    qIbge.Open;
    qIbge.First;
    dblMunicipio.Text := qIbgeNOME.Value;
end;

procedure TfClientes.dsClientesDataChange(Sender: TObject; Field: TField);
begin
      if qClientesTIPOPESSOA.Value = 'FISICA' then
      begin
           Label9.Caption := 'Nome';
           Label1.Caption := 'Apelido';
           Label11.Caption := 'CPF';
           Label12.Caption := 'RG';
      end
      else if qClientesTIPOPESSOA.Value = 'JURIDICA' then
      begin
          Label9.Caption := 'Razão Social';
          Label1.Caption := 'Nome Fantasia';
          Label11.Caption := 'CNPJ';
          Label12.Caption := 'Insc. Estadual';
      end;
end;

procedure TfClientes.dsClientesStateChange(Sender: TObject);
begin
      btnInclui.Enabled := qClientes.State in [dsBrowse];
      btnExcluir.Enabled := qClientes.State in [dsBrowse];
      btnSalva.Enabled := qClientes.State in [dsEdit, dsInsert];
      btnCancela.Enabled := qClientes.State in [dsEdit, dsInsert];
    //  dblcliente.Enabled := qClientes.State in [dsBrowse];
end;

function TfClientes.ProximoCodigo(TableName, Field: String): Integer;
begin
      qMax.Close;
      qMax.SQL.Clear;
      qMax.SQL.Add('SELECT MAX(' + Field + ') AS ULTIMO FROM ' + TableName);
      qMax.Open;

    if qMax.FieldByName('ULTIMO').AsString = '' then
       Result := 1 else
       Result := StrToInt(qMax.FieldByName('ULTIMO').AsString) + 1;
end;

procedure TfClientes.btnIncluiClick(Sender: TObject);
begin
       pg.ActivePage := UniTabSheet2;
       qClientes.Append;
       qClientesTIPOPESSOA.Value := 'FISICA';
       dblTipo.Text := 'FISICA';
       dblTipo.Setfocus;
end;

procedure TfClientes.btnSalvaClick(Sender: TObject);
begin
    if qClientes.State in [dsEdit,dsInsert] then
    begin
       if dblTipo.Text = 'FISICA' then
       begin
         dm.docValido.Documento := dm.soNumero(dbedit7.Text);
         dm.docValido.TipoDocto := docCPF;
         if not DM.docValido.validar then
         begin
          ShowMessage('O conteúdo do campo CPF está incorreto !');
          dbedit7.SetFocus;
          Abort;
         end;
       end
       else
       begin
         dm.docValido.Documento := dm.soNumero(dbedit7.Text);
         dm.docValido.TipoDocto := docCNPJ;
         if not dm.docValido.validar then
         begin
          ShowMessage('O conteúdo do campo CNPJ está incorreto !');
          dbedit7.SetFocus;
          Abort;
         end;

         dm.docValido.Documento   := dm.soNumero(dbedit8.Text);
         dm.docValido.TipoDocto   := docInscEst;
         dm.docValido.Complemento := dbluf.Text;
         if not dm.docValido.validar then
         begin
          ShowMessage('O conteúdo do campo Inscrição Estadual está incorreto !');
          dbedit8.SetFocus;
          Abort;
         end;
       end;


       if dbeNome.Text = '' then begin
          ShowMessage('Existem campos obrigatórios a serem preenchidos !');
          dbeNome.SetFocus;
          Abort;
       end;
       if qClientesIDCLIENTE.AsString = '' then begin
          qClientesIDCLIENTE.Value := ProximoCodigo('CLIENTES', 'IDCLIENTE');
          qClientes.FieldByName('IDEMITENTE').Value := strToInt(dm.CodigoEmitente);//
          qClientes.Post;
          btnInclui.SetFocus;
       end else begin
       qClientes.Post;
       btnInclui.SetFocus;
       end;
     //  frmPrincipal.UniCon.CommitRetaining;
       ShowMessage('Registro Atualizado!');
    end;
end;

procedure TfClientes.bPesqClick(Sender: TObject);
begin
      qClientePesq.Close;
      qClientepesq.SQL.Clear;
      qClientePesq.SQL.Add('select idCliente,nomeFantasia,RazaoSocial, '+
      ' RG_IE,FOne,cpf_cnpj from CLIENTES where IDEMITENTE = :IDEMITENTE ');
      if eCliePesq.Text <> '' then
      begin
           if rFiltro.ItemIndex = 0 then
              qclientepesq.SQL.Add(' and  nomeFantasia like :nome ')
           else
              qclientepesq.SQL.Add(' and  cpf_cnpj like :nome ');
      end;
      qclientepesq.SQL.Add(' order By NomeFantasia ');
      qClientePesq.ParamByName('IDEMITENTE').Value := strToInt(dm.CodigoEmitente);
      if eCliePesq.Text <> '' then
         qClientePesq.ParamByName('nome').AsString := '%'+eCliePesq.Text+'%';
      qClientePesq.Open;
end;

procedure TfClientes.btnCancelaClick(Sender: TObject);
begin
       qClientes.Cancel;
       btnInclui.SetFocus;
end;

procedure TfClientes.btnExcluirClick(Sender: TObject);
begin
    if qClientes.IsEmpty then
       Abort;
      MessageDlg('DESEJA EXCLUIR ESTE REGISTRO?', mtConfirmation, mbYesNo,
      procedure(Sender: TComponent; Res: Integer)
      begin
          case Res of
            mrYes :
            begin
                   qClientes.Delete;
            end;
            mrNo  :
            begin

            end;
          end;
      end);
end;

procedure TfClientes.UniBitBtn1Click(Sender: TObject);
begin
      PG.ActivePage := UniTabSheet1;
end;

procedure TfClientes.UniBitBtn5Click(Sender: TObject);
begin
      close;
end;

procedure TfClientes.UniDBGrid1DblClick(Sender: TObject);
begin
      qClientes.Close;
      qclientes.ParamByName('IDEMITENTE').Value := strToInt(dm.CodigoEmitente);
      qclientes.ParamByName('IDCLIENTE').Value  := qClientePesqIDCLIENTE.AsInteger;
      qclientes.Open();

      PG.ActivePage := UniTabSheet2;
end;

procedure TfClientes.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
      qClientes.Close;
      qClientePesq.Close;
      qMax.Close;
      qIbge.Close;
end;

procedure TfClientes.UniFormCreate(Sender: TObject);
begin
      qclientes.Open();

      qClientePesq.Close;
      qClientepesq.SQL.Clear;
      qClientePesq.SQL.Add('select IDCLIENTE, nomeFantasia,RazaoSocial,RG_IE,FOne,cpf_cnpj '+
      ' from CLIENTES where IDEMITENTE = :IDEMITENTE order By NomeFantasia ');
      qClientePesq.ParamByName('IDEMITENTE').Value := strToInt(dm.CodigoEmitente);
      qClientePesq.Open;
end;

end.
