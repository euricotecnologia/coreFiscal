unit uEmitente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIForm, ACBrDFe, ACBrNFe, ACBrBase, ACBrValidador,
  uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel, uniEdit, uniDBEdit,
  uniLabel, uniTabControl, uniMultiItem, uniComboBox, uniDBComboBox,
  uniRadioGroup, Data.DB, uniPageControl, uniDBRadioGroup, uniFileUpload,
  uniCheckBox, uniDBCheckBox, uniMemo, uniDBMemo, uniGUIFrame, uniImage,
  uniSpeedButton, uniDBLookupComboBox, uniDateTimePicker,
  uniDBDateTimePicker, uniDBImage;

type
  TfEmitente = class(TUniFrame)
    UniPanel1: TUniPanel;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    btnExcluir: TUniBitBtn;
    docValidador: TACBrValidador;
    ACBrNFe1: TACBrNFe;
    UniLabel1: TUniLabel;
    dbeRazao: TUniDBEdit;
    UniLabel2: TUniLabel;
    dbeFantasia: TUniDBEdit;
    UniLabel3: TUniLabel;
    dbeEndereco: TUniDBEdit;
    UniLabel44: TUniLabel;
    dbeNumero: TUniDBEdit;
    UniLabel5: TUniLabel;
    dbeComplemento: TUniDBEdit;
    UniLabel6: TUniLabel;
    dbeBairro: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    dbeCodIbge: TUniDBEdit;
    UniLabel10: TUniLabel;
    dbeCEP: TUniDBEdit;
    UniLabel11: TUniLabel;
    dbeTelefone: TUniDBEdit;
    UniLabel12: TUniLabel;
    dbeCelular: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    dbeInscEst: TUniDBEdit;
    UniLabel17: TUniLabel;
    dbeAliqSN: TUniDBEdit;
    CBUF: TUniDBComboBox;
    cbmunicipio: TUniDBComboBox;
    pagecontrol1: TUniPageControl;
    TabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    rDanfe: TUniDBRadioGroup;
    rFormaEmissao: TUniDBRadioGroup;
    UniDBNumberEdit1: TUniDBNumberEdit;
    UniDBNumberEdit2: TUniDBNumberEdit;
    UniDBNumberEdit3: TUniDBNumberEdit;
    UniDBNumberEdit4: TUniDBNumberEdit;
    UniRadioGroup1: TUniRadioGroup;
    UniFileUpload1: TUniFileUpload;
    UniBitBtn6: TUniBitBtn;
    UniLabel22: TUniLabel;
    UniLabel4: TUniLabel;
    dbeSenha: TUniDBEdit;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel25: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniRadioGroup2: TUniRadioGroup;
    UniLabel26: TUniLabel;
    cbWebServiceUF: TUniDBComboBox;
    UniDBRadioGroup3: TUniDBRadioGroup;
    UniDBCheckBox1: TUniDBCheckBox;
    DSEMIT: TDataSource;
    dbeCNPJ: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBRadioGroup4: TUniDBRadioGroup;
    UniRadioGroup3: TUniRadioGroup;
    UniLabel15: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel27: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniRadioGroup4: TUniRadioGroup;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniLabel30: TUniLabel;
    UniLabel31: TUniLabel;
    UniLabel32: TUniLabel;
    UniLabel33: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBMemo1: TUniDBMemo;
    UniLabel34: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    bCnpj: TUniSpeedButton;
    pCNPJ: TUniPanel;
    UniPanel2: TUniPanel;
    Image1: TUniImage;
    UniLabel35: TUniLabel;
    UniLabel36: TUniLabel;
    EditCaptcha: TUniEdit;
    bEnviarEmal: TUniBitBtn;
    bCancelarEmail: TUniBitBtn;
    UniLabel37: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    UniButton1: TUniButton;
    pConfigurações: TUniPanel;
    UniLabel38: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniDBCheckBox6: TUniDBCheckBox;
    UniDBCheckBox7: TUniDBCheckBox;
    UniBitBtn2: TUniBitBtn;
    rOlhoNoImposto: TUniDBRadioGroup;
    UniTabSheet1: TUniTabSheet;
    UniLabel16: TUniLabel;
    UniDBEdit15: TUniDBEdit;
    UniLabel39: TUniLabel;
    UniDBEdit16: TUniDBEdit;
    UniLabel40: TUniLabel;
    UniDBEdit17: TUniDBEdit;
    UniLabel41: TUniLabel;
    UniDBEdit18: TUniDBEdit;
    UniLabel42: TUniLabel;
    UniDBEdit19: TUniDBEdit;
    UniLabel43: TUniLabel;
    UniDBEdit20: TUniDBEdit;
    UniDBCheckBox8: TUniDBCheckBox;
    UniDBCheckBox9: TUniDBCheckBox;
    UniDBEdit24: TUniDBEdit;
    UniDBEdit21: TUniDBEdit;
    UniLabel45: TUniLabel;
    UniLabel46: TUniLabel;
    UniDBNumberEdit5: TUniDBNumberEdit;
    UniLabel47: TUniLabel;
    UniDBEdit22: TUniDBEdit;
    UniLabel48: TUniLabel;
    UniDBEdit23: TUniDBEdit;
    UniLabel49: TUniLabel;
    UniDBEdit25: TUniDBEdit;
    UniLabel50: TUniLabel;
    UniDBEdit26: TUniDBEdit;
    UniLabel51: TUniLabel;
    UniDBEdit27: TUniDBEdit;
    UniLabel52: TUniLabel;
    UniDBEdit28: TUniDBEdit;
    UniLabel53: TUniLabel;
    UniDBEdit29: TUniDBEdit;
    UniLabel54: TUniLabel;
    UniDBEdit30: TUniDBEdit;
    UniLabel55: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniLabel56: TUniLabel;
    UniDBComboBox3: TUniDBComboBox;
    UniLabel57: TUniLabel;
    UniDBNumberEdit6: TUniDBNumberEdit;
    UniTabSheet5: TUniTabSheet;
    UniLabel58: TUniLabel;
    UniDBEdit31: TUniDBEdit;
    UniLabel59: TUniLabel;
    UniDBEdit32: TUniDBEdit;
    UniLabel60: TUniLabel;
    UniDBEdit33: TUniDBEdit;
    UniLabel61: TUniLabel;
    UniDBEdit34: TUniDBEdit;
    UniLabel62: TUniLabel;
    UniDBEdit35: TUniDBEdit;
    UniDBCheckBox10: TUniDBCheckBox;
    UniLabel63: TUniLabel;
    UniDBCheckBox11: TUniDBCheckBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel64: TUniLabel;
    UniDBCheckBox12: TUniDBCheckBox;
    pCodData: TUniContainerPanel;
    UniLabel65: TUniLabel;
    eCodigo: TUniDBEdit;
    UniLabel66: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    btnInclui: TUniBitBtn;
    UniButton2: TUniButton;
    UniDBEdit36: TUniDBEdit;
    UniLabel67: TUniLabel;
    eLogo: TUniDBEdit;
    UniBitBtn1: TUniBitBtn;
    UniFileUpload2: TUniFileUpload;
    UniImage1: TUniImage;
    UniDBRadioGroup1: TUniDBRadioGroup;
    UniLabel68: TUniLabel;
    UniDBEdit37: TUniDBEdit;
    UniTabSheet6: TUniTabSheet;
    UniDBCheckBox13: TUniDBCheckBox;
    UniLabel69: TUniLabel;
    UniDBEdit38: TUniDBEdit;
    UniLabel70: TUniLabel;
    UniDBEdit39: TUniDBEdit;
    UniLabel71: TUniLabel;
    UniDBEdit40: TUniDBEdit;
    tabConfig: TUniTabSheet;
    UniDBCheckBox14: TUniDBCheckBox;
    procedure CBUFChange(Sender: TObject);
    procedure cbmunicipioEnter(Sender: TObject);
    procedure cbmunicipioChange(Sender: TObject);
    procedure UniBitBtn6Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DSEMITStateChange(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCnpjClick(Sender: TObject);
    procedure bEnviarEmalClick(Sender: TObject);
    procedure UniLabel35Click(Sender: TObject);
    procedure bCancelarEmailClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFileUpload2Completed(Sender: TObject; AStream: TFileStream);
    procedure eLogoChange(Sender: TObject);
  private
    NomedoArquivo, caminho, Ext, CurDir: String;
    procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
  public
    { Public declarations }
  end;

function fEmitente: TfEmitente;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, Vcl.Imaging.pngimage, uClsBase;

function fEmitente: TfEmitente;
begin
  Result := TfEmitente(UniMainModule.GetFormInstance(TfEmitente));
end;

procedure TfEmitente.cbmunicipioChange(Sender: TObject);
begin
    if UniMainModule.qEmitente.State in [dsEdit, dsInsert] then
    begin
        UniMainModule.qibgecod.Close;
        UniMainModule.qibgecod.SQL.Clear;
        UniMainModule.qibgecod.SQL.add('SELECT * FROM MUNICIPIOS WHERE NOME = ' + quotedStr(cbmunicipio.text) +
          ' AND IDUF = ' + quotedStr(CBUF.text));

        try
            UniMainModule.qibgecod.Open;
            if UniMainModule.qibgecod.RecordCount = 1 then
              UniMainModule.qEmitenteCodCidade.AsString := UniMainModule.qibgecodID.AsString;
            refresh;
        finally
          UniMainModule.qibgecod.Close;
        end;
    end;
end;

procedure TfEmitente.cbmunicipioEnter(Sender: TObject);
begin
    UniMainModule.qIbge.Close;
    UniMainModule.qIbge.SQL.Clear;
    UniMainModule.qIbge.SQL.text                    := 'select * from MUNICIPIOS where IDUF = :vUF order by NOME';
    UniMainModule.qIbge.ParamByName('vUF').AsString := CBUF.text;
    UniMainModule.qIbge.Open;
    UniMainModule.qIbge.First;

    cbmunicipio.Items.Clear;

    while not UniMainModule.qIbge.eof do
    begin
        cbmunicipio.Items.add(UniMainModule.qIBGENome.AsString);
        UniMainModule.qIbge.Next;
    end;
end;

procedure TfEmitente.CBUFChange(Sender: TObject);
begin
    if UniMainModule.qEmitente.State in [dsEdit, dsInsert] then
    begin
        UniMainModule.qIbge.Close;
        UniMainModule.qIbge.SQL.Clear;
        UniMainModule.qIbge.SQL.text                    := 'select * from MUNICIPIOS where IDUF = :vUF order by NOME';
        UniMainModule.qIbge.ParamByName('vUF').AsString := CBUF.text;
        UniMainModule.qIbge.Open;
        UniMainModule.qIbge.First;

        cbmunicipio.Items.Clear;

        while not UniMainModule.qIbge.eof do
        begin
            cbmunicipio.Items.add(UniMainModule.qIBGENome.AsString);
            UniMainModule.qIbge.Next;
        end;

        UniMainModule.qIbge.First;
        UniMainModule.qEmitenteCidade.AsString    := UniMainModule.qIBGENome.AsString;
        UniMainModule.qEmitenteCodCidade.AsString := UniMainModule.qIBGEID.AsString;

        cbmunicipio.refresh;
    end;
end;

procedure TfEmitente.DSEMITStateChange(Sender: TObject);
begin
    btnInclui.Enabled  := UniMainModule.qEmitente.State in [dsBrowse];
    btnExcluir.Enabled := UniMainModule.qEmitente.State in [dsBrowse];
    btnSalva.Enabled   := UniMainModule.qEmitente.State in [dsEdit, dsInsert];
    btnCancela.Enabled := UniMainModule.qEmitente.State in [dsEdit, dsInsert];
end;

procedure TfEmitente.PromptCallBack(Sender: TComponent; AResult: Integer;
  AText: string);
begin
      if AResult = mrOK then
      begin
           if AText = '101010' then
           begin
                pcodData.Visible      := true;
                rFormaEmissao.Enabled := true;
                rDanfe.Enabled        := true;
           end
           else
                Showmessage('Senha incorreta'  );
      end;
end;

procedure TfEmitente.btnIncluiClick(Sender: TObject);
begin
    UniMainModule.qEmitente.Append;
    UniMainModule.qEmitenteDATACADASTRO.AsDateTime := Date;
    eCodigo.Text := 'NOVO';
    dbeRazao.Setfocus;
end;

procedure TfEmitente.btnSalvaClick(Sender: TObject);
var
  registro: integer;
  lbase : tbase;
begin
    if UniMainModule.qEmitente.State in [dsEdit, dsInsert] then
    begin
        if dbeRazao.text = '' then
        begin
            Showmessage('Existem campos obrigatórios a serem preenchidos'  );
            dbeRazao.Setfocus;
            Abort;
        end;

        if dbeEndereco.text = '' then
        begin
            Showmessage('Existem campos obrigatórios a serem preenchidos !'  );
            dbeEndereco.Setfocus;
            Abort;
        end;

        if CBUF.text = '' then
        begin
            Showmessage('Existem campos obrigatórios a serem preenchidos !'  );
            CBUF.Setfocus;
            Abort;
        end;

        if cbmunicipio.text = '' then
        begin
            Showmessage('Existem campos obrigatórios a serem preenchidos !'  );
            cbmunicipio.Setfocus;
            Abort;
        end;

        if dbeCNPJ.text = '' then
        begin
            Showmessage('Existem campos obrigatórios a serem preenchidos !'  );
            dbeCNPJ.Setfocus;
            Abort;
        end
        else
        begin
            docValidador.TipoDocto := docCNPJ;
            docValidador.Documento := dbeCNPJ.text;

            if not docValidador.validar then
            begin
                Showmessage('O CNPJ Informado é Inválido!');
                dbeCNPJ.Setfocus;
                Abort;
            end;
        end;

        if dbeInscEst.text = '' then
        begin
            Showmessage('Existem campos obrigatórios a serem preenchidos !');
            dbeInscEst.Setfocus;
            Abort;
        end
        else
        begin
            docValidador.TipoDocto   := docInscEst;
            docValidador.Documento   := dbeInscEst.text;
            docValidador.Complemento := CBUF.text;

            if not docValidador.validar then
            begin
                Showmessage( 'A Inscrição Estadual para o Estado Informado é Inválida!');
                dbeInscEst.Setfocus;
                Abort;
            end;
        end;

        if dbeCodIbge.text = '' then
        begin
            Showmessage('Existem campos obrigatórios a serem preenchidos !');
            dbeCodIbge.Setfocus;
            Abort;
        end;

        if eCodigo.Text = 'NOVO' then
           UniMainModule.qEmitenteIDEMITENTE.AsInteger := lbase.pegaseg('EMITENTE', 'IDEMITENTE',UniMainModule.Banco);

        UniMainModule.qEmitente.Post;
        UniMainModule.qEmitente.ApplyUpdates;
        UniMainModule.qEmitente.CommitUpdates;

        UniMainModule.qEmitente.Close;
        UniMainModule.qEmitente.ParamByName('idEmitente').Value := strToInt(UniMainModule.CodigoEmitente);
        UniMainModule.qEmitente.Open;

        btnInclui.Setfocus;
    end;

    Showmessage('Registro Atualizado !');

    UniMainModule.MontaMenu;
end;

procedure TfEmitente.bCancelarEmailClick(Sender: TObject);
begin
    pCNPJ.Visible := False;
end;

procedure TfEmitente.bCnpjClick(Sender: TObject);
begin
    pCNPJ.Visible := True;
    pCNPJ.BringToFront;
    UniLabel35Click(UniLabel3);
    EditCaptcha.Clear;
    EditCaptcha.Setfocus;
end;

procedure TfEmitente.bEnviarEmalClick(Sender: TObject);
var
  I: Integer;
begin
    if EditCaptcha.Text <> '' then
    begin
        try
            if UniMainModule.ACBrConsultaCNPJ1.Consulta(dbeCNPJ.Text, EditCaptcha.Text, False) then
            begin
                UniMainModule.qEmitente.edit;
                UniMainModule.qEmitenteRAZAOSOCIAL.AsString  := UniMainModule.ACBrConsultaCNPJ1.RazaoSocial;
                UniMainModule.qEmitenteFANTASIA.AsString     := UniMainModule.ACBrConsultaCNPJ1.Fantasia;
                UniMainModule.qEmitenteENDERECO.AsString     := UniMainModule.ACBrConsultaCNPJ1.Endereco;
                UniMainModule.qEmitenteNUMERO.AsString       := UniMainModule.ACBrConsultaCNPJ1.Numero;
                UniMainModule.qEmitenteCOMPLEMENTO.AsString  := UniMainModule.ACBrConsultaCNPJ1.Complemento;
                UniMainModule.qEmitenteBAIRRO.AsString       := UniMainModule.ACBrConsultaCNPJ1.Bairro;
                UniMainModule.qEmitenteUF.AsString           := UniMainModule.ACBrConsultaCNPJ1.UF;
                UniMainModule.qEmitenteCIDADE.AsString       := UniMainModule.ACBrConsultaCNPJ1.IBGE_Municipio;
                UniMainModule.qEmitenteCODCIDADE.AsString    := UniMainModule.ACBrConsultaCNPJ1.IBGE_Municipio;
                UniMainModule.qEmitenteCEP.AsString          := UniMainModule.ACBrConsultaCNPJ1.CEP;
                UniMainModule.qEmitenteFONE.AsString         := UniMainModule.ACBrConsultaCNPJ1.Telefone;
            end;

        finally

            UniMainModule.ACBrCEP1.BuscarPorCEP(dbeCEP.Text);

            For I := 0 to UniMainModule.ACBrCEP1.Enderecos.Count - 1 do
            begin
                with UniMainModule.ACBrCEP1.Enderecos[I] do
                begin
                    UniMainModule.qEmitenteCIDADE.AsString       := UniMainModule.ACBrCEP1.Enderecos[I].IBGE_Municipio;
                    UniMainModule.qEmitenteUF.AsString           := UniMainModule.ACBrCEP1.Enderecos[I].UF;
                    UniMainModule.qEmitenteCODCIDADE.AsString    := UniMainModule.ACBrCEP1.Enderecos[I].IBGE_Municipio;
                end;
            end;
        end;

        pCNPJ.Visible := False;
    end
    else
    begin
        Showmessage('É necessário digitar o captcha!');
        EditCaptcha.Setfocus;
    end;
end;


procedure TfEmitente.btnCancelaClick(Sender: TObject);
begin
      MessageDlg('Deseja cancelar este Registro?', mtConfirmation, mbYesNo,
      procedure(Sender: TComponent; Res: Integer)
      begin
          case Res of
              mrYes :
              begin
                  UniMainModule.qEmitente.Cancel;
                  btnInclui.Setfocus;
              end;
              mrNo  :
              begin
              end;
          end;
      end);
end;

procedure TfEmitente.btnExcluirClick(Sender: TObject);
begin
      if UniMainModule.qEmitente.IsEmpty then
        Abort;

      MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
      procedure(Sender: TComponent; Res: Integer)
      begin
          case Res of
              mrYes :
              begin
                   try
                       UniMainModule.qEmitente.Delete;

                   except

                       showmessage('erro ao excluir');
                   end;
              end;
              mrNo  :
              begin
              end;
          end;
      end);

