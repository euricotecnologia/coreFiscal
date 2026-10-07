unit uNfceM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniMultiItem, unimSelect, uniLabel, unimLabel,
  uniPanel, uniPageControl, unimTabPanel, uniGUIBaseClasses, uniEdit,
  pcnConversaoNFe, ACBrNFeDANFEFR,

  pcnConversao, ACBrUtil, system.math, acbrValidador, system.JSON,WideStrUtils,
  clsVendas, clsVendasItens, clsClientes, clsProdutos, Data.DB, clsFormasNotas,


  unimEdit, uniBasicGrid, uniDBGrid, unimDBListGrid, unimList,
  Vcl.Imaging.pngimage, uniImage, unimImage, uniURLFrame, unimURLFrame,
  uniToolBar, unimToolbar, unimPanel, uniDateTimePicker,
  unimDatePicker, uniTimer, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, unimTimer;

type
  TOperacaoNFe = (opInclusao, opAlteracao, opExclusao);

  TFNfceM = class(TUnimForm)
    pgVendas: TUnimTabPanel;
    tsVendas: TUnimTabSheet;
    tsProdutos: TUnimTabSheet;
    tsClientes: TUnimTabSheet;
    tsFormas: TUnimTabSheet;
    stgClientes: TUnimList;
    UnimImage1: TUnimImage;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimContainerPanel7: TUnimContainerPanel;
    UnimContainerPanel9: TUnimContainerPanel;
    UnimLabel4: TUnimLabel;
    edTotal: TUnimNumberEdit;
    UnimContainerPanel8: TUnimContainerPanel;
    UnimLabel3: TUnimLabel;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
    cmbProdutos: TUnimEdit;
    UnimImage2: TUnimImage;
    UnimImage3: TUnimImage;
    imgFinalizar: TUnimImage;
    UnimImage5: TUnimImage;
    UnimImage6: TUnimImage;
    stgParcelas: TUnimList;
    tsPdf: TUnimTabSheet;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    UnimPDFFrame1: TUnimPDFFrame;
    bEmail: TUnimButton;
    UnimToolBar2: TUnimToolBar;
    UnimToolButton2: TUnimToolButton;
    t3: TUnimToolBar;
    UnimContainerPanel13: TUnimContainerPanel;
    UnimLabel8: TUnimLabel;
    eRestante: TUnimNumberEdit;
    UnimContainerPanel12: TUnimContainerPanel;
    UnimLabel7: TUnimLabel;
    eTroco: TUnimNumberEdit;
    t2: TUnimToolBar;
    UnimContainerPanel19: TUnimContainerPanel;
    UnimLabel10: TUnimLabel;
    eTotalParcs: TUnimNumberEdit;
    UnimContainerPanel20: TUnimContainerPanel;
    UnimLabel12: TUnimLabel;
    eValorPago: TUnimNumberEdit;
    pCliente: TUnimToolBar;
    t1: TUnimToolBar;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimButton7: TUnimButton;
    UnimButton8: TUnimButton;
    UnimButton9: TUnimButton;
    UnimButton10: TUnimButton;
    t0: TUnimToolBar;
    UnimContainerPanel6: TUnimContainerPanel;
    UnimContainerPanel10: TUnimContainerPanel;
    UnimLabel11: TUnimLabel;
    eValorparcela: TUnimNumberEdit;
    UnimButton6: TUnimButton;
    UnimToolBar4: TUnimToolBar;
    UnimLabel5: TUnimLabel;
    UnimContainerPanel11: TUnimContainerPanel;
    UnimButton5: TUnimButton;
    cmbClientes: TUnimEdit;
    imgFaturar: TUnimImage;
    UnimImage8: TUnimImage;
    UnimContainerPanel14: TUnimContainerPanel;
    UnimLabel6: TUnimLabel;
    eValor: TUnimNumberEdit;
    eCodigo: TUnimEdit;
    StringGrid1: TUnimList;
    UnimToolBar3: TUnimToolBar;
    UnimContainerPanel15: TUnimContainerPanel;
    UnimLabel9: TUnimLabel;
    edAcrescimo: TUnimNumberEdit;
    UnimContainerPanel16: TUnimContainerPanel;
    UnimLabel13: TUnimLabel;
    UnimContainerPanel17: TUnimContainerPanel;
    UnimLabel14: TUnimLabel;
    edDesconto: TUnimNumberEdit;
    UnimContainerPanel18: TUnimContainerPanel;
    UnimLabel15: TUnimLabel;
    UnimButton11: TUnimButton;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    eCpfCliente: TUnimEdit;
    UnimContainerPanel21: TUnimContainerPanel;
    UnimLabel16: TUnimLabel;
    eNomeCliente: TUnimEdit;
    edSubTotal: TUnimEdit;
    tsDadosNF: TUnimTabSheet;
    UnimLabel17: TUnimLabel;
    UnimLabel21: TUnimLabel;
    dtEmissao: TUnimDatePicker;
    UnimContainerPanel22: TUnimContainerPanel;
    UnimLabel18: TUnimLabel;
    cmbFinalidade: TUnimSelect;
    UnimContainerPanel23: TUnimContainerPanel;
    UnimLabel19: TUnimLabel;
    cmbTipoDoc: TUnimSelect;
    UnimContainerPanel24: TUnimContainerPanel;
    UnimLabel20: TUnimLabel;
    LookCFOP: TUnimSelect;
    cComplementar: TUnimContainerPanel;
    UnimLabel22: TUnimLabel;
    edComplementar: TUnimEdit;
    UnimToolBar6: TUnimToolBar;
    UnimToolButton3: TUnimToolButton;
    edTotalNf: TUnimEdit;
    bWhats: TUnimButton;
    UnimButton2: TUnimButton;
    UnimContainerPanel25: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    eFiltro: TUnimSelect;
    t4: TUnimToolBar;
    UnimButton12: TUnimButton;
    tsTef: TUnimTabSheet;
    UnimToolBar7: TUnimToolBar;
    UnimToolButton4: TUnimToolButton;
    UnimButton13: TUnimButton;
    UnimButton14: TUnimButton;
    lStatusTEF: TUnimLabel;
    UnimToolBar8: TUnimToolBar;
    UnimContainerPanel28: TUnimContainerPanel;
    UnimButton15: TUnimButton;
    UnimContainerPanel29: TUnimContainerPanel;
    UnimButton17: TUnimButton;
    eLinkPagamento: TUnimEdit;
    CheckProgressTimer: TUnimTimer;
    UnimToolBar9: TUnimToolBar;
    UnimContainerPanel27: TUnimContainerPanel;
    UnimLabel24: TUnimLabel;
    eTipoPgto: TUnimSelect;
    UnimContainerPanel30: TUnimContainerPanel;
    UnimLabel23: TUnimLabel;
    eQtdParcelas: TUnimNumberEdit;
    UnimButton16: TUnimButton;
    UnimButton18: TUnimButton;
    UnimToolBar10: TUnimToolBar;
    UnimToolButton5: TUnimToolButton;
    strProdutos: TUnimList;
    UnimContainerPanel26: TUnimContainerPanel;
    eQuant: TUnimNumberEdit;
    UnimContainerPanel31: TUnimContainerPanel;
    UnimImage4: TUnimImage;
    UnimContainerPanel32: TUnimContainerPanel;
    UnimTabSheet1: TUnimTabSheet;
    edAliqIcms: TUnimNumberEdit;
    edAliqIcmsST: TUnimNumberEdit;
    edRBaseIcms: TUnimNumberEdit;
    edRbaseIcmsSt: TUnimNumberEdit;
    edMVA: TUnimNumberEdit;
    procedure UnimFormCreate(Sender: TObject);
    procedure strProdutosClick(Sender: TObject);
    procedure UnimImage1Click(Sender: TObject);
    procedure UnimImage3Click(Sender: TObject);
    procedure imgFinalizarClick(Sender: TObject);
    procedure UnimImage2Click(Sender: TObject);
    procedure UnimImage5Click(Sender: TObject);
    procedure UnimImage6Click(Sender: TObject);
    procedure UnimButton5Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimToolButton2Click(Sender: TObject);
    procedure UnimButton6Click(Sender: TObject);
    procedure UnimButton8Click(Sender: TObject);
    procedure UnimButton7Click(Sender: TObject);
    procedure UnimButton9Click(Sender: TObject);
    procedure UnimButton10Click(Sender: TObject);
    procedure imgFaturarClick(Sender: TObject);
    procedure UnimToolButton1Click(Sender: TObject);
    procedure bEmailClick(Sender: TObject);
    procedure UnimImage8Click(Sender: TObject);
    procedure StringGrid1Swipe(Sender: TObject);
    procedure UnimButton11Click(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimImage4Click(Sender: TObject);
    procedure stgClientesClick(Sender: TObject);
    procedure cmbFinalidadeChange(Sender: TObject);
    procedure bWhatsClick(Sender: TObject);
    procedure cmbProdutosAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UnimFormShow(Sender: TObject);
    procedure UnimButton12Click(Sender: TObject);
    procedure UnimToolButton4Click(Sender: TObject);
    procedure UnimTimer1Timer(Sender: TObject);
    procedure UnimButton18Click(Sender: TObject);
    procedure UnimButton16Click(Sender: TObject);
    procedure UnimFormReady(Sender: TObject);

  private

    WorkerThread: TThread;

    vlistacli  : TlistaClientes;
    vlistaprod : tlistaprodutos;
    vlistavenda: TNotasCab;

    vTipoPessoa,vRegimeCliente : String;

    procedure getclientes;
    procedure getProdutos;
    procedure Limpaparcelas;
    procedure LimparControles;
    procedure CalculaEdits;
    procedure addforma(const ptipo, pforma,ptoken,pidintencao,pnomeIntencaoStatus,pidTerminal,pComprovanteStab: string);
    procedure reconstruirlista;
    procedure reconstruirparcelas;
    procedure filtrarProdutos(filtro:string);
    procedure CriaQrCode;
    procedure ExecutaTimerTEF;
    procedure AguardaVenda;
    procedure ParaTimerTEF;
    procedure Faturar;

    function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;

    function FindCol(c: Integer; sFind: string): Integer;
  public
    OperacaoNFe                                       : TOperacaoNFe;
    SimplesNacional                                   : Boolean;
    AliqSN, CredICMSAcum                              : Currency;
    MSG01, NomeXML, NomePDF, ArquivoPDF, FFolder, FUrl: string;
    PDfFile                                           : string;
    parcelaFormaPgto                                  : integer;

    procedure PDF;
    procedure ImprimeCartao(texto :String);
  end;

function FNfceM: TFNfceM;

/// UnimPDFFrame1.PdfURL := UniServerModule.FilesFolderURL+ PDfFile;  carregar o PDF

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uListaProutos, uEnviarEmailM, MQRCode, uWhatsAppm,
  ServerModule;

function FNfceM: TFNfceM;
begin
  Result := TFNfceM(UniMainModule.GetFormInstance(TFNfceM));
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

function TFNfceM.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
begin
  if Expressao then
    Result := ParteTRUE
  else
    Result := ParteFALSE;
end;

procedure TWorker.Execute;
var
  Index: Integer;
begin
    inherited;
    for Index := 0 to 100 do
    begin
        if Terminated then Break;
        Position := Index;
        Sleep(1000);
    end;
end;

procedure TFNfceM.addforma(const ptipo, pforma,ptoken,
pidintencao,pnomeIntencaoStatus,pidTerminal,pComprovanteStab: string);
var
  tIndex, vqtditens: integer;
begin
    if eValorparcela.Value <= 0 then
    begin
        ShowMessage('Falta informar o valor da parcela');
        exit;
    end;

    if eValorPago.Value >= eTotalParcs.Value then
    begin
        ShowMessage('Total da fatura ja foi parcelado');
        eValorparcela.Value := 0;
        exit;
    end;

    inc(parcelaFormaPgto);

    vlistavenda.formasNF.Add(TFormasNF.Create);
    tIndex    := parcelaFormaPgto; // stgParcelas.RowCount + 1;
    vqtditens := vlistavenda.formasNF.Count;
    stgParcelas.BeginUpdate;

    with vlistavenda.formasNF.Last do
    begin
        parcela    := tIndex;
        emissao    := vlistavenda.DTEMISSAO;

        ////////   PayGo - Cartão de Crédito  ////
        token              := ptoken;
        idIntencao         := pidintencao;
        idTerminal         := pidTerminal;
        ComprovanteEstab   := pComprovanteStab;
        nomeIntencaoStatus := pnomeIntencaoStatus;
        //////////////////////////////////////////

        vencimento := IfThen(ptipo = '01', vlistavenda.DTEMISSAO, vlistavenda.DTEMISSAO + 30);
        valor      := IfThen(eValorparcela.Value <= eTotalParcs.Value, eValorparcela.Value,
          eTotalParcs.Value - eValorPago.Value);
        tipo_fatura := ptipo;
        stgParcelas.Items.AddObject('Vcto: ' + DateToStr(vencimento) + '<br>' + 'Valor: ' +
          valor.ToString(TFloatFormat.ffCurrency, 10, 2) + '        Forma Pgto: ' + pforma, vlistavenda.formasNF.Last);
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


procedure TFNfceM.AguardaVenda;
begin

end;

procedure TFNfceM.bEmailClick(Sender: TObject);
begin
     fEnviarEmailM.showModal;
end;

procedure TFNfceM.bWhatsClick(Sender: TObject);
begin
     fwhatsAppm.showmodal;
end;

procedure TFNfceM.CalculaEdits;
begin

end;

procedure TFNfceM.cmbFinalidadeChange(Sender: TObject);
begin
    if (cmbFinalidade.ItemIndex = 1) or (cmbFinalidade.ItemIndex = 3) then
      cComplementar.Visible := true
    else
      cComplementar.Visible := false;
    edComplementar.Text      := '';
end;

procedure TFNfceM.cmbProdutosAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
    if EventName = 'BAR' then
    begin
         cmbProdutos.Text := Params['value'].value;

         if cmbProdutos.Text <> '' then
            filtrarProdutos('C');
    end;
end;

procedure TFNfceM.CriaQrCode;
begin

end;

procedure TFNfceM.ExecutaTimerTEF;
begin
     CheckProgressTimer.Enabled := True;
end;

procedure TFNfceM.Faturar;
begin
    if eRestante.Value > 0 then
    begin
        ShowMessage( 'Valor total ainda não foi totalmente Parcelado');
        exit;
    end;

    if eCpfCliente.text <> '' then
    begin
        if Length(eCpfCliente.text) = 11 then
        begin
            unimainmodule.docValidador.TipoDocto := docCPF;
            unimainmodule.docValidador.Documento := eCpfCliente.Text;
            if not unimainmodule.docValidador.validar then
            begin
              ShowMessage('O CPF Informado é Inválido!');
              eCpfCliente.Setfocus;
              Abort;
            end;
        end
        else
        begin
            unimainmodule.docValidador.TipoDocto := docCNPJ;
            unimainmodule.docValidador.Documento := eCpfCliente.Text;
            if not unimainmodule.docValidador.validar then
            begin
              ShowMessage('O CNPJ Informado é Inválido!');
              eCpfCliente.Setfocus;
              Abort;
            end;
        end;
    end;

    try
        try
            vlistavenda.TOTAL_PRODUTOS    := StrToFloat(edSubTotal.text);
            vlistavenda.TOTAL_NOTA        := StrToFloat( edTotalNF.text);
            vlistavenda.VALOR_DESCONTO    := edDesconto.Value;
            vlistavenda.VALOR_ACRESCIMO   := edAcrescimo.Value;
            vlistavenda.VALOR_FRETE       := 0;
            vlistavenda.VALOR_SEGURO      := 0;
            vlistavenda.VALOR_OUTRAS_DESP := 0;
            vlistavenda.DADOS_ADICIONAIS  := '';
            vlistavenda.TIPOFRETE         := 0;
            vListaVenda.CPF_CONSUMIDOR    := eCpfCliente.Text;
            vListaVenda.NOME_CONSUMIDOR   := eNomeCliente.Text;

            UniMainModule.posVenda        := 'S';
            UniMainModule.mobile          := 'S';

            vlistavenda.Salvar;
            vlistavenda.AdicionaNotaNoComponente;
        finally
            if Assigned(vlistavenda) then
            begin
              FreeAndNil(vlistavenda);
            end;
            StringGrid1.Items.Clear;
            stgParcelas.Items.Clear;
            etotalparcs.Value   := 0;
            evalorparcela.Value := 0;
            erestante.Value     := 0;
            evalorpago.Value    := 0;
            etroco.Value        := 0;
            edSubTotal.text     := '0,00';
            edDesconto.Value    := 0;
            edAcrescimo.Value   := 0;
            edTotalNF.text      := '0,00';
            LimparControles;
        end;
    except
        if Assigned(vlistavenda) then
        begin
          FreeAndNil(vlistavenda);
        end;
        StringGrid1.Items.Clear;
        stgParcelas.Items.Clear;
        etotalparcs.Value   := 0;
        evalorparcela.Value := 0;
        erestante.Value     := 0;
        evalorpago.Value    := 0;
        etroco.Value        := 0;
        edSubTotal.text     := '0,00';
        edDesconto.Value    := 0;
        edAcrescimo.Value   := 0;
        edTotalNF.text      := '0,00';
        LimparControles;
        pgVendas.ActivePage := tsVendas;
    end;
end;

procedure TFNfceM.filtrarProdutos(filtro: string);
var
  vdataset     : tDataset;
  nindex, ncont: integer;
  vproduto     : TProdutos;
  sql, filtroSql  : String;
begin
    try
        sql := 'select A.IDPRODUTO,A.DESCRICAO_COMPLETA,A.CODIGO,A.EAN,A.DESCRICAO,A.NCM,A.CEST,A.CUSTO,A.PRECO,A.UN,A.OPER_SAIDA_DENTRO,A.OPER_SAIDA_FORA '
        + ' ,A.IDEMITENTE,A.OPER_DEVOLUCAO_DENTRO,A.OPER_DEVOLUCAO_FORA,A.CODIGO_ANP,B.CFOP,B.ALIQICMS,B.MVAICMSST,C.MVAICMSST MVAFORA, '
        + ' B.CSTIPI,B.ALIQIPI,B.CSTPIS,B.ALIQPIS,B.CSTCOFINS,B.ALIQCOFINS,B.CST,B.CSOSN,A.PESOBRUTO,A.PESOLIQ,A.ORIGEM,' +
        ' C.CFOP CFOPFORA,C.ALIQICMS ALIQICMSFORA,C.CSTIPI CSTIPIFORA,C.ALIQIPI ALIQIPIFORA,C.CSTPIS CSTPISFORA, ' +
        ' C.ALIQPIS ALIQPISFORA,C.CSTCOFINS CSTCOFINSFORA,C.ALIQCOFINS ALIQCOFINSFORA,C.CST CSTFORA,C.CSOSN CSOSNFORA ' +
        ' from PRODUTOS A LEFT OUTER JOIN TBTES B ON (A.OPER_SAIDA_DENTRO=B.ID) LEFT OUTER JOIN TBTES C ON (A.OPER_SAIDA_FORA=C.ID) '
        + ' WHERE A.IDEMITENTE = '+UniMainModule.CodigoEmitente ;

        if trim(cmbProdutos.Text) <> '' then
        begin
            if filtro = 'N' then
                 filtroSql := ' and A.DESCRICAO like '+QuotedStr('%'+trim(cmbProdutos.Text)+'%')
            else
            begin
                 if string(cmbProdutos.Text).Trim.Length >= 8 then
                    filtroSql := ' and A.EAN = '+QuotedStr(trim(cmbProdutos.Text))
                 else
                    filtroSql := ' and A.CODIGO = '+QuotedStr(trim(cmbProdutos.Text))
            end;
        end
        else
            filtroSql := '';

        UniMainModule.Banco.ExecSQL(sql + filtroSql , vdataset);

        strProdutos.Items.Clear;
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
              cst                := vdataset.FieldByName('CST').AsString;
              ALIQICMS           := vdataset.FieldByName('ALIQICMS').AsFloat;
              ALIQICMSST         := vdataset.FieldByName('ALIQICMST').AsFloat;
              IPI                := vdataset.FieldByName('ALIQIPI').AsFloat;
              PESOBRUTO          := vdataset.FieldByName('PESOBRUTO').AsFloat;
              PESOLIQ            := vdataset.FieldByName('PESOLIQ').AsFloat;
              cfop               := vdataset.FieldByName('CFOP').AsString;
              csosn              := vdataset.FieldByName('CSOSN').AsString;
              MVA                := vdataset.FieldByName('MVAICMSST').AsFloat;
              origem             := vdataset.FieldByName('ORIGEM').AsInteger;
              CSTIPI             := vdataset.FieldByName('CSTIPI').AsString;
              CSTPIS             := vdataset.FieldByName('CSTPIS').AsString;
              CSTCOFINS          := vdataset.FieldByName('CSTCOFINS').AsString;
              ALIQPIS            := vdataset.FieldByName('ALIQPIS').AsFloat;
              ALIQCOFINS         := vdataset.FieldByName('ALIQCOFINS').AsFloat;
              OPER_SAIDA_DENTRO  := vdataset.FieldByName('OPER_SAIDA_DENTRO').AsInteger;
              OPER_SAIDA_FORA    := vdataset.FieldByName('OPER_SAIDA_FORA').AsInteger;
              IDEMITENTE         := vdataset.FieldByName('IDEMITENTE').AsInteger;
              CODIGO_ANP         := vdataset.FieldByName('CODIGO_ANP').AsString;
              strProdutos.Items.AddObject(CODIGO + ' ' + descricao + '<br>' + 'R$ ' + PRECO.ToString(TFloatFormat.ffCurrency,
                10, 2) + ' ' + UN + ' ' + ncm, vproduto);
            end;
            vdataset.Next;
        end;
        strProdutos.EndUpdate;
    except on e :Exception do
       ShowMessage(e.Message);
    end;
end;

function TFNfceM.FindCol(c: Integer; sFind: string): Integer;
begin

end;

procedure TFNfceM.getclientes;
var
  vdataset: tDataset;
  nindex  : integer;
  vcliente: TCliente;
begin
  UniMainModule.Banco.ExecSQL('select IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,NOMEFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO' +
    ' ,NRO,COMPLEMENTO,BAIRRO,CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,CONSUMIDORFINAL,IDEMITENTE' +
    ' from CLIENTES WHERE IDEMITENTE=' + UniMainModule.CodigoEmitente, vdataset);
  stgClientes.Items.Clear;
  stgClientes.BeginUpdate;
  while not vdataset.Eof do
  begin
    vlistacli.Add(TCliente.Create);
    vcliente := vlistacli.Last;
    nindex   := vlistacli.Count;
    with vcliente do
    begin
      idcliente       := vdataset.FieldByName('idcliente').AsInteger;
      tipopessoa      := vdataset.FieldByName('TIPOPESSOA').AsString;
      razaosocial     := vdataset.FieldByName('RAZAOSOCIAL').AsString;
      nomefantasia    := vdataset.FieldByName('NOMEFANTASIA').AsString;
      rg_ie           := vdataset.FieldByName('RG_IE').AsString;
      cpf_cnpj        := vdataset.FieldByName('CPF_CNPJ').AsString;
      fone            := vdataset.FieldByName('FONE').AsString;
      fax             := vdataset.FieldByName('FAX').AsString;
      endereco        := vdataset.FieldByName('ENDERECO').AsString;
      nro             := vdataset.FieldByName('ENDERECO').AsString;
      complemento     := vdataset.FieldByName('complemento').AsString;
      bairro          := vdataset.FieldByName('bairro').AsString;
      cidade          := vdataset.FieldByName('cidade').AsString;
      codmunicipio    := vdataset.FieldByName('CODMUNICIPIO').AsString;
      uf              := vdataset.FieldByName('uf').AsString;
      cep             := vdataset.FieldByName('cep').AsString;
      observacao      := vdataset.FieldByName('observacao').AsString;
      consumidorfinal := vdataset.FieldByName('CONSUMIDORFINAL').AsString;
      IDEMITENTE      := vdataset.FieldByName('idemitente').AsInteger;

      stgClientes.Items.AddObject(idcliente.ToString + ' ' + razaosocial + '<br>' + 'Cnpj/Cpf: ' + cpf_cnpj + ' IE/RG: '
        + rg_ie, vcliente);
    end;
    vdataset.Next;
  end;
  stgClientes.EndUpdate;
end;

procedure TFNfceM.getProdutos;
var
  vdataset     : tDataset;
  nindex, ncont: integer;
  vproduto     : TProdutos;
begin
    UniMainModule.Banco.ExecSQL
    ('select A.IDPRODUTO,A.DESCRICAO_COMPLETA,A.CODIGO,A.EAN,A.DESCRICAO,A.NCM,A.CEST,A.CUSTO,A.PRECO,A.UN,A.OPER_SAIDA_DENTRO,A.OPER_SAIDA_FORA '
    + ' ,A.IDEMITENTE,A.OPER_DEVOLUCAO_DENTRO,A.OPER_DEVOLUCAO_FORA,A.CODIGO_ANP,B.CFOP,B.ALIQICMS,B.ALIQICMSST,B.MVAICMSST,C.MVAICMSST MVAFORA, '
    + 'B.REDBCICMS,B.REDBCICMS, B.CSTIPI,B.ALIQIPI,B.CSTPIS,B.ALIQPIS,B.CSTCOFINS,B.ALIQCOFINS,B.CST,B.CSOSN,A.PESOBRUTO,A.PESOLIQ,A.ORIGEM,' +
    ' C.CFOP CFOPFORA,C.ALIQICMS ALIQICMSFORA,C.CSTIPI CSTIPIFORA,C.ALIQIPI ALIQIPIFORA,C.CSTPIS CSTPISFORA, ' +
    ' C.ALIQPIS ALIQPISFORA,C.CSTCOFINS CSTCOFINSFORA,C.ALIQCOFINS ALIQCOFINSFORA,C.CST CSTFORA,C.CSOSN CSOSNFORA ' +
    ' from PRODUTOS A LEFT OUTER JOIN TBTES B ON (A.OPER_SAIDA_DENTRO=B.ID) LEFT OUTER JOIN TBTES C ON (A.OPER_SAIDA_FORA=C.ID) '
    + ' WHERE A.IDEMITENTE=' + UniMainModule.CodigoEmitente, vdataset);
    strProdutos.Items.Clear;
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
        cst                := vdataset.FieldByName('CST').AsString;
        ALIQICMS           := vdataset.FieldByName('ALIQICMS').AsFloat;
        ALIQICMSST         := vdataset.FieldByName('ALIQICMSST').AsFloat;
        IPI                := vdataset.FieldByName('ALIQIPI').AsFloat;
        PESOBRUTO          := vdataset.FieldByName('PESOBRUTO').AsFloat;
        PESOLIQ            := vdataset.FieldByName('PESOLIQ').AsFloat;
        cfop               := vdataset.FieldByName('CFOP').AsString;
        csosn              := vdataset.FieldByName('CSOSN').AsString;
        MVA                := vdataset.FieldByName('MVAICMSST').AsFloat;
        origem             := vdataset.FieldByName('ORIGEM').AsInteger;
        CSTIPI             := vdataset.FieldByName('CSTIPI').AsString;
        CSTPIS             := vdataset.FieldByName('CSTPIS').AsString;
        CSTCOFINS          := vdataset.FieldByName('CSTCOFINS').AsString;
        ALIQPIS            := vdataset.FieldByName('ALIQPIS').AsFloat;
        ALIQCOFINS         := vdataset.FieldByName('ALIQCOFINS').AsFloat;
        OPER_SAIDA_DENTRO  := vdataset.FieldByName('OPER_SAIDA_DENTRO').AsInteger;
        OPER_SAIDA_FORA    := vdataset.FieldByName('OPER_SAIDA_FORA').AsInteger;
        IDEMITENTE         := vdataset.FieldByName('IDEMITENTE').AsInteger;
        CODIGO_ANP         := vdataset.FieldByName('CODIGO_ANP').AsString;
        strProdutos.Items.AddObject(CODIGO + ' ' + descricao + '<br>' + 'R$ ' + PRECO.ToString(TFloatFormat.ffCurrency,
          10, 2) + ' ' + UN + ' ' + ncm, vproduto);
      end;
      vdataset.Next;
    end;
    strProdutos.EndUpdate;
end;

procedure TFNfceM.Limpaparcelas;
begin
  // stgParcelas.RowCount := 1;
  stgParcelas.Items.Clear;
  vlistavenda.formasNF.Clear;
  eRestante.Value     := eTotalParcs.Value;
  eValorparcela.Value := eRestante.Value;
  eValorPago.Value    := 0;
  eTroco.Value        := 0;
end;

procedure TFNfceM.LimparControles;
begin
      eCpfCliente.Text  := '';
      eNomeCliente.Text := '';
      cmbProdutos.text  := '';
      eCodigo.text      := '';
      eQuant.Value      := 0;
      eValor.Value      := 0;
      edTotal.Value     := 0;
end;

procedure TFNfceM.ParaTimerTEF;
begin
     CheckProgressTimer.Enabled := False;
end;

procedure TFNfceM.PDF;
begin
  pgVendas.ActivePage := tsPdf;
end;

procedure TFNfceM.StringGrid1Swipe(Sender: TObject);
var
  vitem: TVendasitens;
begin
    if StringGrid1.ItemIndex >= 0 then
    begin
        MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
        procedure(Sender: TComponent; Res: Integer)
        begin
            case Res of
                mrYes :
                begin
                    try
                        if Assigned(vlistavenda) then
                        begin
                           vitem :=  StringGrid1.Items.Objects[StringGrid1.ItemIndex] as TVendasitens;
                           vlistavenda.ItensNota.Delete(vlistavenda.ItensNota.IndexOf(vitem));
                           reconstruirlista;
                        end;

                    except on e: exception do
                    begin

                        ShowMessage('Erro: '+e.Message);
                    end;
                    end;

                end;
                mrNo  :
                begin
                end;
            end;
        end);
    end;
