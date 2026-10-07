unit uPdfM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniURLFrame, unimURLFrame, uniButton, unimButton, uniToolBar, unimToolbar,
  uniGUIBaseClasses, unimScrollBox

  ,pcnConversao;

type
  TfPdfM = class(TUnimForm)
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    bEmail: TUnimButton;
    UnimButton1: TUnimButton;
    UnimScrollBox1: TUnimScrollBox;
    UnimPDFFrame1: TUnimPDFFrame;
    procedure UnimToolButton1Click(Sender: TObject);
    procedure bEmailClick(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public

  end;

function fPdfM: TfPdfM;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uEnviarEmailM, uWhatsAppm, ServerModule,
  uNfeOpm;

function fPdfM: TfPdfM;
begin
  Result := TfPdfM(UniMainModule.GetFormInstance(TfPdfM));
end;

procedure TfPdfM.bEmailClick(Sender: TObject);
begin
     fEnviarEmailM.showModal;
end;

procedure TfPdfM.UnimButton1Click(Sender: TObject);
begin
     fwhatsAppm.showmodal;
end;

procedure TfPdfM.UnimFormShow(Sender: TObject);
begin
     if UniMainModule.pdfNfeInterna = 'S' then
     begin
          // veio do NFCE Mobile
     end
     else
     begin
          if UniMainModule.interna = 'S' then
             UniMainModule.xx := TStringStream.create(UniMainModule.qNotasCabXML_NOTA.AsString)
          else begin
             UniMainModule.xx := TStringStream.create(UniMainModule.xmlExterno);
             unimainModule.modelo := unimainModule.Modelow;
          end;


          UniMainModule.NFE.NotasFiscais.Clear;
          UniMainModule.NFE.NotasFiscais.LoadFromstream(UniMainModule.xx);

          UniMainModule.NomePDF := UniMainModule.soNumero(UniMainModule.NFE.NotasFiscais.Items[0].NFE.infNFe.ID);
          UniMainModule.FFolder := UniServerModule.LocalCachePath;
          UniMainModule.FUrl    := UniServerModule.LocalCacheURL + ExtractFileName(UniMainModule.arqpdf);

          if unimainModule.modelo = 55 then
          begin
              //UniMainModule.NFE.DANFE.TipoDANFE      := tiRetrato;
              UniMainModule.aDanfe.TipoDANFE         := tiRetrato;
              UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DANFeRetratoNovo.fr3';
              UniMainModule.aDanfe.PathPDF           := UniMainModule.FFolder;
              UniMainModule.aDanfe.Sistema           := 'BrtiSistemas';
              UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
              UniMainModule.aDanfe.ImprimirDANFEPDF();
          end
          else
          begin
              UniMainModule.aDanfe.TipoDANFE         := tiNFCe;
              UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DanfeNFCe.fr3';
              UniMainModule.aDanfe.PathPDF           := UniMainModule.FFolder;
              UniMainModule.aDanfe.Sistema           := 'BrtiSistemas';
              UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
              UniMainModule.aDanfe.ImprimirDANFEPDF();
          end;

          UniMainModule.ArquivoPDF := UniMainModule.NomePDF + '-nfe.pdf';
          UnimPDFFrame1.PdfURL     := UniMainModule.FUrl+UniMainModule.ArquivoPDF;
     end;
end;

procedure TfPdfM.UnimToolButton1Click(Sender: TObject);
begin
      close;
end;

end.







