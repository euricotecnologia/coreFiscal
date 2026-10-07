unit uCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, ACBrValidador,
  uniGUIClasses, uniGUIForm, Data.DB, uniGUIBaseClasses,
  uniCheckBox, uniDBCheckBox, uniEdit, uniImage, uniRadioGroup, uniDBRadioGroup,
  uniSpeedButton, uniDBLookupComboBox, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBEdit, uniPageControl, uniLabel, uniButton, uniBitBtn, uniPanel;

type
  TfCadClientes = class(TUniForm)
    dsClientes: TDataSource;
    dsIbge: TDataSource;
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    UniLabel5: TUniLabel;
    PG: TUniPageControl;
    UniTabSheet2: TUniTabSheet;
    UniPanel3: TUniPanel;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    Label9: TUniLabel;
    eRazao: TUniDBEdit;
    Label1: TUniLabel;
    eFantasia: TUniDBEdit;
    Label11: TUniLabel;
    EditCNPJ: TUniDBEdit;
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
    dbIbge: TUniDBEdit;
    UniLabel11: TUniLabel;
    eCEP: TUniDBEdit;
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
    btnVoltar: TUniBitBtn;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    bCep: TUniSpeedButton;
    bCnpj: TUniSpeedButton;
    bCidade: TUniSpeedButton;
    UniLabel2: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    bCnpj2: TUniSpeedButton;
    dbTipo: TUniDBRadioGroup;
    pCNPJ: TUniPanel;
    UniPanel2: TUniPanel;
    Image1: TUniImage;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    EditCaptcha: TUniEdit;
    bEnviarEmal: TUniBitBtn;
    bCancelarEmail: TUniBitBtn;
    UniLabel19: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    cEnvioAutomatico: TUniDBCheckBox;
    procedure btnIncluiClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure dblMunicipioChange(Sender: TObject);
    procedure dblUfChange(Sender: TObject);
    procedure dsClientesDataChange(Sender: TObject; Field: TField);
    procedure dsClientesStateChange(Sender: TObject);
    procedure EditCNPJExit(Sender: TObject);
    procedure bCancelarEmailClick(Sender: TObject);
    procedure bCepClick(Sender: TObject);
    procedure bCidadeClick(Sender: TObject);
    procedure bCnpj2Click(Sender: TObject);
    procedure bCnpjClick(Sender: TObject);
    procedure bEnviarEmalClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniLabel3Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private

    procedure CarregaCidades;

  public

    wCodigo : String;

  end;

function fCadClientes: TfCadClientes;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uPesquisa, uJSON, Vcl.Imaging.pngimage, uClsBase;

function fCadClientes: TfCadClientes;
begin
  Result := TfCadClientes(UniMainModule.GetFormInstance(TfCadClientes));
end;

procedure TfCadClientes.bCancelarEmailClick(Sender: TObject);
begin
pCNPJ.Visible := False;
end;

procedure TfCadClientes.bCepClick(Sender: TObject);
 var
  URL, Retorno: String;
  JsonStreamRetorno, JsonStreamEnvio: TStringStream;
  lResponse : TStringStream;
  lParams :TStringList;
  resposta : AnsiString;
  json: TJSONObject;
begin
   URL := 'https://viacep.com.br/ws/' + UniMainModule.soNumero( eCep.Text ) + '/json/';

   JsonStreamEnvio   := TStringStream.Create(URL);
   JsonStreamRetorno := TStringStream.Create('');
   lResponse         := TStringStream.Create('');

   lResponse := TStringStream.Create('');

   json := TJSONObject.create();
   json.create(unimainmodule.IdHTTP1.Get(URL));

   if bcep.Tag <> 1 then
   begin
       UniMainModule.qClientesENDERECO.AsString     := json.getString('logradouro');
       UniMainModule.qClientesCOMPLEMENTO.AsString  := json.getString('complemento');
       UniMainModule.qClientesBAIRRO.AsString       := json.getString('bairro');
       bcep.Tag := 0;
   end;
   UniMainModule.qClientesCIDADE.AsString       := json.getString('ibge');
   UniMainModule.qClientesUF.AsString           := json.getString('uf');
   UniMainModule.qClientesCODMUNICIPIO.AsString := json.getString('ibge');
   json.Free;

   CarregaCidades;