end;

procedure TFNfceM.strProdutosClick(Sender: TObject);
var
  vproduto: TProdutos;
  vTipoRegimeCliente : Extended;
begin
    if strProdutos.Items.Count >= 0 then
    begin
        if strProdutos.ItemIndex >= 0 then
        begin
            vproduto   := strProdutos.Items.Objects[strProdutos.ItemIndex] as TProdutos;

            if vproduto = nil then
               exit;

            eCodigo.text        := vproduto.CODIGO;
            cmbProdutos.text    := vproduto.descricao;
            eValor.text         := vproduto.PRECO.ToString;
            eQuant.text         := '1';
            edTotal.text        := floattostr(eQuant.Value * string(eValor.text).Trim.ToExtended);

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

            eQuant.SetFocus;
        end;
    end;
end;

procedure TFNfceM.UnimButton10Click(Sender: TObject);
begin
  addforma('05', 'A PRAZO','','','','','');
end;

procedure TFNfceM.UnimButton11Click(Sender: TObject);
begin
  Limpaparcelas;
end;

procedure TFNfceM.UnimButton12Click(Sender: TObject);
begin
     pgVendas.ActivePage := tsTef;
     eTipoPgto.ItemIndex := 2;
end;

procedure TFNfceM.UnimButton16Click(Sender: TObject);
begin
     eQtdParcelas.Value  := eQtdParcelas.Value + 1;
