unit uXmlEscritorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniEdit, uniMultiItem,
  uniComboBox, uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniLabel, IdMessage,

  IdIcmpClient, IdSMTPBase, IdSMTP, IdSSLOpenSSL, IdText, IdAttachmentFile,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  System.Zip,

  IdBaseComponent, IdComponent, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniPanel, uniBitBtn, uniMemo;

type
  TfXmlEscritorio = class(TUniForm)
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    eAno: TUniComboBox;
    eMes: TUniComboBox;
    eEmail: TUniEdit;
    lInfo: TUniLabel;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    qEmail: TFDQuery;
    dsEmail: TDataSource;
    qEmailCODIGO: TIntegerField;
    qEmailEMAIL: TStringField;
    qEmailEMITENTE: TIntegerField;
    UniPanel2: TUniPanel;
    lTitulo: TUniLabel;
    mAltBody: TUniMemo;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    procedure EnviarEmail;
    Procedure CompactarPasta;
    procedure CadastraEmailEscritorio;
    procedure ValidaCampos;
    procedure CarregaPastaeArquivos;
  public
    { Public declarations }
  end;

function fXmlEscritorio: TfXmlEscritorio;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fXmlEscritorio: TfXmlEscritorio;
begin
     Result := TfXmlEscritorio(UniMainModule.GetFormInstance(TfXmlEscritorio));
end;

{ TfXmlEscritorio }

function IsValidEmail(const Value: string): Boolean;
  function CheckAllowed(const s: string): Boolean;
  var
    i: Integer;
  begin
    Result := False;
    for i := 1 to Length(s) do
      if not(s[i] in ['a' .. 'z', 'A' .. 'Z', '0' .. '9', '_', '-', '.']) then
        Exit;
    Result := true;
  end;
var
  i: Integer;
  NamePart, ServerPart: string;
begin
    Result := False;
    i := Pos('@', Value);
    if i = 0 then
      Exit;
    NamePart := Copy(Value, 1, i - 1);
    ServerPart := Copy(Value, i + 1, Length(Value));
    if (Length(NamePart) = 0) or ((Length(ServerPart) < 5)) then
      Exit;
    i := Pos('.', ServerPart);
    if (i = 0) or (i > (Length(ServerPart) - 2)) then
      Exit;
    Result := CheckAllowed(NamePart) and CheckAllowed(ServerPart);
end;

procedure TfXmlEscritorio.CadastraEmailEscritorio;
begin
    try
        lInfo.Caption := 'Cadastrando Email!';

        UniMainModule.qAux.Close;
        UniMainModule.qAux.SQL.Clear;
        UniMainModule.qAux.SQL.Add('Select email from emailEscritorio where email = :var0');
        UniMainModule.qAux.Params[0].Value := Trim(eEmail.Text);
        UniMainModule.qAux.Prepare;
        UniMainModule.qAux.Open;

        if UniMainModule.qAux.RecordCount = 0 then
        begin
            UniMainModule.qAux.SQL.Clear;
            UniMainModule.qAux.SQL.Add('insert into emailEscritorio (codigo, email,emitente) values '+
            ' (gen_id(gemailEscritorio,1),:var0,:var1)');
            UniMainModule.qAux.Params[0].Value := eEmail.Text;
            UniMainModule.qAux.Params[1].Value := UniMainModule.qEmitenteIDEMITENTE.AsInteger;
            UniMainModule.qAux.ExecSQL;

            qemail.Close;
            qemail.ParamByName('e').AsInteger := UniMainModule.qEmitenteIDEMITENTE.AsInteger;
            qemail.Open;

            lInfo.Caption := 'Email cadastrado!';
        end;

    except
        ShowMessage('Ocorreu um erro ao cadastrar o novo email');
    end;
end;

procedure TfXmlEscritorio.CarregaPastaeArquivos;
begin
    UniMainModule.Pasta   := 'c:\XML\'+UniMainModule.qEmitenteCNPJ.AsString+'\'+eAno.Text + copy(eMes.Text,1,2);
    UniMainModule.arquivo := 'c:\XML\'+UniMainModule.qEmitenteCNPJ.AsString+'\'+eAno.Text + copy(eMes.Text,1,2)+'.zip';
end;

procedure TfXmlEscritorio.CompactarPasta;
var
  ZipFile: TZipFile;
begin
    ZipFile := TZipFile.Create;
    try
         try
              ZipFile.ZipDirectoryContents(unimainmodule.Arquivo, unimainmodule.Pasta);
              lInfo.Caption := 'Arquivo compactado!';
              Application.ProcessMessages;
         except
              lInfo.Caption := 'Erro ao compactar arquivo!';
              Application.ProcessMessages;
              Showmessage( 'Ocorreu um erro ao compactar os arquivos!');
              abort
         end;

    finally
         ZipFile.Free;
         Screen.Cursor := crDefault;
    end;
end;

procedure TfXmlEscritorio.EnviarEmail;
var periodo : string;
    S_MENSAGEM,S_ASSUNTO,S_EMAIL:string;
    IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;
    IdText: TIdText;
    sAnexo: string;
