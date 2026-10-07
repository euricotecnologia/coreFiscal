unit uOsOtica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,

  dateUtils,

  uniGUIClasses, uniGUIFrame, uniRadioButton, uniButton, uniBitBtn, UniSFBitBtn,
  uniMultiItem, uniComboBox, uniEdit, uniDateTimePicker, uniGroupBox,
  Vcl.Imaging.pngimage, uniImage, uniLabel, uniGUIBaseClasses, uniPanel,
  uniBasicGrid, uniDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UniSFButton;

type
  TfOsOtica = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    imAceita: TUniImage;
    imCancelada: TUniImage;
    Image9: TUniImage;
    imPendente: TUniImage;
    imInutilizada: TUniImage;
    imRecusada: TUniImage;
    UniPanel2: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    eInicio: TUniDateTimePicker;
    eFinal: TUniDateTimePicker;
    UniGroupBox2: TUniGroupBox;
    eNota: TUniEdit;
    cbFiltro: TUniComboBox;
    UniSFBitBtn1: TUniSFBitBtn;
    UniSFBitBtn2: TUniSFBitBtn;
    btnNovoProd: TUniSFBitBtn;
    UniSFBitBtn3: TUniSFBitBtn;
    UniGroupBox3: TUniGroupBox;
    rFantasia: TUniRadioButton;
    rRazao: TUniRadioButton;
    rGeral: TUniRadioButton;
    eCliente: TUniEdit;
    DBGrid2: TUniDBGrid;
    DsOticaCab: TDataSource;
    procedure UniSFBitBtn3Click(Sender: TObject);
    procedure btnNovoProdClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniSFBitBtn2Click(Sender: TObject);
  private
    procedure Editar;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uOsOticaDados, MainModule;



procedure TfOsOtica.btnNovoProdClick(Sender: TObject);
begin
     with UniMainModule.qOticaCab do
     begin
          close;
          sql.Clear;
          sql.Add('Select oc.*, c.nomefantasia, c.razaosocial, c.fone, c.fax from oticacab oc '+
          ' join clientes c on (c.idcliente = oc.cliente and oc.cod_emitente = '+
          ' C.idemitente ) ');
          sql.Add('WHERE oc.cod_emitente = :e');
          sql.Add('AND oc.data >= :vIni and oc.data <= :vFim and oc.ativo = ''S''  ');

          if cbFiltro.ItemIndex > 0 then
            sql.Add(' and oc.situacao = :situacao ');

          if rGeral.Checked = false then
          begin
               if rFantasia.Checked = true then
                  sql.Add(' AND c.NOMEFANTASIA like :cliente ')
               else if rRazao.Checked = true then
                  sql.Add(' AND c.RAZAOSOCIAL like  :cliente ')
          end;
          sql.Add(' ORDER BY oc.ID ');

          ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          ParamByName('vIni').AsDate := eInicio.DateTime;
          ParamByName('vFim').AsDate := eFinal.DateTime;
          if cbFiltro.ItemIndex > 0 then
             ParamByName('situacao').asString := cbfiltro.Text;
          if rGeral.Checked = false then
             ParamByName('cliente').asString := '%'+eCliente.Text+'%';
          open;
     end;
end;

procedure TfOsOtica.DBGrid2DblClick(Sender: TObject);
begin
     Editar;
end;

procedure TfOsOtica.Editar;
begin
     UniMainModule.qOticaCab.edit;
     fOsOticaDados.showModal;

     btnNovoProd.Click;
end;

procedure TfOsOtica.UniFrameCreate(Sender: TObject);
begin
    if unimainmodule.qEmitenteMODULO_OSOTICA.AsString <> 'S' then
       UniLabel1.Caption := 'Orçamentos';

    eInicio.DateTime := StartOfTheMonth(now);
    eFinal.DateTime  := EndOfTheMonth(now);
    btnNovoProd.Click;
end;

procedure TfOsOtica.UniSFBitBtn2Click(Sender: TObject);
begin
     Editar;
end;

procedure TfOsOtica.UniSFBitBtn3Click(Sender: TObject);
begin
     UniMainModule.qOticaCor.close;

     if UniMainModule.qOticaCab.Active = false then
        UniMainModule.qOticaCab.open;

     UniMainModule.qOticaCab.Append;
     fOsOticaDados.eCODIGO.text   := 'NOVO';
     fOsOticaDados.eDATA.DateTime := date;

     fOsOticaDados.showModal;

     btnNovoProd.Click;
end;

end.