end;

procedure TFNfceM.UnimButton18Click(Sender: TObject);
begin
     eQtdParcelas.Value  := IfThen(eQtdParcelas.Value - 1 > 0, eQtdParcelas.Value - 1, 0);
end;

procedure TFNfceM.UnimButton1Click(Sender: TObject);
begin
     if cmbProdutos.Text <> '' then
     begin
          if eFiltro.ItemIndex = 0 then
              filtrarProdutos('N')
          else
              filtrarProdutos('C')
     end;
end;

procedure TFNfceM.UnimButton3Click(Sender: TObject);
begin
    eQuant.Value  := IfThen(eQuant.Value - 1 > 0, eQuant.Value - 1, 0);
    edTotal.Value := IfThen(eValor.Value > 0, eQuant.Value * eValor.Value, 0);
end;

procedure TFNfceM.UnimButton4Click(Sender: TObject);
begin
    eQuant.Value  := eQuant.Value + 1;
    edTotal.Value := IfThen(eValor.Value <> 0, eQuant.Value * eValor.Value, 0);
end;

procedure TFNfceM.UnimButton5Click(Sender: TObject);
begin
  close;
end;

procedure TFNfceM.UnimButton6Click(Sender: TObject);
begin
     addforma('01', 'Dinheiro','','','','','');
