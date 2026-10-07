unit uOS;

interface

uses
  dateUtils,

  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniDBGrid, uniRadioButton,
  uniButton, uniBitBtn, uniMultiItem, uniComboBox, uniEdit,
  uniDateTimePicker, uniGroupBox, Vcl.Imaging.pngimage, uniImage, uniLabel,
  uniGUIBaseClasses, uniPanel, Data.DB;

type
  TfOS = class(TUniFrame)
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
    UniGroupBox3: TUniGroupBox;
    rFantasia: TUniRadioButton;
    rRazao: TUniRadioButton;
    rGeral: TUniRadioButton;
    eCliente: TUniEdit;
    DBGrid2: TUniDBGrid;
    DsOticaCab: TDataSource;
    btnNovoProd: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn1: TUniBitBtn;
    procedure btnNovoProdClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    procedure Editar;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uOsDados, MainModule;



procedure TfOS.btnNovoProdClick(Sender: TObject);
begin
     with UniMainModule.qOsCab do
     begin
          close;
          sql.Clear;
          sql.Add('Select oc.*, c.nomefantasia, c.razaosocial, c.fone, c.fax from OsCab oc '+
          ' join clientes c on (c.idcliente = oc.cliente and oc.cod_emitente = '+
          ' C.idemitente ) ');
          sql.Add(' WHERE oc.cod_emitente = :e ');
          sql.Add(' AND oc.DATAHORAENTRADA >= :vIni and oc.DATAHORAENTRADA <= :vFim and oc.ativo = ''S''  ');

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

procedure TfOS.DBGrid2DblClick(Sender: TObject);
begin
     Editar;
end;

procedure TfOS.Editar;
begin
     UniMainModule.qOSCab.edit;
     fOsDados.showModal;

     btnNovoProd.Click;
end;

procedure TfOS.UniBitBtn1Click(Sender: TObject);
begin
     Editar;
end;

procedure TfOS.UniBitBtn2Click(Sender: TObject);
begin
     UniMainModule.qOsCor.close;

     if UniMainModule.qOsCab.Active = false then
        UniMainModule.qOsCab.open;

     UniMainModule.qOsCab.Append;
     fOsDados.eCODIGO.text   := 'NOVO';
     fOsDados.eDATA.DateTime := now;

     fOsDados.showModal;

     btnNovoProd.Click;
end;

procedure TfOS.UniFrameCreate(Sender: TObject);
begin
    eInicio.DateTime := StartOfTheMonth(now);
    eFinal.DateTime  := EndOfTheMonth(now);
    btnNovoProd.Click;
end;

end.
