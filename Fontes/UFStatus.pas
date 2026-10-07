unit UFStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniLabel;

type
  TfStatus = class(TUniForm)
    lblStatus: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fStatus: TfStatus;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fStatus: TfStatus;
begin
  Result := TfStatus(UniMainModule.GetFormInstance(TfStatus));
end;

end.