end;

procedure TFNfceM.UnimButton7Click(Sender: TObject);
begin
     pgVendas.ActivePage := tsTef;
     eTipoPgto.ItemIndex := 1;
end;

procedure TFNfceM.UnimButton8Click(Sender: TObject);
begin
     pgVendas.ActivePage := tsTef;
     eTipoPgto.ItemIndex := 0;
end;

procedure TFNfceM.UnimButton9Click(Sender: TObject);
begin
     addforma('02', 'CHEQUE','','','','','');
end;

procedure TFNfceM.UnimFormCreate(Sender: TObject);
begin
     pgVendas.TabBarVisible   := False;
     parcelaFormaPgto         := 0;
     pgVendas.ActivePageIndex := 0;

    if UniMainModule.TRdata^.xmodelo = 55 then
    begin
        cmbClientes.Visible     := true;
        pCliente.Visible        := false;
        pgVendas.ActivePage     := tsDadosNF;
        cmbFinalidade.ItemIndex := 0;
        cmbTipoDoc.ItemIndex    := 1;
        LookCFOP.ItemIndex      := 0;
    end
    else if UniMainModule.TRdata^.xmodelo = 65 then
    begin
        cmbClientes.Visible := false;
        pCliente.Visible    := true;
    end;


    vlistacli := TlistaClientes.Create;
    getclientes;

    vlistaprod := tlistaprodutos.Create;
    getProdutos;

    if UniMainModule.TRdata^.xmodelo = 65 then
      UniMainModule.LerConfiguracao(65)
    else
      UniMainModule.LerConfiguracao(55);

    if UniMainModule.vctoCertificado <> '' then
       ShowMessage( UniMainModule.vctoCertificado );


