unit uWhatsAppm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniRadioButton, unimRadio, uniGUIBaseClasses, uniLabel, unimLabel, uniButton,
  unimButton, uniEdit, unimEdit;

type
  TfWhatsappM = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    rNumero: TUnimRadio;
    rSelecionar: TUnimRadio;
    pNumero: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    eNumero: TUnimEdit;
    UnimButton1: TUnimButton;
    bSms: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure rSelecionarCheck(Sender: TObject);
    procedure rNumeroCheck(Sender: TObject);
    procedure bSmsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fWhatsappM: TfWhatsappM;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fWhatsappM: TfWhatsappM;
begin
    Result := TfWhatsappM(UniMainModule.GetFormInstance(TfWhatsappM));
end;

procedure TfWhatsappM.rNumeroCheck(Sender: TObject);
begin
    pnumero.Visible := true;
    bsms.Visible    := true;
    eNumero.Clear;
    eNumero.SetFocus;
end;

procedure TfWhatsappM.rSelecionarCheck(Sender: TObject);
begin
     pnumero.Visible := false;
     bsms.Visible    := false;
     UnimButton1.SetFocus;
end;

procedure TfWhatsappM.UnimButton1Click(Sender: TObject);
var link : String;
begin
//     if rNumero.Checked = false then
//     begin
//          if eNumero.text = '' then
//          begin
//               showmessage('');
//               eNumero.SetFocus;
//               exit;
//          end;
//     end;

     if not ( UniMainModule.interna = 'S' ) then
     begin
         //link := ' http://192.168.1.112:8181/m?w=S*'+   // para teste interno
        // link := ' http://afnapps.com.br/UniFiscal/unifiscal.dll/m?w=S*'+
         link := ' http://appbrti.com:8181/m?w=S*'+
         UniMainModule.base64Encode( UniMainModule.CodigoEmitente.Trim )+'*'+
         UniMainModule.base64Encode( UniMainModule.notaw.ToString)+'*'+
         UniMainModule.base64Encode( UniMainModule.Modelow.ToString)+'*'+
         UniMainModule.base64Encode( UniMainModule.seriew.ToString)+'*';
     end
     else
     begin
         //link := ' http://192.168.1.112:8181/m?w=S*'+   // para teste interno
         //link := ' http://afnapps.com.br/UniFiscal/unifiscal.dll/m?w=S*'+
         link := ' http://appbrti.com:8181/m?w=S*'+
         UniMainModule.base64Encode( UniMainModule.CodigoEmitente.Trim )+'*'+
         UniMainModule.base64Encode( UniMainModule.qNotasCabID.AsString)+'*'+
         UniMainModule.base64Encode( UniMainModule.qNotasCabMODELO.AsString )+'*'+
         UniMainModule.base64Encode( UniMainModule.qNotasCabSERIE.AsString )+'*';
     end;

     try
         if rNumero.Checked = false then
            UniSession.AddJS('window.location.href="whatsapp://send?l=pt_pt&text=Acesse o link '+
            'para baixar a sua Nota Fiscal: '+link+' ";')
         else
            UniSession.AddJS('window.location.href="whatsapp://send?l=pt_pt&text=Acesse o link '+
            'para baixar a sua Nota Fiscal: '+link+'&phone=+55'+enumero.Text+'";');
     except
         ShowMessage('Ocorreu um erro ao enviar!');
     end;
end;

procedure TfWhatsappM.bSmsClick(Sender: TObject);
var link : String;
begin
     if not ( UniMainModule.interna = 'S' ) then
     begin
      //   link := ' http://192.168.1.112:8181/m?w=S*'+   // para teste interno
        // link := ' http://afnapps.com.br/UniFiscal/unifiscal.dll/m?w=S*'+
         link := ' http://appbrti.com:8181/m?w=S*'+
         UniMainModule.base64Encode( UniMainModule.CodigoEmitente.Trim )+'*'+
         UniMainModule.base64Encode( UniMainModule.notaw.ToString)+'*'+
         UniMainModule.base64Encode( UniMainModule.Modelow.ToString)+'*'+
         UniMainModule.base64Encode( UniMainModule.seriew.ToString)+'*';
     end
     else
     begin
       //  link := ' http://192.168.1.112:8181/m?w=S*'+   // para teste interno
      //   link := ' http://afnapps.com.br/UniFiscal/unifiscal.dll/m?w=S*'+
         link := ' http://appbrti.com:8181/m?w=S*'+
         UniMainModule.base64Encode( UniMainModule.CodigoEmitente.Trim )+'*'+
         UniMainModule.base64Encode( UniMainModule.qNotasCabID.AsString)+'*'+
         UniMainModule.base64Encode( UniMainModule.qNotasCabMODELO.AsString )+'*'+
         UniMainModule.base64Encode( UniMainModule.qNotasCabSERIE.AsString )+'*';
     end;

     try
         UniSession.AddJS('window.location.href = "sms:'+enumero.Text+'?&body= Acesse o link '+
            'para baixar a sua Nota Fiscal: '+link+' "')
     except
         ShowMessage('Ocorreu um erro ao enviar!');
     end;
end;

end.
