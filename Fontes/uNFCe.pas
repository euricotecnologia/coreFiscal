unit uNFCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniDBEdit, uniDateTimePicker, clsProdutos,
  uniDBDateTimePicker, uniLabel, uniButton, uniBitBtn, uniGUIBaseClasses,
  uniPanel, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniRadioGroup, ACBrValidador, ACBrNFeDANFEClass, ACBrDANFCeFortesFr, ACBrBase,
  ACBrDFe, ACBrNFe, uniBasicGrid, uniDBGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  system.JSON,WideStrUtils,clsVendasItens,clsVendas,

  pcnConversaoNFe, ACBrNFeDANFEFR, clsVendedor, clsClientes, clsFormasNotas,
  pcnConversao, ACBrUtil,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  ACBrNFeDANFeRLClass, uniScreenMask, uniGUIFrame, uniImage,
  uniPageControl, uniStringGrid, uniSpeedButton,

  Winapi.msxml, Xml.Win.msxmldom, Winapi.ActiveX, uniMemo, uniGroupBox,
  uniTimer, uniProgressBar, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.Imaging.pngimage,
  uniCheckBox, uniHTMLFrame;

type

  TOperacaoNFe = (opInclusao, opAlteracao, opExclusao);

  TfNFCe = class(TUniFrame)
    pgVendas: TUniPageControl;
    tsVendas: TUniTabSheet;
    tsProdutos: TUniTabSheet;
    tsClientes: TUniTabSheet;
    pNotas: TUniPanel;
    UniPanel2: TUniPanel;
    strProdutos: TUniStringGrid;
    UniPanel3: TUniPanel;
    stgClientes: TUniStringGrid;
    UniPanel4: TUniPanel;
    UniPanel1: TUniPanel;
    StringGrid1: TUniStringGrid;
    UniPanel10: TUniPanel;
    UniSpeedButton6: TUniSpeedButton;
    UniSpeedButton7: TUniSpeedButton;
    edProduto: TUniEdit;
    UniSpeedButton8: TUniSpeedButton;
    tsFormas: TUniTabSheet;
    UniPanel11: TUniPanel;
    UniPanel14: TUniPanel;
    sbFechar: TUniSpeedButton;
    sbVoltar: TUniSpeedButton;
    sbLimparPagamento: TUniSpeedButton;
    UniPanel20: TUniPanel;
    stgParcelas: TUniStringGrid;
    UniPanel12: TUniPanel;
    UniPanel19: TUniPanel;
    eValorparcela: TUniFormattedNumberEdit;
    sbDinheiro: TUniSpeedButton;
    sbCredito: TUniSpeedButton;
    sbDebito: TUniSpeedButton;
    sbCheque: TUniSpeedButton;
    sbAprazo: TUniSpeedButton;
    UniContainerPanel2: TUniContainerPanel;
    cmbClientes: TUniComboBox;
    UniSimplePanel1: TUniSimplePanel;
    eQuant: TUniNumberEdit;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    edTotal: TUniFormattedNumberEdit;
    eValor: TUniFormattedNumberEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniPanel7: TUniPanel;
    UniSpeedButton9: TUniSpeedButton;
    edSubTotal: TUniFormattedNumberEdit;
    edDesconto: TUniFormattedNumberEdit;
    edAcrescimo: TUniFormattedNumberEdit;
    edTotalNF: TUniFormattedNumberEdit;
    UniPanel6: TUniPanel;
    UniPanel9: TUniPanel;
    UniPanel8: TUniPanel;
    PnlOutros: TUniPanel;
    edOutros: TUniFormattedNumberEdit;
    pnlfrete: TUniPanel;
    UniPanel13: TUniPanel;
    UniPanel15: TUniPanel;
    eTotalParcs: TUniFormattedNumberEdit;
    UniPanel17: TUniPanel;
    eValorPago: TUniFormattedNumberEdit;
    UniPanel16: TUniPanel;
    eRestante: TUniFormattedNumberEdit;
    UniPanel18: TUniPanel;
    eTroco: TUniFormattedNumberEdit;
    UniPanel5: TUniPanel;
    dblCliente: TUniEdit;
    eCPF: TUniEdit;
    UniGroupBox1: TUniGroupBox;
    memoInfo: TUniMemo;
    UniGroupBox2: TUniGroupBox;
    cmbFrete: TUniComboBox;
    UniLabel1: TUniLabel;
    lookTransp: TUniDBLookupComboBox;
    UniLabel2: TUniLabel;
    edFrete: TUniFormattedNumberEdit;
    UniLabel3: TUniLabel;
    edSeguro: TUniFormattedNumberEdit;
    UniLabel4: TUniLabel;
    UniComboBox2: TUniComboBox;
    edPlacaveic: TUniEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    edANTT: TUniEdit;
    UniLabel7: TUniLabel;
    UniGroupBox3: TUniGroupBox;
    edVolumes: TUniNumberEdit;
    UniLabel8: TUniLabel;
    edEspecie: TUniEdit;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    edMarca: TUniEdit;
    UniLabel11: TUniLabel;
    edNumero: TUniEdit;
    UniLabel12: TUniLabel;
    edPesoBrut: TUniNumberEdit;
    UniLabel13: TUniLabel;
    edPesoLiq: TUniNumberEdit;
    tsSelDadosNF: TUniTabSheet;
    UniPanel21: TUniPanel;
    cmbFinalidade: TUniComboBox;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    cmbTipoDoc: TUniComboBox;
    dtEmissao: TUniDateTimePicker;
    UniLabel17: TUniLabel;
    edComplementar: TUniEdit;
    LookCFOP: TUniDBLookupComboBox;
    UniLabel18: TUniLabel;
    lbnatureza: TUniLabel;
    ePercDesconto: TUniFormattedNumberEdit;
    ePercAcrescimo: TUniFormattedNumberEdit;
    UniSpeedButton4: TUniSpeedButton;
    UniSimplePanel2: TUniSimplePanel;
    eCodigo: TUniEdit;
    cmbProdutos: TUniComboBox;
    cmbVendedor: TUniComboBox;
    sbTEF: TUniSpeedButton;
    pVencimento: TUniPanel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    edNCM: TUniEdit;
    UniContainerPanel6: TUniContainerPanel;
    edCfop: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    UniContainerPanel8: TUniContainerPanel;
    edCST: TUniEdit;
    UniContainerPanel9: TUniContainerPanel;
    edCsosn: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniContainerPanel11: TUniContainerPanel;
    edCest: TUniEdit;
    UniContainerPanel12: TUniContainerPanel;
    pImpostosICMS: TUniContainerPanel;
    UniContainerPanel14: TUniContainerPanel;
    UniContainerPanel15: TUniContainerPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniContainerPanel19: TUniContainerPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniContainerPanel21: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    edAliqIcms: TUniFormattedNumberEdit;
    edAliqIcmsSt: TUniFormattedNumberEdit;
    edRBaseIcms: TUniFormattedNumberEdit;
    edRbaseIcmsSt: TUniFormattedNumberEdit;
    edMva: TUniFormattedNumberEdit;
    edRegimeCliente: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    lItens: TUniLabel;
    UniLabel22: TUniLabel;
    imgNFCE: TUniImage;
    UniContainerPanel23: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniImage3: TUniImage;
    imgNFE: TUniImage;
    pPArcelamentoPrazo: TUniPanel;
    UniPanel24: TUniPanel;
    UniLabel19: TUniLabel;
    UniImage4: TUniImage;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    ePrimeiroVencimento: TUniDateTimePicker;
    eParcelas: TUniFormattedNumberEdit;
    UniDBGrid1: TUniDBGrid;
    fdMemPrazo: TFDMemTable;
    dsMemPrazo: TDataSource;
    fdMemPrazoParcela: TIntegerField;
    fdMemPrazoEmissao: TDateField;
    fdMemPrazoVencimento: TDateField;
    fdMemPrazoValor: TFloatField;
    eParcelamento: TUniComboBox;
    UniLabel25: TUniLabel;
    fdMemPrazoFatura: TIntegerField;
    pCartao: TUniPanel;
    UniPanel25: TUniPanel;
    UniLabel26: TUniLabel;
    UniImage5: TUniImage;
    UniLabel27: TUniLabel;
    UniLabel28: TUniLabel;
    cmbForma: TUniComboBox;
    eParcelasCartao: TUniFormattedNumberEdit;
    UniLabel29: TUniLabel;
    cmbBandeira: TUniComboBox;
    UniLabel30: TUniLabel;
    eNsu: TUniFormattedNumberEdit;
    sbSemPagamento: TUniSpeedButton;
    edComplementar2: TUniEdit;
    edComplementar3: TUniEdit;
    edComplementar4: TUniEdit;
    edComplementar5: TUniEdit;
    edComplementar6: TUniEdit;
    pHomologação: TUniContainerPanel;
    UniLabel31: TUniLabel;
    pContingencia: TUniContainerPanel;
    UniLabel32: TUniLabel;
    btnSalva: TUniBitBtn;
    UniBitBtn1: TUniBitBtn;
    btnCancela: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniSpeedButton1: TUniBitBtn;
    UniBitBtn5: TUniBitBtn;
    btnVoltar: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    procedure UniFormCreate(Sender: TObject);
    procedure cmbProdutosChange(Sender: TObject);
    procedure UniSpeedButton2Click(Sender: TObject);
    procedure UniSpeedButton3Click(Sender: TObject);
    procedure eCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UniPanel9Click(Sender: TObject);
    procedure UniSpeedButton6Click(Sender: TObject);
    procedure UniSpeedButton7Click(Sender: TObject);
    procedure UniSpeedButton8Click(Sender: TObject);
    procedure UniSpeedButton9Click(Sender: TObject);
    procedure edDescontoChange(Sender: TObject);
    procedure edAcrescimoChange(Sender: TObject);
    procedure edSubTotalExit(Sender: TObject);
    procedure edDescontoExit(Sender: TObject);
    procedure edAcrescimoExit(Sender: TObject);
    procedure edTotalNFExit(Sender: TObject);
    procedure UniPanel8Click(Sender: TObject);
    procedure sbVoltarClick(Sender: TObject);
    procedure sbDinheiroClick(Sender: TObject);
    procedure sbLimparPagamentoClick(Sender: TObject);
    procedure sbCreditoClick(Sender: TObject);
    procedure sbDebitoClick(Sender: TObject);
    procedure sbChequeClick(Sender: TObject);
    procedure sbAprazoClick(Sender: TObject);
    procedure sbFecharClick(Sender: TObject);
    procedure edFreteChange(Sender: TObject);
    procedure edSeguroChange(Sender: TObject);
    procedure edOutrosChange(Sender: TObject);
    procedure cmbFreteChange(Sender: TObject);
    procedure cmbFinalidadeChange(Sender: TObject);
    procedure cmbTipoDocChange(Sender: TObject);
    procedure cmbClientesExit(Sender: TObject);
    procedure eValorChange(Sender: TObject);
    procedure ePercDescontoChange(Sender: TObject);
    procedure ePercDescontoExit(Sender: TObject);
    procedure ePercAcrescimoChange(Sender: TObject);
    procedure ePercAcrescimoExit(Sender: TObject);
    procedure UniSpeedButton4Click(Sender: TObject);
    procedure cmbVendedorExit(Sender: TObject);
    procedure sbTEFClick(Sender: TObject);
    procedure CheckProgressTimerTimer(Sender: TObject);
    procedure lookTranspExit(Sender: TObject);
    procedure edCsosnExit(Sender: TObject);
    procedure edCsosnChange(Sender: TObject);
    procedure sbSemPagamentoClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniBitBtn5Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniBitBtn6Click(Sender: TObject);


  private

    WorkerThread: TThread;

    vlistacli   : TlistaClientes;
    vlistaVen   : TlistaVendedores;
    vlistaprod  : tlistaprodutos;
    vlistavenda : TNotasCab;

    vTipoPessoa,vRegimeCliente : String;

    procedure getclientes;
    procedure getVendedores;
    procedure getProdutos;
    procedure getProdutos2;
    procedure LimparControles;
    procedure Preparagrid;
    procedure CriaQrCode;
    procedure ValidaCsosn;
    procedure FechaVenda;

    procedure ClienteOsOtica(cliente:integer);
    procedure ProdutoOsOtica;

    procedure ClienteOs(cliente:integer);
    procedure ProdutoOs;

    function FindCol(c: Integer; sFind: string): Integer;
    procedure buscapelocodigo;
    procedure ApagaitemString;
    procedure CalculaEdits;

    procedure addforma(const ptipo,pforma,ptoken,pidintencao,pnomeIntencaoStatus,
    pidTerminal,pComprovanteStab,pNsu,pNparcelas,pBandeira: string);

    procedure addFormaPrazo(const pTipo,pForma : String);

    procedure Limpaparcelas;
    procedure limpafrete;
    function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
  public
    OperacaoNFe                                       : TOperacaoNFe;
    SimplesNacional                                   : Boolean;
    AliqSN, CredICMSAcum                              : Currency;
    MSG01, NomeXML, NomePDF, ArquivoPDF, FFolder, FUrl: string;

    procedure ImprimeCartao(texto :String);

  end;

function fNFCe: TfNFCe;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, {DataFun,} UFStatusU, uPrincipal, uPDF,
  ServerModule, System.Math, MQRCode,  uClsBase, //uOsOticaDados,
  uOsDados;

function fNFCe: TfNFCe;
begin
  Result := TfNFCe(UniMainModule.GetFormInstance(TfNFCe));
end;

type
  TWorker = class(TThread)
  private
  protected
    procedure Execute; override;
  public
    Position: Integer;
  end;

{ TWorker }

procedure TWorker.Execute;
var
  Index: Integer;
begin
    inherited;
    for Index := 0 to 100 do
    begin
        if Terminated then Break;
        Position := Index;
        Sleep(200);
    end;
end;

{ TfNFCe }

function TfNFCe.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
begin
  if Expressao then
    Result := ParteTRUE
  else
    Result := ParteFALSE;
end;

procedure TfNFCe.ImprimeCartao(texto: String);
var
  xDataRel : String;
