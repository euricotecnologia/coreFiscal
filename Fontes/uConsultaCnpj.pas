unit uConsultaCnpj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniEdit, unimEdit, uniLabel, unimLabel, uniImage,
  unimImage, uniGUIBaseClasses, ACBrBase, ACBrSocket, ACBrConsultaCNPJ;

type
  TfConsultaCNPJ = class(TUnimForm)
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    UnimContainerPanel1: TUnimContainerPanel;
    Image1: TUnimImage;
    UnimContainerPanel2: TUnimContainerPanel;
    EditCaptcha: TUnimEdit;
    UnimContainerPanel10: TUnimContainerPanel;
    UnimContainerPanel11: TUnimContainerPanel;
    UnimButton7: TUnimButton;
    UnimContainerPanel12: TUnimContainerPanel;
    UnimButton8: TUnimButton;
    bAtualizar: TUnimButton;
    procedure UnimButton7Click(Sender: TObject);
    procedure UnimButton8Click(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fConsultaCNPJ: TfConsultaCNPJ;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Vcl.Imaging.pngimage , uClientesDadosM;

function fConsultaCNPJ: TfConsultaCNPJ;
begin
  Result := TfConsultaCNPJ(UniMainModule.GetFormInstance(TfConsultaCNPJ));
end;

procedure TfConsultaCNPJ.bAtualizarClick(Sender: TObject);
var
  Stream : TMemoryStream;
  png    : TPngImage;
begin
    Stream := TMemoryStream.Create;
    try
        ACBrConsultaCNPJ1.Captcha(Stream);

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

procedure TfConsultaCNPJ.UnimButton7Click(Sender: TObject);
var
  I: Integer;
begin
      if EditCaptcha.Text <> '' then
      begin
          try
              if ACBrConsultaCNPJ1.Consulta(fClientesDadosM.EditCNPJ.Text, EditCaptcha.Text, False) then
              begin
                  UniMainModule.qClientesRAZAOSOCIAL.AsString  := ACBrConsultaCNPJ1.RazaoSocial;
                  UniMainModule.qClientesNOMEFANTASIA.AsString := ACBrConsultaCNPJ1.Fantasia;
                  UniMainModule.qClientesENDERECO.AsString     := ACBrConsultaCNPJ1.Endereco;
                  UniMainModule.qClientesNRO.AsString          := ACBrConsultaCNPJ1.Numero;
                  UniMainModule.qClientesCOMPLEMENTO.AsString  := ACBrConsultaCNPJ1.Complemento;
                  UniMainModule.qClientesBAIRRO.AsString       := ACBrConsultaCNPJ1.Bairro;
                  UniMainModule.qClientesCEP.AsString          := ACBrConsultaCNPJ1.CEP;
                  UniMainModule.qClientesFONE.AsString         := ACBrConsultaCNPJ1.Telefone;
              end;

          finally

              fClientesDadosM.ACBrCEP1.BuscarPorCEP(fClientesDadosM.eCEP.Text);

              For I := 0 to fClientesDadosM.ACBrCEP1.Enderecos.Count - 1 do
              begin
                  with fClientesDadosM.ACBrCEP1.Enderecos[I] do
                  begin
                    UniMainModule.qClientesCIDADE.AsString       := fClientesDadosM.ACBrCEP1.Enderecos[I].Municipio;
                    UniMainModule.qClientesUF.AsString           := fClientesDadosM.ACBrCEP1.Enderecos[I].UF;
                    UniMainModule.qClientesCODMUNICIPIO.AsString := fClientesDadosM.ACBrCEP1.Enderecos[I].IBGE_Municipio;
                  end;
              end;

              close;

          end;
      end
      else
      begin
        ShowMessage( 'É necessário digitar o captcha.');
        EditCaptcha.Setfocus;
      end;
end;

procedure TfConsultaCNPJ.UnimButton8Click(Sender: TObject);
begin
     close;
end;

procedure TfConsultaCNPJ.UnimFormShow(Sender: TObject);
begin
     bAtualizar.Click;
     EditCaptcha.Clear;
     EditCaptcha.Setfocus;
end;

end.
