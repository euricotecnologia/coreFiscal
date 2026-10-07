unit uListaCidadesM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, uniBasicGrid, uniDBGrid, unimDBListGrid, uniButton, unimButton,
  uniEdit, unimEdit, uniLabel, unimLabel, uniGUIBaseClasses;

type
  TfListaCidadesM = class(TUnimForm)
    UnimContainerPanel3: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimContainerPanel4: TUnimContainerPanel;
    eCidade: TUnimEdit;
    UnimButton1: TUnimButton;
    UnimDBListGrid1: TUnimDBListGrid;
    dsCidades: TDataSource;
    UnimContainerPanel10: TUnimContainerPanel;
    UnimContainerPanel12: TUnimContainerPanel;
    UnimButton8: TUnimButton;
    UnimContainerPanel11: TUnimContainerPanel;
    UnimButton7: TUnimButton;
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton8Click(Sender: TObject);
    procedure UnimButton7Click(Sender: TObject);
    procedure UnimDBListGrid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    estado : String;
  end;

function fListaCidadesM: TfListaCidadesM;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uClientesDadosM;

function fListaCidadesM: TfListaCidadesM;
begin
  Result := TfListaCidadesM(UniMainModule.GetFormInstance(TfListaCidadesM));
end;

procedure TfListaCidadesM.UnimButton1Click(Sender: TObject);
begin
     with UniMainModule do
     begin
          qIbge.Close;
          qIbge.SQL.Clear;
          qIbge.SQL.Add('select ID,IDUF,NOME from MUNICIPIOS where IDUF = :estado ');
          if eCidade.Text <> '' then
             qIbge.SQL.Add(' and nome like :cidade ');
          qIbge.SQL.Add('order by NOME ');
          qIbge.ParamByName('estado').AsString := estado;
          if eCidade.Text <> '' then
             qIbge.ParamByName('cidade').AsString := eCidade.Text+'%';
          qIbge.Open();
     end;
end;

procedure TfListaCidadesM.UnimButton2Click(Sender: TObject);
begin
     close;
end;

procedure TfListaCidadesM.UnimButton7Click(Sender: TObject);
begin
      UniMainModule.qClientesCODMUNICIPIO.AsString := UniMainModule.qIbgeID.AsString;
      UniMainModule.qClientesCIDADE.AsString       := UniMainModule.qIbgeNOME.AsString;
      close;
end;

procedure TfListaCidadesM.UnimButton8Click(Sender: TObject);
begin
     close;
end;

procedure TfListaCidadesM.UnimDBListGrid1Click(Sender: TObject);
begin
     UniMainModule.qClientesCODMUNICIPIO.AsString := UniMainModule.qIbgeID.AsString;
     UniMainModule.qClientesCIDADE.AsString       := UniMainModule.qIbgeNOME.AsString;
     close;
end;

end.