begin
      unimainModule.frxTexto.variables['texto'] := texto;

      xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
      unimainModule.NomePDF  := xDataRel + '.PDF';

      unimainModule.frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

      unimainModule.frxTexto.PrepareReport(True);

      unimainModule.frxPDF.ShowDialog := false;
      unimainModule.frxTexto.Export(unimainModule.frxPDF);

      fPDF.Caption          := unimainModule.NomePDF;
      fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
      fPDF.ShowModal;
end;

procedure TfNFCe.Limpaparcelas;
begin
      stgParcelas.RowCount := 1;
      vlistavenda.formasNF.Clear;
      eRestante.Value     := eTotalParcs.Value;
      eValorparcela.Value := eRestante.Value;
      eValorPago.Value    := 0;
      eTroco.Value        := 0;
end;

procedure TfNFCe.CalculaEdits;
begin
    edTotalNF.Value := edSubTotal.Value + edAcrescimo.Value -
    edDesconto.Value + edFrete.Value + edSeguro.Value + edOutros.Value;

    eTotalParcs.Value := edTotalNF.Value; // soma icms aki

    if (edTotalNF.Value <= 0) and (edSubTotal.Value > 0) then
    begin
        if (Assigned(vlistavenda)) then
        begin
            vlistavenda.VALOR_DESCONTO    := 0;
            vlistavenda.VALOR_ACRESCIMO   := 0;
            vlistavenda.VALOR_FRETE       := 0;
            vlistavenda.VALOR_SEGURO      := 0;
            vlistavenda.VALOR_OUTRAS_DESP := 0;
        end;

        Showmessage('Valor da Nota Fiscal Invalido');

        edAcrescimo.Value := 0;
        edDesconto.Value  := 0;
        edSeguro.Value    := 0;
        edFrete.Value     := 0;
        edOutros.Value    := 0;
        edTotalNF.Value   := edSubTotal.Value + edAcrescimo.Value -
        edDesconto.Value + edFrete.Value + edSeguro.Value + edOutros.Value;
    end;
end;

procedure TfNFCe.CheckProgressTimerTimer(Sender: TObject);
begin
    UniSession.Synchronize;
end;

procedure TfNFCe.ClienteOs(cliente: integer);
var vcliente : TCliente;
begin
     iF (((vcliente.razaosocial <> '') or (vcliente.nomefantasia <> '')) and (vcliente.cpf_cnpj <> '')) then
     begin
          if vcliente.razaosocial <> '' then
             dblCliente.Text := vcliente.razaosocial
          else
             dblCliente.Text := vcliente.nomefantasia;

          eCPF.Text       := UniMainModule.soNumero( vcliente.cpf_cnpj );
     end;
end;

procedure TfNFCe.ClienteOsOtica(cliente: integer);
var vcliente : TCliente;
begin
     iF (((vcliente.razaosocial <> '') or (vcliente.nomefantasia <> '')) and (vcliente.cpf_cnpj <> '')) then
     begin
          if vcliente.razaosocial <> '' then
             dblCliente.Text := vcliente.razaosocial
          else
             dblCliente.Text := vcliente.nomefantasia;

          eCPF.Text       := UniMainModule.soNumero( vcliente.cpf_cnpj );
     end;
end;


procedure TfNFCe.addFormaPrazo(const pTipo, pForma: String);
var
  tIndex, vqtditens: Integer;
begin
      if eValorparcela.Value <= 0 then
      begin
          Showmessage('Falta informar o valor da parcela');
          exit;
      end;

      if eValorPago.Value >= eTotalParcs.Value then
      begin
          Showmessage('Total da fatura ja foi parcelado');
          eValorparcela.Value := 0;
          exit;
      end;

      fdMemPrazo.First;

      while not fdMemPrazo.Eof do
      begin
            vlistavenda.formasNF.Add(TFormasNF.Create);
            tIndex    := stgParcelas.RowCount + 1;
            vqtditens := vlistavenda.formasNF.Count;
            stgParcelas.BeginUpdate;

            with vlistavenda.formasNF.Last do
            begin
                parcela    := vqtditens;                       // tIndex;
                emissao    := fdMemPrazoEmissao.AsDateTime;    // vlistavenda.dtEmissao;
                fatura     := fdMemPrazoFatura.AsInteger;      //
                vencimento := fdMemPrazoVencimento.AsDateTime; // IfThen(ptipo = '01', vlistavenda.dtEmissao, vlistavenda.dtEmissao + 30);
                valor      := fdMemPrazoValor.Value;           // IfThen(eValorparcela.Value <= eTotalParcs.Value,eValorparcela.Value, eTotalParcs.Value - eValorPago.Value);

                tipo_fatura                     := ptipo;
                stgParcelas.RowCount            := stgParcelas.RowCount + 1;
                stgParcelas.Cells[0, vqtditens] := vqtditens.ToString;
                stgParcelas.Cells[1, vqtditens] := DateToStr(fdMemPrazoEmissao.AsDateTime);
                stgParcelas.Cells[2, vqtditens] := DateToStr(fdMemPrazoVencimento.AsDateTime);
                stgParcelas.Cells[3, vqtditens] := fdMemPrazoValor.asString; //(TFloatFormat.ffCurrency, 10, 2);
                stgParcelas.Cells[4, vqtditens] := ptipo;
                stgParcelas.Cells[5, vqtditens] := pforma;

                stgParcelas.EndUpdate;
            end;
            fdMemPrazo.Next;
      end;

      eValorPago.Value := eValorPago.Value + eValorparcela.Value;

      if eTotalParcs.Value > eValorPago.Value then
      begin
          eRestante.Value := eTotalParcs.Value - eValorPago.Value;
          eTroco.Value    := 0;
      end
      else
      begin
          eRestante.Value := 0;
          eTroco.Value    := eValorPago.Value - eTotalParcs.Value;
      end;
      eValorparcela.Value := eRestante.Value;
end;

procedure TfNFCe.ApagaitemString;
var
  cont: Integer;
begin
    vlistavenda.ItensNota.Delete(vlistavenda.ItensNota.IndexOf(StringGrid1.Objects[0, StringGrid1.Row] as TVendasitens));
    StringGrid1.Objects[0, StringGrid1.Row].Free;
    edSubTotal.Value  := vlistavenda.VALOR_FINAL;
    edDesconto.Value  := vlistavenda.VALOR_DESCONTO;
    edAcrescimo.Value := vlistavenda.VALOR_ACRESCIMO;
    edTotalNF.Value   := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;

    if edTotalNF.Value < 0 then
    begin
        if vlistavenda.VALOR_DESCONTO > 0 then
        begin
            vlistavenda.VALOR_DESCONTO := 0;
            CalculaEdits;
        end;
    end;

    Preparagrid;
    StringGrid1.BeginUpdate;

    for cont := 0 to (vlistavenda.ItensNota.Count - 1) do
    begin
        StringGrid1.RowCount           := StringGrid1.RowCount + 1;
        StringGrid1.Cells[0, cont + 1] := (cont + 1).ToString;
        StringGrid1.Cells[1, cont + 1] := vlistavenda.ItensNota[cont].id_item.ToString;
        StringGrid1.Cells[2, cont + 1] := vlistavenda.ItensNota[cont].descricao;
        StringGrid1.Cells[3, cont + 1] := vlistavenda.ItensNota[cont].qtd.ToString;
        StringGrid1.Cells[4, cont + 1] := vlistavenda.ItensNota[cont].preco_unit.ToString(TFloatFormat.ffCurrency, 8, 2);
        StringGrid1.Cells[5, cont + 1] := vlistavenda.ItensNota[cont].VALOR_TOTAL.ToString(TFloatFormat.ffCurrency, 8, 2);
        StringGrid1.Cells[6, cont + 1] := vlistavenda.ItensNota[cont].cfop;
        StringGrid1.Objects[0, cont + 1] := vlistavenda.ItensNota.Last;
    end;

    StringGrid1.EndUpdate;
    StringGrid1.Row := 0;
end;


procedure TfNFCe.Preparagrid;
begin
    StringGrid1.BeginUpdate;
    StringGrid1.ColCount     := 7;
    StringGrid1.RowCount     := 1;
    StringGrid1.Cells[0, 0]  := 'Seq';
    StringGrid1.ColWidths[0] := 40;
    StringGrid1.Cells[1, 0]  := 'Codigo';
    StringGrid1.ColWidths[1] := 50;
    StringGrid1.Cells[2, 0]  := 'Descricao';
    StringGrid1.ColWidths[2] := 150;
    StringGrid1.Cells[3, 0]  := 'Qtd';
    StringGrid1.ColWidths[3] := 45;
    StringGrid1.Cells[4, 0]  := 'Preco';
    StringGrid1.ColWidths[4] := 60;
    StringGrid1.Cells[5, 0]  := 'Total';
    StringGrid1.ColWidths[5] := 60;
    StringGrid1.Cells[6, 0]  := 'CFOP';
    StringGrid1.ColWidths[6] := 40;

    StringGrid1.EndUpdate;
end;

procedure TfNFCe.ProdutoOs;
var
  vitens        : TVendasitens;
  nindex, tIndex: Integer;
  vqtditens     : Integer;
  vproduto      : TProdutos;
  vcliente      : TCliente;
  vVendedor     : TVendedor;
  vTipoRegimeCliente : Extended;
begin
    if not( Assigned( vlistavenda )) then
    begin
        vlistavenda                 := TNotasCab.Create;
        vlistavenda.MODELO          := UniMainModule.TRdata^.xmodelo;
        vlistavenda.COD_EMITENTE    := UniMainModule.CodigoEmitente.ToInteger;
        vlistavenda.SERIE           := UniMainModule.qEmitenteGERAL_SERIE.AsInteger;
        vlistavenda.NATUREZA_OPER   := 'Vendas de mercadorias';
        vlistavenda.ALIQ_SIMPLES    := 0;
        vlistavenda.tipoEmissao     := 1;   // emissao normal - contingencia
        vlistavenda.dtEmissao       := now;
        vlistavenda.DTSAIDA         := now;
        vlistavenda.FINALIDADE      := 0;   // 0 normalc 1 complementar 2 ajuste 3 devolucao
        vlistavenda.TIPONOTA        := 1;   // 0 = entrada 1 = saida
        vlistavenda.CPF_CONSUMIDOR  := eCPF.Text;
        vlistavenda.NOME_CONSUMIDOR := dblCliente.Text;

        vlistavenda.IDCLIENTE       := fOsDados.eCliente.KeyValue;  // vcliente.IDCLIENTE;
        vlistavenda.VENDEDOR        := fOsDados.eVendedor.KeyValue; // vVendedor.id;

        dblCliente.Text             := UniMainModule.qClientesRAZAOSOCIAL.AsString;
        eCPF.Text                   := UniMainModule.qClientesCPF_CNPJ.AsString;

        vlistavenda.TIPOFRETE       := 0;
        vlistavenda.STATUS_NOTA     := 'P';
        vlistavenda.AMBIENTE        := UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger;
    end;

    UniMainModule.qOsCor.first;
    while not UniMainModule.qOsCor.Eof do
    begin
        UniMainModule.qGeral.Close;
        UniMainModule.qGeral.SQL.Clear;
        UniMainModule.qGeral.SQL.Add('select A.IDPRODUTO,A.DESCRICAO_COMPLETA,A.CODIGO,A.EAN,'+
        ' A.DESCRICAO,A.NCM,A.CEST,A.CUSTO,A.PRECO,A.UN,A.OPER_SAIDA_DENTRO,                 '+
        ' A.OPER_SAIDA_FORA,A.IDEMITENTE,A.OPER_DEVOLUCAO_DENTRO,A.OPER_DEVOLUCAO_FORA,      '+
        ' A.CODIGO_ANP, A.PESOBRUTO,A.PESOLIQ,A.ORIGEM,                                      '+
        ' B.CFOP,                              '+
        ' B.CST,                               '+
        ' B.CSOSN,                             '+
        ' B.ALIQICMS,B.ALIQICMSST,B.REDBCICMS, '+
        ' B.REDBCICMSST,B.MVAICMSST,           '+
        ' B.CSTPIS,B.ALIQPIS,B.ALIQPISST,      '+
        ' B.CSTCOFINS,B.ALIQCOFINS,B.ALIQCOFINSST,'+
        ' B.CSTIPI,B.ALIQIPI,              '+
        ' C.CST CSTFORA,C.CSOSN CSOSNFORA, '+
        ' C.CFOP CFOPFORA,                 '+
        ' C.MVAICMSST MVAFORA,             '+
        ' C.ALIQICMS ALIQICMSFORA,C.CSTIPI CSTIPIFORA,C.ALIQIPI ALIQIPIFORA,C.CSTPIS CSTPISFORA, '+
        ' C.ALIQPIS ALIQPISFORA,C.CSTCOFINS CSTCOFINSFORA,C.ALIQCOFINS ALIQCOFINSFORA            '+
        ' from PRODUTOS A LEFT OUTER JOIN TBTES B ON (A.OPER_SAIDA_DENTRO=B.ID) LEFT OUTER JOIN TBTES C ON (A.OPER_SAIDA_FORA=C.ID) '+
        ' WHERE A.IDEMITENTE = ' + UniMainModule.CodigoEmitente+ ' and a.idProduto = :p ');
        UniMainModule.qGeral.ParamByName('p').AsInteger := UniMainModule.qOsCorPRODUTO.AsInteger;
        unimainModule.qGeral.Open;

        tIndex    := StringGrid1.RowCount + 1;
        vqtditens := vlistavenda.ItensNota.Count;
        StringGrid1.BeginUpdate;
        vlistavenda.ItensNota.Add(TVendasitens.Create);

        with vlistavenda.ItensNota.Last do
        begin
            id_item     := UniMainModule.qOsCorPRODUTO.AsInteger;  // vproduto.IDPRODUTO;
            descricao   := UniMainModule.qOsCorNPRODUTO.AsString;  // vproduto.descricao;
            qtd         := UniMainModule.qOsCorQUANTIDADE.value;   // eQuant.Value;
            preco_unit  := UniMainModule.qOsCorVALOR.value;        // eValor.Value;
            ncm         := UniMainModule.qGeral.FieldByName('NCM').AsString;
            cest        := UniMainModule.qGeral.FieldByName('CEST').AsString;
            cfop        := UniMainModule.qGeral.FieldByName('CFOP').AsString;
            cst         := UniMainModule.qGeral.FieldByName('CST').AsString;
            csosn       := UniMainModule.qGeral.FieldByName('CSOSN').AsString;
            ALIQICMS    := UniMainModule.qGeral.FieldByName('ALIQICMS').value;
            PREDICMS    := UniMainModule.qGeral.FieldByName('REDBCICMS').value;
            ALIQICMSST  := UniMainModule.qGeral.FieldByName('ALIQICMSST').value;
            PREDICMSST  := UniMainModule.qGeral.FieldByName('REDBCICMSST').value;
            mva         := UniMainModule.qGeral.FieldByName('MVAICMSST').value;

            VALOR_ICMS                            := 0;
            origem                                := UniMainModule.qGeral.FieldByName('ORIGEM').AsInteger;
            EAN                                   := UniMainModule.qGeral.FieldByName('EAN').AsString;
            seq_item                              := vqtditens;
            unidade                               := UniMainModule.qGeral.FieldByName('UN').AsString;
            CODIGO_ANP                            := UniMainModule.qGeral.FieldByName('CODIGO_ANP').AsString;
            StringGrid1.RowCount                  := StringGrid1.RowCount + 1;
            StringGrid1.Cells[0, vqtditens + 1]   := vqtditens.ToString;
            StringGrid1.Cells[1, vqtditens + 1]   := UniMainModule.qGeral.FieldByName('CODIGO').AsString;
            StringGrid1.Cells[2, vqtditens + 1]   := descricao;
            StringGrid1.Cells[3, vqtditens + 1]   := UniMainModule.qOsCorQUANTIDADE.asString;
            StringGrid1.Cells[4, vqtditens + 1]   := Double(UniMainModule.qOsCorVALOR.value).ToString(TFloatFormat.ffCurrency, 8, 2);
            StringGrid1.Cells[5, vqtditens + 1]   := VALOR_TOTAL.ToString(TFloatFormat.ffCurrency, 10, 2);
            StringGrid1.Cells[6, vqtditens + 1]   := UniMainModule.qGeral.FieldByName('CFOP').AsString;
            StringGrid1.Objects[0, vqtditens + 1] := vlistavenda.ItensNota.Last;
            LimparControles;
        end;

        StringGrid1.EndUpdate;
        edSubTotal.Value  := vlistavenda.VALOR_FINAL;
        edDesconto.Value  := vlistavenda.VALOR_DESCONTO;
        edAcrescimo.Value := vlistavenda.VALOR_ACRESCIMO;
        edTotalNF.Value   := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_ACRESCIMO +
        vlistavenda.VALOR_ICMS - vlistavenda.VALOR_DESCONTO;

        UniMainModule.qOsCor.next;
    end;

    FechaVenda;
