unit uNivelAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniPanel, uniLabel,
  uniGUIBaseClasses, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniRadioGroup, uniTreeView, uniImageList, uniBasicGrid,
  uniDBGrid, uniDBTreeGrid, uniCheckBox, uniDBCheckBox;

type
  TfNivelAcesso = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel15: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    btnExcluir: TUniBitBtn;
    UniRadioGroup1: TUniRadioGroup;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    btnInclui: TUniBitBtn;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniPanel2: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fNivelAcesso: TfNivelAcesso;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fNivelAcesso: TfNivelAcesso;
begin
  Result := TfNivelAcesso(UniMainModule.GetFormInstance(TfNivelAcesso));
end;

end.