end;

procedure TFNfceM.UnimFormReady(Sender: TObject);
begin
  with pgVendas do //Solução pro defeito no TabBarVisible sempre TRUE - By Otavio 24/09/2021
    if not TabBarVisible then
      JSInterface.JSCall('getTabBar().setVisibility', [TabBarVisible]);
  //Exibir Numeros e todas as Casa decimais (TUnimNumberEdit)
    eValor.JSInterface.JSConfig('inputType', ['any']);
    eQuant.JSInterface.JSConfig('inputType', ['any']);
    edTotal.JSInterface.JSConfig('inputType', ['any']);
end;

procedure TFNfceM.UnimFormShow(Sender: TObject);
begin
     dtEmissao.Date := date;
end;

procedure TFNfceM.UnimImage1Click(Sender: TObject);
begin
     pgVendas.ActivePage := tsProdutos;
end;

procedure TFNfceM.UnimImage2Click(Sender: TObject);
var
  vitens        : TVendasitens;
  nindex, tIndex: integer;
  vqtditens     : integer;
  vproduto      : TProdutos;
  vcliente      : TCliente;
  vTipoRegimeCliente : Extended;

  wBaseComReducao : Extended;
  wICmsProprio    : Extended;
  wBaseCalculoMVA : Extended;
  wValorICMS      : Extended;