end;

procedure TfNFCe.ProdutoOsOtica;
var
  vitens        : TVendasitens;
  nindex, tIndex: Integer;
  vqtditens     : Integer;
  vproduto      : TProdutos;
  vcliente      : TCliente;
  vVendedor     : TVendedor;
  vTipoRegimeCliente : Extended;
begin
    if not( Assigned( vlistavenda )) then
    begin
        vlistavenda                 := TNotasCab.Create;
        vlistavenda.MODELO          := UniMainModule.TRdata^.xmodelo;
        vlistavenda.COD_EMITENTE    := UniMainModule.CodigoEmitente.ToInteger;
        vlistavenda.SERIE           := UniMainModule.qEmitenteGERAL_SERIE.AsInteger;
        vlistavenda.NATUREZA_OPER   := 'Vendas de mercadorias';
        vlistavenda.ALIQ_SIMPLES    := 0;
        vlistavenda.tipoEmissao     := 1;   // emissao normal - contingencia
        vlistavenda.dtEmissao       := now;
        vlistavenda.DTSAIDA         := now;
        vlistavenda.FINALIDADE      := 0;   // 0 normalc 1 complementar 2 ajuste 3 devolucao
        vlistavenda.TIPONOTA        := 1;   // 0 = entrada 1 = saida
        vlistavenda.CPF_CONSUMIDOR  := eCPF.Text;
        vlistavenda.NOME_CONSUMIDOR := dblCliente.Text;

        //vlistavenda.IDCLIENTE       := fOsOticaDados.eCliente.KeyValue;  // vcliente.IDCLIENTE;
       // vlistavenda.VENDEDOR        := fOsOticaDados.eVendedor.KeyValue; // vVendedor.id;

        dblCliente.Text             := UniMainModule.qClientesRAZAOSOCIAL.AsString;
        eCPF.Text                   := UniMainModule.qClientesCPF_CNPJ.AsString;

        vlistavenda.TIPOFRETE       := 0;
        vlistavenda.STATUS_NOTA     := 'P';
        vlistavenda.AMBIENTE        := UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger;
    end;

    UniMainModule.qOticaCor.first;
    while not UniMainModule.qOticaCor.Eof do
    begin
        UniMainModule.qGeral.Close;
        UniMainModule.qGeral.SQL.Clear;
        UniMainModule.qGeral.SQL.Add('select A.IDPRODUTO,A.DESCRICAO_COMPLETA,A.CODIGO,A.EAN,'+
        ' A.DESCRICAO,A.NCM,A.CEST,A.CUSTO,A.PRECO,A.UN,A.OPER_SAIDA_DENTRO,                 '+
        ' A.OPER_SAIDA_FORA,A.IDEMITENTE,A.OPER_DEVOLUCAO_DENTRO,A.OPER_DEVOLUCAO_FORA,      '+
        ' A.CODIGO_ANP, A.PESOBRUTO,A.PESOLIQ,A.ORIGEM,                                      '+
        ' B.CFOP,                              '+
        ' B.CST,                               '+
        ' B.CSOSN,                             '+
        ' B.ALIQICMS,B.ALIQICMSST,B.REDBCICMS, '+
        ' B.REDBCICMSST,B.MVAICMSST,           '+
        ' B.CSTPIS,B.ALIQPIS,B.ALIQPISST,      '+
        ' B.CSTCOFINS,B.ALIQCOFINS,B.ALIQCOFINSST,'+
        ' B.CSTIPI,B.ALIQIPI,              '+
        ' C.CST CSTFORA,C.CSOSN CSOSNFORA, '+
        ' C.CFOP CFOPFORA,                 '+
        ' C.MVAICMSST MVAFORA,             '+
        ' C.ALIQICMS ALIQICMSFORA,C.CSTIPI CSTIPIFORA,C.ALIQIPI ALIQIPIFORA,C.CSTPIS CSTPISFORA, '+
        ' C.ALIQPIS ALIQPISFORA,C.CSTCOFINS CSTCOFINSFORA,C.ALIQCOFINS ALIQCOFINSFORA            '+
        ' from PRODUTOS A LEFT OUTER JOIN TBTES B ON (A.OPER_SAIDA_DENTRO=B.ID) LEFT OUTER JOIN TBTES C ON (A.OPER_SAIDA_FORA=C.ID) '+
        ' WHERE A.IDEMITENTE = ' + UniMainModule.CodigoEmitente+ ' and a.idProduto = :p ');
        UniMainModule.qGeral.ParamByName('p').AsInteger := UniMainModule.qOticaCorPRODUTO.AsInteger;
        unimainModule.qGeral.Open;

        tIndex    := StringGrid1.RowCount + 1;
        vqtditens := vlistavenda.ItensNota.Count;
        StringGrid1.BeginUpdate;
        vlistavenda.ItensNota.Add(TVendasitens.Create);

        with vlistavenda.ItensNota.Last do
        begin
            id_item     := UniMainModule.qOticaCorPRODUTO.AsInteger;  // vproduto.IDPRODUTO;
            descricao   := UniMainModule.qOticaCorNPRODUTO.AsString;  // vproduto.descricao;
            qtd         := UniMainModule.qOticaCorQUANTIDADE.value;   // eQuant.Value;
            preco_unit  := UniMainModule.qOticaCorVALOR.value;        // eValor.Value;
            ncm         := UniMainModule.qGeral.FieldByName('NCM').AsString;
            cest        := UniMainModule.qGeral.FieldByName('CEST').AsString;
            cfop        := UniMainModule.qGeral.FieldByName('CFOP').AsString;
            cst         := UniMainModule.qGeral.FieldByName('CST').AsString;
            csosn       := UniMainModule.qGeral.FieldByName('CSOSN').AsString;
            ALIQICMS    := UniMainModule.qGeral.FieldByName('ALIQICMS').value;
            PREDICMS    := UniMainModule.qGeral.FieldByName('REDBCICMS').value;
            ALIQICMSST  := UniMainModule.qGeral.FieldByName('ALIQICMSST').value;
            PREDICMSST  := UniMainModule.qGeral.FieldByName('REDBCICMSST').value;
            mva         := UniMainModule.qGeral.FieldByName('MVAICMSST').value;

            VALOR_ICMS                            := 0;
            origem                                := UniMainModule.qGeral.FieldByName('ORIGEM').AsInteger;
            EAN                                   := UniMainModule.qGeral.FieldByName('EAN').AsString;
            seq_item                              := vqtditens;
            unidade                               := UniMainModule.qGeral.FieldByName('UN').AsString;
            CODIGO_ANP                            := UniMainModule.qGeral.FieldByName('CODIGO_ANP').AsString;
            StringGrid1.RowCount                  := StringGrid1.RowCount + 1;
            StringGrid1.Cells[0, vqtditens + 1]   := vqtditens.ToString;
            StringGrid1.Cells[1, vqtditens + 1]   := UniMainModule.qGeral.FieldByName('CODIGO').AsString;
            StringGrid1.Cells[2, vqtditens + 1]   := descricao;
            StringGrid1.Cells[3, vqtditens + 1]   := UniMainModule.qOticaCorQUANTIDADE.asString;
            StringGrid1.Cells[4, vqtditens + 1]   := Double(UniMainModule.qOticaCorVALOR.value).ToString(TFloatFormat.ffCurrency, 8, 2);
            StringGrid1.Cells[5, vqtditens + 1]   := VALOR_TOTAL.ToString(TFloatFormat.ffCurrency, 10, 2);
            StringGrid1.Cells[6, vqtditens + 1]   := UniMainModule.qGeral.FieldByName('CFOP').AsString;
            StringGrid1.Objects[0, vqtditens + 1] := vlistavenda.ItensNota.Last;
            LimparControles;
        end;

        StringGrid1.EndUpdate;
        edSubTotal.Value  := vlistavenda.VALOR_FINAL;
        edDesconto.Value  := vlistavenda.VALOR_DESCONTO;
        edAcrescimo.Value := vlistavenda.VALOR_ACRESCIMO;
        edTotalNF.Value   := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_ACRESCIMO +
        vlistavenda.VALOR_ICMS - vlistavenda.VALOR_DESCONTO;

        UniMainModule.qOticaCor.next;
    end;

    FechaVenda;
end;

procedure TfNFCe.LimparControles;
begin
     cmbProdutos.ItemIndex := -1;
     eCodigo.Text          := '';
     eQuant.Value          := 0;
     eValor.Value          := 0;
     edTotal.Value         := 0;
     edCfop.Text           := '';
     edCsosn.Text          := '';
     edCST.Text            := '';
     edCest.Text           := '';
     edNCM.Text            := '';
     vTipoPessoa            := '';
end;

procedure TfNFCe.lookTranspExit(Sender: TObject);
begin
     if UniMainModule.qTranspPLACA.Text <> '' then
        edPlacaveic.Text := UniMainModule.qTranspPLACA.Text;

     if UniMainModule.qTranspPLACAUF.Text <> '' then
        UniComboBox2.Text := UpperCase(UniMainModule.qTranspPLACAUF.Text);

     if UniMainModule.qTranspANTT.Text <> '' then
        edANTT.Text := UniMainModule.qTranspANTT.Text;
end;

procedure TfNFCe.ePercAcrescimoChange(Sender: TObject);
begin
     if ePercAcrescimo.Value > 0 then
         edAcrescimo.value := (edSubTotal.value * ePercAcrescimo.value)/100
     else
         edAcrescimo.value := 0;
end;

procedure TfNFCe.ePercAcrescimoExit(Sender: TObject);
begin
     if ePercAcrescimo.Value < 0 then
        ePercAcrescimo.Value := 0;

     CalculaEdits;
end;

procedure TfNFCe.UniBitBtn1Click(Sender: TObject);
begin
     if UniMainModule.qEmitenteCNPJOPERADORA.AsString = '' then
     begin
          Showmessage('Informar o CNPJ da operadora de cartão nos dados da empresa!');
          pcartao.Visible := false;
          exit;
     end;

     if cmbForma.ItemIndex = 0 then
        addforma('03', 'CARTAO CREDITO','','','','','',ensu.text,eParcelasCartao.Text,cmbBandeira.Text)
     else
        addforma('04', 'CARTAO DEBITO','','','','','',ensu.text,eParcelasCartao.Text,cmbBandeira.Text);

     pcartao.Visible := false;
end;

procedure TfNFCe.UniBitBtn2Click(Sender: TObject);
begin
     addFormaPrazo('05', 'A PRAZO');
     pPArcelamentoPrazo.Visible := false
end;

procedure TfNFCe.UniBitBtn3Click(Sender: TObject);
begin
     pPArcelamentoPrazo.Visible := false;

     if fdMemPrazo.Active = true then
        fdMemPrazo.close;
end;

procedure TfNFCe.UniSpeedButton1Click(Sender: TObject);
var
  vitens        : TVendasitens;
  nindex, tIndex: Integer;
  vqtditens     : Integer;
  vproduto      : TProdutos;
  vcliente      : TCliente;
  vVendedor     : TVendedor;
  vTipoRegimeCliente : Extended;

  wBaseComReducao : Extended;
  wICmsProprio    : Extended;
  wBaseCalculoMVA : Extended;
  wValorICMS      : Extended;