end;

procedure TfCadClientes.bCidadeClick(Sender: TObject);
begin
    fPesquisa.Tag        := 3;
    fPesquisa.parametro1 := dblUf.Text;
    fPesquisa.showModal;

    dblMunicipio.KeyValue                     := fPesquisa.wCodigo;
    UniMainModule.qClientesCODMUNICIPIO.Value := fPesquisa.wCodigo;
    UniDBEdit12.Setfocus;
end;


procedure TfCadClientes.bCnpj2Click(Sender: TObject);
var
  URL, Retorno: String;
  JsonStreamRetorno, JsonStreamEnvio: TStringStream;
  lResponse : TStringStream;
  lParams :TStringList;
  resposta : AnsiString;
  json: TJSONObject;

begin
   URL := 'http://www.receitaws.com.br/v1/cnpj/' + UniMainModule.soNumero( EditCNPJ.Text );

   JsonStreamEnvio   := TStringStream.Create(URL);
   JsonStreamRetorno := TStringStream.Create('');
   lResponse := TStringStream.Create('');

   lResponse := TStringStream.Create('');

   json := TJSONObject.create();
   json.create(unimainmodule.IdHTTP1.Get(URL));

  UniMainModule.qClientesRAZAOSOCIAL.AsString  := json.getString('nome');
  UniMainModule.qClientesNOMEFANTASIA.AsString := json.getString('fantasia');
  UniMainModule.qClientesENDERECO.AsString     := json.getString('logradouro');
  UniMainModule.qClientesNRO.AsString          := json.getString('numero');
  UniMainModule.qClientesCOMPLEMENTO.AsString  := json.getString('complemento');
  UniMainModule.qClientesBAIRRO.AsString       := json.getString('bairro');
  UniMainModule.qClientesCEP.AsString          := json.getString('cep');
  UniMainModule.qClientesFONE.AsString         := json.getString('telefone');
  UniMainModule.qClientesUF.AsString           := json.getString('uf');

  bcep.Tag := 1;
  bCep.click;
end;


procedure TfCadClientes.bCnpjClick(Sender: TObject);
begin
      pCNPJ.Visible := True;
      UniLabel3Click(UniLabel3);
      EditCaptcha.Clear;
      EditCaptcha.Setfocus;
end;

procedure TfCadClientes.bEnviarEmalClick(Sender: TObject);
var
  I: Integer;
