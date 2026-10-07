unit uSpedFiscal;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, dateUtils,

  uniGUIClasses, uniGUIForm, uniButton, uniDateTimePicker,
  uniGUIBaseClasses, uniLabel, uniTreeView, uniPanel, uniCheckBox, uniMemo,
  uniScreenMask, uniProgressBar, uniBitBtn;

type

  TfSpedFiscal = class(TUniForm)
    UniPanel1: TUniPanel;
    data_ini_inv: TUniDateTimePicker;
    data_fim_inv: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    chkInventario: TUniCheckBox;
    chkZerados: TUniCheckBox;
    UniPanel2: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    Data_INI: TUniDateTimePicker;
    Data_Fim: TUniDateTimePicker;
    ListaErro: TUniMemo;
    Barra: TUniProgressBar;
    bGerar: TUniButton;
    bCancelar: TUniButton;
    procedure chkInventarioClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Errogeracao: Boolean;
    procedure AdicionaItem( Texto: string; Imagen: Integer );
    procedure LimparLista;
  end;

function fSpedFiscal: TfSpedFiscal;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, udmEFDFiscal;

function fSpedFiscal: TfSpedFiscal;
begin
  Result := TfSpedFiscal(UniMainModule.GetFormInstance(TfSpedFiscal));
end;

{ TUniForm1 }

procedure TfSpedFiscal.AdicionaItem(Texto: string; Imagen: Integer);
begin
    HideMask;
    barra.Position := Imagen;
    sleep(1000);
    ListaErro.Lines.Add(texto);
    ShowMask('Aguarde...'+texto);
end;

procedure TfSpedFiscal.chkInventarioClick(Sender: TObject);
begin
     chkZerados.Visible := chkInventario.Checked;
end;

procedure TfSpedFiscal.LimparLista;
begin
     ListaErro.Clear;
end;

procedure TfSpedFiscal.UniButton1Click(Sender: TObject);
begin
     LimparLista;

     if chkInventario.Checked then
     begin
        //  GeraInventario;
          if dmEFDFiscal.CodInventario = 0 then
             Exit;
     end;
     dmEFDFiscal.GeraSped( strToInt(UniMainModule.CodigoEmitente), Data_INI.DateTime, Data_Fim.DateTime );
     if Errogeracao then
          AdicionaItem( 'Sped Gerado com erros!', 2 )
     else
          AdicionaItem( 'Sped gerado com sucesso!', 3 );
     HideMask;
     fSpedFiscal.AdicionaItem('Concluido', 100);
     ShowMessage('Sped Gerado com sucesso!');
     HideMask;
     UniSession.SendFile(UniMainModule.pasta + UniMainModule.arquivo);
  //
  //   showmessage( 'Arquivo gerado em : ' + #13 +
  //   dmEFDFiscal.ACBrSPEDFiscal1.Path + dmEFDFiscal.ACBrSPEDFiscal1.Arquivo);
end;

procedure TfSpedFiscal.UniButton2Click(Sender: TObject);
begin
          close;
end;

procedure TfSpedFiscal.UniFormShow(Sender: TObject);
begin
     Data_INI.DateTime := StartOfTheMonth(now) ;
     Data_Fim.DateTime  := EndOfTheMonth(now) ;
     LimparLista;
     AdicionaItem( 'Aguardando Geração', 0 );
end;

end.
