unit uFhmtl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniGUIBaseClasses, uniSyntaxEditorBase,
  uniSyntaxEditor;

type
  TfHtml = class(TUniForm)
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniLabel1: TUniLabel;
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fHtml: TfHtml;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fHtml: TfHtml;
begin
  Result := TfHtml(UniMainModule.GetFormInstance(TfHtml));
end;

procedure TfHtml.UniFormShow(Sender: TObject);
begin
UniLabel1.Text := UniSyntaxEdit1.Lines.Text;
end;

end.