begin
  if EditCaptcha.Text <> '' then
  begin
    try
      if UniMainModule.ACBrConsultaCNPJ1.Consulta(EditCNPJ.Text, EditCaptcha.Text, False) then
      begin
        UniMainModule.qClientesRAZAOSOCIAL.AsString  := UniMainModule.ACBrConsultaCNPJ1.RazaoSocial;
        UniMainModule.qClientesNOMEFANTASIA.AsString := UniMainModule.ACBrConsultaCNPJ1.Fantasia;
        UniMainModule.qClientesENDERECO.AsString     := UniMainModule.ACBrConsultaCNPJ1.Endereco;
        UniMainModule.qClientesNRO.AsString          := UniMainModule.ACBrConsultaCNPJ1.Numero;
        UniMainModule.qClientesCOMPLEMENTO.AsString  := UniMainModule.ACBrConsultaCNPJ1.Complemento;
        UniMainModule.qClientesBAIRRO.AsString       := UniMainModule.ACBrConsultaCNPJ1.Bairro;
        UniMainModule.qClientesUF.AsString           := UniMainModule.ACBrConsultaCNPJ1.UF;
        UniMainModule.qClientesCIDADE.AsString       := UniMainModule.ACBrConsultaCNPJ1.IBGE_Municipio;
        UniMainModule.qClientesCODMUNICIPIO.AsString := UniMainModule.ACBrConsultaCNPJ1.IBGE_Municipio;
        UniMainModule.qClientesCEP.AsString          := UniMainModule.ACBrConsultaCNPJ1.CEP;
        UniMainModule.qClientesFONE.AsString         := UniMainModule.ACBrConsultaCNPJ1.Telefone;

        //UniMainModule.NFE.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].IE;
        // EditSituacao.Text    := ACBrConsultaCNPJ1.Situacao;
        // EditCNAE1.Text       := ACBrConsultaCNPJ1.CNAE1;
        // EditEmail.Text       := ACBrConsultaCNPJ1.EndEletronico;
        // ListCNAE2.Clear;
        // for I := 0 to ACBrConsultaCNPJ1.CNAE2.Count - 1 do
        // ListCNAE2.Items.Add(ACBrConsultaCNPJ1.CNAE2[I]);
      end;
    finally
      UniMainModule.ACBrCEP1.BuscarPorCEP(eCEP.Text);

      For I := 0 to UniMainModule.ACBrCEP1.Enderecos.Count - 1 do
      begin
        with UniMainModule.ACBrCEP1.Enderecos[I] do
        begin
          UniMainModule.qClientesCIDADE.AsString       := UniMainModule.ACBrCEP1.Enderecos[I].IBGE_Municipio;
          UniMainModule.qClientesUF.AsString           := UniMainModule.ACBrCEP1.Enderecos[I].UF;
          UniMainModule.qClientesCODMUNICIPIO.AsString := UniMainModule.ACBrCEP1.Enderecos[I].IBGE_Municipio;
        end;
      end;
    end;
    pCNPJ.Visible := False;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha!');
    EditCaptcha.Setfocus;
  end;
end;

procedure TfCadClientes.btnCancelaClick(Sender: TObject);
begin
     UniMainModule.qClientes.Cancel;
     btnInclui.Setfocus;
end;

procedure TfCadClientes.btnIncluiClick(Sender: TObject);
begin
      PG.ActivePage := UniTabSheet2;
      UniMainModule.qClientes.Append;
      UniMainModule.qClientesTIPOPESSOA.Value := 'FISICA';
      dblTipo.Text                            := 'FISICA';
      UniMainModule.qClientesCONSUMIDORFINAL.AsString := 'SIM';
      dblTipo.Setfocus;
end;

procedure TfCadClientes.btnSalvaClick(Sender: TObject);
var
  lbase : tbase;
  lcodcli : integer;
begin
    try
        if UniMainModule.qClientes.State in [dsEdit, dsInsert] then
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
                UniMainModule.docValido.Complemento := dblUf.Text;
                if not UniMainModule.docValido.validar then
                begin
                    ShowMessage('O conteúdo do campo INSCRIÇÃO ESTADUAL está incorreto!');
                    dbedit8.Setfocus;
                    Abort;
                end;
            end;

            if eRazao.Text = '' then
            begin
                ShowMessage('Nome/Razão é um campo obrigatório!');
                eRazao.Setfocus;
                Abort;
            end;

            if eFantasia.Text = '' then
            begin
                ShowMessage('Fantasia/Apelido é um campo obrigatório!');
                eFantasia.Setfocus;
                Abort;
            end;

            if UniMainModule.qClientesIDCLIENTE.IsNull then
            begin
                lbase := TBase.Create;
                UniMainModule.qClientesIDCLIENTE.Value      := lbase.pegaseg('CLIENTES', 'IDCLIENTE',UniMainModule.Banco);
                UniMainModule.qClientesIDEMITENTE.AsInteger := UniMainModule.CodigoEmitente.ToInteger; //
                lbase.Free;
            end;

            UniMainModule.qClientes.post;
            UniMainModule.qClientes.ApplyUpdates;
            UniMainModule.qClientes.CommitUpdates;
        end;
      //  UniMainModule.sa.success('Sucesso', 'Registro atualizado com sucesso!');
    except
      On E: Exception do
      begin
        showmessage('Ocorreu um erro: '+e.Message);
      end;
    end;
end;