begin
    if UniMainModule.TRdata^.xmodelo = 55 then
    begin
        if cmbClientes.Text = '' then
        begin
          Showmessage('Primeiro selecione o cliente');
          cmbClientes.SetFocus;
          exit;
        end;

        if edCfop.Text = '' then
        begin
          Showmessage('CFOP nao informado para o produto');
          exit;
        end;

        if UniMainModule.TRdata^.xtipodoc = 0 then
        begin
          if (copy(edCfop.Text, 1, 1) = '5') or (copy(edCfop.Text, 1, 1) = '6') then
          begin
            Showmessage('você esta fazendo uma Nota de entrada usando um cfop de saida');
            exit;
          end;
        end;
    end;

    if cmbProdutos.ItemIndex = -1 then
    begin
      Showmessage('Falta informar o produto');
      cmbProdutos.SetFocus;
      exit;
    end;

    if string(eCodigo.Text).Trim = '' then
    begin
      Showmessage('Falta informar o produto');
      eCodigo.SetFocus;
      exit;
    end;

    if eQuant.Value <= 0 then
    begin
      Showmessage('Falta informar a quantidade');
      eQuant.SetFocus;
      exit;
    end;

    if eValor.Value <= 0 then
    begin
      Showmessage('Falta informar o preço de venda');
      eValor.SetFocus;
      exit;
    end;

    if not(Assigned(vlistavenda)) then
    begin
        vlistavenda               := TNotasCab.Create;
        vlistavenda.MODELO        := UniMainModule.TRdata^.xmodelo;
        vlistavenda.COD_EMITENTE  := UniMainModule.CodigoEmitente.ToInteger;
        vlistavenda.SERIE         := UniMainModule.qEmitenteGERAL_SERIE.AsInteger;
        vlistavenda.NATUREZA_OPER := 'Vendas de mercadorias';
        vlistavenda.ALIQ_SIMPLES  := 0;
        vlistavenda.tipoEmissao   := 1; // emissao normal - contingencia

        if UniMainModule.TRdata^.xmodelo = 55 then
        begin
            vlistavenda.FINALIDADE      := UniMainModule.TRdata^.xfinalidade;
            vcliente                    := cmbClientes.Items.Objects[cmbClientes.ItemIndex] as TCliente;
            vlistavenda.IDCLIENTE       := vcliente.IDCLIENTE;
            vlistavenda.CONSUMIDORFINAL := vcliente.CONSUMIDORFINAL;
            vlistavenda.TIPONOTA        := UniMainModule.TRdata^.xtipodoc;
            vlistavenda.dtEmissao       := dtEmissao.DateTime;
            vlistavenda.DTSAIDA         := dtEmissao.DateTime;
            vlistavenda.CFOPVENDA       := Copy(LookCFOP.Text,1,4);
        end
        else
        begin
            if cmbClientes.Text <> '' then
            begin
                vcliente                    := cmbClientes.Items.Objects[cmbClientes.ItemIndex] as TCliente;
                vlistavenda.IDCLIENTE       := vcliente.IDCLIENTE;
            end;

            vlistavenda.dtEmissao       := now;
            vlistavenda.DTSAIDA         := now;
            vlistavenda.FINALIDADE      := 0; // 0 normal 1 complementar 2 ajuste 3 devolucao
            vlistavenda.TIPONOTA        := 1; // 0 = entrada 1 = saida
            vlistavenda.CPF_CONSUMIDOR  := eCPF.Text;
            vlistavenda.NOME_CONSUMIDOR := dblCliente.Text;
        end;

        if cmbVendedor.Text <> '' then
        begin
            vVendedor            := cmbVendedor.Items.Objects[cmbVendedor.ItemIndex] as TVendedor;
            vlistavenda.VENDEDOR := vVendedor.id;
        end;

        vlistavenda.TIPOFRETE    := 0;
        vlistavenda.STATUS_NOTA  := 'P';
        vlistavenda.AMBIENTE     := UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger;
    end;

    tIndex    := StringGrid1.RowCount + 1;
    vqtditens := vlistavenda.ItensNota.Count;
    StringGrid1.BeginUpdate;
    vlistavenda.ItensNota.Add(TVendasitens.Create);

    with vlistavenda.ItensNota.Last do
    begin
        vproduto    := cmbProdutos.Items.Objects[cmbProdutos.ItemIndex] as TProdutos;
        id_item     := vproduto.IDPRODUTO;
        descricao   := vproduto.descricao;
        qtd         := eQuant.Value;
        preco_unit  := eValor.Value;

        ncm         := IIf(Trim(edNCM.Text) <> '', edNCM.Text, vproduto.ncm);
        cest        := IIf(Trim(edCest.Text) <> '', edCest.Text, vproduto.cest);
        cfop        := IIf(Trim(edCfop.Text) <> '', edCfop.Text, vproduto.cfop);
        cst         := IIf(Trim(edCST.Text) <> '', edCST.Text, vproduto.cst);
        csosn       := IIf(Trim(edCsosn.Text) <> '', edCsosn.Text, vproduto.csosn);


        ALIQICMS    := IIf(Trim(edAliqIcms.Text)    <> '', edAliqIcms.Text,      vproduto.ALIQICMS);   // 1 ok
        PREDICMS    := IIf(Trim(edRBaseIcms.Text)   <> '', edRBaseIcms.Text,     vproduto.PREDICMS);   // 2 ok
        ALIQICMSST  := IIf(Trim(edAliqIcmsST.Text)  <> '', edAliqIcmsST.Text,    vproduto.ALIQICMSST); // 1 ok
        PREDICMSST  := IIf(Trim(edRbaseIcmsSt.Text) <> '', edRbaseIcmsSt.Text,   vproduto.PREDICMSST); // 2 ok
        mva         := IIf(Trim(edMVA.Text)         <> '', edMVA.Text,           vproduto.MVA);        // 3 ok

        if csosn = '201' then
        begin
             vTipoRegimeCliente := 17;

             wBaseComReducao := ((preco_unit*qtd) * 41.17) / 100;
             wICmsProprio    := (wBaseComReducao * 17) / 100;
             wBaseCalculoMVA := ((wBaseComReducao * 45.52) / 100) + wBaseComReducao;

             wValorICMS      := ((wBaseCalculoMVA * 17) / 100) - wICmsProprio;

             VALOR_ICMS      := wValorICMS ;
        end
        else
             VALOR_ICMS                        := 0;

        origem                                := vproduto.origem;
        EAN                                   := vproduto.EAN;
        seq_item                              := vqtditens;
        unidade                               := vproduto.UN;
        CODIGO_ANP                            := vproduto.CODIGO_ANP;
        StringGrid1.RowCount                  := StringGrid1.RowCount + 1;
        StringGrid1.Cells[0, vqtditens + 1]   := vqtditens.ToString;
        StringGrid1.Cells[1, vqtditens + 1]   := vproduto.CODIGO;
        StringGrid1.Cells[2, vqtditens + 1]   := descricao;
        StringGrid1.Cells[3, vqtditens + 1]   := eQuant.Text;
        StringGrid1.Cells[4, vqtditens + 1]   := Double(eValor.Value).ToString(TFloatFormat.ffCurrency, 8, 2);
        StringGrid1.Cells[5, vqtditens + 1]   := VALOR_TOTAL.ToString(TFloatFormat.ffCurrency, 10, 2);
        StringGrid1.Cells[6, vqtditens + 1]   := cfop;
        StringGrid1.Objects[0, vqtditens + 1] := vlistavenda.ItensNota.Last;
        LimparControles;
    end;

    StringGrid1.EndUpdate;
    edSubTotal.Value  := vlistavenda.VALOR_FINAL;
    edDesconto.Value  := vlistavenda.VALOR_DESCONTO;
    edAcrescimo.Value := vlistavenda.VALOR_ACRESCIMO;
    edTotalNF.Value   := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_ACRESCIMO +
    vlistavenda.VALOR_ICMS - vlistavenda.VALOR_DESCONTO;
    eCodigo.SetFocus;
end;

procedure TfNFCe.UniBitBtn5Click(Sender: TObject);
begin
     LimparControles;
end;

procedure TfNFCe.UniBitBtn6Click(Sender: TObject);
var  lbase: TBase;
     parcelas, cont, fatura : integer;
     Vencimento : TDateTime;
     valorParcela : Real;
begin
     try
           parcelas     := StrToInt(eParcelas.Text);
           cont         := 1;
           Vencimento   := ePrimeiroVencimento.DateTime;
           valorParcela := eValorparcela.Value / eParcelas.Value;
           fatura       := lbase.ultimoCampo('RECEBERCAB', 'FATURA','IDemitente',UniMainModule.Banco);

           fdMemPrazo.Open;

           while cont <= parcelas do
           begin
                 fdMemPrazo.Append;
                 fdMemPrazoParcela.AsInteger     := cont;          // parcela
                 fdMemPrazoFatura.AsInteger      := fatura;            // Fatura
                 fdMemPrazoEmissao.AsDateTime    := dtEmissao.DateTime;    // Data
                 fdMemPrazoVencimento.AsDateTime := Vencimento;        // Vencimento
                 fdMemPrazoValor.AsFloat         := valorParcela;      // valor parcela
                 fdMemPrazo.post;

                 inc(cont);
                 if eParcelamento.ItemIndex = 0 then
                    Vencimento := Vencimento + 7
                 else if eParcelamento.ItemIndex = 1 then
                    Vencimento := Vencimento + 15
                 else if eParcelamento.ItemIndex = 2 then
                    Vencimento := IncMonth( Vencimento, 1) // 30
                 else if eParcelamento.ItemIndex = 3 then
                    Vencimento := IncMonth( Vencimento, 3) // 90
                 else if eParcelamento.ItemIndex = 1 then
                    Vencimento := IncMonth( Vencimento, 6) // 180
                 else if eParcelamento.ItemIndex = 1 then
                    Vencimento := IncMonth( Vencimento, 12) // 365;
           end;
     except on e:exception do
     begin
         ShowMessage('Erro: '+e.Message);
     end;
     end;
end;

procedure TfNFCe.UniFormCreate(Sender: TObject);
begin
    pgVendas.ActivePageIndex        := 0;
    if UniMainModule.TRdata^.xmodelo = 55 then
    begin
        cmbClientes.Visible := true;
        UniPanel5.Visible   := false;
        PnlOutros.Visible   := true;
        pnlfrete.Visible    := true;
        pgVendas.ActivePage := tsSelDadosNF;
        dtEmissao.DateTime  := now;
        imgNFE.Visible      := true;
        imgNFCE.Visible     := false;
        lItens.Caption      := 'Emissão da NFe';

        with UniMainModule.qCFOP do
        begin
            close;
            sql.Clear;
            sql.Add(' select * from CFOP ');
          //  sql.Add(' where tipo = 2     ');
            open;
        end;
    end
    else if UniMainModule.TRdata^.xmodelo = 65 then
    begin
        UniPanel5.Visible   := true;
        PnlOutros.Visible   := false;
        pnlfrete.Visible    := false;
        imgNFE.Visible      := false;
        imgNFCE.Visible     := true;
        lItens.Caption      := 'Emissão da NFCe';
    end;

    vlistacli  := TlistaClientes.Create;
    getclientes;

    vlistaVen  := TlistaVendedores.Create;
    getVendedores;

    vlistaprod := tlistaprodutos.Create;

    getProdutos;
    Preparagrid;

    with UniMainModule.qTransp do
    begin
         close;
         sql.Clear;
         sql.Add('select * from transportador');
         sql.Add('where idemitente = :e');
         ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.Trim.ToInteger;
         open;
    end;

    if UniMainModule.TRdata^.xmodelo = 55 then
    begin
        if UniMainModule.qEmitenteCFOPPADRAO.AsString <> '' then
           LookCFOP.ItemIndex := UniMainModule.qEmitenteCFOPPADRAO.AsInteger;

        cmbFinalidade.SetFocus;
    end
    else
        cmbVendedor.SetFocus;

    if UniMainModule.Tela = 'OTICA' then
    begin
         ProdutoOsOtica;
    end;

    if UniMainModule.Tela = 'OS' then
    begin
         ProdutoOs;
    end;

    if UniMainModule.qEmitenteWEBSERVICE_AMBIENTE.AsInteger = 0 then
        pHomologação.Visible := false
    else
        pHomologação.Visible := true;

    if UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger = 0 then
        pContingencia.Visible := false
    else
        pContingencia.Visible := true;

end;

procedure TfNFCe.UniPanel8Click(Sender: TObject);
begin
     FechaVenda;
end;

procedure TfNFCe.UniPanel9Click(Sender: TObject);
begin
      if Assigned(vlistavenda) then
      begin
            FreeAndNil(vlistavenda);
      end;

      Preparagrid;
      LimparControles;
      cmbClientes.ItemIndex := -1;
      cmbClientes.Enabled   := true;
      edSubTotal.Value      := 0;
      edDesconto.Value      := 0;
      edAcrescimo.Value     := 0;
      edTotalNF.Value       := 0;
      edFrete.Value         := 0;
      edSeguro.Value        := 0;
      edOutros.Value        := 0;

      if UniMainModule.TRdata^.xmodelo = 55 then
      begin
          UniMainModule.TRdata^.xchavecomplementar := '';
          UniMainModule.TRdata^.xcfop := '';
          UniMainModule.TRdata^.xnatureza := '';
          lbnatureza.Caption := '';
          pgVendas.ActivePage := tsSelDadosNF;
          cmbTipoDoc.ItemIndex := 1;
          cmbFinalidade.ItemIndex := 0;
          dtEmissao.DateTime := now;
          with UniMainModule.qCFOP do
          begin
              close;
              sql.Clear;
              sql.Add('select * from CFOP');
              sql.Add('where tipo = 2');
              open;
          end;
          LookCFOP.KeyValue := 9999999;
      end;
end;

procedure TfNFCe.addforma(const ptipo,pforma,ptoken,pidintencao,
pnomeIntencaoStatus,pidTerminal,pComprovanteStab,pNsu,pNparcelas,pBandeira: string);
var
  tIndex, vqtditens: Integer;
