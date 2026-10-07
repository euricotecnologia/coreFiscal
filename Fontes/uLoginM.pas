unit uLoginM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniEdit, unimEdit, uniButton, unimButton,
  uniLabel, unimLabel, unimToggle,

  System.Types, System.StrUtils, uniBasicGrid, Vcl.Imaging.pngimage, uniImage,
  unimImage, acPNG, dxGDIPlusClasses;

type
  TfLoginM = class(TUnimLoginForm)
    eLogin: TUnimEdit;
    eSenha: TUnimEdit;
    UnimContainerPanel1: TUnimContainerPanel;
    bLogar: TUnimButton;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    cbSenha: TUnimToggle;
    UnimLabel3: TUnimLabel;
    UnimImage1: TUnimImage;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimLabel4: TUnimLabel;
    procedure bLogarClick(Sender: TObject);
    procedure UnimLoginFormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

function fLoginM: TfLoginM;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uPrincipal, uPdfM;

function fLoginM: TfLoginM;
begin
  Result := TfLoginM(UniMainModule.GetFormInstance(TfLoginM));
end;

procedure TfLoginM.bLogarClick(Sender: TObject);
begin
      if eLogin.Text = '' then
      begin
          ShowMessage('informe seu usuario');
          exit;
      end;

      if eSenha.Text = '' then
      begin
          ShowMessage('Informe a sua senha');
          exit;
      end;

      UniMainModule.mobile := 'S';

      if UniMainModule.Login(eLogin.Text, eSenha.Text) then
      begin
          UniMainModule.usuario2         := eLogin.Text;
          UniMainModule.TRdata^.xUsuario := eLogin.Text;

          if cbSenha.Toggled then
          begin
            UniApplication.Cookies.SetCookie('_loginFiscal', eLogin.Text, Date + 30.0); // Expires 7 days from now
            UniApplication.Cookies.SetCookie('_senhaFiscal', eSenha.Text, Date + 30.0);
            UniApplication.Cookies.SetCookie('_LembrarFiscal', 'S', Date + 30.0);
          end;

          ModalResult := mrOk;
      end
      else
      begin
          ShowMessage('Usuario ou senha incorretos');
          eSenha.Text := '';
      end;
end;

procedure TfLoginM.UnimLoginFormShow(Sender: TObject);
var
  I              : Integer;
  sString        : String;
  sStringSeparada: TStringDynArray;
begin
    UniMainModule.vPdf := UniApplication.Parameters.Values['w'];

    if copy(UniMainModule.vPdf,1,1) = 'S' then
    begin
         UniMainModule.mobile    := 'S';
         UniMainModule.interna   := 'N';
         sString                 := UniMainModule.vPdf;
         sStringSeparada         := SplitString(sString, '*');

         UniMainModule.vEmitente := UniMainModule.base64Decode(sStringSeparada[1]);
         UniMainModule.vNf       := UniMainModule.base64Decode(sStringSeparada[2]);
         UniMainModule.notaw     := strToInt( UniMainModule.base64Decode(sStringSeparada[2] ));
         UniMainModule.Modelow   := strToInt( UniMainModule.base64Decode(sStringSeparada[3] ));
         UniMainModule.seriew    := strToInt( UniMainModule.base64Decode(sStringSeparada[4] ));

         UniMainModule.VisualizarPDFexterno(UniMainModule.base64Decode(sStringSeparada[1]), // emitente
                                            UniMainModule.base64Decode(sStringSeparada[2]), // Nota fiscal
                                            UniMainModule.base64Decode(sStringSeparada[3]), // Modelo
                                            UniMainModule.base64Decode(sStringSeparada[4])  // Serie
                                            );
         fPdfm.UnimButton1.Visible := False;
         fPdfm.bEmail.Visible      := False;
         fPdfm.Show;
    end
    else
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
                cbSenha.Toggled := True;
            end;
        end;
    end;
end;

initialization
  RegisterAppFormClass(TfLoginM);

end.
