unit uFrameTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTrackBar, uniDateTimePicker, uniGUIBaseClasses,
  uniButton, uniBitBtn;

type
  TframeTeste = class(TUniFrame)
    UniBitBtn1: TUniBitBtn;
    UniDateTimePicker1: TUniDateTimePicker;
    UniTrackBar1: TUniTrackBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



end.