begin
      if eValorparcela.Value <= 0 then
      begin
          if cmbFinalidade.ItemIndex <> 3 then
          begin
              Showmessage('Falta informar o valor da parcela');
              exit;
          end;
      end;

      if eValorPago.Value >= eTotalParcs.Value then
      begin
          Showmessage('Total da fatura ja foi parcelado');
          eValorparcela.Value := 0;
          exit;
      end;

      vlistavenda.formasNF.Add(TFormasNF.Create);
      tIndex    := stgParcelas.RowCount + 1;
      vqtditens := vlistavenda.formasNF.Count;
      stgParcelas.BeginUpdate;

      with vlistavenda.formasNF.Last do
      begin
          parcela    := vqtditens;                       //  tIndex;
          emissao    := vlistavenda.dtEmissao;

          NSU        := pNsu;
          nParcelas  := pNparcelas;
          Bandeira   := pBandeira;

          ////////   PayGo - Cartão de Crédito  ////
          token              := ptoken;
          idIntencao         := pidintencao;
          idTerminal         := pidTerminal;
          ComprovanteEstab   := pComprovanteStab;
          nomeIntencaoStatus := pnomeIntencaoStatus;
          //////////////////////////////////////////

          vencimento := IfThen(ptipo = '01', vlistavenda.dtEmissao, vlistavenda.dtEmissao + 30);

          valor      := IfThen(eValorparcela.Value <= eTotalParcs.Value,eValorparcela.Value, eTotalParcs.Value - eValorPago.Value);

          tipo_fatura                     := ptipo;
          stgParcelas.RowCount            := stgParcelas.RowCount + 1;
          stgParcelas.Cells[0, vqtditens] := vqtditens.ToString;
          stgParcelas.Cells[1, vqtditens] := DateToStr(emissao);
          stgParcelas.Cells[2, vqtditens] := DateToStr(vencimento);
          stgParcelas.Cells[3, vqtditens] := valor.ToString(TFloatFormat.ffCurrency, 10, 2);
          stgParcelas.Cells[4, vqtditens] := ptipo;
          stgParcelas.Cells[5, vqtditens] := pforma;
      end;

      stgParcelas.EndUpdate;
      eValorPago.Value := eValorPago.Value + eValorparcela.Value;

      if eTotalParcs.Value > eValorPago.Value then
      begin
          eRestante.Value := eTotalParcs.Value - eValorPago.Value;
          eTroco.Value    := 0;
      end
      else
      begin
          eRestante.Value := 0;
          eTroco.Value    := eValorPago.Value - eTotalParcs.Value;
      end;
      eValorparcela.Value := eRestante.Value;
end;

procedure TfNFCe.sbAprazoClick(Sender: TObject);
begin
     if cmbClientes.Text = '' then
     begin
          Showmessage('Informe um cliente para a venda a prazo!');
          exit;
     end;

     if eValorparcela.Value <= 0 then
     begin
          Showmessage('Falta informar o valor da parcela');
          exit;
     end;

     if eValorPago.Value >= eTotalParcs.Value then
     begin
          Showmessage('Total da fatura ja foi parcelado');
          eValorparcela.Value := 0;
          exit;
     end;

     if fdMemPrazo.Active = true then
        fdMemPrazo.close;

     ePrimeiroVencimento.DateTime := IncMonth(Date,1);
     pPArcelamentoPrazo.Visible   := True;

//     addforma('05', 'A PRAZO','','','','','');

     // 10 VALE AMIMENTAÇÃO
     // 11 VALE REFEIÇÃO
     // 12 VALE PRESENTE
     // 13 VALE COMBUSTIVEL
     // 14 DUPLICATA MERCANTIL
     // 99 OUTROS
end;

procedure TfNFCe.sbChequeClick(Sender: TObject);
begin
     addforma('02', 'CHEQUE','','','','','','','','');
end;

procedure TfNFCe.sbCreditoClick(Sender: TObject);
begin
     if UniMainModule.qEmitenteCNPJOPERADORA.AsString = '' then
     begin
         addforma('03', 'CARTAO CREDITO','','','','','','','','');
     end
     else
     begin
//         if UniMainModule.qEmitenteTEF_SITEF.asstring = 'S' then
//         begin
//                   addforma('03', 'CARTAO CREDITO','','','','','',UniMainModule.SiTef_NSU,'1',UniMainModule.SiTef_Bandeira);
//
//              UniMainModule.SiTef_Valor := IfThen(eValorparcela.Value <= eTotalParcs.Value,eValorparcela.Value, eTotalParcs.Value - eValorPago.Value);
//
//
//              if uniMainModule.sitef_ok = 'S' then
//              begin
//                   sbFechar.click;
//
//                   ImprimeCartao(UniMainModule.SiTef_ComEst);
//              end;
//         end
//         else
         begin
               pCartao.Visible    := true;
               cmbForma.ItemIndex := 0;
               eParcelasCartao.SetFocus;

               //addforma('03', 'CARTAO CREDITO','','','','','','','','');
         end;
     end;
end;

procedure TfNFCe.sbDebitoClick(Sender: TObject);
begin
     if UniMainModule.qEmitenteCNPJOPERADORA.AsString = '' then
     begin
       //addforma('04', 'CARTAO DEBITO','','','','','','',eParcelasCartao.Text,cmbBandeira.Text);
         addforma('04', 'CARTAO DEBITO','','','','','','','','');
     end
     else
     begin
         pCartao.Visible    := true;
         cmbForma.ItemIndex := 1;
         eParcelasCartao.SetFocus;

         // addforma('04', 'CARTAO DEBITO','','','','','','1','1','');
     end;
end;

procedure TfNFCe.sbDinheiroClick(Sender: TObject);
begin
     addforma('01', 'DINHEIRO','','','','','','','','');
end;

procedure TfNFCe.sbFecharClick(Sender: TObject);
begin
     if eRestante.Value > 0 then
     begin
          Showmessage('Valor total ainda não foi totalmente Parcelado');
          exit;
     end;

     if eCPF.Text <> '' then
     begin
          if Length(eCPF.Text) = 11 then
          begin
              UniMainModule.docValidador.TipoDocto := docCPF;
              UniMainModule.docValidador.Documento := eCPF.Text;
              if not UniMainModule.docValidador.validar then
              begin
                Showmessage('O CPF Informado é Inválido!');
                eCPF.SetFocus;
                Abort;
              end;
          end
          else
          begin
              UniMainModule.docValidador.TipoDocto := docCNPJ;
              UniMainModule.docValidador.Documento := eCPF.Text;
              if not UniMainModule.docValidador.validar then
              begin
                Showmessage('O CNPJ Informado é Inválido!');
                eCPF.SetFocus;
                Abort;
              end;
          end;
     end;

     try
          if UniMainModule.TRdata^.xmodelo = 65 then
          begin
              vlistavenda.CPF_CONSUMIDOR  := eCPF.Text;
              vlistavenda.NOME_CONSUMIDOR := dblCliente.Text;
          end;

          vlistavenda.TOTAL_PRODUTOS    := edSubTotal.Value;
          vlistavenda.TROCO             := eTroco.Value;
          vlistavenda.TOTAL_NOTA        := edTotalNF.Value ;
          vlistavenda.VALOR_DESCONTO    := edDesconto.Value;
          vlistavenda.VALOR_ACRESCIMO   := edAcrescimo.Value;
          vlistavenda.VALOR_FRETE       := edFrete.Value;
          vlistavenda.VALOR_SEGURO      := edSeguro.Value;
          vlistavenda.VALOR_OUTRAS_DESP := edOutros.Value;
          vlistavenda.DADOS_ADICIONAIS  := memoInfo.Text;
          vlistavenda.TIPOFRETE         := IfThen(cmbFrete.ItemIndex >= 0, cmbFrete.ItemIndex, 0);

          if UniMainModule.TRdata^.xmodelo = 55 then
            vlistavenda.NATUREZA_OPER     := UniMainModule.TRdata^.xnatureza
          else
            vlistavenda.NATUREZA_OPER     := 'Vendas de Mercadorias';
          if lookTransp.Text <> '' then
            vlistavenda.IDTRANSP   := UniMainModule.qTranspIDTRANSP.AsInteger;
          vlistavenda.PLACAVEICULO := edPlacaveic.Text;
          if UniComboBox2.ItemIndex > 0 then
            vlistavenda.UFVEICULO := UpperCase(UniComboBox2.Text);
          if edANTT.Text <> '' then
            vlistavenda.COD_ANTT := edANTT.Text;
          if edVolumes.Value > 0 then
            vlistavenda.QUANT := edVolumes.Value;
          if edEspecie.Text <> '' then
            vlistavenda.ESPECIE := edEspecie.Text;
          if edMarca.Text <> '' then
            vlistavenda.MARCA := edMarca.Text;
          if edNumero.Text <> '' then
            vlistavenda.NUMERO := edNumero.Text;
          if edPesoBrut.Value > 0 then
            vlistavenda.PESOBRUTO := edPesoBrut.Value;
          if edPesoLiq.Value > 0 then
            vlistavenda.PESOLIQUIDO := edPesoLiq.Value;

          UniMainModule.posVenda := 'S';
          vlistavenda.Salvar;
          vlistavenda.AdicionaNotaNoComponente;

     finally
          limpafrete;

          if Assigned(vlistavenda) then
          begin
            FreeAndNil(vlistavenda);
          end;

          Preparagrid;
          memoInfo.Lines.Clear;
          LimparControles;

          cmbClientes.ItemIndex := -1;

          edSubTotal.Value                   := 0;
          edDesconto.Value                   := 0;
          edAcrescimo.Value                  := 0;
          edTotalNF.Value                    := 0;
          edFrete.Value                      := 0;
          edSeguro.Value                     := 0;
          edOutros.Value                     := 0;
          eRestante.Value                    := 0;
          eValorparcela.Value                := 0;
          eValorPago.Value                   := 0;
          eTroco.Value                       := 0;
          edComplementar.Text                := '';
          edComplementar2.Text               := '';
          edComplementar3.Text               := '';
          edComplementar4.Text               := '';
          edComplementar5.Text               := '';
          edComplementar6.Text               := '';
          dblCliente.Text                    := '';
          eCPF.Text                          := '';
          cmbFinalidade.ItemIndex            := 0;
          cmbTipoDoc.ItemIndex               := 1;
          dtEmissao.DateTime                 := Date;

          UniMainModule.TRdata^.xfinalidade        := 0;
          UniMainModule.TRdata^.xchavecomplementar := '';
          UniMainModule.TRdata^.xtipodoc           := 1;
          UniMainModule.TRdata^.xdataemissao       := Date;
          UniMainModule.TRdata^.xcfop              := '';
          UniMainModule.TRdata^.xnatureza          := '';

          if UniMainModule.TRdata^.xmodelo = 55 then
          begin
              pgVendas.ActivePage     := tsSelDadosNF;
              cmbTipoDoc.ItemIndex    := 1;
              cmbFinalidade.ItemIndex := 0;
              dtEmissao.DateTime      := now;
              with UniMainModule.qCFOP do
              begin
                close;
                sql.Clear;
                sql.Add('select * from CFOP');
                sql.Add('where tipo = 2');
                open;
              end;
              LookCFOP.KeyValue := 9999999;
          end
          else
          begin
              pgVendas.ActivePage := tsVendas;
              cmbClientes.SetFocus;
          end;

          if UniMainModule.Tela = 'OTICA' then
          begin
               //fOsOticaDados.VoltaAbaInicio;
               UniMainModule.Tela       := '';
               UniMainModule.CodigoTela := '';
          end;

          if UniMainModule.Tela = 'OS' then
          begin
               fOsDados.VoltaAbaInicio;
               UniMainModule.Tela       := '';
               UniMainModule.CodigoTela := '';
          end;
     end;
end;

procedure TfNFCe.sbTEFClick(Sender: TObject);
begin
     if UniMainModule.qEmitenteTEF_PAYGO.AsString = 'S' then

     else
         Showmessage('Atenção, forma de pagmento não habilitada!');
end;

procedure TfNFCe.sbVoltarClick(Sender: TObject);
begin
      edFrete.Value            := 0;
      edSeguro.Value           := 0;
      vlistavenda.VALOR_FRETE  := 0;
      vlistavenda.VALOR_SEGURO := 0;
      edTotalNF.Value          := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_FRETE + vlistavenda.VALOR_SEGURO +
        vlistavenda.VALOR_OUTRAS_DESP + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;
      eTotalParcs.Value := edTotalNF.Value;
      eRestante.Value   := eTotalParcs.Value;
      limpafrete;
      Limpaparcelas;
      dblCliente.Text          := '';
      eCPF.Text                := '';
      pgVendas.ActivePageIndex := 0;
end;

procedure TfNFCe.sbSemPagamentoClick(Sender: TObject);
begin
    addforma('07', 'SEM PAGAMENTO','','','','','','','','');
end;

procedure TfNFCe.sbLimparPagamentoClick(Sender: TObject);
begin
    edFrete.Value            := 0;
    edSeguro.Value           := 0;
    vlistavenda.VALOR_FRETE  := 0;
    vlistavenda.VALOR_SEGURO := 0;
    edTotalNF.Value          := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_FRETE + vlistavenda.VALOR_SEGURO +
      vlistavenda.VALOR_OUTRAS_DESP + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;
    eTotalParcs.Value := edTotalNF.Value;
    eRestante.Value   := eTotalParcs.Value;
    limpafrete;
    Limpaparcelas;
end;

procedure TfNFCe.limpafrete;
begin
    cmbFrete.ItemIndex     := 0;
    edFrete.Value          := 0;
    edSeguro.Value         := 0;
    lookTransp.ItemIndex   := -1;
    edPlacaveic.Text       := '';
    UniComboBox2.ItemIndex := -1;
    edANTT.Text            := '';

    edVolumes.Value        := 0;
    edEspecie.Text         := '';
    edMarca.Text           := '';
    edNumero.Text          := '';
    edPesoBrut.Value       := 0;
    edPesoLiq.Value        := 0;

    edFrete.Enabled        := false;
    edSeguro.Enabled       := false;
    lookTransp.Enabled     := false;
    edPlacaveic.Enabled    := false;
    UniComboBox2.Enabled   := false;
    edANTT.Enabled         := false;
end;

procedure TfNFCe.UniSpeedButton2Click(Sender: TObject);
begin
  eQuant.Value  := eQuant.Value + 1;
  edTotal.Value := IfThen(eValor.Value <> 0, eQuant.Value * eValor.Value, 0);