begin
    try
        lInfo.Caption := 'Proparando para enviar!';

        if ((Time > StrToTime('00:00:00')) and (time < StrToTime('12:00:00'))) then
            periodo := 'Bom dia'
        else if ((Time > StrToTime('12:00:00')) and (time < StrToTime('19:00:00'))) then
            periodo := 'Boa tarde'
        else
            periodo := 'Boa noite';

        with UniMainModule do
        begin
            ACBrMail1.Clear;
            ACBrMail1.IsHTML   := false;
            ACBrMail1.Subject  := 'Arquivos XML '+UniMainModule.qEmitenteRAZAOSOCIAL.AsString+' '+copy(emes.Text,3,10)+' de '+eano.Text;

            ACBrMail1.From     := 'email@email.com.br';//edtFrom.text;
            ACBrMail1.FromName := 'email@email.com.br';// edtFromName.text;
            ACBrMail1.Host     := 'smtp.com.br'; // troque pelo seu servidor smtp
            ACBrMail1.Username := 'email@email.com.br';
            ACBrMail1.Password := 'senha';
            ACBrMail1.Port     := '587'; // troque pela porta do seu servidor smtp

            ACBrMail1.SetTLS         := false;// chkTLS.Checked;
            ACBrMail1.SetSSL         := false;// chkSSL.Checked;  // Verifique se o seu servidor necessita SSL
            ACBrMail1.AddAddress( Trim(eEmail.Text ));

            mAltBody.Lines.Clear;
            mAltBody.Lines.Add('XML '+copy(emes.Text,3,10)+' de '+eano.Text);
            mAltBody.Lines.add(#13#10);
            mAltBody.Lines.add(#13#10);
            mAltBody.Lines.Add(periodo+', segue em anexo arquivos XML referente ao mes de '+copy(emes.Text,3,10)+' de '+eano.Text+
            ' da empresa.'+#13#10+
            'Razao Social:'+UniMainModule.qEmitenteRAZAOSOCIAL.AsString+#13#10+
            'Nome Fantasia:'+UniMainModule.qEmitenteFANTASIA.AsString+#13#10+
            'CNPJ:'+UniMainModule.qEmitenteCNPJ.AsString);

            ACBrMail1.AltBody.Assign( mAltBody.Lines );

            ACBrMail1.AddAttachment(UniMainModule.Arquivo);

            ACBrMail1.Send(false);
        end;

        lInfo.Caption := '';
        Showmessage('Email enviado com sucesso!');

    except on e:exception do
    begin
        lInfo.Caption := 'Erro ao enviar Email!';
        Showmessage( 'Erro '+e.Message);
        Exit;
    end;
    end;
end;

procedure TfXmlEscritorio.UniButton1Click(Sender: TObject);
begin
    ValidaCampos;

    if eEmail.Text = '' then
    begin
        lInfo.Caption := 'Erro ao validar campos!';
        Application.ProcessMessages;
        Showmessage( 'Email não informado');
        eEmail.SetFocus;
        Exit;
    end;

    if IsValidEmail(eEmail.Text) then
        lInfo.Caption := 'Email valido.'
    else
    begin
        lInfo.Caption := 'Email invalido!';
        Application.ProcessMessages;
        Showmessage( 'Email invalido');
        eEmail.SetFocus;
        Exit;
    end;

    CarregaPastaEarquivos;

    if not DirectoryExists( UniMainModule.Pasta ) then
    begin
        lInfo.Caption := 'Erro na pasta!';
        Application.ProcessMessages;
        Showmessage( 'Pasta com arquivos não encontrada!');
        Exit;
    end;

    CompactarPasta;
    EnviarEmail;
    CadastraEmailEscritorio;
end;

procedure TfXmlEscritorio.UniButton2Click(Sender: TObject);
begin
    ValidaCampos;

    CarregaPastaEarquivos;

    if not DirectoryExists( UniMainModule.Pasta ) then
    begin
        lInfo.Caption := 'Erro na pasta!';
        Application.ProcessMessages;
        Showmessage( 'Pasta com arquivos não encontrada!');
        Exit;
    end;

    CompactarPasta;

    UniSession.SendFile(UniMainModule.Arquivo);
end;

procedure TfXmlEscritorio.UniButton3Click(Sender: TObject);
begin
     close;
end;

procedure TfXmlEscritorio.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
     if qEmailEMAIL.Text <> '' then
         eEmail.Text := qEmailEMAIL.Text;
end;

procedure TfXmlEscritorio.UniFormShow(Sender: TObject);
begin
     eano.SetFocus;
     qemail.Close;
     qemail.ParamByName('e').AsInteger := UniMainModule.qEmitenteIDEMITENTE.AsInteger;
     qemail.Open;
end;

procedure TfXmlEscritorio.ValidaCampos;
begin
    lInfo.Caption := 'Validando Campos!';

    if eMes.ItemIndex = 0 then
    begin
        lInfo.Caption := 'Erro ao validar campos!';
        Application.ProcessMessages;
        Showmessage( 'Selecione o Mês desejado');
        eMes.SetFocus;
        Exit;
    end;

    if eAno.ItemIndex = 0 then
    begin
        lInfo.Caption := 'Erro ao validar campos!';
        Application.ProcessMessages;
        Showmessage('Selecione o ano desejado!');
        eAno.SetFocus;
        Exit;
    end;

    Application.ProcessMessages;
    lInfo.Caption := 'Campos validos!';
end;

end.
