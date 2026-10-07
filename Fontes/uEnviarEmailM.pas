unit uEnviarEmailM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,

  pcnConversao,

  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniEdit, unimEdit, uniGUIBaseClasses, uniLabel, unimLabel, uniButton,
  unimButton, uniMemo, unimMemo;

type
  TfEnviarEmailM = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    eemail: TUnimEdit;
    UnimContainerPanel10: TUnimContainerPanel;
    UnimContainerPanel12: TUnimContainerPanel;
    UnimButton8: TUnimButton;
    UnimContainerPanel11: TUnimContainerPanel;
    UnimButton7: TUnimButton;
    mmEmailMsg: TUnimMemo;
    procedure UnimButton8Click(Sender: TObject);
    procedure UnimButton7Click(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fEnviarEmailM: TfEnviarEmailM;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uNfceM;

function fEnviarEmailM: TfEnviarEmailM;
begin
     Result := TfEnviarEmailM(UniMainModule.GetFormInstance(TfEnviarEmailM));
end;

procedure TfEnviarEmailM.UnimButton7Click(Sender: TObject);
var  ArquivoXML,arqpdf,FUrl,NomePDF,
     FFolder,ArquivoPDF : String;
     cc                 : TStrings;
     xx                 : TStringStream;
begin
     try
          if eemail.Text = '' then
          begin
               Showmessage( 'Informar um email valido!');
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
//                  UniMainModule.aDanfe.MostrarPreview    := false;
//                  UniMainModule.aDanfe.MostrarStatus     := false;
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
//                  UniMainModule.aDanfe.MostrarPreview    := false;
//                  UniMainModule.aDanfe.MostrarStatus     := false;
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
          Showmessage( 'E-mail enviado!');

          close;
     except on e:exception do
         Showmessage( 'Erro: '+e.Message);
     end;
end;

procedure TfEnviarEmailM.UnimButton8Click(Sender: TObject);
begin
     close;
end;

procedure TfEnviarEmailM.UnimFormShow(Sender: TObject);
begin
     eEmail.SetFocus;
end;

end.