begin
      if UniMainModule.TRdata^.xmodelo = 55 then
      begin
          if cmbClientes.text = '' then
          begin
               Showmessage( 'Primeiro selecione o cliente');
               exit;
          end;
      end;

      if cmbProdutos.text = '' then
      begin
        Showmessage('Falta informar o produto');
        exit;
      end;

      if string(eCodigo.text).Trim = '' then
      begin
        Showmessage( 'Falta informar o produto');
        exit;
      end;

      if eQuant.Value <= 0 then
      begin
        Showmessage( 'Falta informar a quantidade');
        exit;
      end;

      if eValor.Value <= 0 then
      begin
        Showmessage( 'Falta informar o preço de venda');
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
              vcliente                    := stgClientes.Items.Objects[stgClientes.ItemIndex] as TCliente;
              vlistavenda.IDCLIENTE       := vcliente.IDCLIENTE;
              vlistavenda.CONSUMIDORFINAL := vcliente.CONSUMIDORFINAL;
              vlistavenda.TIPONOTA        := UniMainModule.TRdata^.xtipodoc;
              vlistavenda.dtEmissao       := dtEmissao.Date;
              vlistavenda.DTSAIDA         := dtEmissao.Date;
          end
          else
          begin
              if cmbClientes.Text <> '' then
              begin
                  vcliente                    := stgClientes.Items.Objects[stgClientes.ItemIndex] as TCliente;
                  vlistavenda.IDCLIENTE       := vcliente.IDCLIENTE;
              end;

              vlistavenda.dtEmissao       := now;
              vlistavenda.DTSAIDA         := now;
              vlistavenda.FINALIDADE      := 0; // 0 normal 1 complementar 2 ajuste 3 devolucao
              vlistavenda.TIPONOTA        := 1; // 0 = entrada 1 = saida
              vlistavenda.CPF_CONSUMIDOR  := ecpfcliente.Text;
              vlistavenda.NOME_CONSUMIDOR := eNomeCliente.Text;
          end;

          vlistavenda.TIPOFRETE   := 0;
          vlistavenda.STATUS_NOTA := 'P';
          vlistavenda.AMBIENTE    := UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger;
      end;

      vqtditens := vlistavenda.ItensNota.Count;
      vlistavenda.ItensNota.Add(TVendasitens.Create);

      with vlistavenda.ItensNota.Last do
      begin
          vproduto   := strProdutos.Items.Objects[strProdutos.ItemIndex] as TProdutos;
          id_item    := vproduto.IDPRODUTO;
          descricao  := vproduto.descricao;
          qtd        := eQuant.Value;
          preco_unit := eValor.Value;
          ncm        := vproduto.ncm;
          cest       := vproduto.cest;
          cfop       := vproduto.cfop;
          cst        := vproduto.cst;
          csosn      := vproduto.csosn;

          ALIQICMS    := IIf(Trim(edAliqIcms.Text) <> '', edAliqIcms.Text, vproduto.ALIQICMS);// 1 ok
          PREDICMS    := IIf(Trim(edRBaseIcms.Text) <> '', edRBaseIcms.Text, vproduto.PREDICMS); // 2 ok
          ALIQICMSST  := IIf(Trim(edAliqIcmsST.Text) <> '', edAliqIcmsST.Text, vproduto.ALIQICMSST); // 1 ok
          PREDICMSST  := IIf(Trim(edRbaseIcmsSt.Text) <> '', edRbaseIcmsSt.Text, vproduto.PREDICMSST); // 2 ok
          mva         := IIf(Trim(edMVA.Text) <> '', edMVA.Text, vproduto.MVA); // 3 ok

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

          origem     := vproduto.origem;
          EAN        := vproduto.EAN;
          seq_item   := vqtditens;
          unidade    := vproduto.UN;
          CODIGO_ANP := vproduto.CODIGO_ANP;
          StringGrid1.Items.AddObject(id_item.ToString + ' ' + descricao + '<br>' + Double(eValor.Value)
            .ToString(TFloatFormat.ffCurrency, 8, 2) + ' QTD. ' + qtd.ToString + ' Total ' +
            VALOR_TOTAL.ToString(TFloatFormat.ffCurrency, 10, 2), vlistavenda.ItensNota.Last);
          LimparControles;
      end;
      StringGrid1.EndUpdate;
      edSubTotal.text   := FormatFloat('#,,0.00',vlistavenda.VALOR_FINAL);// vlistavenda.VALOR_FINAL.ToString(TFloatFormat.ffCurrency, 10, 2);
      edDesconto.Value  := vlistavenda.VALOR_DESCONTO;
      edAcrescimo.Value := vlistavenda.VALOR_ACRESCIMO;
      edTotalNF.text    := FormatFloat('#,,0.00',vlistavenda.VALOR_FINAL + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO);// vlistavenda.VALOR_FINAL + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;

      imgFinalizar.Visible := true;
      pgVendas.ActivePage  := tsVendas;