procedure TfCadClientes.btnVoltarClick(Sender: TObject);
begin
     close;
end;

procedure TfCadClientes.CarregaCidades;
begin
    UniMainModule.qIbge.Close;
    UniMainModule.qIbge.SQL.Clear;
    UniMainModule.qIbge.SQL.Text := 'select * from MUNICIPIOS where IDUF = :vUF order by NOME';
    UniMainModule.qIbge.ParamByName('vUF').AsString := UniMainModule.qClientesUF.AsString; // dblUf.Text;
    UniMainModule.qIbge.Open;
    UniMainModule.qIbge.First;

    dblMunicipio.Text := UniMainModule.qIbgeNOME.Value;
end;

procedure TfCadClientes.dblMunicipioChange(Sender: TObject);
begin
  if  UniMainModule.qClientes.State in [dsEdit, dsInsert] then
    UniMainModule.qClientesCODMUNICIPIO.Value := UniMainModule.qIbgeID.Value;
end;

procedure TfCadClientes.dblUfChange(Sender: TObject);
begin
     CarregaCidades;
end;

procedure TfCadClientes.dsClientesDataChange(Sender: TObject; Field: TField);
begin
  if UniMainModule.qClientesTIPOPESSOA.Value = 'FISICA' then
  begin
    Label9.Caption  := 'Nome';
    Label1.Caption  := 'Apelido';
    Label11.Caption := 'CPF';
    Label12.Caption := 'RG';
    bCnpj.Visible   := False;
    bCnpj2.Visible   := False;
  end
  else if UniMainModule.qClientesTIPOPESSOA.Value = 'JURIDICA' then
  begin
    Label9.Caption  := 'Razão Social';
    Label1.Caption  := 'Nome Fantasia';
    Label11.Caption := 'CNPJ';
    Label12.Caption := 'Insc. Estadual';
    bCnpj.Visible   := True;
    bCnpj2.Visible   := True;
  end;
end;

procedure TfCadClientes.dsClientesStateChange(Sender: TObject);
begin
  btnInclui.Enabled  := UniMainModule.qClientes.State in [dsBrowse];
  btnVoltar.Enabled  := UniMainModule.qClientes.State in [dsBrowse];
  btnSalva.Enabled   := UniMainModule.qClientes.State in [dsEdit, dsInsert];
  btnCancela.Enabled := UniMainModule.qClientes.State in [dsEdit, dsInsert];
  // dblcliente.Enabled := qClientes.State in [dsBrowse];
end;

procedure TfCadClientes.EditCNPJExit(Sender: TObject);
var lcodcli : integer;
begin
      if EditCNPJ.Text <> '' then
      begin
          if UniMainModule.qClientes.State in [dsInsert] then
          begin
              lcodcli := UniMainModule.Banco.ExecSQLScalar('SELECT IDCLIENTE FROM CLIENTES WHERE CPF_CNPJ='+
              UniMainModule.soNumero(EditCNPJ.Text).QuotedString+
              ' and idEmitente = '+UniMainModule.CodigoEmitente.QuotedString);

              if lcodcli > 0 then
              begin
                  ShowMessage('CPF/CNPJ informado ja cadastrado');
                  exit;
              end;
          end;
      end;
end;

procedure TfCadClientes.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
     wCodigo := UniDBEdit1.Text;
end;

procedure TfCadClientes.UniFormCreate(Sender: TObject);
begin
    UniMainModule.qIbge.Open();
    btnInclui.Click;
end;

procedure TfCadClientes.UniLabel3Click(Sender: TObject);
var
  Stream: TMemoryStream;
  png: TPngImage;
begin
      Stream := TMemoryStream.Create;
      try
          UniMainModule.ACBrConsultaCNPJ1.Captcha(Stream);

          png := TPngImage.Create;
          try
            png.LoadFromStream(Stream);
            Image1.Picture.Assign(png);

            EditCaptcha.Clear;
            EditCaptcha.Setfocus;
          finally
            png.Free;
          end;
      finally
          Stream.Free;
      end;
end;

end.
