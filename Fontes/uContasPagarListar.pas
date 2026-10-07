unit uContasPagarListar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniBasicGrid, uniDBGrid, uniRadioButton,
  uniButton, uniBitBtn, uniEdit, uniMultiItem, uniComboBox,
  uniDateTimePicker, uniGroupBox, uniRadioGroup, uniImage, uniLabel,
  uniGUIBaseClasses, uniPanel;

type
  TfContasPagarListar = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    imAceita: TUniImage;
    imPendente: TUniImage;
    UniPanel2: TUniPanel;
    rTipo: TUniRadioGroup;
    UniGroupBox1: TUniGroupBox;
    eInicio: TUniDateTimePicker;
    eFinal: TUniDateTimePicker;
    UniGroupBox2: TUniGroupBox;
    cbFiltro: TUniComboBox;
    eNota: TUniEdit;
    UniGroupBox3: TUniGroupBox;
    rFantasia: TUniRadioButton;
    rRazao: TUniRadioButton;
    rGeral: TUniRadioButton;
    eCliente: TUniEdit;
    UniDBGrid1: TUniDBGrid;
    UniPanel4: TUniPanel;
    UniLabel2: TUniLabel;
    DBGrid2: TUniDBGrid;
    dsPagarCab: TDataSource;
    dsPagarCor: TDataSource;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    procedure btnNovoProdClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
  private
    procedure Pesquisar;
    procedure PesquisarCor;
    procedure Baixar;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uContasPagarBaixar, uContaspagarLancar;



{ TfContasPagarListar }

procedure TfContasPagarListar.Baixar;
begin
     if UniMainModule.qPagarCab.IsEmpty then
     begin
          Showmessage('Nenhum registro para baixar!');
          exit;
     end;

     if UniMainModule.qPagarCabSALDO.Value <= 0 then
     begin
          Showmessage('Esta fatura ja esta paga');
          exit;
     end;

     FContasPagarBaixar.showModal;
     Pesquisar;
end;

procedure TfContasPagarListar.btnNovoProdClick(Sender: TObject);
begin
     Pesquisar;
end;

procedure TfContasPagarListar.Pesquisar;
begin
     with UniMainModule do
     begin
          qPagarCab.Close;
          qPagarCab.SQL.Clear;
          qPagarCab.SQL.Add('Select pc.*, c.nomefantasia,  '+
          ' c.razaosocial from PagarCab pc                 '+
          ' left join clientes c on (c.idcliente = pc.Fornecedor and '+
          ' pc.IDemitente = C.idemitente )                   '+
          ' WHERE pc.IDemitente = :E ');

          if rGeral.Checked = false then
          begin
               if rFantasia.Checked = true then
                   qPagarCab.sql.Add(' AND C.NOMEFANTASIA like :cliente ')
               else if rRazao.Checked = true then
                   qPagarCab.sql.Add(' AND C.RAZAOSOCIAL like  :cliente ')
          end;

          if rTipo.ItemIndex <> 2 then
          begin
               if rtipo.ItemIndex = 0 then
                   qPagarCab.sql.Add(' AND pc.saldo > 0 ')
               else if rtipo.ItemIndex = 1 then
                   qPagarCab.sql.Add(' AND pc.saldo <= 0 ')
          end;

          qPagarCab.sql.Add(' ORDER BY pc.id ');

          qPagarCab.ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          if rGeral.Checked = false then
             qPagarCab.ParamByName('cliente').asString := '%'+eCliente.Text+'%';
          qPagarCab.open;

          qPagarCor.Close;
     end;
end;

procedure TfContasPagarListar.PesquisarCor;
begin
     with UniMainModule.qPagarCor do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * from PagarCor pc          '+
          ' WHERE pc.IDemitente = :E and pc.fatura = :f '+
          ' and pc.parcela = :p ORDER BY PC.ID ');
          ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          ParamByName('f').AsInteger := UniMainModule.qPagarCabFATURA.AsInteger;
          ParamByName('p').AsInteger := UniMainModule.qPagarCabPARCELA.AsInteger;
          open;
     end;
end;

procedure TfContasPagarListar.UniBitBtn2Click(Sender: TObject);
begin
     Baixar;
end;

procedure TfContasPagarListar.UniBitBtn3Click(Sender: TObject);
begin
     FContasPagarLancar.showModal;
     Pesquisar;
end;

procedure TfContasPagarListar.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
     PesquisarCor;
end;

procedure TfContasPagarListar.UniDBGrid1DblClick(Sender: TObject);
begin
     Baixar;
end;

procedure TfContasPagarListar.UniDBGrid1FieldImage(
  const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic;
  var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
begin
     if SameText(AField.FieldName, 'SALDO') then
     begin
          if Column.Field.Value <= 0 then     // PAGA
          begin
              DoNotDispose := true;
              OutImage     := imAceita.Picture.Graphic;
          end
          else if Column.Field.Value > 0 then // PENDENTE
          begin
              DoNotDispose := true;
              OutImage     := imPendente.Picture.Graphic;
          end
     end;
end;

end.
