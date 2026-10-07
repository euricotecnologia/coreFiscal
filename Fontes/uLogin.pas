unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Vcl.Imaging.pngimage, uniImage,
  uniCheckBox, uniEdit, uniButton, uniBitBtn, uniGUIBaseClasses, uniLabel,

  System.Types, System.StrUtils, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, uniPanel, IdMessage, uniScreenMask, IdSSLOpenSSL, acPNG,
  dxGDIPlusClasses;

type
  TCallbackProcedure = procedure(LoginSuccessful: Boolean) of object;

  TfLogin = class(TUniLoginForm)
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    bLogar: TUniBitBtn;
    bCancelar: TUniBitBtn;
    eLogin: TUniEdit;
    eSenha: TUniEdit;
    cbSenha: TUniCheckBox;
    UniLabel3: TUniLabel;
    pEmail: TUniPanel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    bEnviarEmal: TUniBitBtn;
    eEmail: TUniEdit;
    bCancelarEmail: TUniBitBtn;
    UniScreenMask1: TUniScreenMask;
    cContador: TUniCheckBox;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniImage1: TUniImage;
    besquecisenha: TUniBitBtn;
    UniImage2: TUniImage;
    procedure bCancelarClick(Sender: TObject);
    procedure bLogarClick(Sender: TObject);
    procedure UniLoginFormShow(Sender: TObject);
    procedure bEnviarEmalClick(Sender: TObject);
    procedure UniLabel3Click(Sender: TObject);
    procedure bCancelarEmailClick(Sender: TObject);
    procedure eLoginKeyPress(Sender: TObject; var Key: Char);
    procedure eSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure eEmailKeyPress(Sender: TObject; var Key: Char);
    procedure UniLoginFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    CallbackProcedure: TCallbackProcedure;
  public
    { Public declarations }
    procedure InitCallback(LoginSuccessful: Boolean; Callback: TCallbackProcedure);
  end;

function fLogin: TfLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uPrincipal, uXmlEscritorio;

function fLogin: TfLogin;
begin
  Result := TfLogin(UniMainModule.GetFormInstance(TfLogin));
end;

procedure TfLogin.bCancelarClick(Sender: TObject);
begin
     ModalResult := mrCancel; // Invalid Login exit from app
end;

procedure TfLogin.bLogarClick(Sender: TObject);
begin
  if eLogin.Text = '' then
  begin
       ShowMessage('Informe o Usuário!');
       exit;
  end;

  if eSenha.Text = '' then
  begin
       ShowMessage('Informe a Senha!');
       exit;
  end;

  if cContador.Checked then
  begin
      if UniMainModule.LoginC(eLogin.Text, eSenha.Text) then
      begin

        if cbSenha.Checked then
        begin
          UniApplication.Cookies.SetCookie('_loginFiscal', eLogin.Text, Date + 30.0); // Expires 7 days from now
          UniApplication.Cookies.SetCookie('_senhaFiscal', eSenha.Text, Date + 30.0);
          UniApplication.Cookies.SetCookie('_LembrarFiscalC', 'S', Date + 30.0);
          UniApplication.Cookies.SetCookie('_LembrarFiscal',  'S', Date + 30.0);
        end;

        fxmlEscritorio.showmodal;
      end
      else
      begin
        ShowMessage('Usuario ou senha incorretos!');
        eSenha.Text := '';
      end;
  end
  else
  begin
      if UniMainModule.Login(eLogin.Text, eSenha.Text) then
      begin
        UniMainModule.usuario2         := eLogin.Text;
        UniMainModule.TRdata^.xUsuario := eLogin.Text;
        if cbSenha.Checked then
        begin
          UniApplication.Cookies.SetCookie('_loginFiscal', eLogin.Text, Date + 30.0); // Expires 7 days from now
          UniApplication.Cookies.SetCookie('_senhaFiscal', eSenha.Text, Date + 30.0);
          UniApplication.Cookies.SetCookie('_LembrarFiscal', 'S', Date + 30.0);
        end;
        if Assigned(CallbackProcedure) then
          CallbackProcedure(True);

        close;
      end
      else
      begin
        ShowMessage('Usuario ou senha incorretos!');
        eSenha.Text := '';
      end;
  end;
end;

procedure TfLogin.eEmailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    bEnviarEmal.SetFocus;
    bEnviarEmal.Click;
  end;
end;

procedure TfLogin.eLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    eSenha.SetFocus;
  end;
end;

procedure TfLogin.eSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    bLogar.SetFocus;
    bLogar.Click;
  end;
end;

