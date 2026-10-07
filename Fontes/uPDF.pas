unit uPDF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniURLFrame, uniButton,
  uniBitBtn, uniPanel;

type
  TfPDF = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniContainerPanel1: TUniContainerPanel;
    btnCancela: TUniBitBtn;
    bWhats: TUniBitBtn;
    bEmail: TUniBitBtn;
    procedure btnCancelaClick(Sender: TObject);
    procedure bEmailClick(Sender: TObject);
    procedure bWhatsClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
     URL: string;
  end;

function fPDF: TfPDF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uEnviarEmail, uWhatsApp;

function fPDF: TfPDF;
begin
     Result := TfPDF(UniMainModule.GetFormInstance(TfPDF));
end;

procedure TfPDF.btnCancelaClick(Sender: TObject);
begin
     close;
end;

procedure TfPDF.bWhatsClick(Sender: TObject);
begin
     fWhatsApp.showModal;
end;

procedure TfPDF.UniFormShow(Sender: TObject);
begin
     if UniMainModule.mostrarBotoesRelatorioEmail = true then
          bEmail.Visible := true
     else
          bEmail.Visible := false;

     if UniMainModule.mostrarBotoesRelatorioWhats = true then
         bWhats.Visible := true
     else
         bWhats.Visible := False;
end;

procedure TfPDF.bEmailClick(Sender: TObject);
begin
     fEnviarEmail.showModal;
end;

end.
