unit uContasReceberListar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniRadioButton, uniButton, uniBitBtn,
  uniMultiItem, uniComboBox, uniDateTimePicker, uniGroupBox,
  uniRadioGroup, Vcl.Imaging.pngimage, uniImage, uniLabel, uniGUIBaseClasses,
  uniPanel, uniBasicGrid, uniDBGrid, Data.DB;

type
  TfContasReceberListar = class(TUniFrame)
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
    UniGroupBox3: TUniGroupBox;
    rFantasia: TUniRadioButton;
    rRazao: TUniRadioButton;
    rGeral: TUniRadioButton;
    eCliente: TUniEdit;
    eNota: TUniEdit;
    UniPanel3: TUniPanel;
    eNrNotas: TUniEdit;
    eTotalNotas: TUniEdit;
    DBGrid2: TUniDBGrid;
    dsReceberCab: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniPanel4: TUniPanel;
    UniLabel2: TUniLabel;
    dsReceberCor: TDataSource;
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

uses uContasReceberBaixar, uContasReceberLancar, MainModule;

procedure TfContasReceberListar.Baixar;
begin
     if UniMainModule.qReceberCab.IsEmpty then
     begin
          Showmessage('Nenhum registro para baixar!');
          exit;
     end;

     if UniMainModule.qReceberCabSALDO.Value <= 0 then
     begin
          Showmessage('Esta fatura ja esta paga');
          exit;
     end;

     FContasReceberBaixar.showModal;
     Pesquisar;
end;

procedure TfContasReceberListar.btnNovoProdClick(Sender: TObject);
begin
     Pesquisar;
end;

procedure TfContasReceberListar.Pesquisar;
begin
     with UniMainModule do
     begin
          qReceberCab.Close;
          qReceberCab.SQL.Clear;
          qReceberCab.SQL.Add('Select rc.*, c.nomefantasia,  '+
          ' c.razaosocial from ReceberCab rc                 '+
          ' left join clientes c on (c.idcliente = rc.cliente and '+
          ' rc.IDemitente = C.idemitente )                   '+
          ' WHERE rc.IDemitente = :E ');

          if rGeral.Checked = false then
          begin
               if rFantasia.Checked = true then
                   qReceberCab.sql.Add(' AND C.NOMEFANTASIA like :cliente ')
               else if rRazao.Checked = true then
                   qReceberCab.sql.Add(' AND C.RAZAOSOCIAL like  :cliente ')
          end;

          if rTipo.ItemIndex <> 2 then
          begin
               if rtipo.ItemIndex = 0 then
                   qReceberCab.sql.Add(' AND rc.saldo > 0 ')
               else if rtipo.ItemIndex = 1 then
                   qReceberCab.sql.Add(' AND rc.saldo <= 0 ')
          end;

          qReceberCab.sql.Add(' ORDER BY RC.ID ');

          qReceberCab.ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          if rGeral.Checked = false then
             qReceberCab.ParamByName('cliente').asString := '%'+eCliente.Text+'%';
          qReceberCab.open;

          qReceberCor.Close;
     end;
end;

procedure TfContasReceberListar.PesquisarCor;
begin
     with UniMainModule.qReceberCor do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * from ReceberCor rc          '+
          ' WHERE rc.IDemitente = :E and rc.fatura = :f '+
          ' and rc.parcela = :p ORDER BY RC.ID ');
          ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          ParamByName('f').AsInteger := UniMainModule.qReceberCabFATURA.AsInteger;
          ParamByName('p').AsInteger := UniMainModule.qReceberCabPARCELA.AsInteger;
          open;
     end;
end;

procedure TfContasReceberListar.UniBitBtn2Click(Sender: TObject);
begin
     Baixar;
end;

procedure TfContasReceberListar.UniBitBtn3Click(Sender: TObject);
begin
     FContasReceberLancar.showModal;
     Pesquisar;
end;

procedure TfContasReceberListar.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
     PesquisarCor;
end;

procedure TfContasReceberListar.UniDBGrid1DblClick(Sender: TObject);
begin
     Baixar;
end;

procedure TfContasReceberListar.UniDBGrid1FieldImage(
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
