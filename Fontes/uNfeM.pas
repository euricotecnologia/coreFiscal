unit uNfeM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniDateTimePicker, unimDatePicker, unimSelect, uniGUIBaseClasses,
  uniURLFrame, unimURLFrame, uniButton, unimButton, unimEdit,
  uniEdit, uniLabel, unimLabel, Vcl.Imaging.pngimage, uniImage, unimImage,
  uniMultiItem, unimList, uniToolBar, unimToolbar, uniPanel, uniPageControl,
  unimTabPanel;

type
  TfNfeM = class(TUnimForm)
    pgVendas: TUnimTabPanel;
    tsVendas: TUnimTabSheet;
    UnimToolBar2: TUnimToolBar;
    UnimToolButton2: TUnimToolButton;
    StringGrid1: TUnimList;
    UnimImage1: TUnimImage;
    imgFinalizar: TUnimImage;
    UnimToolBar3: TUnimToolBar;
    UnimContainerPanel15: TUnimContainerPanel;
    UnimLabel9: TUnimLabel;
    edAcrescimo: TUnimNumberEdit;
    UnimContainerPanel16: TUnimContainerPanel;
    UnimLabel13: TUnimLabel;
    edTotalNF: TUnimNumberEdit;
    UnimContainerPanel17: TUnimContainerPanel;
    UnimLabel14: TUnimLabel;
    edDesconto: TUnimNumberEdit;
    UnimContainerPanel18: TUnimContainerPanel;
    UnimLabel15: TUnimLabel;
    edSubTotal: TUnimEdit;
    tsProdutos: TUnimTabSheet;
    strProdutos: TUnimList;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    cmbProdutos: TUnimEdit;
    eCodigo: TUnimEdit;
    UnimContainerPanel7: TUnimContainerPanel;
    UnimContainerPanel8: TUnimContainerPanel;
    UnimLabel3: TUnimLabel;
    eQuant: TUnimNumberEdit;
    UnimButton4: TUnimButton;
    UnimButton3: TUnimButton;
    UnimContainerPanel9: TUnimContainerPanel;
    UnimLabel4: TUnimLabel;
    edTotal: TUnimNumberEdit;
    UnimContainerPanel14: TUnimContainerPanel;
    UnimLabel6: TUnimLabel;
    eValor: TUnimNumberEdit;
    UnimImage2: TUnimImage;
    UnimImage3: TUnimImage;
    tsClientes: TUnimTabSheet;
    stgClientes: TUnimList;
    UnimImage5: TUnimImage;
    UnimImage6: TUnimImage;
    UnimToolBar4: TUnimToolBar;
    UnimLabel5: TUnimLabel;
    UnimContainerPanel11: TUnimContainerPanel;
    UnimButton5: TUnimButton;
    UnimEdit1: TUnimEdit;
    tsFormas: TUnimTabSheet;
    stgParcelas: TUnimList;
    t3: TUnimToolBar;
    UnimContainerPanel13: TUnimContainerPanel;
    UnimLabel8: TUnimLabel;
    eRestante: TUnimNumberEdit;
    UnimContainerPanel12: TUnimContainerPanel;
    UnimLabel7: TUnimLabel;
    UnimButton11: TUnimButton;
    eTroco: TUnimNumberEdit;
    t2: TUnimToolBar;
    UnimContainerPanel19: TUnimContainerPanel;
    UnimLabel10: TUnimLabel;
    eTotalParcs: TUnimNumberEdit;
    UnimContainerPanel20: TUnimContainerPanel;
    UnimLabel12: TUnimLabel;
    eValorPago: TUnimNumberEdit;
    pCliente: TUnimToolBar;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    eCpfCliente: TUnimEdit;
    UnimContainerPanel21: TUnimContainerPanel;
    UnimLabel16: TUnimLabel;
    eNomeCliente: TUnimEdit;
    t1: TUnimToolBar;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton7: TUnimButton;
    UnimButton8: TUnimButton;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimButton9: TUnimButton;
    UnimButton10: TUnimButton;
    t0: TUnimToolBar;
    UnimContainerPanel6: TUnimContainerPanel;
    UnimLabel11: TUnimLabel;
    eValorparcela: TUnimNumberEdit;
    UnimContainerPanel10: TUnimContainerPanel;
    UnimButton6: TUnimButton;
    UnimImage7: TUnimImage;
    UnimImage8: TUnimImage;
    tsPdf: TUnimTabSheet;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    bEmail: TUnimButton;
    UnimPDFFrame1: TUnimPDFFrame;
    tsDados: TUnimTabSheet;
    UnimLabel17: TUnimLabel;
    UnimContainerPanel22: TUnimContainerPanel;
    UnimLabel18: TUnimLabel;
    cmbFinalidade: TUnimSelect;
    UnimContainerPanel23: TUnimContainerPanel;
    UnimLabel19: TUnimLabel;
    cmbTipoDoc: TUnimSelect;
    UnimContainerPanel24: TUnimContainerPanel;
    UnimLabel20: TUnimLabel;
    LookCFOP: TUnimSelect;
    UnimImage4: TUnimImage;
    UnimImage9: TUnimImage;
    UnimContainerPanel26: TUnimContainerPanel;
    UnimLabel22: TUnimLabel;
    edComplementar: TUnimEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fNfeM: TfNfeM;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fNfeM: TfNfeM;
begin
  Result := TfNfeM(UniMainModule.GetFormInstance(TfNfeM));
end;

end.