end;

procedure TfNFCe.UniSpeedButton3Click(Sender: TObject);
begin
  eQuant.Value  := IfThen(eQuant.Value - 1 > 0, eQuant.Value - 1, 0);
  edTotal.Value := IfThen(eValor.Value > 0, eQuant.Value * eValor.Value, 0);
end;

procedure TfNFCe.UniSpeedButton4Click(Sender: TObject);
begin
     getProdutos2;
end;

procedure TfNFCe.UniSpeedButton6Click(Sender: TObject);
begin
    pgVendas.ActivePageIndex := 0;
end;

procedure TfNFCe.UniSpeedButton7Click(Sender: TObject);
begin
    if strProdutos.Row > 0 then
    begin
         eCodigo.Text := strProdutos.Cells[0, strProdutos.Row];
         buscapelocodigo;
    end;

    pgVendas.ActivePageIndex := 0;
end;

procedure TfNFCe.btnCancelaClick(Sender: TObject);
begin
     pCartao.Visible := false;
end;

procedure TfNFCe.btnSalvaClick(Sender: TObject);
begin
      if (LookCFOP.ItemIndex < 0) or (LookCFOP.Text = '') then
      begin
          Showmessage('Selecione o CFOP da Operação');
          exit;
      end;

      if (cmbFinalidade.ItemIndex < 0) or (cmbFinalidade.Text = '') then
      begin
          Showmessage('Selecione a finalidade da nota fiscal');
          exit;
      end;

      if (cmbTipoDoc.ItemIndex < 0) or (cmbTipoDoc.Text = '') then
      begin
          Showmessage('Selecione o tipo do documento');
          exit;
      end;

      UniMainModule.TRdata^.xfinalidade         := cmbFinalidade.ItemIndex;
      UniMainModule.TRdata^.xtipodoc            := cmbTipoDoc.ItemIndex;
      UniMainModule.TRdata^.xdataemissao        := Trunc(dtEmissao.DateTime);
      UniMainModule.TRdata^.xcfop               := UniMainModule.qCFOPCFOP.AsString;
      UniMainModule.TRdata^.xnatureza           := UniMainModule.qCFOPNATUREZA.AsString;
      UniMainModule.TRdata^.xchavecomplementar  := edComplementar.Text;
      UniMainModule.TRdata^.xchavecomplementar2 := edComplementar2.Text;
      UniMainModule.TRdata^.xchavecomplementar3 := edComplementar3.Text;
      UniMainModule.TRdata^.xchavecomplementar4 := edComplementar4.Text;
      UniMainModule.TRdata^.xchavecomplementar5 := edComplementar5.Text;
      UniMainModule.TRdata^.xchavecomplementar6 := edComplementar6.Text;
      lbnatureza.Caption                        := UniMainModule.qCFOPNATUREZA.AsString;
      pgVendas.ActivePage                       := tsVendas;
      cmbClientes.SetFocus;
end;

procedure TfNFCe.btnVoltarClick(Sender: TObject);
begin
      LimparControles;
      pgVendas.ActivePageIndex := 1;
end;

procedure TfNFCe.buscapelocodigo;
var
  vItem: TProdutos;
begin
  if string(eCodigo.Text).Trim <> '' then
  begin
    if string(eCodigo.Text).Trim.Length >= 8 then
    begin
      for vItem in (vlistaprod.Pesquisar(eCodigo.Text, 'B')) do
      begin
        if (cmbProdutos.Items.IndexOfObject(vItem)) >= 0 then
        begin
          cmbProdutos.ItemIndex := cmbProdutos.Items.IndexOfObject(vItem);
          eValor.Value          := vItem.PRECO;
          edTotal.Value         := vItem.PRECO * eQuant.Value;
          edCfop.Text           := vItem.cfop;
          edCsosn.Text          := vItem.csosn;
          edCST.Text            := vItem.cst;
          edCest.Text           := vItem.cest;
          edNCM.Text            := vItem.ncm;
          UniSpeedButton1.Click;
          eCodigo.SetFocus;
        end
        else
          LimparControles;
      end;
    end;

    if string(eCodigo.Text).Trim.Length < 8 then
    begin
      for vItem in (vlistaprod.Pesquisar(eCodigo.Text, 'C')) do
      begin
        if cmbProdutos.Items.IndexOfObject(vItem) >= 0 then
        begin
          cmbProdutos.ItemIndex := cmbProdutos.Items.IndexOfObject(vItem);
          eValor.Value          := vItem.PRECO;
          edTotal.Value         := vItem.PRECO * eQuant.Value;
          edCfop.Text           := vItem.cfop;
          edCsosn.Text          := vItem.csosn;
          edCST.Text            := vItem.cst;
          edCest.Text           := vItem.cest;
          edNCM.Text            := vItem.ncm;
        end
        else
          LimparControles;
      end;
    end;
  end;
end;

procedure TfNFCe.UniSpeedButton8Click(Sender: TObject);
begin
     if edProduto.Text <> '' then
     begin
          FindCol(1, edProduto.Text)
     end;
end;

procedure TfNFCe.UniSpeedButton9Click(Sender: TObject);
begin
    if (StringGrid1.Row > 0) then
    begin
          MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
          procedure(Sender: TComponent; Res: Integer)
          begin
              case Res of
                  mrYes :
                  begin
                      try
                            ApagaitemString;

                            if StringGrid1.RowCount <= 1 then
                            begin
                                if Assigned(vlistavenda) then
                                   FreeAndNil(vlistavenda);
                            end;

                      except
                            on e: exception do
                            begin
                                ShowMessage('Ocorreu o seguinte erro:!' + e.Message);
                            end;
                      end;

                  end;
              end;
          end);
    end
    else
    begin
          edDesconto.Value  := 0;
          edAcrescimo.Value := 0;
    end;
end;

