unit uListaProutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm;

type
  TfListaProdutos = class(TUnimForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fListaProdutos: TfListaProdutos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fListaProdutos: TfListaProdutos;
begin
  Result := TfListaProdutos(UniMainModule.GetFormInstance(TfListaProdutos));
end;

end.
