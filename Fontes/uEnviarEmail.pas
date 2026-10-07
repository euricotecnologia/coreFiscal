unit uEnviarEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,

  pcnConversao,

  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniEdit, uniGUIBaseClasses,
  uniLabel, uniMemo;

type
  TfEnviarEmail = class(TUniForm)
    UniLabel23: TUniLabel;
    UniLabel7: TUniLabel;
    eEmail: TUniEdit;
    btnGravaNFe: TUniBitBtn;
    btnCancelaNF: TUniBitBtn;
    mmEmailMsg: TUniMemo;
    procedure UniFormShow(Sender: TObject);
    procedure btnCancelaNFClick(Sender: TObject);
    procedure btnGravaNFeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fEnviarEmail: TfEnviarEmail;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule;

function fEnviarEmail: TfEnviarEmail;
begin
  Result := TfEnviarEmail(UniMainModule.GetFormInstance(TfEnviarEmail));
end;

procedure TfEnviarEmail.btnCancelaNFClick(Sender: TObject);
begin
     close;
end;

procedure TfEnviarEmail.btnGravaNFeClick(Sender: TObject);
var  ArquivoXML,arqpdf,FUrl,NomePDF,
     FFolder,ArquivoPDF : String;
     cc                 : TStrings;
     xx                 : TStringStream;
begin
     try
          if eemail.Text = '' then
          begin
               ShowMessage('Informar um email valido!');
               exit;
          end;

          if UniMainModule.interna = 'S' then
          begin
              if UniMainModule.posVenda = 'S' then
              begin
                   UniMainModule.VisualizarPDFexterno(UniMainModule.CodigoEmitente,
                                                      intToStr(UniMainModule.notaw),
                                                      intToStr(UniMainModule.Modelow),
                                                      intToStr(UniMainModule.seriew));

                   UniMainModule.xx := TStringStream.create(UniMainModule.xmlExterno);
              end
              else
                   UniMainModule.xx := TStringStream.create(UniMainModule.qNotasCabXML_NOTA.AsString);

              UniMainModule.NFE.NotasFiscais.Clear;
              UniMainModule.NFE.NotasFiscais.LoadFromstream(UniMainModule.xx);

              if UniMainModule.qNotasCabMODELO.AsInteger = 55 then
              begin
//                  if UniMainModule.qNotasCabSTATUS_NOTA.AsString <> 'A' then
//                    UniMainModule.NFE.DANFE.NFeCancelada := true;

                  UniMainModule.NFE.DANFE.TipoDANFE      := tiRetrato;
                  UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DANFeRetratoNovo.fr3';
                  UniMainModule.aDanfe.PathPDF           := FFolder;
                  UniMainModule.aDanfe.Sistema           := 'Nota Facil';
                  UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
              //    UniMainModule.aDanfe.MostrarPreview    := false;
              //    UniMainModule.aDanfe.MostrarStatus     := false;
                  UniMainModule.aDanfe.ImprimirDANFEPDF();
              end
              else
              begin
//                  if UniMainModule.qNotasCabSTATUS_NOTA.AsString <> 'A' then
//                    UniMainModule.NFE.DANFE.NFeCancelada := true;
                  UniMainModule.aDanfe.TipoDANFE         := tiNFCe;
                  UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DanfeNFCe.fr3';
                  UniMainModule.aDanfe.PathPDF           := FFolder;
                  UniMainModule.aDanfe.Sistema           := 'Nota Facil';
                  UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
              //    UniMainModule.aDanfe.MostrarPreview    := false;
              //    UniMainModule.aDanfe.MostrarStatus     := false;
                  UniMainModule.aDanfe.ImprimirDANFEPDF();
              end;
          end
          else
          begin
              xx := TStringStream.create(UniMainModule.xmlExterno);
              UniMainModule.NFE.NotasFiscais.Clear;
              UniMainModule.NFE.NotasFiscais.LoadFromstream(xx);

              if UniMainModule.MODELO = 55 then
              begin
                  UniMainModule.NFE.DANFE.TipoDANFE      := tiRetrato;
                  UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DANFeRetratoNovo.fr3';
                  UniMainModule.aDanfe.PathPDF           := FFolder;
                  UniMainModule.aDanfe.Sistema           := 'Nota Facil';
                  UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
//                  UniMainModule.aDanfe.MostrarPreview    := false;
//                  UniMainModule.aDanfe.MostrarStatus     := false;
                  UniMainModule.aDanfe.ImprimirDANFEPDF();
              end
              else
              begin
                  UniMainModule.aDanfe.TipoDANFE         := tiNFCe;
                  UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DanfeNFCe.fr3';
                  UniMainModule.aDanfe.PathPDF           := FFolder;
                  UniMainModule.aDanfe.Sistema           := 'Nota Facil';
                  UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
//                  UniMainModule.aDanfe.MostrarPreview    := false;
//                  UniMainModule.aDanfe.MostrarStatus     := false;
                  UniMainModule.aDanfe.ImprimirDANFEPDF();
              end;
          end;

          UniMainModule.ACBrMail1.From     := 'email@teste.com';//edtFrom.text;
          UniMainModule.ACBrMail1.FromName := 'email@teste.com';// edtFromName.text;
          UniMainModule.ACBrMail1.Host     := 'smtp.hostinger.com.br'; // troque pelo seu servidor smtp
          UniMainModule.ACBrMail1.Username := 'email@teste.com';
          UniMainModule.ACBrMail1.Password := 'senha';
          UniMainModule.ACBrMail1.Port     := '587'; // troque pela porta do seu servidor smtp

          UniMainModule.NFE.NotasFiscais.Items[0].EnviarEmail( eEmail.Text, UniMainModule.qEmitenteEMAIL_ASSUNTO.AsString,
          mmEmailMsg.Lines
          , True  // Enviar PDF junto
          , nil    // Lista com emails que serão enviado cópias - TStrings
          , nil); // Lista de anexos - TStrings

          sleep(1000);
          ShowMessage('E-mail enviado!');
          close;
     except on e:exception do
         ShowMessage('Erro: '+e.Message);
     end;
end;

procedure TfEnviarEmail.UniFormShow(Sender: TObject);
begin
     eEmail.SetFocus;
end;

end.