end;

procedure TfEmitente.UniBitBtn1Click(Sender: TObject);
begin
    if not DirectoryExists('c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\') then
      CreateDir('c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\');
    UniFileUpload2.Execute;
end;

procedure TfEmitente.UniBitBtn2Click(Sender: TObject);
begin
     pConfigurações.Visible := False;
end;

procedure TfEmitente.UniBitBtn6Click(Sender: TObject);
begin
    if not DirectoryExists('c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\') then
       CreateDir('c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\');
    UniFileUpload1.Execute;
end;

procedure TfEmitente.UniButton1Click(Sender: TObject);
begin
    pConfigurações.Visible := True;
    pConfigurações.BringToFront;
end;

procedure TfEmitente.UniButton2Click(Sender: TObject);
begin
     Prompt('@*Entre com a senha de Administrador', '', mtInformation, mbOKCancel, PromptCallBack, False);
end;


procedure TfEmitente.eLogoChange(Sender: TObject);
begin
     try
          UniImage1.Picture.LoadFromFile(eLOGO.Text);
     except
     end;
end;

procedure TfEmitente.UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
var
  DestName  : String;
  DestFolder: String;
begin
    NomedoArquivo := ExtractFileName(UniFileUpload1.FileName);
    Ext           := ExtractFileExt(UniFileUpload1.FileName);

    if Ext = '.pfx' then
    begin
        DestFolder := 'c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\'; // UniServerModule.StartPath+'UploadFolder\';
        DestName   := DestFolder + NomedoArquivo; // DestFolder+ExtractFileName(UniFileUpload1.FileName);
        UniLabel4.Caption := 'Nome do Arquivo: ' + UniFileUpload1.FileName;
        CopyFile(PChar(AStream.FileName), PChar(DestName), False);
        UniMainModule.qEmitente.Edit;
        UniMainModule.qEmitenteCERT_CAMINHO.AsString := DestName;

        ShowMessage('Arquivo: ' + UniFileUpload1.FileName + ' Salvo com sucesso no servidor!');
    end
    else
        ShowMessage('São aceitos apenas arquivos pfx. Este arquivo é de extenção ' + Ext);
end;

procedure TfEmitente.UniFileUpload2Completed(Sender: TObject;
  AStream: TFileStream);
var
  DestName  : String;
  DestFolder: String;
begin
    NomedoArquivo := ExtractFileName(UniFileUpload2.FileName);
    Ext           := ExtractFileExt(UniFileUpload2.FileName);

    if Ext = '.jpg' then
    begin
        DestFolder := 'c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\';
        DestName   := DestFolder + NomedoArquivo;

        CopyFile(PChar(AStream.FileName), PChar(DestName), False);

        UniMainModule.qEmitente.Edit;
        UniMainModule.qEmitenteLOGO.AsString := DestName;

        ShowMessage('Logo: ' + UniFileUpload2.FileName + ' Salva com sucesso no servidor!');
    end
    else
        ShowMessage('São aceitos apenas arquivos JPG. Este arquivo é de extenção '+Ext);
end;

procedure TfEmitente.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
    UniMainModule.qIbge.Close;
    UniMainModule.qibgecod.Close;
end;

procedure TfEmitente.UniFormCreate(Sender: TObject);
begin
    UniMainModule.qIbge.Open;
    UniMainModule.qibgecod.Open;

    pagecontrol1.ActivePage := TabSheet1;

    try
          UniImage1.Picture.LoadFromFile(eLOGO.Text);
    except
    end;
end;

procedure TfEmitente.UniLabel35Click(Sender: TObject);
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