end;

procedure TFNfceM.reconstruirlista;
var
  vitens: TVendasitens;
begin
    StringGrid1.Items.Clear;
    for vitens in vlistavenda.ItensNota.List do
    begin
        if vitens = nil then
          Continue;
        StringGrid1.Items.AddObject(vitens.id_item.ToString + ' ' +
        vitens.descricao + '<br>' +
        vitens.preco_unit.ToString(TFloatFormat.ffCurrency, 8, 2) + ' QTD. ' +
        vitens.qtd.ToString + ' Total ' +
        vitens.VALOR_TOTAL.ToString(TFloatFormat.ffCurrency, 10, 2), vitens);
    end;
    edSubTotal.text   := FormatFloat('#,,0.00',vlistavenda.VALOR_FINAL);// vlistavenda.VALOR_FINAL.ToString(TFloatFormat.ffCurrency, 10, 2);
    edDesconto.Value  := vlistavenda.VALOR_DESCONTO;
    edAcrescimo.Value := vlistavenda.VALOR_ACRESCIMO;
    edTotalNF.text    := FormatFloat('#,,0.00',vlistavenda.VALOR_FINAL + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO);//  vlistavenda.VALOR_FINAL + vlistavenda.VALOR_ACRESCIMO - vlistavenda.VALOR_DESCONTO;
end;

procedure TFNfceM.reconstruirparcelas;
var
  vparcs: TFormasNF;
begin
  stgParcelas.Items.Clear;
  for vparcs in vlistavenda.formasNF.List do
  begin
    if vparcs = nil then
      Continue;
    stgParcelas.Items.AddObject('Vcto: ' + DateToStr(vparcs.vencimento) + '<br>' + 'Valor: ' +
      vparcs.valor.ToString(TFloatFormat.ffCurrency, 10, 2) + '        Forma Pgto: ' + vparcs.tipo_fatura, vparcs);
  end;
