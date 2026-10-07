unit uCompraLocalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,dateUtils,
  uniGUIClasses, uniGUIForm, uniRadioButton, uniButton, uniBitBtn,
  uniMultiItem, uniComboBox, uniEdit, uniDateTimePicker, uniGroupBox, uniImage,
  uniLabel, uniGUIBaseClasses, uniPanel, uniBasicGrid, uniDBGrid, Data.DB;

type
  TfCompraLocalizar = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    Image1: TUniImage;
    Image8: TUniImage;
    Image9: TUniImage;
    image10: TUniImage;
    image4: TUniImage;
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
    dsEntradaCab: TDataSource;
    btnNovoProd: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    procedure btnNovoProdClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TUniDBGridColumn);
    procedure UniFormShow(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniBitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fCompraLocalizar: TfCompraLocalizar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uCompra;

function fCompraLocalizar: TfCompraLocalizar;
begin
  Result := TfCompraLocalizar(UniMainModule.GetFormInstance(TfCompraLocalizar));
end;

procedure TfCompraLocalizar.btnNovoProdClick(Sender: TObject);
begin
     with UniMainModule do
     begin
          qEntradaCab.close;
          qEntradaCab.sql.Clear;
          qEntradaCab.SQL.Add(' Select * from Entrada_Cab where cod_emitente = :emi ');
          qEntradaCab.sql.Add(' AND dtemissao >= :vIni and dtemissao <= :vFim ');

          if enota.Text <> '' then
             qEntradaCab.sql.Add(' and  NOTA = :nota');

          if rGeral.Checked = false then
          begin
               if rFantasia.Checked = true then
                   qEntradaCab.sql.Add(' AND nome_fornecedor like :cliente ')
               else if rRazao.Checked = true then
                   qEntradaCab.sql.Add(' AND nome_fornecedor like :cliente ')
          end;

          qEntradaCab.ParamByName('emi').AsInteger := strToInt(CodigoEmitente);
          qEntradaCab.ParamByName('vIni').AsDate := eInicio.DateTime;
          qEntradaCab.ParamByName('vFim').AsDate := eFinal.DateTime;

          if enota.Text <> '' then
              qEntradaCab.ParamByName('nota').AsString := eNota.text;

          if rGeral.Checked = false then
             qEntradaCab.ParamByName('cliente').asString := '%'+eCliente.Text+'%';

          qEntradaCab.Open;
     end;
end;

procedure TfCompraLocalizar.DBGrid2CellClick(Column: TUniDBGridColumn);
begin
     with UniMainModule do
     begin
           qentradacor.Close;
           qEntradaCor.SQL.Clear;
           qEntradaCor.SQL.Add('Select * from Entrada_Cor where '+
           ' COD_ENTRADA = :Entrada and nota = :nota and COD_EMITENTE = :emitente ');
           qentradacor.ParamByName('Entrada').AsInteger  := qEntradaCabID.AsInteger;  // CODENT;
           qentradacor.ParamByName('nota').AsInteger     := qEntradaCabNOTA.AsInteger;//strToInt( eNotaNUMNF_ENT.text );
           qentradacor.ParamByName('emitente').AsString  := CodigoEmitente;
           qEntradaCor.open;

           with fcompra do
           begin
                eNotaNUMNF_ENT.text          := qEntradaCabNOTA.AsString;         // NOTA
                eNotaSERIE_ENT.text          := qEntradaCabSERIE.AsString;        // SERIE
                eNotaTPOP.text               := qEntradaCabTIPONOTA.AsString;     // TIPONOTA
                eNotaNatOp.text              := qEntradaCabNATUREZA_OPER.AsString;// NATUREZA OPERACAO
                eNotaDATAEMI_ENT.DateTime    := qEntradaCabDTEMISSAO.AsDateTime;  // DTEMISSAO
                eNotaDATAENT_ENT.DateTime    := qEntradaCabDTENTRADA.AsDateTime;  // DTENTRADA
                eNotaTOTAL_ENT.value         := qEntradaCabTOTAL_NOTA.AsFloat;    // TOTAL_NOTA
                eFornecedorRAZAO3.Text       := qEntradaCabNOME_FORNECEDOR.AsString;
                eCodForn.Text                := qEntradaCabIDFORNECEDOR.AsString; //
                eNotaTOTAL_ENT2.caption      := qEntradaCabTOTAL_NOTA.AsString;
                eNotaTOTAL_PRODUTOS.Value    := qEntradaCabTOTAL_PRODUTOS.AsFloat;     // TOTAL_PRODUTOS
                eNotaTOTAL_PRODUTOS2.caption := FormatFloat('#,,0.00', qEntradaCabTOTAL_PRODUTOS.AsFloat );
                eNotaOUTRASDESP.value        := qEntradaCabVALOR_OUTRAS_DESP.AsFloat;  // VALOR_OUTRAS_DESPESAS
                eNotaOUTRASDESP2.Caption     := FormatFloat('#,,0.00', qEntradaCabVALOR_OUTRAS_DESP.AsFloat);
                eNotaDESC_ENT.value          := qEntradaCabVALOR_DESCONTO.AsFloat;     // VALOR_DESCONTO
                eNotaDESC_ENT2.caption       := FormatFloat('#,,0.00', qEntradaCabVALOR_DESCONTO.AsFloat);
                eNotaV_IPI.value             := qEntradaCabVALOR_IPI.AsFloat;          // VALOR_IPI
                eNotaV_IPI2.caption          := FormatFloat('#,,0.00', qEntradaCabVALOR_IPI.AsFloat);
                eNotaFRETE_ENT.value         := qEntradaCabVALOR_FRETE.AsFloat;        // VALOR_FRETE
                eNotaV_SEG.value             := qEntradaCabVALOR_SEGURO.AsFloat;       // VALOR_SEGURO
                eNotaBCICMS.value            := qEntradaCabBASE_ICMS.AsFloat;          // BASE_ICMS
                eNotaVALOR_ICMS.value        := qEntradaCabVALOR_ICMS.AsFloat;         // VALOR_ICMS
                eNotaBASE_SUB_TRIB.value     := qEntradaCabBASE_ICMS_ST.AsFloat;       // BASE_ICMS_ST
                eNotaVALOR_ICMS_SUB.value    := qEntradaCabVALOR_ICMS_ST.AsFloat;      // VALOR_ICMS_ST
                eNotaV_PIS.value             := qEntradaCabVALOR_PIS.AsFloat;          // VALOR_PIS
                eNotaV_COFINS.value          := qEntradaCabVALOR_COFINS.AsFloat;       // VALOR_COFINS
                eNotaCODIGO_ES.text          := qEntradaCabCODIGO_UF.AsString;         // CODIGO_UF
                eNotaCHAVE_NFE.text          := qEntradaCabCHAVE_ACESSO.AsString;      // CHAVE_ACESSO
                eNotaCODIFICACAO_FISCAL.text := qEntradaCabMODELO.AsString;            // MODELO
                MudaTabProdutos;
                bEncerrar.Enabled            := false
           end
     end;
end;

procedure TfCompraLocalizar.DBGrid2DblClick(Sender: TObject);
begin
     close;
end;

procedure TfCompraLocalizar.UniBitBtn2Click(Sender: TObject);
begin
     close;
end;

procedure TfCompraLocalizar.UniBitBtn3Click(Sender: TObject);
begin
    try
      MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
      procedure(Sender: TComponent; Res: Integer)
      begin
          case Res of
              mrYes :
              begin
                 with UniMainModule do
                 begin
                      banco.StartTransaction;

                      banco.ExecSQL(' DELETE FROM ENTRADA_COR WHERE '+
                      ' COD_ENTRADA = :ID   and         '+
                      ' NOTA = :NOTA        and         '+
                      ' SERIE = :SERIE      and         '+
                      ' COD_EMITENTE = :EMIT            ',
                      [  qEntradaCabID.AsString,
                         qEntradaCabNOTA.AsString,
                         qEntradaCabSERIE.AsString,
                         qEntradaCabCOD_EMITENTE.AsString  ]);

                      banco.ExecSQL(' DELETE FROM ENTRADA_CAB WHERE '+
                      ' ID = :ID         and         '+
                      ' NOTA =:NOTA      and         '+
                      ' SERIE = :SERIE   and         '+
                      ' COD_EMITENTE = :EMIT         ',
                      [  qEntradaCabID.AsString,
                         qEntradaCabNOTA.AsString,
                         qEntradaCabSERIE.AsString,
                         qEntradaCabCOD_EMITENTE.AsString  ]);
                      banco.Commit;
                 end;

                 SHowMessage('Entrada excluida com sucesso!');

              end;
              mrNo  :
              begin
              end;
          end;
      end);

    except on e:exception do
    begin
       ShowMessage('Ocorreu um erro: '+e.Message);
    end;
    end;
end;

procedure TfCompraLocalizar.UniBitBtn4Click(Sender: TObject);
begin
     close;
end;

procedure TfCompraLocalizar.UniFormShow(Sender: TObject);
begin
    eInicio.DateTime := StartOfTheMonth(now);
    eFinal.DateTime  := EndOfTheMonth(now);
end;

end.