procedure TfNFCe.ValidaCsosn;
begin
     if ((vTipoPessoa = 'FISICA')) then
     begin
          if ((edCsosn.Text <> '102') and (edCsosn.Text <> '103')
             and (edCsosn.Text <> '300') and (edCsosn.Text <> '400')
             and (edCsosn.Text <> '500')) then
          begin
               ShowMessage(
               '                           ATENÇÃO                               '+#13#10+
               'Para cliente não contribuinte de icms utilizar os Seguintes CSOSN'+#13#10+
               ' 102 - Tributação SN sem permissão de crédito.'+#13#10+
               ' 103 - Tributação SN com isenção para faixa de receita bruta.'+#13#10+
               ' 300 - Imune.'+#13#10+
               ' 400 - Não tributada pelo Simples Nacional.'+#13#10+
               ' 500 - ICMS cobrado anteriormente por substituição tributária ou por antecipação.'+#13#10);
               Abort;
          end;
     end;
end;

procedure TfNFCe.FechaVenda;
begin
    if edTotalNF.Value <= 0 then
    begin
        SHowMessage('Valor total da Nota esta zero');
        exit;
    end;
    if StringGrid1.RowCount <= 1 then
    begin
        SHowMessage('Selecione os produtos');
        exit;
    end;

    stgParcelas.RowCount     := 1;
    stgParcelas.BeginUpdate;
    stgParcelas.ColCount     := 6;
    stgParcelas.RowCount     := 1;
    stgParcelas.Cells[0, 0]  := 'Parcela';
    stgParcelas.ColWidths[0] := 90;
    stgParcelas.Cells[1, 0]  := 'Emissao';
    stgParcelas.ColWidths[1] := 130;
    stgParcelas.Cells[2, 0]  := 'Vencimento';
    stgParcelas.ColWidths[2] := 130;
    stgParcelas.Cells[3, 0]  := 'Valor';
    stgParcelas.ColWidths[3] := 140;
    stgParcelas.Cells[4, 0]  := 'Tp';
    stgParcelas.ColWidths[4] := 60;
    stgParcelas.Cells[5, 0]  := 'Forma';
    stgParcelas.ColWidths[5] := 160;
    stgParcelas.EndUpdate;
    pgVendas.ActivePageIndex := 3;

    eTotalParcs.Value        := edTotalNF.Value;
    eValorparcela.Value      := edTotalNF.Value;
    eRestante.Value          := edTotalNF.Value;
end;

function TfNFCe.FindCol(c: Integer; sFind: string): Integer;
var
  i: Integer;
begin
    Result := 0;
    for i  := 1 to strProdutos.RowCount - 1 do
    begin
        if strProdutos.Cells[c, i].ToUpper.Contains(sFind.ToUpper) then
        begin
            strProdutos.Col := c;
            strProdutos.Row := i;
            Result          := i;
            strProdutos.SetFocus;
            exit;
        end;
    end;
end;

procedure TfNFCe.getProdutos;
var
  vdataset     : tDataset;
  nindex, ncont: Integer;
  vproduto     : TProdutos;
begin
      UniMainModule.Banco.ExecSQL
      ('select A.IDPRODUTO,A.DESCRICAO_COMPLETA,A.CODIGO,A.EAN,A.DESCRICAO,A.NCM,A.CEST,A.CUSTO,A.PRECO,A.UN,A.OPER_SAIDA_DENTRO,'+
      ' A.OPER_SAIDA_FORA,A.IDEMITENTE,A.OPER_DEVOLUCAO_DENTRO,A.OPER_DEVOLUCAO_FORA,A.CODIGO_ANP, A.PESOBRUTO,A.PESOLIQ,A.ORIGEM,'+
      ' B.CFOP, '+
      ' B.CST,'+
      ' B.CSOSN,'+
      ' B.ALIQICMS,B.ALIQICMSST,B.REDBCICMS,B.REDBCICMSST,B.MVAICMSST, '+
      ' B.CSTPIS,B.ALIQPIS,B.ALIQPISST,'+
      ' B.CSTCOFINS,B.ALIQCOFINS,B.ALIQCOFINSST,'+
      ' B.CSTIPI,B.ALIQIPI,'+

      ' C.CST CSTFORA,C.CSOSN CSOSNFORA, '+
      ' C.CFOP CFOPFORA, '+
      ' C.MVAICMSST MVAFORA, ' +
      ' C.ALIQICMS ALIQICMSFORA,C.CSTIPI CSTIPIFORA,C.ALIQIPI ALIQIPIFORA,C.CSTPIS CSTPISFORA, ' +
      ' C.ALIQPIS ALIQPISFORA,C.CSTCOFINS CSTCOFINSFORA,C.ALIQCOFINS ALIQCOFINSFORA ' +
      ' from PRODUTOS A LEFT OUTER JOIN TBTES B ON (A.OPER_SAIDA_DENTRO=B.ID) LEFT OUTER JOIN TBTES C ON (A.OPER_SAIDA_FORA=C.ID) '
      + ' WHERE A.IDEMITENTE=' + UniMainModule.CodigoEmitente, vdataset);
      strProdutos.RowCount    := 1;
      strProdutos.Cells[0, 0] := 'Codigo';
      strProdutos.Cells[1, 0] := 'Descricao';
      strProdutos.Cells[2, 0] := 'Preco venda';
      strProdutos.Cells[3, 0] := 'ncm';
      strProdutos.Cells[4, 0] := 'Barras';
      strProdutos.BeginUpdate;
      cmbProdutos.BeginUpdate;
      cmbProdutos.Items.Clear;

      while not vdataset.Eof do
      begin
          vlistaprod.Add(TProdutos.Create);
          vproduto := vlistaprod.Last;
          nindex   := vlistaprod.Count;
          with vproduto do
          begin
              IDPRODUTO          := vdataset.FieldByName('IDPRODUTO').AsInteger;
              CODIGO             := vdataset.FieldByName('CODIGO').AsString;
              EAN                := vdataset.FieldByName('EAN').AsString;
              descricao          := vdataset.FieldByName('DESCRICAO').AsString;
              DESCRICAO_COMPLETA := vdataset.FieldByName('DESCRICAO_COMPLETA').AsString;
              ncm                := vdataset.FieldByName('NCM').AsString;
              cest               := vdataset.FieldByName('CEST').AsString;
              CUSTO              := vdataset.FieldByName('CUSTO').AsFloat;
              PRECO              := vdataset.FieldByName('PRECO').AsFloat;
              UN                 := vdataset.FieldByName('UN').AsString;

              origem     := vdataset.FieldByName('ORIGEM').AsInteger;   // 1
              cfop       := vdataset.FieldByName('CFOP').AsString;      // 2
              cst        := vdataset.FieldByName('CST').AsString;       // 3
              csosn      := vdataset.FieldByName('CSOSN').AsString;     // 4
              ALIQICMS   := vdataset.FieldByName('ALIQICMS').AsFloat;   // 5
              PREDICMS   := vdataset.FieldByName('REDBCICMS').AsFloat;  // 6
              ALIQICMSST := vdataset.FieldByName('ALIQICMSST').AsFloat; // 7
              PREDICMSST := vdataset.FieldByName('REDBCICMSST').AsFloat;// 8
              MVA        := vdataset.FieldByName('MVAICMSST').AsFloat;  // 9

              CSTIPI     := vdataset.FieldByName('CSTIPI').AsString;
              IPI        := vdataset.FieldByName('ALIQIPI').AsFloat;
              PESOBRUTO  := vdataset.FieldByName('PESOBRUTO').AsFloat;
              PESOLIQ    := vdataset.FieldByName('PESOLIQ').AsFloat;
              ALIQPIS    := vdataset.FieldByName('ALIQPIS').AsFloat;
              CSTCOFINS  := vdataset.FieldByName('CSTCOFINS').AsString;
              ALIQCOFINS := vdataset.FieldByName('ALIQCOFINS').AsFloat;

              OPER_SAIDA_DENTRO                        := vdataset.FieldByName('OPER_SAIDA_DENTRO').AsInteger;
              OPER_SAIDA_FORA                          := vdataset.FieldByName('OPER_SAIDA_FORA').AsInteger;
              IDEMITENTE                               := vdataset.FieldByName('IDEMITENTE').AsInteger;
              CODIGO_ANP                               := vdataset.FieldByName('CODIGO_ANP').AsString;
              strProdutos.RowCount                     := strProdutos.RowCount + 1;
              strProdutos.Cells[0, vlistaprod.Count]   := CODIGO;
              strProdutos.Cells[1, vlistaprod.Count]   := descricao;
              strProdutos.Cells[2, vlistaprod.Count]   := PRECO.ToString;
              strProdutos.Cells[3, vlistaprod.Count]   := ncm;
              strProdutos.Cells[4, vlistaprod.Count]   := EAN;
              strProdutos.Objects[0, vlistaprod.Count] := vproduto;
              cmbProdutos.Items.AddObject(descricao + ' R$ ' + PRECO.ToString, vproduto);
          end;
          vdataset.Next;
      end;
      cmbProdutos.EndUpdate;
      strProdutos.EndUpdate;
end;

procedure TfNFCe.getProdutos2;
var
  vdataset     : tDataset;
  nindex, ncont: Integer;
  vproduto     : TProdutos;
begin
      UniMainModule.Banco.ExecSQL
      ('select A.IDPRODUTO,A.DESCRICAO_COMPLETA,A.CODIGO,A.EAN,A.DESCRICAO,A.NCM,A.CEST,A.CUSTO,A.PRECO,A.UN,A.OPER_SAIDA_DENTRO,A.OPER_SAIDA_FORA '
      + ' ,A.IDEMITENTE,A.OPER_DEVOLUCAO_DENTRO,A.OPER_DEVOLUCAO_FORA,A.CODIGO_ANP,B.CFOP,B.ALIQICMS,B.MVAICMSST,C.MVAICMSST MVAFORA, '
      + ' B.CSTIPI,B.ALIQIPI,B.CSTPIS,B.ALIQPIS,B.CSTCOFINS,B.ALIQCOFINS,B.CST,B.CSOSN,A.PESOBRUTO,A.PESOLIQ,A.ORIGEM,' +
      ' C.CFOP CFOPFORA,C.ALIQICMS ALIQICMSFORA,C.CSTIPI CSTIPIFORA,C.ALIQIPI ALIQIPIFORA,C.CSTPIS CSTPISFORA, ' +
      ' C.ALIQPIS ALIQPISFORA,C.CSTCOFINS CSTCOFINSFORA,C.ALIQCOFINS ALIQCOFINSFORA,C.CST CSTFORA,C.CSOSN CSOSNFORA ' +
      ' from PRODUTOS A '+
      ' LEFT OUTER JOIN TBTES B ON (A.OPER_SAIDA_DENTRO=B.ID) '+
      ' LEFT OUTER JOIN TBTES C ON (A.OPER_SAIDA_FORA=C.ID)   '+
      ' WHERE A.IDEMITENTE =' + UniMainModule.CodigoEmitente +
      ' and A.DESCRICAO like '+
      QuotedStr(edProduto.Text+'%'), vdataset);
      strProdutos.RowCount    := 1;
      strProdutos.Cells[0, 0] := 'Codigo';
      strProdutos.Cells[1, 0] := 'Descricao';
      strProdutos.Cells[2, 0] := 'Preco venda';
      strProdutos.Cells[3, 0] := 'ncm';
      strProdutos.Cells[4, 0] := 'Barras';
      strProdutos.BeginUpdate;

      while not vdataset.Eof do
      begin
          vlistaprod.Add(TProdutos.Create);
          vproduto := vlistaprod.Last;
          nindex   := vlistaprod.Count;
          with vproduto do
          begin
            IDPRODUTO          := vdataset.FieldByName('IDPRODUTO').AsInteger;
            CODIGO             := vdataset.FieldByName('CODIGO').AsString;
            EAN                := vdataset.FieldByName('EAN').AsString;
            descricao          := vdataset.FieldByName('DESCRICAO').AsString;
            DESCRICAO_COMPLETA := vdataset.FieldByName('DESCRICAO_COMPLETA').AsString;
            ncm                := vdataset.FieldByName('NCM').AsString;
            cest               := vdataset.FieldByName('CEST').AsString;
            CUSTO              := vdataset.FieldByName('CUSTO').AsFloat;
            PRECO              := vdataset.FieldByName('PRECO').AsFloat;
            UN                 := vdataset.FieldByName('UN').AsString;

            cst        := vdataset.FieldByName('CST').AsString;
            ALIQICMS   := vdataset.FieldByName('ALIQICMS').AsFloat;
            ALIQICMSST := vdataset.FieldByName('ALIQICMSST').AsFloat;
            IPI        := vdataset.FieldByName('ALIQIPI').AsFloat;
            PESOBRUTO  := vdataset.FieldByName('PESOBRUTO').AsFloat;
            PESOLIQ    := vdataset.FieldByName('PESOLIQ').AsFloat;
            cfop       := vdataset.FieldByName('CFOP').AsString;
            csosn      := vdataset.FieldByName('CSOSN').AsString;
            MVA        := vdataset.FieldByName('MVAICMSST').AsFloat;
            origem     := vdataset.FieldByName('ORIGEM').AsInteger;
            CSTIPI     := vdataset.FieldByName('CSTIPI').AsString;
            CSTPIS     := vdataset.FieldByName('CSTPIS').AsString;
            CSTCOFINS  := vdataset.FieldByName('CSTCOFINS').AsString;
            ALIQPIS    := vdataset.FieldByName('ALIQPIS').AsFloat;
            ALIQCOFINS := vdataset.FieldByName('ALIQCOFINS').AsFloat;

            OPER_SAIDA_DENTRO                        := vdataset.FieldByName('OPER_SAIDA_DENTRO').AsInteger;
            OPER_SAIDA_FORA                          := vdataset.FieldByName('OPER_SAIDA_FORA').AsInteger;
            IDEMITENTE                               := vdataset.FieldByName('IDEMITENTE').AsInteger;
            CODIGO_ANP                               := vdataset.FieldByName('CODIGO_ANP').AsString;
            strProdutos.RowCount                     := strProdutos.RowCount + 1;
            strProdutos.Cells[0, vlistaprod.Count]   := CODIGO;
            strProdutos.Cells[1, vlistaprod.Count]   := descricao;
            strProdutos.Cells[2, vlistaprod.Count]   := PRECO.ToString;
            strProdutos.Cells[3, vlistaprod.Count]   := ncm;
            strProdutos.Cells[4, vlistaprod.Count]   := EAN;
            strProdutos.Objects[0, vlistaprod.Count] := vproduto;
          end;
          vdataset.Next;
      end;

      strProdutos.EndUpdate;
end;

procedure TfNFCe.getVendedores;
var
  vdataset: tDataset;
  nindex  : Integer;
  vVendedor: TVendedor;
begin
      UniMainModule.Banco.ExecSQL('select * ' +
        ' from VENDEDORES WHERE IDEMITENTE=' + UniMainModule.CodigoEmitente, vdataset);

      while not vdataset.Eof do
      begin
          vlistaVen.Add(TVendedor.Create);
          vVendedor := vlistaVen.Last;
          nindex   := vlistaVen.Count;
          with vVendedor do
          begin
               ID                               := vdataset.FieldByName('ID').AsInteger;
               Login                            := vdataset.FieldByName('Login').AsString;
               Nome_Venda                       := vdataset.FieldByName('Nome_Venda').AsString;
               Comissao                         := vdataset.FieldByName('Comissao').AsFloat;
               IDEMITENTE                       := vdataset.FieldByName('idemitente').AsInteger;
            cmbVendedor.Items.AddObject(Nome_Venda, vVendedor);
          end;
          vdataset.Next;
      end;
end;

procedure TfNFCe.getclientes;
var
  vdataset: tDataset;
  nindex  : Integer;
  vcliente: TCliente;
begin
    UniMainModule.Banco.ExecSQL('select IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,NOMEFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO' +
      ' ,NRO,COMPLEMENTO,BAIRRO,CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,CONSUMIDORFINAL,IDEMITENTE,REGIMECLIENTE' +
      ' from CLIENTES WHERE IDEMITENTE=' + UniMainModule.CodigoEmitente, vdataset);
    stgClientes.RowCount    := 1;
    stgClientes.Cells[0, 0] := 'Codigo';
    stgClientes.Cells[1, 0] := 'Nome';
    stgClientes.Cells[2, 0] := 'Cpf/cnpj';
    stgClientes.Cells[3, 0] := 'Telefone';
    stgClientes.Cells[4, 0] := 'Bairro';
    stgClientes.BeginUpdate;

    while not vdataset.Eof do
    begin
        vlistacli.Add(TCliente.Create);
        vcliente := vlistacli.Last;
        nindex   := vlistacli.Count;
        with vcliente do
        begin
            IDCLIENTE                               := vdataset.FieldByName('idcliente').AsInteger;
            tipopessoa                              := vdataset.FieldByName('TIPOPESSOA').AsString;
            tipoRegime                              := vdataset.FieldByName('REGIMECLIENTE').AsString;
            razaosocial                             := vdataset.FieldByName('RAZAOSOCIAL').AsString;
            nomefantasia                            := vdataset.FieldByName('NOMEFANTASIA').AsString;
            rg_ie                                   := vdataset.FieldByName('RG_IE').AsString;
            cpf_cnpj                                := vdataset.FieldByName('CPF_CNPJ').AsString;
            fone                                    := vdataset.FieldByName('FONE').AsString;
            fax                                     := vdataset.FieldByName('FAX').AsString;
            endereco                                := vdataset.FieldByName('ENDERECO').AsString;
            nro                                     := vdataset.FieldByName('ENDERECO').AsString;
            complemento                             := vdataset.FieldByName('complemento').AsString;
            bairro                                  := vdataset.FieldByName('bairro').AsString;
            cidade                                  := vdataset.FieldByName('cidade').AsString;
            codmunicipio                            := vdataset.FieldByName('CODMUNICIPIO').AsString;
            uf                                      := vdataset.FieldByName('uf').AsString;
            cep                                     := vdataset.FieldByName('cep').AsString;
            observacao                              := vdataset.FieldByName('observacao').AsString;
            CONSUMIDORFINAL                         := vdataset.FieldByName('CONSUMIDORFINAL').AsString;
            IDEMITENTE                              := vdataset.FieldByName('idemitente').AsInteger;
            stgClientes.RowCount                    := stgClientes.RowCount + 1;
            stgClientes.Cells[0, vlistacli.Count]   := IDCLIENTE.ToString;
            stgClientes.Cells[1, vlistacli.Count]   := razaosocial;
            stgClientes.Cells[2, vlistacli.Count]   := cpf_cnpj;
            stgClientes.Cells[3, vlistacli.Count]   := fone;
            stgClientes.Cells[4, vlistacli.Count]   := bairro;
            stgClientes.Objects[0, vlistacli.Count] := vcliente;
            cmbClientes.Items.AddObject(razaosocial+' - '+cpf_cnpj, vcliente);
        end;
        vdataset.Next;
    end;
    stgClientes.EndUpdate;
end;

procedure TfNFCe.cmbClientesExit(Sender: TObject);
var uf     : string;
  vcliente : TCliente;
begin
     if cmbClientes.Text <> '' then
     begin
         vcliente        := cmbClientes.Items.Objects[cmbClientes.ItemIndex] as TCliente;
         vTipoPessoa     := vcliente.tipopessoa;
         vRegimeCliente  := vcliente.tipoRegime;
         edRegimeCliente.Text := vcliente.tipoRegime;

         if UniMainModule.TRdata^.xmodelo = 65 then
         begin
             iF (((vcliente.razaosocial) <> '') and ((vcliente.cpf_cnpj) <> '')) then
             begin
                  dblCliente.Text := vcliente.razaosocial;
                  eCPF.Text       := UniMainModule.soNumero( vcliente.cpf_cnpj );
             end;
         end
         else
         begin
             iF (vcliente.uf) = (UniMainModule.qEmitenteUF.Text) THEN
             begin
                  if Copy(LookCFOP.Text,1,4) = '6904' then
                  begin

                  end
                  else
                  if Copy(LookCFOP.Text,1,1) = '6' then
                  begin
                       if cmbTipoDoc.ItemIndex = 1 then
                          SHowMessage(
                          'Cfop informado é para venda fora do estado e cliente '+
                          'possui a mesma UF do Emitente!');

                       pgVendas.ActivePage := tsSelDadosNF;
                       LookCFOP.SetFocus;
                  end;
             end;

             iF (vcliente.uf) <> (UniMainModule.qEmitenteUF.Text) THEN
             begin
                  if Copy(LookCFOP.Text,1,1) = '5' then
                  begin
                       if cmbTipoDoc.ItemIndex = 1 then
                          SHowMessage(
                          'Cfop informado é para venda dentro do estado e cliente '+
                          'possui UF diferente do Emitente!');

                       pgVendas.ActivePage := tsSelDadosNF;
                       LookCFOP.SetFocus;
                  end;
             end;
         end;
     end;
end;

procedure TfNFCe.cmbFinalidadeChange(Sender: TObject);
begin
    if (cmbFinalidade.ItemIndex = 1) or (cmbFinalidade.ItemIndex = 3) then
    begin
        edComplementar.Visible  := true;
        edComplementar2.Visible := true;
        edComplementar3.Visible := true;
        edComplementar4.Visible := true;
        edComplementar5.Visible := true;
        edComplementar6.Visible := true;
    end
    else
    begin
        edComplementar.Visible  := false;
        edComplementar2.Visible := false;
        edComplementar3.Visible := false;
        edComplementar4.Visible := false;
        edComplementar5.Visible := false;
        edComplementar6.Visible := false;
    end;

    if cmbFinalidade.ItemIndex = 3 then
    begin
         sbAprazo.visible       := false;
         sbDinheiro.visible     := false;
         sbCredito.visible      := false;
         sbDebito.visible       := false;
         sbCheque.visible       := false;
         sbTEF.visible          := false;
         sbSemPagamento.visible := true;
    end
    else
    begin
         sbAprazo.visible       := true;
         sbDinheiro.visible     := true;
         sbCredito.visible      := true;
         sbDebito.visible       := true;
         sbCheque.visible       := true;
         sbTEF.visible          := true;
         sbSemPagamento.visible := false;
    end;

  //  edComplementar.Text         := '';
end;

procedure TfNFCe.cmbFreteChange(Sender: TObject);
begin
    edFrete.Value            := 0;
    edSeguro.Value           := 0;
    vlistavenda.VALOR_FRETE  := 0;
    vlistavenda.VALOR_SEGURO := 0;
    edTotalNF.Value          := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_FRETE + vlistavenda.VALOR_SEGURO +
      vlistavenda.VALOR_OUTRAS_DESP + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;
    eTotalParcs.Value := edTotalNF.Value;
    eRestante.Value   := eTotalParcs.Value;
    Limpaparcelas;

    if cmbFrete.ItemIndex = 0 then
    begin
        edFrete.Enabled        := false;
        edSeguro.Enabled       := false;
        lookTransp.Enabled     := false;
        edPlacaveic.Enabled    := false;
        UniComboBox2.Enabled   := false;
        edANTT.Enabled         := false;
        UniComboBox2.ItemIndex := 0;
        edPlacaveic.Text       := '';
        lookTransp.ItemIndex   := -1;
        edANTT.Text            := '';

        edVolumes.Value  := 0;
        edEspecie.Text   := '';
        edMarca.Text     := '';
        edNumero.Text    := '';
        edPesoBrut.Value := 0;
        edPesoLiq.Value  := 0;
    end;

    if (cmbFrete.ItemIndex = 1) or (cmbFrete.ItemIndex = 2) then
    begin
        edFrete.Enabled      := true;
        edSeguro.Enabled     := true;
        lookTransp.Enabled   := true;
        edPlacaveic.Enabled  := true;
        UniComboBox2.Enabled := true;
        edANTT.Enabled       := true;

        UniComboBox2.ItemIndex := 0;
        edPlacaveic.Text       := '';
        lookTransp.ItemIndex   := -1;
        edANTT.Text            := '';
    end;
end;

procedure TfNFCe.cmbProdutosChange(Sender: TObject);
var
  vproduto : TProdutos;
  vcliente : TCliente;
  vTipoRegimeCliente : Extended;
begin
    try
        if UniMainModule.TRdata^.xmodelo = 55 then
        begin
            if cmbClientes.Text = '' then
            begin
                SHowMessage('Primeiro selecione o cliente');
                cmbProdutos.ItemIndex := -1;
                exit;
            end;
        end;

        if cmbProdutos.Text <> '' then
        begin
            vproduto     := cmbProdutos.Items.Objects[cmbProdutos.ItemIndex] as TProdutos;

            eCodigo.Text := vproduto.CODIGO;
            eValor.Text  := vproduto.PRECO.ToString;
            edTotal.Text := floattostr(eQuant.Value * string(eValor.Text).Trim.ToExtended);

            if UniMainModule.TRdata^.xmodelo = 55 then
                edCfop.Text  := IIf(UniMainModule.TRdata^.xcfop='',vproduto.cfop,UniMainModule.TRdata^.xcfop)
            else
                edCfop.Text  := vproduto.cfop;

            edCsosn.Text     := vproduto.csosn;
            edCST.Text       := vproduto.cst;
            edCest.Text      := vproduto.cest;
            edNCM.Text       := vproduto.ncm;


            if vproduto.csosn = '201' then
            begin
                if vRegimeCliente = 'SIMPLES NACIONAL' then
                begin
                   vTipoRegimeCliente  := 7.5;
                   edAliqIcms.value    := 7.5;
                   edAliqIcmsST.value  := 7.5;
                end
                else if vRegimeCliente = 'REGIME NORMAL' then
                begin
                   vTipoRegimeCliente  := 15;
                   edAliqIcms.value    := 15;
                   edAliqIcmsST.value  := 15;
                end
                else
                begin
                   vTipoRegimeCliente  := 0;
                   edAliqIcms.value    := vproduto.ALIQICMS;
                   edAliqIcmsST.value  := vproduto.ALIQICMSST;
                end;
            end
            else
            begin
                edAliqIcms.value    := vproduto.ALIQICMS;
                edAliqIcmsST.value  := vproduto.ALIQICMSST;
            end;

            edRBaseIcms.value   := vproduto.PREDICMS;
            edRbaseIcmsSt.value := vproduto.PREDICMSST;
            edMVA.value         := vproduto.MVA;
        end;
    except

    end;
end;

procedure TfNFCe.cmbTipoDocChange(Sender: TObject);
begin
    if cmbTipoDoc.ItemIndex = 0 then
    begin
        with UniMainModule.qCFOP do
        begin
            close;
            sql.Clear;
            sql.Add('select * from CFOP');
            sql.Add('where tipo = 1');
            open;
        end;
    end;

    if cmbTipoDoc.ItemIndex = 1 then
    begin
        with UniMainModule.qCFOP do
        begin
            close;
            sql.Clear;
            sql.Add('select * from CFOP');
            sql.Add('where tipo = 2');
            open;
        end;
    end;
end;

procedure TfNFCe.cmbVendedorExit(Sender: TObject);
var
  vVendedor : TVendedor;
begin
     if cmbVendedor.Text <> '' then
     begin
         vVendedor := cmbVendedor.Items.Objects[cmbVendedor.ItemIndex] as TVendedor;
     end;
end;

procedure TfNFCe.CriaQrCode;
begin

end;

procedure TfNFCe.eCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  vItem   : TProdutos;
  i       : Integer;
  vdataset: tDataset;
begin
    if Key = VK_RETURN then
    begin
        if string(eCodigo.Text).Trim <> '' then
        begin
            if UniMainModule.TRdata^.xmodelo = 55 then
            begin
                if cmbClientes.Text = '' then
                begin
                    SHowMessage('Primeiro selecione o cliente');
                    cmbProdutos.ItemIndex := -1;
                    eCodigo.Text := '';
                    eCodigo.SetFocus;
                    exit;
                end;
            end;

            if string(eCodigo.Text).Trim.Length >= 8 then
            begin
                for vItem in (vlistaprod.Pesquisar(eCodigo.Text, 'B')) do
                begin
                    if (cmbProdutos.Items.IndexOfObject(vItem)) >= 0 then
                    begin
                        cmbProdutos.ItemIndex := cmbProdutos.Items.IndexOfObject(vItem);
                        eValor.Value          := vItem.PRECO;
                        edTotal.Value         := vItem.PRECO * eQuant.Value;

                        if UniMainModule.TRdata^.xmodelo = 55 then
                          edCfop.Text  := IIf(UniMainModule.TRdata^.xcfop='',vItem.cfop,UniMainModule.TRdata^.xcfop)
                        else
                          edCfop.Text  := vItem.cfop;

                        edCsosn.Text          := vItem.csosn;
                        edCST.Text            := vItem.cst;
                        edCest.Text           := vItem.cest;
                        edNCM.Text            := vItem.ncm;
                        UniSpeedButton1.Click;
                        eCodigo.SetFocus;
                    end
                    else
                        LimparControles;
                end;
            end;

            if string(eCodigo.Text).Trim.Length < 8 then
            begin
                for vItem in (vlistaprod.Pesquisar(eCodigo.Text, 'C')) do
                begin
                    if cmbProdutos.Items.IndexOfObject(vItem) >= 0 then
                    begin
                        cmbProdutos.ItemIndex := cmbProdutos.Items.IndexOfObject(vItem);
                        eValor.Value          := vItem.PRECO;
                        edTotal.Value         := vItem.PRECO * eQuant.Value;

                        if UniMainModule.TRdata^.xmodelo = 55 then
                          edCfop.Text  := IIf(UniMainModule.TRdata^.xcfop='',vItem.cfop,UniMainModule.TRdata^.xcfop)
                        else
                          edCfop.Text  := vItem.cfop;

                        edCsosn.Text          := vItem.csosn;
                        edCST.Text            := vItem.cst;
                        edCest.Text           := vItem.cest;
                        edNCM.Text            := vItem.ncm;
                    end
                    else
                      LimparControles;
                end;
            end;
        end;
    end;
end;

procedure TfNFCe.edAcrescimoChange(Sender: TObject);
begin
     if edAcrescimo.Value > 0 then
         ePercAcrescimo.value := (edAcrescimo.value / edSubTotal.value) * 100
     else
         ePercAcrescimo.value := 0;

     if (Assigned(vlistavenda)) then
     begin
          vlistavenda.VALOR_ACRESCIMO := edAcrescimo.Value;
          edFrete.Value               := vlistavenda.VALOR_FRETE;
          edSeguro.Value              := vlistavenda.VALOR_SEGURO;
          edOutros.Value              := vlistavenda.VALOR_OUTRAS_DESP;
          edSubTotal.Value            := vlistavenda.VALOR_FINAL;
          edDesconto.Value            := vlistavenda.VALOR_DESCONTO;
          edTotalNF.Value             := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_FRETE + vlistavenda.VALOR_SEGURO +
          vlistavenda.VALOR_OUTRAS_DESP + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;
     end
     else
         edAcrescimo.Value := 0;
end;

procedure TfNFCe.edAcrescimoExit(Sender: TObject);
begin
     if edAcrescimo.Value < 0 then
        edAcrescimo.Value := 0;

     CalculaEdits;
end;

procedure TfNFCe.edCsosnChange(Sender: TObject);
begin
     if edCsosn.Text = '102' then
         pImpostosICMS.Enabled := false
     else
         pImpostosICMS.Enabled := true;
end;

procedure TfNFCe.edCsosnExit(Sender: TObject);
begin
     ValidaCsosn;
end;

procedure TfNFCe.edDescontoChange(Sender: TObject);
begin
      if edDesconto.Value > 0 then
         ePercDesconto.value := (edDesconto.value / edSubTotal.value) * 100
      else
         ePercDesconto.value := 0;

      if (Assigned(vlistavenda)) then
      begin
          vlistavenda.VALOR_DESCONTO := edDesconto.Value;
          edFrete.Value              := vlistavenda.VALOR_FRETE;
          edSeguro.Value             := vlistavenda.VALOR_SEGURO;
          edOutros.Value             := vlistavenda.VALOR_OUTRAS_DESP;
          edSubTotal.Value           := vlistavenda.VALOR_FINAL;
          edAcrescimo.Value          := vlistavenda.VALOR_ACRESCIMO;
          edTotalNF.Value            := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_FRETE + vlistavenda.VALOR_SEGURO +
          vlistavenda.VALOR_OUTRAS_DESP + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;
      end
      else
          edDesconto.Value := 0;
end;

procedure TfNFCe.edDescontoExit(Sender: TObject);
begin
    if edDesconto.Value < 0 then
       edDesconto.Value := 0;

    CalculaEdits;
end;

procedure TfNFCe.edFreteChange(Sender: TObject);
begin
    if edFrete.Value < 0 then
       edFrete.Value := 0;
    if (Assigned(vlistavenda)) then
    begin
        vlistavenda.VALOR_FRETE := edFrete.Value;
        edSubTotal.Value        := vlistavenda.VALOR_FINAL;
        edSeguro.Value          := vlistavenda.VALOR_SEGURO;
        edOutros.Value          := vlistavenda.VALOR_OUTRAS_DESP;
        edAcrescimo.Value       := vlistavenda.VALOR_ACRESCIMO;
        edDesconto.Value        := vlistavenda.VALOR_DESCONTO;
        edTotalNF.Value         := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_FRETE + vlistavenda.VALOR_SEGURO +
          vlistavenda.VALOR_OUTRAS_DESP + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;
        eTotalParcs.Value := edTotalNF.Value;
        eRestante.Value   := eTotalParcs.Value;
        Limpaparcelas;
    end
    else
      edFrete.Value := 0;
end;

procedure TfNFCe.edOutrosChange(Sender: TObject);
begin
    if edOutros.Value < 0 then
       edOutros.Value := 0;

    if (Assigned(vlistavenda)) then
    begin
        vlistavenda.VALOR_OUTRAS_DESP := edOutros.Value;
        edSubTotal.Value              := vlistavenda.VALOR_FINAL;
        edFrete.Value                 := vlistavenda.VALOR_FRETE;
        edSeguro.Value                := vlistavenda.VALOR_SEGURO;
        edAcrescimo.Value             := vlistavenda.VALOR_ACRESCIMO;
        edDesconto.Value              := vlistavenda.VALOR_DESCONTO;
        edTotalNF.Value               := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_FRETE + vlistavenda.VALOR_SEGURO +
        vlistavenda.VALOR_OUTRAS_DESP + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;
    end
    else
      edOutros.Value := 0;
end;

procedure TfNFCe.edSeguroChange(Sender: TObject);
begin
    if edSeguro.Value < 0 then
       edSeguro.Value := 0;

    if (Assigned(vlistavenda)) then
    begin
        vlistavenda.VALOR_SEGURO := edSeguro.Value;
        edSubTotal.Value         := vlistavenda.VALOR_FINAL;
        edFrete.Value            := vlistavenda.VALOR_FRETE;
        edOutros.Value           := vlistavenda.VALOR_OUTRAS_DESP;
        edAcrescimo.Value        := vlistavenda.VALOR_ACRESCIMO;
        edDesconto.Value         := vlistavenda.VALOR_DESCONTO;
        edTotalNF.Value          := vlistavenda.VALOR_FINAL + vlistavenda.VALOR_FRETE + vlistavenda.VALOR_SEGURO +
          vlistavenda.VALOR_OUTRAS_DESP + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;
        eTotalParcs.Value := edTotalNF.Value;
        eRestante.Value   := eTotalParcs.Value;
        Limpaparcelas;
    end
    else
        edSeguro.Value := 0;
end;

procedure TfNFCe.edSubTotalExit(Sender: TObject);
begin
  CalculaEdits;
end;

procedure TfNFCe.edTotalNFExit(Sender: TObject);
begin
  CalculaEdits;
end;

procedure TfNFCe.ePercDescontoChange(Sender: TObject);
begin
     if ePercDesconto.Value > 0 then
         edDesconto.value := (edSubTotal.value * ePercDesconto.value)/100
     else
         edDesconto.value := 0;
end;

procedure TfNFCe.ePercDescontoExit(Sender: TObject);
begin
     if ePercDesconto.Value < 0 then
        ePercDesconto.Value := 0;

     CalculaEdits;
end;

procedure TfNFCe.eValorChange(Sender: TObject);
begin
     edTotal.Value := IfThen(eValor.Value <> 0, eQuant.Value * eValor.Value, 0);
end;



end.