end;

procedure TFNfceM.stgClientesClick(Sender: TObject);
var
  vCliente: TCliente;
begin
    if stgClientes.Items.Count >= 0 then
    begin
        if stgClientes.ItemIndex >= 0 then
        begin
          vCliente := stgClientes.Items.Objects[stgClientes.ItemIndex] as TCliente;
          if vCliente = nil then
            exit;
          cmbClientes.text := vCliente.idcliente.ToString+'-'+vCliente.razaosocial;
        end;
    end;
end;

procedure TFNfceM.UnimImage3Click(Sender: TObject);
begin
     pgVendas.ActivePage := tsVendas;
end;

procedure TFNfceM.UnimImage4Click(Sender: TObject);
begin
      if (LookCFOP.ItemIndex < 0) or (LookCFOP.Text = '') then
      begin
          Showmessage( 'Selecione o CFOP da Operação');
          exit;
      end;

      if (cmbFinalidade.ItemIndex < 0) or (cmbFinalidade.Text = '') then
      begin
          Showmessage( 'Selecione a finalidade da nota fiscal');
          exit;
      end;

      if (cmbTipoDoc.ItemIndex < 0) or (cmbTipoDoc.Text = '') then
      begin
          Showmessage( 'Selecione o tipo do documento');
          exit;
      end;

      UniMainModule.TRdata^.xfinalidade        := cmbFinalidade.ItemIndex;
      UniMainModule.TRdata^.xtipodoc           := cmbTipoDoc.ItemIndex;
      UniMainModule.TRdata^.xdataemissao       := Trunc(dtEmissao.Date);
      UniMainModule.TRdata^.xcfop              := UniMainModule.qCFOPCFOP.AsString;
      UniMainModule.TRdata^.xnatureza          := UniMainModule.qCFOPNATUREZA.AsString;
      UniMainModule.TRdata^.xchavecomplementar := edComplementar.Text;

      pgVendas.ActivePage                      := tsClientes;
end;

procedure TFNfceM.imgFinalizarClick(Sender: TObject);
begin
    if StrToFloat(edTotalNF.text) <= 0 then
    begin
        Showmessage( 'Valor total da Nota esta zero');
        exit;
    end;

    stgParcelas.EndUpdate;
    pgVendas.ActivePageIndex := 3;
    eTotalParcs.Value        := StrToFloat(edTotalNF.text);
    eValorparcela.Value      := StrToFloat(edTotalNF.text);
    eRestante.Value          := StrToFloat(edTotalNF.text);
    pgVendas.ActivePage      := tsFormas;
end;

procedure TFNfceM.ImprimeCartao(texto: String);
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

      fnfcem.PDF;
      fNfceM.fURL                 := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
      fNfceM.UnimPDFFrame1.PdfURL := FUrl;
end;

procedure TFNfceM.UnimImage5Click(Sender: TObject);
var uf     : string;
  vcliente : TCliente;
begin
     if cmbClientes.Text <> '' then
     begin
         vcliente := stgClientes.Items.Objects[stgClientes.ItemIndex] as TCliente;

         if UniMainModule.TRdata^.xmodelo = 65 then
         begin
             iF (((vcliente.razaosocial) <> '') and ((vcliente.cpf_cnpj) <> '')) then
             begin
                  eNomeCliente.Text := vcliente.razaosocial;
                  eCpfCLiente.Text  := vcliente.cpf_cnpj;
             end;
         end
         else
         begin
             iF (vcliente.uf) = (UniMainModule.qEmitenteUF.Text) THEN
             begin
                  if Copy(LookCFOP.Text,1,1) = '6' then
                  begin
                     if cmbTipoDoc.ItemIndex = 1 then
                     Showmessage(
                     'Cfop informado é para venda fora do estado e cliente '+
                     'possui a mesma UF do Emitente!');

                     pgVendas.ActivePage := tsDadosNF;
                     LookCFOP.SetFocus;
                  end;
             end;

             iF (vcliente.uf) <> (UniMainModule.qEmitenteUF.Text) THEN
             begin
                  if Copy(LookCFOP.Text,1,1) = '5' then
                  begin
                     if cmbTipoDoc.ItemIndex = 1 then
                     Showmessage(
                     'Cfop informado é para venda dentro do estado e cliente '+
                     'possui UF diferente do Emitente!');

                     pgVendas.ActivePage := tsDadosNF;
                     LookCFOP.SetFocus;
                  end;
             end;

             vTipoPessoa     := vcliente.tipopessoa;
             vRegimeCliente  := vcliente.tipoRegime;

         end;
     end;

     if UniMainModule.TRdata^.xmodelo = 65 then
        pgVendas.ActivePage := tsFormas
     else
        pgVendas.ActivePage := tsVendas
end;

procedure TFNfceM.UnimImage6Click(Sender: TObject);
begin
     pgVendas.ActivePage := tsDadosNF;
end;

procedure TFNfceM.imgFaturarClick(Sender: TObject);
begin
     Faturar;
end;

procedure TFNfceM.UnimImage8Click(Sender: TObject);
begin
     pgVendas.ActivePage := tsVendas;
end;

procedure TFNfceM.UnimTimer1Timer(Sender: TObject);
begin
    if ((TWorker(WorkerThread).Position mod 2) = 0) then
        lStatusTEF.Caption := 'Aguardando.'
    else
        lStatusTEF.Caption := 'Aguardando..';

    UniSession.Synchronize;

    AguardaVenda;
end;

procedure TFNfceM.UnimToolButton1Click(Sender: TObject);
begin
     if UniMainModule.TRdata^.xmodelo = 65 then
         pgVendas.ActivePage := tsVendas
     else
         pgVendas.ActivePage := tsDadosNF;
end;

procedure TFNfceM.UnimToolButton2Click(Sender: TObject);
begin
  close;
end;

procedure TFNfceM.UnimToolButton4Click(Sender: TObject);
begin
     pgVendas.ActivePage := tsPdf;
end;

end.

