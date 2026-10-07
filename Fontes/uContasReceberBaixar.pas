unit uContasReceberBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,

  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniButton,
  uniEdit, uniDBEdit, uniGUIBaseClasses, uniDateTimePicker, uniDBDateTimePicker,
  Data.DB, uniDBText, uniLabel, uniImage, uniPanel, uniBitBtn;

type
  TfContasReceberBaixar = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    dsReceberCor: TDataSource;
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
    dsReceberCab: TDataSource;
    UniLabel3: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniPanel1: TUniPanel;
    UniLabel15: TUniLabel;
    bGerarParcelas: TUniBitBtn;
    btnCancela: TUniBitBtn;
    procedure UniFormShow(Sender: TObject);
    procedure eValorRecebidoExit(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure bGerarParcelasClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
  private

    procedure CarregarReceberCor;

  public
    { Public declarations }
  end;

function fContasReceberBaixar: TfContasReceberBaixar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uClsBase;

function fContasReceberBaixar: TfContasReceberBaixar;
begin
  Result := TfContasReceberBaixar(UniMainModule.GetFormInstance(TfContasReceberBaixar));
end;

procedure TfContasReceberBaixar.bGerarParcelasClick(Sender: TObject);
var   lbase: TBase;
begin
     try
         with UniMainModule.Banco do
         begin
               StartTransaction;

               ExecSQL('insert into RECEBERCOR ' +
                      ' ( ID,IDEMITENTE,CODIGO,FATURA,PARCELA,OBS,JUROS,'+
                      ' DESCONTO,VALORPAGO,DATAPGTO,HORA ) ' +
                      ' values  ' +
                      '  ( :ID,:IDEMITENTE,:CODIGO,:FATURA,:PARCELA,:OBS,:JUROS,'+
                      ' :DESCONTO,:VALORPAGO,:DATAPGTO,:HORA)',
                      [lbase.pegaseg('RECEBERCOR', 'ID', UniMainModule.Banco),
                       UniMainModule.CodigoEmitente.ToInteger,
                       lbase.ultimoCampo('RECEBERCOR', 'CODIGO','IDemitente',UniMainModule.Banco),
                       UniMainModule.qReceberCabFATURA.AsString,
                       UniMainModule.qReceberCabPARCELA.AsString,
                       eObs.Text,  eJuros.Value, eDesconto.Value, eValorRecebido.Value,eData.DateTime,
                       time]);

               ExecSQL(' update RECEBERCAB set saldo = saldo - :S '+
                       ' where idEmitente = :e and fatura = :f    '+
                       ' and parcela = :p  ',
                      [ eValorRecebido.Value,
                       UniMainModule.CodigoEmitente.ToInteger,
                       UniMainModule.qReceberCabFATURA.AsString,
                       UniMainModule.qReceberCabPARCELA.AsString
                      ]);

               Commit;

               ShowMessage('Pagamento realizado com sucesso!');
         end;
         close;
     except on e:exception do
     begin
         ShowMessage('Erro: '+e.Message);
     end;
     end;
end;

procedure TfContasReceberBaixar.btnCancelaClick(Sender: TObject);
begin
      close;
end;

procedure TfContasReceberBaixar.CarregarReceberCor;
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

procedure TfContasReceberBaixar.eValorRecebidoExit(Sender: TObject);
begin
     if eValorRecebido.Value > UniMainModule.qReceberCabSALDO.Value then
     begin
          ShowMessage('Valor a pagar maior que o saldo devedor!');
          eValorRecebido.Clear;
          eValorRecebido.SetFocus;
     end;
end;

procedure TfContasReceberBaixar.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
    if Column.Field.Name = 'qReceberCorCODIGO' then
    begin
        if UniMainModule.qReceberCorCODIGO.AsString <> '' then
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

                                   ExecSQL(' update RECEBERCAB set saldo = saldo + :S '+
                                           ' where idEmitente = :e and fatura = :f '+
                                           ' and parcela = :p  ',
                                           [ UniMainModule.qReceberCorVALORPAGO.AsFloat,
                                           UniMainModule.CodigoEmitente.ToInteger,
                                           UniMainModule.qReceberCabFATURA.AsString,
                                           UniMainModule.qReceberCabPARCELA.AsString
                                           ]);

                                   UniMainModule.qReceberCor.Delete;
                                   UniMainModule.qReceberCor.ApplyUpdates;
                                   UniMainModule.qReceberCor.CommitUpdates;

                                   Commit;
                             end;

                             Showmessage('Estorno realizado com sucesso!');
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

procedure TfContasReceberBaixar.UniDBGrid1FieldImage(
  const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic;
  var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'CODIGO') then
    begin
        DoNotDispose := True;
        OutImage := imCancelada.Picture.Graphic;
    end;
end;

procedure TfContasReceberBaixar.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     UniMainModule.qReceberCor.close;
end;

procedure TfContasReceberBaixar.UniFormShow(Sender: TObject);
begin
     if tag = 1 then
        CarregarReceberCor;

     eData.DateTime := date;
     eValorRecebido.Value := UniMainModule.qReceberCabSALDO.AsFloat;
     eValorRecebido.SetFocus;
end;

end.
