unit uWhatsApp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniRadioButton, uniButton, uniBitBtn, uniEdit,
  uniGUIBaseClasses, uniLabel;

type
  TfWhatsApp = class(TUniForm)
    UniLabel23: TUniLabel;
    lNumero: TUniLabel;
    eNumero: TUniEdit;
    btnGravaNFe: TUniBitBtn;
    btnCancelaNF: TUniBitBtn;
    rNumero: TUniRadioButton;
    rContato: TUniRadioButton;
    procedure rNumeroClick(Sender: TObject);
    procedure rContatoClick(Sender: TObject);
    procedure btnGravaNFeClick(Sender: TObject);
    procedure btnCancelaNFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fWhatsApp: TfWhatsApp;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fWhatsApp: TfWhatsApp;
begin
  Result := TfWhatsApp(UniMainModule.GetFormInstance(TfWhatsApp));
end;

procedure TfWhatsApp.btnCancelaNFClick(Sender: TObject);
begin
     close;
end;

procedure TfWhatsApp.btnGravaNFeClick(Sender: TObject);
var link : String;
begin
     if UniMainModule.interna = 'S' then
     begin
     //    link := ' http://10.1.1.30:8077/m?w=S*'+   // para teste interno
         link := ' http://afnapps.com.br/UniFiscal/unifiscal.dll/m?w=S*'+
         UniMainModule.base64Encode( UniMainModule.CodigoEmitente )+'*'+
         UniMainModule.base64Encode( UniMainModule.notaw.ToString)+'*'+
         UniMainModule.base64Encode( UniMainModule.Modelow.ToString)+'*'+
         UniMainModule.base64Encode( UniMainModule.seriew.ToString)+'*';
     end
     else
     begin
     //    link := ' http://10.1.1.3:8077/m?w=S*'+   // para teste interno
         link := ' http://afnapps.com.br/UniFiscal/unifiscal.dll/m?w=S*'+
         UniMainModule.base64Encode( UniMainModule.CodigoEmitente )+'*'+
         UniMainModule.base64Encode( UniMainModule.qNotasCabID.AsString)+'*'+
         UniMainModule.base64Encode( UniMainModule.qNotasCabMODELO.AsString )+'*'+
         UniMainModule.base64Encode( UniMainModule.qNotasCabSERIE.AsString )+'*';
     end;

     try
         if rNumero.Checked = false then
            UniSession.AddJS('window.open("https://api.whatsapp.com/send?text=Acesse o link '+
            'para baixar a sua Nota Fiscal: '+link+' ")')
         else
            UniSession.AddJS('window.open("https://api.whatsapp.com/send?&phone=+55'+enumero.Text+'&text=Acesse o link '+
            'para baixar a sua Nota Fiscal: '+link+'  " )');
     except
         ShowMessage('Ocorreu um erro ao enviar!');
     end;
end;

procedure TfWhatsApp.rContatoClick(Sender: TObject);
begin
    lnumero.Visible := false;
    enumero.Visible := false;
end;

procedure TfWhatsApp.rNumeroClick(Sender: TObject);
begin
    lnumero.Visible := true;
    enumero.Visible := true;
end;

end.
