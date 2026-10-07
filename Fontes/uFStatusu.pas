unit uFStatusu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniLabel;

type
  TfStatusU = class(TUniForm)
    LBLStatus: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fStatusU: TfStatusU;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fStatusU: TfStatusU;
begin
  Result := TfStatusU(UniMainModule.GetFormInstance(TfStatusU));
end;

end.