procedure TfLogin.InitCallback(LoginSuccessful: Boolean; Callback: TCallbackProcedure);
begin
  CallbackProcedure := Callback;
  LoginSuccessful   := false;
end;

procedure TfLogin.bCancelarEmailClick(Sender: TObject);
begin
  pEmail.Visible := false;
  pEmail.Left    := 400;
end;

procedure TfLogin.bEnviarEmalClick(Sender: TObject);
var
  Email  : TIdMessage;
  emailOk: Boolean;

  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP              : TIdSMTP;
  IdMessage           : TIdMessage;
begin
  emailOk := UniMainModule.VerificaEmail(eEmail.Text);

  if emailOk then
  begin
    IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
    IdSMTP               := TIdSMTP.Create(Self);
    IdMessage            := TIdMessage.Create(Self);

    TRY
      // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode   := sslmClient;

      // Configuração do servidor SMTP (TIdSMTP)
      IdSMTP.IOHandler := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS    := utUseExplicitTLS;
      IdSMTP.AuthType  := satDefault;
      IdSMTP.Port      := 587;
      IdSMTP.Host      := 'smtp.com.br';
      IdSMTP.Username  := 'email@teste.com';
      IdSMTP.Password  := 'senha';

      // Configuração da mensagem (TIdMessage)
      IdMessage.From.Address           := 'email@teste.com';
      IdMessage.From.Name              := 'Fiscal WEB Essencial Sistemas';
      IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
      IdMessage.Recipients.Add.Text    := Trim(eEmail.Text);
      IdMessage.Subject                := 'Recuperar Senha';
      IdMessage.Body.Add('Ola, ' + UniMainModule.usuario2 + '!');
      IdMessage.Body.Add('');
      IdMessage.Body.Add('Voce solicitou sua senha no Essencial Web.');
      IdMessage.Body.Add('');
      IdMessage.Body.Add('Usuario: ' + UniMainModule.sLogin);
      IdMessage.Body.Add('Senha: ' + UniMainModule.sSenha);
      IdMessage.Body.Add('');
      IdMessage.Body.Add('');
      IdMessage.Encoding := meMIME;

      // Conexão e autenticação
      TRY
        IdSMTP.Connect;
        IdSMTP.Authenticate;
      except
        on E: Exception do
        begin
          Showmessage( 'Erro na conexão ou autenticação!');
          pEmail.Visible := false;
          exit;
        end;
      end;

      // Envio da mensagem
      TRY
        IdSMTP.Send(IdMessage);
        Showmessage( 'Mensagem enviada com sucesso!');
        pEmail.Visible := false;
      except
        on E: Exception do
        begin
          Showmessage( 'Ocorreu um erro ao enviar o email, verifique o email ou se esta conectado a internet');
          pEmail.Visible := false;
        end;
      end;

    FINALLY
      IdSMTP.Disconnect;
      UnLoadOpenSSLLibrary;
      FreeAndNil(IdMessage);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(IdSMTP);
    end;
  end
  else
    Showmessage('E-mail não cadastrado na base de dados!');
end;

procedure TfLogin.UniLabel3Click(Sender: TObject);
begin
    pEmail.Visible := True;
    pEmail.Left    := 13;
    pEmail.Top     := 85;
    eEmail.Clear;
    eEmail.SetFocus;
end;

procedure TfLogin.UniLoginFormClose(Sender: TObject; var Action: TCloseAction);
begin
     if UniMainModule.mobile <> 'S' then
     begin
          fPrincipal.bAtualiza.Visible := true;
          fPrincipal.bAtualiza.Click;
          fPrincipal.bAtualiza.Visible := false;
     end;
end;

procedure TfLogin.UniLoginFormShow(Sender: TObject);
var
  I              : Integer;
  sString        : String;
  sStringSeparada: TStringDynArray;
begin
    if UniApplication.Cookies.Count > 0 then
    begin
        for I := 0 to UniApplication.Cookies.Count - 1 do
        begin
            sString         := UniApplication.Cookies[I];
            sStringSeparada := SplitString(sString, '=');

            if sStringSeparada[0] = '_loginFiscal' then
              eLogin.Text := sStringSeparada[1];
            if sStringSeparada[0] = '_senhaFiscal' then
              eSenha.Text := sStringSeparada[1];
            if UniApplication.Cookies[I] = '_LembrarFiscal=S' then
              cbSenha.Checked := True;
            if UniApplication.Cookies[I] = '_LembrarFiscalC=S' then
              cContador.Checked := True;
        end;
    end;
end;

end.
