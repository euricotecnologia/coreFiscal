unit uContasPagarBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,

  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniPanel, uniGUIBaseClasses,
  Data.DB, uniImage, uniEdit, uniDateTimePicker, uniDBEdit, uniLabel,
  uniBasicGrid, uniDBGrid, uniButton, uniBitBtn;

type
  TfContasPagarBaixar = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    eData: TUniDateTimePicker;
    eJuros: TUniFormattedNumberEdit;
    eDesconto: TUniFormattedNumberEdit;
    eValorRecebido: TUniFormattedNumberEdit;
    eObs: TUniEdit;
    imCancelada: TUniImage;
    UniLabel3: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    dsPagarCor: TDataSource;
    dsPagarCab: TDataSource;
    UniPanel1: TUniPanel;
    UniLabel15: TUniLabel;
    btnCancela: TUniBitBtn;
    bGerarParcelas: TUniBitBtn;
    procedure eValorRecebidoExit(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelaClick(Sender: TObject);
    procedure bGerarParcelasClick(Sender: TObject);
  private

    procedure CarregarContasPagar;

  public
    { Public declarations }
  end;

function fContasPagarBaixar: TfContasPagarBaixar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uClsBase;

function fContasPagarBaixar: TfContasPagarBaixar;
begin
     Result := TfContasPagarBaixar(UniMainModule.GetFormInstance(TfContasPagarBaixar));
end;

procedure TfContasPagarBaixar.bGerarParcelasClick(Sender: TObject);
var   lbase: TBase;
begin
     try
         with UniMainModule.Banco do
         begin
               StartTransaction;

               ExecSQL('insert into PAGARCOR ' +
                      ' ( ID,IDEMITENTE,CODIGO,FATURA,PARCELA,OBS,JUROS,'+
                      ' DESCONTO,VALORPAGO,DATAPGTO,HORA ) ' +
                      ' values  ' +
                      '  ( :ID,:IDEMITENTE,:CODIGO,:FATURA,:PARCELA,:OBS,:JUROS,'+
                      ' :DESCONTO,:VALORPAGO,:DATAPGTO,:HORA)',
                      [lbase.pegaseg('PAGARCOR', 'ID', UniMainModule.Banco),
                       UniMainModule.CodigoEmitente.ToInteger,
                       lbase.ultimoCampo('PAGARCOR', 'CODIGO','IDemitente',UniMainModule.Banco),
                       UniMainModule.qPagarCabFATURA.AsString,
                       UniMainModule.qPagarCabPARCELA.AsString,
                       eObs.Text,  eJuros.Value, eDesconto.Value, eValorRecebido.Value,eData.DateTime,
                       time]);

               ExecSQL(' update PAGARCAB set saldo = saldo - :S '+
                       ' where idEmitente = :e and fatura = :f    '+
                       ' and parcela = :p  ',
                      [ eValorRecebido.Value,
                       UniMainModule.CodigoEmitente.ToInteger,
                       UniMainModule.qPagarCabFATURA.AsString,
                       UniMainModule.qPagarCabPARCELA.AsString
                      ]);

               Commit;

               ShowMessage( 'Pagamento realizado com sucesso!');
         end;
         close;
     except on e:exception do
     begin
         ShowMessage('Erro: '+e.Message);
     end;
     end;
end;

procedure TfContasPagarBaixar.btnCancelaClick(Sender: TObject);
begin
     close;
end;

procedure TfContasPagarBaixar.CarregarContasPagar;
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

procedure TfContasPagarBaixar.eValorRecebidoExit(Sender: TObject);
begin
     if eValorRecebido.Value > UniMainModule.qPagarCabSALDO.Value then
     begin
          Showmessage( 'Valor a pagar maior que o saldo devedor!');
          eValorRecebido.Clear;
          eValorRecebido.SetFocus;
     end;
end;

procedure TfContasPagarBaixar.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
    if Column.Field.Name = 'qPagarCorCODIGO' then
    begin
        if UniMainModule.qPagarCorCODIGO.AsString <> '' then
        begin
            MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
            procedure(Sender: TComponent; Res: Integer)
            begin
                case Res of
                    mrYes :
                    begin
                           try
                               with UniMainModule.Banco do
                               begin
                                     StartTransaction;

                                     ExecSQL(' update PagarCAB set saldo = saldo + :S '+
                                             ' where idEmitente = :e and fatura = :f '+
                                             ' and parcela = :p  ',
                                             [ UniMainModule.qReceberCorVALORPAGO.AsFloat,
                                             UniMainModule.CodigoEmitente.ToInteger,
                                             UniMainModule.qReceberCabFATURA.AsString,
                                             UniMainModule.qReceberCabPARCELA.AsString
                                             ]);

                                     UniMainModule.qPagarCor.Delete;
                                     UniMainModule.qPagarCor.ApplyUpdates;
                                     UniMainModule.qPagarCor.CommitUpdates;

                                     Commit;
                               end;

                               ShowMessage('Estorno realizado com sucesso!');
                           except on e:exception do
                           begin
                               showmessage('erro ao excluir: '+e.Message);
                           end;
                           end;
                      end;
                  end;
             end);
        end;
    end;
end;

procedure TfContasPagarBaixar.UniDBGrid1FieldImage(
  const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic;
  var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'CODIGO') then
    begin
        DoNotDispose := True;
        OutImage     := imCancelada.Picture.Graphic;
    end;
end;

procedure TfContasPagarBaixar.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     UniMainModule.qPagarCor.close;
end;

procedure TfContasPagarBaixar.UniFormShow(Sender: TObject);
begin
     if Tag = 1 then
        CarregarContasPagar;

     eData.DateTime := date;
     eValorRecebido.Value := UniMainModule.qPagarCabSALDO.AsFloat;
     eValorRecebido.SetFocus;
end;

end.
