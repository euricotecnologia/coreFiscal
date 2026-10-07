unit uMensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniButton, uniBitBtn;

type
  TMyButtons = (mbSim, mbNao, mbOk);

type
  TfMensagem = class(TUniForm)
    lblMensagem: TUniPanel;
    btnIcone: TUniBitBtn;
    btnSim: TUniBitBtn;
    BtnNao: TUniBitBtn;
    BtnOK: TUniBitBtn;
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public


  end;

function fMensagem: TfMensagem;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fMensagem: TfMensagem;
begin
     Result := TfMensagem(UniMainModule.GetFormInstance(TfMensagem));
end;


procedure TfMensagem.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
     if ModalResult = mrYes then
     begin
          UniMainModule.Resultado := 'S'
     end
     else if ModalResult = mrNo then
     begin
          UniMainModule.Resultado := 'N'
     end
     else if ModalResult = mrOk then
     begin
          UniMainModule.Resultado := 'S'
     end
end;


procedure TfMensagem.UniFormShow(Sender: TObject);
begin
     if btnSim.Visible = true then
        btnSim.SetFocus
     else if BtnOK.Visible = true then
        BtnOK.SetFocus;
end;

end.
