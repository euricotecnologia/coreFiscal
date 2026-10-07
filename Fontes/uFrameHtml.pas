unit uFrameHtml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniGUIBaseClasses, uniSyntaxEditorBase,
  uniSyntaxEditor;

type
  TFrameHtml = class(TUniFrame)
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniLabel1: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TFrameHtml.UniFrameCreate(Sender: TObject);
begin
     UniLabel1.Text := UniSyntaxEdit1.Lines.Text;
end;

end.
