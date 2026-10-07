unit uNfeOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniButton, uniBitBtn,
  uniMultiItem, uniComboBox, uniEdit, uniDateTimePicker, uniRadioGroup,
  uniLabel, uniGUIBaseClasses, uniPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrMail, ACBrDANFCeFortesFr,
  ACBrBase, ACBrDFe, ACBrNFe, ACBrNFeDANFEFRDM, ACBrNFeDANFEFR,
  ACBrNFeDANFEClass, ACBrNFeDANFeRLClass, uniImage,

  dateUtils,

  pcnConversaoNFe, pcnConversao, ACBrUtil, uniMemo, uniScreenMask,
  uniRadioButton, uniPageControl, uniGroupBox, clsVendas,
  Vcl.Imaging.pngimage;

type
  TfNfeOP = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniPanel2: TUniPanel;
    rTipo: TUniRadioGroup;
    rEmissao: TUniRadioGroup;
    DBGrid2: TUniDBGrid;
    UniPanel3: TUniPanel;
    UniLabel3: TUniLabel;
    eNrNotas: TUniEdit;
    UniLabel4: TUniLabel;
    eTotalNotas: TUniEdit;
    UniLabel5: TUniLabel;
    eNotasCanceladas: TUniEdit;
    UniLabel6: TUniLabel;
    eNotasValidas: TUniEdit;
    dsNotas: TDataSource;
    dsNotasItens: TDataSource;
    imAceita: TUniImage;
    imCancelada: TUniImage;
    Image9: TUniImage;
    imPendente: TUniImage;
    imInutilizada: TUniImage;
    UniPanel4: TUniPanel;
    bDanfe: TUniBitBtn;
    bEmail: TUniBitBtn;
    bPDF: TUniBitBtn;
    bXMLescritorio: TUniBitBtn;
    mmEmailMsg: TUniMemo;
    UniScreenMask1: TUniScreenMask;
    bContingencia: TUniBitBtn;
    bEnviar: TUniBitBtn;
    bCancelar: TUniBitBtn;
    bCCe: TUniBitBtn;
    bInutilizar: TUniBitBtn;
    UniScreenMask2: TUniScreenMask;
    bConsultarNota: TUniBitBtn;
    UniScreenMask3: TUniScreenMask;
    UniScreenMask4: TUniScreenMask;
    pgOperacoes: TUniPageControl;
    tsMail: TUniTabSheet;
    pEmail: TUniPanel;
    btnCancelaNF: TUniBitBtn;
    btnGravaNFe: TUniBitBtn;
    UniLabel23: TUniLabel;
    eEmail: TUniEdit;
    UniLabel7: TUniLabel;
    tsInutilizar: TUniTabSheet;
    pnlInutilizacao: TUniPanel;
    UniBitBtn14: TUniBitBtn;
    UniBitBtn15: TUniBitBtn;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    edtAno: TUniEdit;
    UniLabel16: TUniLabel;
    edtFxInicial: TUniEdit;
    UniLabel17: TUniLabel;
    edtFxFinal: TUniEdit;
    UniRadioGroup4: TUniRadioGroup;
    UniLabel18: TUniLabel;
    mmJustificativa: TUniMemo;
    tsCCe: TUniTabSheet;
    pnlCCe: TUniPanel;
    UniBitBtn12: TUniBitBtn;
    UniBitBtn13: TUniBitBtn;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    mmCorrecao: TUniMemo;
    tsCancela: TUniTabSheet;
    pCancelamento: TUniPanel;
    UniBitBtn10: TUniBitBtn;
    UniBitBtn11: TUniBitBtn;
    UniLabel10: TUniLabel;
    eJustificativa: TUniEdit;
    UniLabel11: TUniLabel;
    rNfeInutilizar: TUniRadioButton;
    rNfceInutilizar: TUniRadioButton;
    UniGroupBox1: TUniGroupBox;
    eInicio: TUniDateTimePicker;
    eFinal: TUniDateTimePicker;
    UniGroupBox2: TUniGroupBox;
    eNota: TUniEdit;
    cbFiltro: TUniComboBox;
    UniPageControl1: TUniPageControl;
    tsItens: TUniTabSheet;
    tsMensagens: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    dsMensagens: TDataSource;
    UniDBGrid2: TUniDBGrid;
    bWhats: TUniBitBtn;
    UniHiddenPanel1: TUniHiddenPanel;
    edCFOP: TUniNumberEdit;
    edNCM: TUniNumberEdit;
    edCST: TUniEdit;
    UniGroupBox3: TUniGroupBox;
    rFantasia: TUniRadioButton;
    rRazao: TUniRadioButton;
    rGeral: TUniRadioButton;
    eCliente: TUniEdit;
    UniTabSheet1: TUniTabSheet;
    UniDBGrid3: TUniDBGrid;
    dsCCe: TDataSource;
    bImprimirCCe: TUniBitBtn;
    imRecusada: TUniImage;
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    UniLabel8: TUniLabel;
    UniImage3: TUniImage;
    UniLabel9: TUniLabel;
    UniImage4: TUniImage;
    UniImage5: TUniImage;
    UniImage6: TUniImage;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    btnNovoProd: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    procedure bDanfeClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure bEmailClick(Sender: TObject);
    procedure btnGravaNFeClick(Sender: TObject);
    procedure bPDFClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure UniBitBtn11Click(Sender: TObject);
    procedure UniBitBtn10Click(Sender: TObject);
    procedure bContingenciaClick(Sender: TObject);
    procedure UniBitBtn12Click(Sender: TObject);
    procedure UniBitBtn13Click(Sender: TObject);
    procedure UniBitBtn14Click(Sender: TObject);
    procedure UniBitBtn15Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtn16Click(Sender: TObject);
    procedure bConsultarNotaClick(Sender: TObject);
    procedure dsNotasDataChange(Sender: TObject; Field: TField);
    procedure btnCancelaNFClick(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure btnNovoProdClick(Sender: TObject);
    procedure bWhatsClick(Sender: TObject);
    procedure DBGrid2FieldImage(const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic;
      var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
    procedure bCCeClick(Sender: TObject);
    procedure bInutilizarClick(Sender: TObject);
    procedure bXMLescritorioClick(Sender: TObject);
    procedure bImprimirCCeClick(Sender: TObject);
    procedure UniDBGrid3CellClick(Column: TUniDBGridColumn);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);

  private
    vlistavenda: TNotasCab;
    procedure gravamsg(const id,serie,modelo,codemitente:integer;msg:string);
    procedure mostraoperacoes(pvisible : boolean);
    procedure aguardarAssinatura;
    procedure gavamsg(const id,serie,modelo,codemitente : integer;msg : string);
  public

  end;

function fNfeOP: TfNfeOP;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uPrincipal, ServerModule, uPDF, uniGUIVars,
  clsVendasItens, clsProdutos, clsClientes, clsFormasNotas, System.StrUtils,
  uXmlEscritorio, uClsBase, uPdfM;

function fNfeOP: TfNfeOP;
begin
  Result := TfNfeOP(UniMainModule.GetFormInstance(TfNfeOP));
end;

procedure TfNfeOP.bImprimirCCeClick(Sender: TObject);
var
  xx                    : String;
  xxx                    : TStringStream;
  arqpdf                : String;
  NomePDF, FFolder, FUrl: String;
  ArquivoPDF            : String;
begin
  if not UniMainModule.qEventoListar.Active then
    exit;

  if UniMainModule.qEventoListarID.AsString <> '' then
  begin
       try
            xx  := UniMainModule.qEventoListarCAMINHO_XMLEVENTO.AsString;
            xxx := TStringStream.create(UniMainModule.qNotasCabXML_NOTA.AsString);

            UniMainModule.NFE.NotasFiscais.Clear;
            UniMainModule.NFE.NotasFiscais.LoadFromstream(xxx);

            UniMainModule.NFE.EventoNFe.Evento.Clear;
            UniMainModule.NFE.EventoNFe.LerXML(xx);

            NomePDF := UniMainModule.soNumero(UniMainModule.NFE.EventoNFe.Evento.Items[0].InfEvento.id);
            FFolder := UniServerModule.LocalCachePath;
            FUrl    := UniServerModule.LocalCacheURL + ExtractFileName(arqpdf);

            UniMainModule.NFE.DANFE.TipoDANFE      := tiRetrato;
            UniMainModule.aDanfe.FastFileEvento    := ExtractFilePath(ParamStr(0)) + 'EVENTOS.fr3';
            UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
            UniMainModule.aDanfe.Sistema           := 'www.notafacilweb.com.br';
            UniMainModule.adanfe.PathPDF           := UniServerModule.LocalCachePath;
            UniMainModule.NFE.ImprimirEventoPDF;

            ArquivoPDF            := NomePDF + '-procEventoNFe.pdf';
            fPDF.Caption          := ArquivoPDF;
            fPDF.UniURLFrame1.URL := FUrl + ArquivoPDF;
            fPDF.Show();

       except on e:Exception do
            ShowMessage(e.Message);
       end;
  end
  else
    ShowMessage( 'CCe não encontrada!');
end;

procedure TfNfeOP.btnCancelaNFClick(Sender: TObject);
begin
     mostraoperacoes(false);
end;

procedure TfNfeOP.btnGravaNFeClick(Sender: TObject);
var
  xx              : TStringStream;
  ArquivoXML      : String;
  cc              : TStrings;
  arqpdf, FUrl    : String;
  NomePDF, FFolder: String;
  ArquivoPDF      : String;
begin
    mostraoperacoes(false);

    if eEmail.Text = '' then
    begin
      Showmessage( 'Informar um email valido!');
      exit;
    end;

    xx := TStringStream.create(UniMainModule.qNotasCabXML_NOTA.AsString);
    UniMainModule.NFE.NotasFiscais.Clear;
    UniMainModule.NFE.NotasFiscais.LoadFromstream(xx);

    if UniMainModule.qNotasCabMODELO.AsInteger = 55 then
    begin
      UniMainModule.NFE.DANFE.TipoDANFE      := tiRetrato;
      UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DANFeRetratoNovo.fr3';
      UniMainModule.aDanfe.PathPDF           := FFolder;
      UniMainModule.aDanfe.Sistema           := 'SisSoft Sistemas';
      UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
      UniMainModule.aDanfe.ImprimirDANFEPDF();
    end
    else
    begin
      UniMainModule.aDanfe.TipoDANFE         := tiNFCe;
      UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DanfeNFCe.fr3';
      UniMainModule.aDanfe.PathPDF           := FFolder;
      UniMainModule.aDanfe.Sistema           := 'SisSoft Sistemas';
      UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
      UniMainModule.aDanfe.ImprimirDANFEPDF();
    end;

    UniMainModule.ACBrMail1.From     := 'email@.com.br'; // edtFrom.text;
    UniMainModule.ACBrMail1.FromName := 'email@.com.br'; // edtFromName.text;
    UniMainModule.ACBrMail1.Host     := 'smtp.com.br'; // troque pelo seu servidor smtp
    UniMainModule.ACBrMail1.Username := 'email@.com.br';
    UniMainModule.ACBrMail1.Password := 'senha';
    UniMainModule.ACBrMail1.Port     := '587'; // troque pela porta do seu servidor smtp

    UniMainModule.NFE.NotasFiscais.Items[0].EnviarEmail(eEmail.Text,
      UniMainModule.qEmitenteEMAIL_ASSUNTO.AsString,
      mmEmailMsg.Lines,
       true                  // Enviar PDF junto
      , nil                  // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
      , nil);                // Lista de anexos - TStrings

    sleep(1000);
    ShowMessage('E-mail enviado!');
    pEmail.Visible := false;
end;

procedure TfNfeOP.dsNotasDataChange(Sender: TObject; Field: TField);
begin
    if UniMainModule.qNotasCabID.AsInteger > 0 then
    begin
        bEnviar.Enabled := true;
        WITH UniMainModule.qNotasItens do
        begin
            close;
            sql.Clear;
            sql.Add('select A.ID,A.SERIE,A.MODELO,A.COD_EMITENTE,A.IDPRODUTO,A.SEQ_PRODUTO,A.NCM,A.CFOP,A.NATUREZA,A.UN,A.QUANT,A.VLUNIT,A.BASEICMS');
            sql.Add(' ,A.VLICMS,A.ALIQICMS,A.BASE_IPI,A.VALOR_IPI,A.ALIQ_IPI,A.CST_CSOSN,A.CRED_ICMS,A.MVA,A.PREDICMS,A.CEST,A.EAN,A.ORIGEM');
            sql.Add(' ,A.CODIGO_ANP,A.DESCONTO,A.ACRESCIMO,A.FRETE,A.SEGURO,A.OUTROS,B.DESCRICAO,B.DESCRICAO_COMPLETA,B.CODIGO');
            sql.Add('from NOTAS_ITENS A, PRODUTOS B WHERE A.IDPRODUTO = B.IDPRODUTO');
            sql.Add('AND A.ID           = :i');
            sql.Add('AND A.SERIE        = :s');
            sql.Add('AND A.MODELO       = :m');
            sql.Add('AND A.COD_EMITENTE = :e');
            sql.Add('AND B.IDEMITENTE   = :p');
            ParamByName('i').AsInteger := UniMainModule.qNotasCabID.AsInteger;
            ParamByName('s').AsInteger := UniMainModule.qNotasCabSERIE.AsInteger;
            ParamByName('m').AsInteger := UniMainModule.qNotasCabMODELO.AsInteger;
            ParamByName('e').AsInteger := UniMainModule.qNotasCabCOD_EMITENTE.AsInteger;
            ParamByName('p').AsInteger := UniMainModule.qNotasCabCOD_EMITENTE.AsInteger;
            open;
        end;

        WITH UniMainModule.qNotasMsg do
        begin
            close;
            sql.Clear;
            sql.Add('select id,serie,modelo,cod_emitente,seq_msg,mensagem from notas_msg');
            sql.Add('where ID           = :i');
            sql.Add('AND   SERIE        = :s');
            sql.Add('AND   MODELO       = :m');
            sql.Add('AND   COD_EMITENTE = :e');
            sql.Add('order by seq_msg');
            ParamByName('i').AsInteger := UniMainModule.qNotasCabID.AsInteger;
            ParamByName('s').AsInteger := UniMainModule.qNotasCabSERIE.AsInteger;
            ParamByName('m').AsInteger := UniMainModule.qNotasCabMODELO.AsInteger;
            ParamByName('e').AsInteger := UniMainModule.qNotasCabCOD_EMITENTE.AsInteger;
            open;
        end;

        WITH UniMainModule.qEventoListar do
        begin
            close;
            sql.Clear;
            sql.Add('select * from TBEVENTOS');
            sql.Add('where NFENUMERO    = :i');
            sql.Add('AND   SERIE        = :s');
            sql.Add('AND   MODELO       = :m');
            sql.Add('AND   IDEMITENTE   = :e');
            sql.Add('order by CCE_SEQEVENTO');
            ParamByName('i').AsInteger := UniMainModule.qNotasCabID.AsInteger;
            ParamByName('s').AsInteger := UniMainModule.qNotasCabSERIE.AsInteger;
            ParamByName('m').AsInteger := UniMainModule.qNotasCabMODELO.AsInteger;
            ParamByName('e').AsInteger := UniMainModule.qNotasCabCOD_EMITENTE.AsInteger;
            open;
        end;
    end
    else
    begin
        bEnviar.Enabled := false;
        WITH UniMainModule.qNotasItens do
        begin
            close;
            sql.Clear;
            sql.Add('select A.ID,A.SERIE,A.MODELO,A.COD_EMITENTE,A.IDPRODUTO,A.SEQ_PRODUTO,A.NCM,A.CFOP,A.NATUREZA,A.UN,A.QUANT,A.VLUNIT,A.BASEICMS');
            sql.Add(' ,A.VLICMS,A.ALIQICMS,A.BASE_IPI,A.VALOR_IPI,A.ALIQ_IPI,A.CST_CSOSN,A.CRED_ICMS,A.MVA,A.PREDICMS,A.CEST,A.EAN,A.ORIGEM');
            sql.Add(' ,A.CODIGO_ANP,A.DESCONTO,A.ACRESCIMO,A.FRETE,A.SEGURO,A.OUTROS,B.DESCRICAO,B.DESCRICAO_COMPLETA,B.CODIGO');
            sql.Add('from NOTAS_ITENS A, PRODUTOS B WHERE A.IDPRODUTO=B.IDPRODUTO');
            sql.Add('AND 1=2');
            open;
        end;

        WITH UniMainModule.qNotasMsg do
        begin
            close;
            sql.Clear;
            sql.Add('select id,serie,modelo,cod_emitente,seq_msg,mensagem from notas_msg');
            sql.Add('where 1=2');
            open;
        end;

        WITH UniMainModule.qEventoListar do
        begin
            close;
            sql.Clear;
            sql.Add('select * from TBEVENTOS');
            sql.Add('where 1=2');
            open;
        end;
    end;
end;

procedure TfNfeOP.UniBitBtn10Click(Sender: TObject);
begin
  mostraoperacoes(false);
end;

procedure TfNfeOP.UniBitBtn11Click(Sender: TObject);
var
  xx         : TStringStream;
  nrProtcanc : STRING;
  cStat      : integer;
begin
    if eJustificativa.Text = '' then
    begin
        Showmessage('Informe a Justificativa do cancelamento');
        exit;
    end;

    if trim(eJustificativa.Text).Length < 16 then
    begin
        ShowMessage('Justificativa precisa ter no minimo 16 caracteres');
        exit;
    end;

    mostraoperacoes(false);

    if (UniMainModule.qNotasCabXML_NOTA.AsString <> '')  then
    begin
        UniMainModule.NFE.NotasFiscais.Clear;

        UniMainModule.LerConfiguracao(UniMainModule.qNotasCabMODELO.AsInteger);

        if UniMainModule.vctoCertificado <> '' then
           ShowMessage( UniMainModule.vctoCertificado );

        xx := TStringStream.create(UniMainModule.qNotasCabXML_NOTA.AsString);

        UniMainModule.NFe.NotasFiscais.clear;
        UniMainModule.NFe.NotasFiscais.LoadFromStream(xx);
        xx.Free;
        try
            if UniMainModule.qEmitenteTIPOCERTIFICADO.AsString = 'A3' then
            begin
                aguardarAssinatura
            end
            else
            begin
                UniMainModule.NFE.EventoNFe.Evento.Clear;
                UniMainModule.NFE.EventoNFe.idLote := 1;

                WITH UniMainModule.NFE.EventoNFe.Evento.Add DO
                BEGIN
                    if IncMinute(UniMainModule.NFE.NotasFiscais.Items[0].NFE.Ide.dEmi, 1) > now then
                        infEvento.dhEvento    := IncMinute(UniMainModule.NFE.NotasFiscais.Items[0].NFE.Ide.dEmi, 1)
                    else
                        infEvento.dhEvento    := now;
                    infEvento.tpEvento        := teCancelamento;
                    infEvento.detEvento.xJust := IfThen(eJustificativa.Text<>'',eJustificativa.Text,'Cancelamento Nota Fiscal Eletronica');
                END;

                UniMainModule.NFE.EnviarEvento(1);

                cStat := UniMainModule.NFE.WebServices.Retorno.cStat;

                if UniMainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt <> '' then
                    nrProtcanc := UniMainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt
                else
                    nrProtcanc := '';

                if not nrProtcanc.IsEmpty then
                begin
                    if (UniMainModule.qNotasCabMODELO.AsInteger = 55) then
                    begin
                       UniMainModule.tExecuta.StartTransaction;
                       UniMainModule.Executa.Close;
                       UniMainModule.Executa.SQL.Clear;
                       UniMainModule.Executa.SQL.Add('update notas_cab set XSTAT = :xstat, '+
                        ' STATUS_NOTA = ''C'', PROTOCOLO_CANC = :procan, DATA_CANCELA = :datac,'+
                        ' XML_NOTA = :xmln where ID = :id and SERIE = :se and modelo = :mo '+
                        ' and cod_emitente = :emi ');
                       UniMainModule.Executa.ParamByName('xstat').AsString  := cStat.ToString;
                       UniMainModule.Executa.ParamByName('procan').AsString := nrProtcanc;
                       UniMainModule.Executa.ParamByName('datac').asDate    := unimainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
                       UniMainModule.Executa.ParamByName('xmln').AsString   := UniMainModule.NFE.NotasFiscais.Items[0].XML;
                       UniMainModule.Executa.ParamByName('id').AsString     := UniMainModule.qNotasCabID.AsString;
                       UniMainModule.Executa.ParamByName('se').AsString     := UniMainModule.qNotasCabSERIE.AsString;
                       UniMainModule.Executa.ParamByName('mo').AsString     := UniMainModule.qNotasCabMODELO.AsString;
                       UniMainModule.Executa.ParamByName('emi').AsString    := UniMainModule.CodigoEmitente;
                       UniMainModule.Executa.ExecSQL;
                       UniMainModule.tExecuta.Commit;
                    end
                    else
                    begin
                       UniMainModule.tExecuta.StartTransaction;
                       UniMainModule.Executa.Close;
                       UniMainModule.Executa.SQL.Clear;
                       UniMainModule.Executa.SQL.Add('update notas_cab set XSTAT = :xstat, '+
                        ' STATUS_NOTA = ''C'', PROTOCOLO_CANC = :procan, DATA_CANCELA = :datac'+
                        ' where ID = :id and SERIE = :se and modelo = :mo '+
                        ' and cod_emitente = :emi ');
                       UniMainModule.Executa.ParamByName('xstat').AsString  := cStat.ToString;
                       UniMainModule.Executa.ParamByName('procan').AsString := nrProtcanc;
                       UniMainModule.Executa.ParamByName('datac').asDate    := unimainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
                       UniMainModule.Executa.ParamByName('id').AsString     := UniMainModule.qNotasCabID.AsString;
                       UniMainModule.Executa.ParamByName('se').AsString     := UniMainModule.qNotasCabSERIE.AsString;
                       UniMainModule.Executa.ParamByName('mo').AsString     := UniMainModule.qNotasCabMODELO.AsString;
                       UniMainModule.Executa.ParamByName('emi').AsString    := UniMainModule.CodigoEmitente;
                       UniMainModule.Executa.ExecSQL;
                       UniMainModule.tExecuta.Commit;
                    end;

                    with UniMainModule do
                    begin
                         qNotasItens.First;
                         while not qNotasItens.Eof do
                         begin
                              // volta para o estoque
                              AumentaEstoque(qNotasItensCOD_EMITENTE.AsInteger,qNotasItensIDPRODUTO.AsInteger
                              ,qNotasItensQUANT.Value);
                              qNotasItens.Next;
                         end;
                    end;

                    with UniMainModule do
                    begin
                         gravamsg(UniMainModule.qNotasCabID.AsInteger,UniMainModule.qNotasCabSERIE.AsInteger,
                         UniMainModule.qNotasCabMODELO.AsInteger,UniMainModule.qNotasCabCOD_EMITENTE.AsInteger,
                         ' '+UTF8Encode(unimainmodule.NFE.WebServices.EnvEvento.RetWS))
                    end;

                    ShowMessage( 'Nota cancelada com sucesso!');
                end;
            end;

        except on e: Exception do
        begin
              if cStat <= 0 then
                cStat := UniMainModule.NFE.WebServices.Retorno.cStat;
              if UTF8Encode(UniMainModule.NFE.WebServices.EnvEvento.RetWS) <> '' then
                gravamsg(UniMainModule.qNotasCabID.AsInteger,UniMainModule.qNotasCabSERIE.AsInteger,UniMainModule.qNotasCabMODELO.AsInteger,UniMainModule.qNotasCabCOD_EMITENTE.AsInteger,'Erro' + e.Message+' '+UTF8Encode(unimainmodule.NFE.WebServices.EnvEvento.RetWS))
              else
                gravamsg(UniMainModule.qNotasCabID.AsInteger,UniMainModule.qNotasCabSERIE.AsInteger,UniMainModule.qNotasCabMODELO.AsInteger,UniMainModule.qNotasCabCOD_EMITENTE.AsInteger,'Erro Tentar Cancelar!! ' + DateTimeToStr(now)+' '+e.Message);
               showmessage('Ocorreu o seguinte erro:!' + e.Message);
        end;
        end;
    end
    else
        ShowMessage( 'Nota não emitida!');
end;

procedure TfNfeOP.UniBitBtn12Click(Sender: TObject);
begin
     mostraoperacoes(false);
end;

procedure TfNfeOP.UniBitBtn13Click(Sender: TObject);
var
  lbase : tbase;
  idLote, nSeqCCe: integer;
  NomePdf,NomePdf2,NomePdf3,NomeXML,FFOLDER,FUrl : string;
begin
    mostraoperacoes(false);
    if UniMainModule.qNotasCabSTATUS_NOTA.AsString = 'A' then
    begin
        if mmCorrecao.Text = '' then
        begin
            ShowMessage('Você deve preecher o campo Correção para Continuar!');
            Abort;
            mmCorrecao.SetFocus;
        end;

        try
            idLote:=1;
            UniMainModule.qAux.Close;
            UniMainModule.qAux.SQL.Clear;
            UniMainModule.qAux.SQL.Text := 'select Max(CCE_SeqEvento) as SeqCCE from TBEventos '+
            ' Where IDEMITENTE = :IDEMITENTE AND NFENUMERO = :NFENUMERO AND TIPO = :TIPO ';
            UniMainModule.qAux.ParamByName('IDEMITENTE').value    := strToInt(UniMainModule.CodigoEmitente);
            UniMainModule.qAux.ParamByName('NFENUMERO').AsInteger := UniMainModule.qNotasCabID.asInteger;
            UniMainModule.qAux.ParamByName('TIPO').AsString       := 'teCCe';
            UniMainModule.qAux.Open;

        except on e : Exception do
            Showmessage('Não foi possível executar a consulta qAux em CC-e! '+e.Message);
        end;

        nSeqCCE := UniMainModule.qAux.FieldByName('SeqCCE').AsInteger + 1;

        if UniMainModule.qNotasCabMODELO.AsInteger = 55 then
            UniMainModule.NFE.Configuracoes.Arquivos.PathEvento :=  UniMainModule.caminhoArqs+'NFe\Evento'
        else
            UniMainModule.NFE.Configuracoes.Arquivos.PathEvento :=  UniMainModule.caminhoArqs+'NFce\Evento';

        UniMainModule.NFE.EventoNFe.Evento.Clear;

        with UniMainModule.NFE.EventoNFe.Evento.Add do
        begin
            infEvento.chNFe      := UniMainModule.soNumero(UniMainModule.qNotasCabCHAVE_ACESSO.asString);
            infEvento.CNPJ       := UniMainModule.soNumero(UniMainModule.qEmitenteCNPJ.asString);
            infEvento.dhEvento   := now;
            infEvento.tpEvento   := teCCe;
            infEvento.nSeqEvento := nSeqCCe;
            infEvento.detEvento.xCorrecao := mmCorrecao.text;
        end;

        try
            UniMainModule.NFE.EnviarEvento(idLote);

            UniMainModule.qEvento.open;
            UniMainModule.qEvento.Append;
            UniMainModule.qEventoID.value               := lbase.pegaseg('TBEVENTOS', 'ID',UniMainModule.Banco);
            UniMainModule.qEventoIDEmitente.value       := StrToInt(UniMainModule.codigoEmitente);
            UniMainModule.qEventoNFENumero.AsInteger    := UniMainModule.qNotasCabID.asInteger;
            UniMainModule.qEventoTipo.asString          := 'teCCe';
            UniMainModule.qEventoCCE_Correcao.AsString  := mmCorrecao.Text;
            UniMainModule.qEventoCCE_SeqEvento.AsInteger:= nSeqCCe;
            UniMainModule.qEventoData.AsDateTime        := now;
            UniMainModule.qEventoCCE_ChaveNFe.AsString  := UniMainModule.qNotasCabCHAVE_ACESSO.AsString;
            UniMainModule.qEventoSERIE.AsInteger        := UniMainModule.qNotasCabSERIE.AsInteger;
            UniMainModule.qEventoModelo.AsInteger       := UniMainModule.qNotasCabMODELO.AsInteger;
            UniMainModule.qEventoCCE_IdLote.AsInteger   := idLote;
            UniMainModule.qEventocStatus.AsInteger      := UniMainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat;
            UniMainModule.qEventoxMotivo.AsString       := UniMainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;
            UniMainModule.qEventoProtocolo.AsString     := UniMainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;
            UniMainModule.qEventoDHRecibo.AsDateTime    := UniMainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.dhRegEvento;
            UniMainModule.qEventoARQXML.AsBytes         := BytesOF(UniMainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.XML);
            UniMainModule.qEventoCaminho_XMLEvento.AsString:=UniMainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;
            UniMainModule.qEvento.post;
            UniMainModule.qEvento.ApplyUpdates;
            UniMainModule.qEvento.CommitUpdates;

            NomePDF  := UniMainModule.NFE.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;
            NomeXML  := UniMainModule.NFE.Configuracoes.Arquivos.PathNFe + '\' + NomePDF + '-nfe.xml';
            NomePDF2 := ExtractFileName(NomePDF);
            NomePdf3 := UniMainModule.soNumero(NomePdf2);
            FFolder  := UniServerModule.LocalCachePath;
            FUrl     := UniServerModule.LocalCacheURL + ExtractFileName(NomePDF3)+'-procEventoNFe.pdf';

            UniMainModule.NFE.DANFE.TipoDANFE      := tiRetrato;
            UniMainModule.aDanfe.FastFileEvento    := ExtractFilePath(ParamStr(0)) + 'EVENTOS.fr3';
            UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
            UniMainModule.aDanfe.Sistema           := 'www.notafacilweb.com.br';
            UniMainModule.adanfe.PathPDF           := UniServerModule.LocalCachePath;
            UniMainModule.NFE.ImprimirEventoPDF;

            with UniMainModule do
            begin
                 gravamsg(UniMainModule.qNotasCabID.AsInteger,UniMainModule.qNotasCabSERIE.AsInteger,
                 UniMainModule.qNotasCabMODELO.AsInteger,UniMainModule.qNotasCabCOD_EMITENTE.AsInteger,
                 ' '+UTF8Encode(unimainmodule.NFE.WebServices.EnvEvento.RetWS))
            end;

            fPDF.Caption          := NomePDF3;
            fPDF.UniURLFrame1.URL := FUrl;
            fPDF.ShowModal;

        except on e:exception do
          ShowMessage('Houve um erro! '+e.Message);
        end;
        pnlCCe.Visible := False;
    end;
end;

procedure TfNfeOP.UniBitBtn14Click(Sender: TObject);
begin
  mostraoperacoes(false);
end;

procedure TfNfeOP.UniBitBtn15Click(Sender: TObject);
var
  vnumero      : integer;
  modelo, serie: integer;
  sNomeArquivo : String;
begin
    try
        vNumero:=StrToInt(edtAno.Text);
    Except
        begin
          ShowMessage('O Ano não é um número válido! Corrija e tente novamente!');
          Abort;
          edtAno.SetFocus;
        end;
    end;

    try
      vNumero:=StrToInt(edtFxInicial.Text);
    except
      begin
        ShowMessage('A faixa Inicial não é um número válido! Corrija e tente novamente!');
        Abort;
        edtFxInicial.SetFocus;
      end;
    end;

    try
      vNumero:=StrToInt(edtFxFinal.Text);
    except
      begin
        ShowMessage('A faixa final não é um número válido! Corrija e tente novamente!');
        Abort;
        edtFxFinal.SetFocus;
      end;
    end;

    if mmJustificativa.Text = '' then
    begin
      ShowMessage('A Justificativa tem que ser preenchida!');
      Abort;
      mmJustificativa.SetFocus;
    end;
      ///////////////////////////////////////////////////
    if rNfeInutilizar.Checked = true then
    begin
         modelo := 55;
         UniMainModule.NFE.Configuracoes.Arquivos.PathInu := UniMainModule.caminhoArqs+'Nfe\Inutilizadas';
    end
    else
    begin
         modelo := 65;
         UniMainModule.NFE.Configuracoes.Arquivos.PathInu := UniMainModule.caminhoArqs+'Nfce\Inutilizadas';
         UniMainModule.NFE.Configuracoes.Geral.idcsc      := UniMainModule.qEmitenteIDTOKEN.AsString;
         UniMainModule.NFE.Configuracoes.Geral.csc        := UniMainModule.qEmitenteTOKEN.AsString;
    end;

    mostraoperacoes(false);
    Serie := UniMainModule.qEmitenteGeral_Serie.AsInteger;

    UniMainModule.NFE.WebServices.Inutiliza(UniMainModule.qEmitenteCNPJ.AsString, mmJustificativa.text,
    StrToInt(edtAno.text), Modelo, Serie, StrToInt(edtFxInicial.text), StrToInt(edtFxFinal.text));

    if UniMainModule.NFE.WebServices.Inutilizacao.cStat = 102 then
    begin
        sNomeArquivo := UniMainModule.NFE.Configuracoes.Arquivos.GetPathInu(UniMainModule.soNumero(UniMainModule.qEmitenteCNPJ.AsString))+
        '\'+copy(UniMainModule.NFE.WebServices.Inutilizacao.ID,3,41)+'-procInutNFe.xml';
        if FileExists(sNomeArquivo) then
        begin

             UniMainModule.qNotasCab.Edit;
             if UniMainModule.NFE.WebServices.Inutilizacao.cStat > 0 then
             UniMainModule.qNotasCabXSTAT.AsInteger         := UniMainModule.NFE.WebServices.Inutilizacao.cStat;
             UniMainModule.qNotasCabSTATUS_NOTA.AsString    := 'I';

             if (UniMainModule.qNotasCabMODELO.AsInteger = 55) then
               UniMainModule.qNotasCabXML_NOTA.AsString     :=  UniMainModule.NFE.NotasFiscais.Items[0].XML;

             UniMainModule.qNotasCab.post;
             UniMainModule.qNotasCab.ApplyUpdates;
             UniMainModule.qNotasCab.CommitUpdates;

             UniMainModule.NFE.InutNFe.LerXML(sNomeArquivo);
        end;
    end;
    pnlInutilizacao.Visible:=False;
    pnlInutilizacao.SendToBack;
end;

procedure TfNfeOP.UniBitBtn16Click(Sender: TObject);
begin
  close;
end;

procedure TfNfeOP.UniBitBtn1Click(Sender: TObject);
begin
     UniMainModule.NFe.WebServices.StatusServico.Executar;

     showmessage(
     'Status do Serviço: '  +UniMainModule.NFe.WebServices.StatusServico.xMotivo+#13#10+
     'Versão do Aplicativo: ' +UniMainModule.NFe.WebServices.StatusServico.verAplic +#13#10+
     'Código do Status: '    +IntToStr(UniMainModule.NFe.WebServices.StatusServico.cStat)+#13#10
      );
end;

procedure TfNfeOP.UniBitBtn2Click(Sender: TObject);
begin
      edtAno.Text       := IntToStr( YearOf( date ) );
      edtFxInicial.Text := UniMainModule.qNotasCabID.AsString;
      edtFxFinal.Text   := UniMainModule.qNotasCabID.AsString;

      mostraoperacoes(true);
      pgOperacoes.ActivePage  := tsInutilizar;
      tsInutilizar.Visible    := true;
end;

procedure TfNfeOP.UniBitBtn3Click(Sender: TObject);
begin
     close;
end;

procedure TfNfeOP.bConsultarNotaClick(Sender: TObject);
var
  xx     : TStringStream;
begin
  if (UniMainModule.qNotasCabXML_NOTA.AsString <> '')  then
  begin
    UniMainModule.NFE.NotasFiscais.Clear;

    UniMainModule.LerConfiguracao(UniMainModule.qNotasCabMODELO.AsInteger);

    if UniMainModule.vctoCertificado <> '' then
       ShowMessage( UniMainModule.vctoCertificado );

    xx := TStringStream.create(UniMainModule.qNotasCabXML_NOTA.AsString);
    UniMainModule.NFe.NotasFiscais.clear;
    UniMainModule.NFe.NotasFiscais.LoadFromStream(xx);
    xx.Free;
    UniMainModule.NFe.Consultar;
    If UniMainModule.NFe.WebServices.Consulta.xMotivo = 'Rejeicao: NF-e nao consta na base de dados da SEFAZ' then
      gravamsg(UniMainModule.qNotasCabID.AsInteger,UniMainModule.qNotasCabSERIE.AsInteger,
         UniMainModule.qNotasCabMODELO.AsInteger,UniMainModule.TRdata^.CodigoEmitente,UniMainModule.NFE.WebServices.Consulta.xMotivo + ' ' + DateTimeToStr(now));
    try
      UniMainModule.NFE.WebServices.Consulta.Executar;

      if UniMainModule.NFE.WebServices.Consulta.cStat = 217 then
      begin
        ShowMessage('Consulta retornou, NF-e não consta na base da dados do Sefaz: ERRO 217');
        UniMainModule.qNotasCab.Edit;
        UniMainModule.qNotasCabCSTAT.AsInteger := 217;
        UniMainModule.qNotasCab.post;
        UniMainModule.qNotasCab.ApplyUpdates;
        UniMainModule.qNotasCab.CommitUpdates;
      end
      else
      if UniMainModule.NFE.WebServices.Consulta.cStat = 100 then
      begin
        ShowMessage( 'Consulta retornou, NF-e consta na base da dados do Sefaz');
        UniMainModule.qNotasCab.Edit;
        UniMainModule.qNotasCabXSTAT.AsInteger      := 100;
        UniMainModule.qNotasCabSTATUS_NOTA.AsString := 'A';
        UniMainModule.qNotasCabPROTOCOLO.AsString   := UniMainModule.NFE.WebServices.Consulta.protNFe.nProt;
        if (UniMainModule.qNotasCabMODELO.AsInteger = 55) then
          UniMainModule.qNotasCabXML_NOTA.AsString  :=  UniMainModule.NFE.NotasFiscais.Items[0].XML;
        UniMainModule.qNotasCab.post;
        UniMainModule.qNotasCab.ApplyUpdates;
        UniMainModule.qNotasCab.CommitUpdates;
      end
      else
      if UniMainModule.NFE.WebServices.Consulta.cStat = 102 then
      begin
        ShowMessage( 'Consulta retornou, NF-e Inutilizada na base de dados do Sefaz');
        UniMainModule.qNotasCab.Edit;
        UniMainModule.qNotasCabXSTAT.AsInteger      := 102;
        UniMainModule.qNotasCabSTATUS_NOTA.AsString := 'I';
        UniMainModule.qNotasCabPROTOCOLO.AsString   := UniMainModule.NFE.WebServices.Consulta.protNFe.nProt;
        if (UniMainModule.qNotasCabMODELO.AsInteger = 55) then
          UniMainModule.qNotasCabXML_NOTA.AsString  :=  UniMainModule.NFE.NotasFiscais.Items[0].XML;
        UniMainModule.qNotasCab.post;
        UniMainModule.qNotasCab.ApplyUpdates;
        UniMainModule.qNotasCab.CommitUpdates;
      end
      else
         ShowMessage('Erro não catalogado no sistema: Codigo = '+UniMainModule.NFE.WebServices.Consulta.cStat.ToString);

    except
      on e: Exception do
        ShowMessage( 'Ocorreu o seguinte erro:!' + e.Message);
    end;
  end
  else
    ShowMessage( 'Nota não emitida!');
end;

procedure TfNfeOP.gavamsg(const id, serie, modelo, codemitente: integer;
  msg: string);
var
  vdataset : TDataSet;
  lseqmsg : integer;
begin
    UniMainModule.Banco.ExecSQL('select max(SEQ_MSG) codigo from NOTAS_MSG '+
               ' where ID = '+UniMainModule.qNotasCabID.ToString+' and SERIE = '+
               UniMainModule.qNotasCabSERIE.ToString+' and MODELO = '+
               UniMainModule.qNotasCabMODELO.ToString+' and COD_EMITENTE = '+
               UniMainModule.qNotasCabCOD_EMITENTE.AsString,vdataset);

    if not vdataset.Eof then
    begin
      if vdataset.FieldByName('codigo').AsString <> '' then
        lseqmsg := vdataset.FieldByName('codigo').AsInteger + 1
      else
        lseqmsg := 1;
    end
    else
      lseqmsg := 1;

    UniMainModule.Banco.StartTransaction;
    UniMainModule.Banco.ExecSQL('insert into NOTAS_MSG (ID,SERIE,MODELO,COD_EMITENTE,SEQ_MSG,MENSAGEM) '+
         ' values (:ID, :SERIE, :MODELO, :COD_EMITENTE, :SEQ_MSG, :MENSAGEM)',[UniMainModule.qNotasCabID.AsInteger,
         UniMainModule.qNotasCabSERIE.AsInteger,UniMainModule.qNotasCabMODELO.AsInteger,
         UniMainModule.qNotasCabCOD_EMITENTE.AsInteger,lseqmsg.ToString,QuotedStr(msg)]);
    UniMainModule.Banco.Commit;
end;

procedure TfNfeOP.gravamsg(const id,serie,modelo,codemitente:integer ; msg:string);
var
  vdataset : TDataSet;
  lseqmsg : integer;
begin
  UniMainModule.Banco.ExecSQL('select max(SEQ_MSG) codigo from NOTAS_MSG '+
             ' where ID='+ID.ToString+' and SERIE='+serie.ToString+' and MODELO='+
             MODELO.ToString+' and COD_EMITENTE='+codemitente.ToString,vdataset);
  if not vdataset.Eof then
  begin
    if vdataset.FieldByName('codigo').AsString <> '' then
      lseqmsg := vdataset.FieldByName('codigo').AsInteger + 1
    else
      lseqmsg := 1;
  end else
    lseqmsg := 1;
  UniMainModule.Banco.StartTransaction;
  UniMainModule.Banco.ExecSQL('insert into NOTAS_MSG (ID,SERIE,MODELO,COD_EMITENTE,SEQ_MSG,MENSAGEM) '+
       ' values (:ID, :SERIE, :MODELO, :COD_EMITENTE, :SEQ_MSG, :MENSAGEM)',[ID,SERIE,MODELO,codemitente,lseqmsg.ToString,msg.QuotedString]);
  UniMainModule.Banco.Commit;
end;

procedure TfNfeOP.bDanfeClick(Sender: TObject);
var
  xx                    : TStringStream;
  arqpdf                : String;
  NomePDF, FFolder, FUrl: String;
  ArquivoPDF            : String;
begin
  if not UniMainModule.qNotasCab.Active then
    exit;

  if UniMainModule.qNotasCabXML_NOTA.AsString <> '' then
  begin
    UniMainModule.posVenda := 'N';

    xx := TStringStream.create(UniMainModule.qNotasCabXML_NOTA.AsString);

    UniMainModule.NFE.NotasFiscais.Clear;
    UniMainModule.NFE.NotasFiscais.LoadFromstream(xx);

    NomePDF := UniMainModule.soNumero(UniMainModule.NFE.NotasFiscais.Items[0].NFE.infNFe.ID);
    FFolder := UniServerModule.LocalCachePath;
    FUrl    := UniServerModule.LocalCacheURL + ExtractFileName(arqpdf);


    if UniMainModule.qEmitenteLOGO.AsString <> '' then
       UniMainModule.aDanfe.Logo := UniMainModule.qEmitenteLOGO.AsString;

    if UniMainModule.qNotasCabMODELO.AsInteger = 55 then
    begin
      UniMainModule.aDanfe.MargemDireita     := 6;
      UniMainModule.aDanfe.MargemEsquerda    := 6;
      UniMainModule.aDanfe.MargemDireita     := 8;
      UniMainModule.aDanfe.MargemDireita     := 8;

      UniMainModule.NFE.DANFE.TipoDANFE      := tiRetrato;
      UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DANFeRetratoNovo.fr3';
      UniMainModule.aDanfe.PathPDF           := FFolder;
      UniMainModule.aDanfe.Sistema           := 'Nota Facil';
      UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
      UniMainModule.aDanfe.ImprimirDANFEPDF();
    end
    else
    begin
      UniMainModule.aDanfe.MargemDireita     := 0.6;
      UniMainModule.aDanfe.MargemEsquerda    := 0.6;
      UniMainModule.aDanfe.MargemDireita     := 0.8;
      UniMainModule.aDanfe.MargemDireita     := 0.8;

      UniMainModule.aDanfe.TipoDANFE         := tiNFCe;
      UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DanfeNFCe.fr3';
      UniMainModule.aDanfe.PathPDF           := FFolder;
      UniMainModule.aDanfe.Sistema           := 'Nota Facil';
      UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
      UniMainModule.aDanfe.ImprimirDANFEPDF();
    end;

    ArquivoPDF            := NomePDF + '-nfe.pdf';
    fPDF.Caption          := ArquivoPDF;
    fPDF.UniURLFrame1.URL := FUrl + ArquivoPDF;
    fPDF.Show();
  end
  else
    ShowMessage('Nota não emitida!');
end;

procedure TfNfeOP.bEmailClick(Sender: TObject);
begin
    mostraoperacoes(true);
    pgOperacoes.ActivePage := tsMail;
    pEmail.Visible := true;
    eEmail.Clear;
    eEmail.SetFocus;
end;

procedure TfNfeOP.bPDFClick(Sender: TObject);
var
  xx                    : TStringStream;
  arqpdf                : String;
  NomePDF, FFolder, FUrl: String;
  ArquivoPDF            : String;
begin
    if not UniMainModule.qNotasCab.Active then
       exit;

    if UniMainModule.qNotasCabXML_NOTA.AsString <> '' then
    begin
        xx := TStringStream.create(UniMainModule.qNotasCabXML_NOTA.AsString);
        UniMainModule.NFE.NotasFiscais.Clear;
        UniMainModule.NFE.NotasFiscais.LoadFromstream(xx);

        NomePDF := UniMainModule.soNumero(UniMainModule.NFE.NotasFiscais.Items[0].NFE.infNFe.ID);
        FFolder := UniServerModule.LocalCachePath;
        FUrl    := UniServerModule.LocalCacheURL + ExtractFileName(arqpdf);

        if UniMainModule.qNotasCabMODELO.AsInteger = 55 then
        begin
            UniMainModule.NFE.DANFE.TipoDANFE      := tiRetrato;
            UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DANFeRetratoNovo.fr3';
            UniMainModule.aDanfe.PathPDF           := FFolder;
            UniMainModule.aDanfe.Sistema           := 'Nota Facil';
            UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;

            UniMainModule.aDanfe.ImprimirDANFEPDF();
        end
        else
        begin
            UniMainModule.aDanfe.TipoDANFE         := tiNFCe;
            UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DanfeNFCe.fr3';
            UniMainModule.aDanfe.PathPDF           := FFolder;
            UniMainModule.aDanfe.Sistema           := 'Nota Facil';
            UniMainModule.aDanfe.PathPDF           := UniServerModule.LocalCachePath;
            UniMainModule.aDanfe.ImprimirDANFEPDF();
        end;

        ArquivoPDF := NomePDF + '-nfe.pdf';
        UniSession.SendFile(FFolder + ArquivoPDF);
    end
    else
      ShowMessage( 'Nota não emitida!');
end;

procedure TfNfeOP.bXMLescritorioClick(Sender: TObject);
begin
     fXmlEscritorio.showModal;
end;

procedure TfNfeOP.bContingenciaClick(Sender: TObject);
var
  ArquivoXML,RetornoWS,CHAVE_ACESSO,PROTOCOLO,XML_NOTA: String;
  xxx : TStringStream;
  CSTAT,ID,SERIE,MODELO,COD_EMITENTE : Integer;
  DATA_HORARECIBO : TDateTime;
begin
      try
          if ((UniMainModule.qNotasCabSTATUS_NOTA.AsString <> 'A') and
              (UniMainModule.qNotasCabAMBIENTE.AsInteger = 0)) then
          begin
               ShowMessage('Esta nota não foi emitida em contingencia!');
               abort;
          end;

          UniMainModule.NFE.NotasFiscais.Clear;
          xxx := TStringStream.create( UniMainModule.qNotasCabXML_NOTA.AsString);
          UniMainModule.NFE.NotasFiscais.LoadFromStream(xxx,true);

          ID              := UniMainModule.qNotasCabID.AsInteger;
          SERIE           := UniMainModule.qNotasCabSERIE.AsInteger;
          MODELO          := UniMainModule.qNotasCabMODELO.AsInteger;
          COD_EMITENTE    := UniMainModule.CodigoEmitente.ToInteger;

          if MODELO = 65 then
          begin
              UniMainModule.NFE.Configuracoes.Geral.idcsc := UniMainModule.qEmitenteIDTOKEN.AsString;
              UniMainModule.NFE.Configuracoes.Geral.csc   := UniMainModule.qEmitenteTOKEN.AsString;
          end;

          UniMainModule.NFE.Enviar(1, false, true);

          CHAVE_ACESSO    := UniMainModule.NFE.NotasFiscais.Items[0].NFE.infNFe.ID;
          CSTAT           := UniMainModule.NFE.WebServices.Enviar.cStat;
          RetornoWS       := UTF8Encode(UniMainModule.NFE.WebServices.Enviar.RetornoWS);
          XML_NOTA        := UniMainModule.NFE.NotasFiscais.Items[0].XML;
          PROTOCOLO       := UniMainModule.NFE.NotasFiscais.Items[0].NFE.procNFe.nProt;
          DATA_HORARECIBO := UniMainModule.NFE.NotasFiscais.Items[0].NFE.procNFe.dhRecbto;

          if (CSTAT = 100) or (CSTAT = 150) then  // autorizada e autorizada fora do prazo
          begin
              UniMainModule.Banco.StartTransaction;
              UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA = ''A'', protocolo = :p1, '+
              ' XML_NOTA = :p2, CHAVE_ACESSO = :p3, DATA_HORARECIBO = :p4, CSTAT = :p5 where ID = :p7'+
              ' and SERIE = :p8 and modelo = :p9 and cod_emitente = :p10 ',[QuotedStr(PROTOCOLO),
              QuotedStr(XML_NOTA),CHAVE_ACESSO,FormatDateTime('YYYY/MM/DD hh:nn:ss',DATA_HORARECIBO),
              CSTAT.ToString, ID.ToString, SERIE.ToString, MODELO.ToString, COD_EMITENTE.ToString]);
              UniMainModule.Banco.Commit;

              ShowMessage('Nota enviado com sucesso!');
          end;
      except
          on e: Exception do
          begin
              //////////////    arrumar aki depois para o certificado A3

              CHAVE_ACESSO    := UniMainModule.NFE.NotasFiscais.Items[0].NFE.infNFe.ID;
              if CSTAT <= 0 then
                CSTAT         := UniMainModule.NFE.WebServices.Enviar.cStat;
              if (CSTAT <= 0) and (UniMainModule.NFE.WebServices.Retorno.cStat > 0) then
                CSTAT         := UniMainModule.NFE.WebServices.Retorno.cStat;

              RetornoWS       := UTF8Encode(UniMainModule.NFE.WebServices.Retorno.RetornoWS);

              if (CSTAT = 301) or (CSTAT = 302) then    // denegada
              begin
                UniMainModule.Banco.StartTransaction;
                UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA = ''D'', CHAVE_ACESSO = '+
                CHAVE_ACESSO.QuotedString+', CSTAT = '+CSTAT.ToString+' where ID = '+ID.ToString+
                ' and SERIE = '+SERIE.ToString+' and modelo = '+
                MODELO.ToString+' and cod_emitente = '+COD_EMITENTE.ToString);
                UniMainModule.Banco.Commit;
              end
              else if (CSTAT = 204) then
              begin
                UniMainModule.Banco.StartTransaction;
                UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA =''R''  ,CHAVE_ACESSO = '+
                CHAVE_ACESSO.QuotedString+', CSTAT = '+CSTAT.ToString+' where ID = '+ID.ToString+
                ' and SERIE = '+SERIE.ToString+' and modelo = '+MODELO.ToString+' and cod_emitente = '+
                COD_EMITENTE.ToString);
                UniMainModule.Banco.Commit;
              end
              ELSE if (CSTAT = 206) THEN    // inutilizada
              BEGIN
                UniMainModule.Banco.StartTransaction;
                UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA = ''I'', CHAVE_ACESSO = '+
                CHAVE_ACESSO.QuotedString+', CSTAT = '+QuotedStr(CSTAT.ToString)+' where ID = '+ID.ToString+
                ' and SERIE = '+SERIE.ToString+' and modelo = '+MODELO.ToString+' and cod_emitente = '+COD_EMITENTE.ToString);
                UniMainModule.Banco.Commit;
              end
              else if (CSTAT <> 100) and (CSTAT <> 150)  and (CSTAT > 0)  then   // rejeitada
              begin
                UniMainModule.Banco.StartTransaction;
                UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA = ''R'', CHAVE_ACESSO = '+
                CHAVE_ACESSO.QuotedString+', CSTAT = '+QuotedStr(CSTAT.ToString)+' where ID = '+ID.ToString+
                ' and SERIE = '+SERIE.ToString+' and modelo = '+MODELO.ToString+' and cod_emitente = '+COD_EMITENTE.ToString);
                UniMainModule.Banco.Commit;
              end;
              showmessage('Erro: '+e.Message + #13 + #10 +RetornoWS+' Houve um erro ao transmitir a NF-e. Tente novamente.');
          end;
      end;
end;

procedure TfNfeOP.bEnviarClick(Sender: TObject);
var
  vitens        : TVendasitens;
  nindex, tIndex: integer;
  vqtditens     : integer;
  vproduto      : TProdutos;
  vdataset      : tdataset;
begin
  try
    if UniMainModule.qNotasCabID.AsString <> '' then
    begin
      if (UniMainModule.qNotasCabSTATUS_NOTA.AsString = 'A') then
      begin
        ShowMessage( 'Nota ja emitida!');
        exit;
      end;

      if (UniMainModule.qNotasCabSTATUS_NOTA.AsString = 'C') then
      begin
        ShowMessage( 'Nota Cancelada!');
        exit;
      end;

      UniMainModule.LerConfiguracao(UniMainModule.qNotasCabMODELO.AsInteger);

      if UniMainModule.vctoCertificado <> '' then
         ShowMessage( UniMainModule.vctoCertificado );

      UniMainModule.TRdata^.xmodelo := UniMainModule.qNotasCabMODELO.AsInteger;

      if (Assigned(vlistavenda)) then
          FreeAndNil(vlistavenda);

      if not(Assigned(vlistavenda)) then
          vlistavenda := TNotasCab.create;

      vlistavenda.ID            := UniMainModule.qNotasCabID.AsInteger;
      vlistavenda.DTEMISSAO     := UniMainModule.qNotasCabDTEMISSAO.AsDateTime;
      vlistavenda.DTSAIDA       := UniMainModule.qNotasCabDTSAIDA.AsDateTime;
      vlistavenda.modelo        := UniMainModule.qNotasCabMODELO.AsInteger;
      vlistavenda.COD_EMITENTE  := UniMainModule.qNotasCabCOD_EMITENTE.AsInteger;
      vlistavenda.serie         := UniMainModule.qNotasCabSERIE.AsInteger;
      vlistavenda.NATUREZA_OPER := UniMainModule.qNotasCabNATUREZA_OPER.AsString;
      vlistavenda.CFOPVENDA     := UniMainModule.qNotasCabCFOPVENDA.AsString;
      vlistavenda.IDTRANSP      := UniMainModule.qNotasCabIDTRANSP.AsInteger;
      vlistavenda.TIPONOTA      := 1;
      vlistavenda.ALIQ_SIMPLES  := 0;

      if UniMainModule.qNotasCabMODELO.AsInteger = 55 then
      begin
        vlistavenda.IDCLIENTE       := UniMainModule.qNotasCabIDCLIENTE.AsInteger;
        vlistavenda.CONSUMIDORFINAL := UniMainModule.Banco.ExecSQLScalar
          ('select CONSUMIDORFINAL from CLIENTES where IDCLIENTE=' + vlistavenda.IDCLIENTE.ToString + ' and IDEMITENTE='
          + vlistavenda.COD_EMITENTE.ToString);
      end;

      vlistavenda.CPF_CONSUMIDOR    := UniMainModule.qNotasCabCPF_CONSUMIDOR.AsString;
      vlistavenda.NOME_CONSUMIDOR   := UniMainModule.qNotasCabNOME_CONSUMIDOR.AsString;
      vlistavenda.TIPOFRETE         := UniMainModule.qNotasCabTIPOFRETE.AsInteger;
      vlistavenda.STATUS_NOTA       := 'P';
      vlistavenda.AMBIENTE          := UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger;
      vlistavenda.tipoEmissao       := 1;
      vlistavenda.FINALIDADE        := 1;
      vlistavenda.BASE_ICMS         := UniMainModule.qNotasCabBASE_ICMS.AsExtended;
      vlistavenda.VALOR_ICMS        := UniMainModule.qNotasCabVALOR_ICMS.AsExtended;
      vlistavenda.VALOR_ICMS_ST     := UniMainModule.qNotasCabVALOR_ICMS_ST.AsExtended;
      vlistavenda.BASE_ICMS_ST      := UniMainModule.qNotasCabBASE_ICMS_ST.AsExtended;
      vlistavenda.VALOR_ACRESCIMO   := UniMainModule.qNotasCabVALOR_ACRESCIMO.AsExtended;
      vlistavenda.VALOR_FRETE       := UniMainModule.qNotasCabVALOR_FRETE.AsExtended;
      vlistavenda.VALOR_DESCONTO    := UniMainModule.qNotasCabVALOR_DESCONTO.AsExtended;
      vlistavenda.VALOR_SEGURO      := UniMainModule.qNotasCabVALOR_SEGURO.AsExtended;
      vlistavenda.VALOR_OUTRAS_DESP := UniMainModule.qNotasCabVALOR_OUTRAS_DESP.AsExtended;
      vlistavenda.VALOR_IPI         := UniMainModule.qNotasCabVALOR_IPI.AsExtended;
      vlistavenda.BASE_IPI          := UniMainModule.qNotasCabBASE_IPI.AsExtended;
      vlistavenda.TOTAL_PRODUTOS    := UniMainModule.qNotasCabTOTAL_PRODUTOS.AsExtended;
      vlistavenda.TOTAL_NOTA        := UniMainModule.qNotasCabTOTAL_NOTA.AsExtended;
      vlistavenda.QUANT             := UniMainModule.qNotasCabQUANT.AsExtended;
      vlistavenda.ESPECIE           := UniMainModule.qNotasCabESPECIE.AsString;
      vlistavenda.MARCA             := UniMainModule.qNotasCabMARCA.AsString;
      vlistavenda.NUMERO            := UniMainModule.qNotasCabNUMERO.AsString;
      vlistavenda.PESOBRUTO         := UniMainModule.qNotasCabPESOBRUTO.AsExtended;
      vlistavenda.PESOLIQUIDO       := UniMainModule.qNotasCabPESOLIQUIDO.AsExtended;
      vlistavenda.DADOS_ADICIONAIS  := UniMainModule.qNotasCabDADOS_ADICIONAIS.AsString;
      vlistavenda.FORMA_PGTO        := UniMainModule.qNotasCabFORMA_PGTO.AsString;
      vlistavenda.AMBIENTE          := UniMainModule.qNotasCabAMBIENTE.AsInteger;
      vlistavenda.tipoEmissao       := UniMainModule.qNotasCabTIPOEMISSAO.AsInteger;
      vlistavenda.FINALIDADE        := UniMainModule.qNotasCabFINALIDADE.AsInteger;

      UniMainModule.Banco.ExecSQL
        ('select a.ID,a.SERIE,a.MODELO,a.COD_EMITENTE,a.IDPRODUTO,a.SEQ_PRODUTO,A.NCM,a.CFOP,a.NATUREZA,a.UN,a.QUANT,a.VLUNIT,a.BASEICMS '
        + ' ,a.VLICMS,a.ALIQICMS,a.BASE_IPI,a.VALOR_IPI,a.ALIQ_IPI,a.CST_CSOSN,a.CRED_ICMS,a.MVA,a.PREDICMS,a.CEST,a.EAN,a.ORIGEM  '
        + ' ,a.CODIGO_ANP,a.DESCONTO,a.ACRESCIMO,a.FRETE,a.SEGURO,a.OUTROS,B.DESCRICAO from NOTAS_ITENS a,PRODUTOS B ' +
        ' WHERE A.IDPRODUTO=B.IDPRODUTO AND A.COD_EMITENTE=B.IDEMITENTE AND a.ID=' + vlistavenda.ID.ToString +
        ' and a.serie=' + vlistavenda.serie.ToString + ' and a.modelo=' + vlistavenda.modelo.ToString +
        ' and a.COD_EMITENTE=' + vlistavenda.COD_EMITENTE.ToString, vdataset);

      while not vdataset.Eof do
      begin
          vlistavenda.ItensNota.Add(TVendasitens.create);
          WITH vlistavenda.ItensNota.Last do
          begin
              id_item     := vdataset.FieldByName('IDPRODUTO').AsInteger;
              descricao   := vdataset.FieldByName('DESCRICAO').AsString;
              qtd         := vdataset.FieldByName('QUANT').AsExtended;
              preco_unit  := vdataset.FieldByName('VLUNIT').AsExtended;
              ncm         := vdataset.FieldByName('NCM').AsString;
              cest        := vdataset.FieldByName('CEST').AsString;
              cfop        := vdataset.FieldByName('CFOP').AsString;
              cst         := vdataset.FieldByName('CST_CSOSN').AsString;
              csosn       := vdataset.FieldByName('CST_CSOSN').AsString;
              origem      := vdataset.FieldByName('ORIGEM').AsInteger;
              EAN         := vdataset.FieldByName('EAN').AsString;
              seq_item    := vdataset.FieldByName('SEQ_PRODUTO').AsInteger;
              unidade     := vdataset.FieldByName('UN').AsString;
              frete       := vdataset.FieldByName('FRETE').AsExtended;
              desconto    := vdataset.FieldByName('desconto').AsExtended;
              seguro      := vdataset.FieldByName('SEGURO').AsExtended;
              outros      := vdataset.FieldByName('OUTROS').AsExtended;
              CODIGO_ANP  := vdataset.FieldByName('CODIGO_ANP').AsString;
              ALIQICMS    := vdataset.FieldByName('ALIQICMS').AsExtended;
              PREDICMS    := vdataset.FieldByName('PREDICMS').AsExtended;
              mva         := vdataset.FieldByName('MVA').AsExtended;
              VALOR_ICMS  := vdataset.FieldByName('VLICMS').AsExtended;
          end;
          vdataset.Next;
      end;

      UniMainModule.Banco.ExecSQL
        ('select ID,SERIE,MODELO,COD_EMITENTE,PARCELA,EMISSAO,VENCIMENTO,VALOR,TIPO_FATURA from NOTAS_FORMAS ' +
        ' WHERE ID=' + vlistavenda.ID.ToString + ' and serie=' + vlistavenda.serie.ToString + ' and modelo=' +
        vlistavenda.modelo.ToString + ' and COD_EMITENTE=' + vlistavenda.COD_EMITENTE.ToString, vdataset);

      while not vdataset.Eof do
      begin
          vlistavenda.formasNF.Add(TFormasNF.create);
          WITH vlistavenda.formasNF.Last do
          begin
              parcela     := vdataset.FieldByName('PARCELA').AsInteger;
              emissao     := vdataset.FieldByName('EMISSAO').AsDateTime;
              vencimento  := vdataset.FieldByName('VENCIMENTO').AsDateTime;
              valor       := vdataset.FieldByName('VALOR').AsExtended;
              tipo_fatura := vdataset.FieldByName('TIPO_FATURA').AsString;
          end;
          vdataset.Next;
      end;
      vlistavenda.AdicionaNotaNoComponente;
    end;

  finally
    if (Assigned(vlistavenda)) then
      FreeAndNil(vlistavenda);
  end;
end;

procedure TfNfeOP.aguardarAssinatura;
var  contador : integer;
begin

end;

procedure TfNfeOP.bCancelarClick(Sender: TObject);
begin
      if (UniMainModule.qNotasCabSTATUS_NOTA.AsString = 'A') then
      begin
          mostraoperacoes(True);
          pgOperacoes.ActivePageIndex := 3;
          pCancelamento.Visible := true;
          eJustificativa.Clear;
          eJustificativa.SetFocus;
      end
      else if (UniMainModule.qNotasCabSTATUS_NOTA.AsString = 'C')  then
          ShowMessage('Esta Nota Fiscal Eletrônica Já foi Cancelada!');
end;

procedure TfNfeOP.bCCeClick(Sender: TObject);
begin
  if UniMainModule.qNotasCabMODELO.AsInteger = 55 then
  begin
    mostraoperacoes(true);
    tsCCe.Visible := true;
    pgOperacoes.ActivePage := tsCCe;
  end
  else
    showmessage('Cartao de correção pode ser usada para este tipo de documento');
end;

procedure TfNfeOP.bInutilizarClick(Sender: TObject);
var
  lano,lmes,ldia : word;
  sNomeArquivo: string;
  NomePdf,NomePdf2,NomePdf3,NomeXML,FFOLDER,FUrl : string;
begin
    try
        DecodeDate(date,lano,lmes,ldia);

        if not UniMainModule.qNotasCab.Active then
            exit;

        if UniMainModule.qNotasCabCSTAT.AsInteger = 102 then
        begin
            ShowMessage('Numero ja inutilizado!');
            exit;
        end;

        if UniMainModule.qNotasCabCSTAT.AsInteger = 100 then
        begin
            ShowMessage('Nota ja transmitida!');
            exit;
        end;

        if UniMainModule.qNotasCabID.AsInteger > 0  then
        begin
            if UniMainModule.qNotasCabMODELO.AsInteger = 55 then
            begin
                 UniMainModule.NFE.Configuracoes.Arquivos.PathInu := UniMainModule.caminhoArqs+'Nfe\Inutilizadas';
            end
            else
            begin
                 UniMainModule.NFE.Configuracoes.Arquivos.PathInu := UniMainModule.caminhoArqs+'Nfce\Inutilizadas';
                 UniMainModule.NFE.Configuracoes.Geral.idcsc      := UniMainModule.qEmitenteIDTOKEN.AsString;
                 UniMainModule.NFE.Configuracoes.Geral.csc        := UniMainModule.qEmitenteTOKEN.AsString;
            end;

            UniMainModule.NFE.WebServices.Inutiliza(UniMainModule.qEmitenteCNPJ.AsString, 'Faixa de Nota fiscal nao sera mais utilizada',
            lano, UniMainModule.qNotasCabMODELO.AsInteger,UniMainModule.qNotasCabSERIE.AsInteger, UniMainModule.qNotasCabID.AsInteger,
            UniMainModule.qNotasCabID.AsInteger);

            if UniMainModule.NFE.WebServices.Inutilizacao.cStat = 102 then
            begin
                UniMainModule.tExecuta.StartTransaction;
                UniMainModule.Executa.Close;
                UniMainModule.Executa.SQL.Clear;
                UniMainModule.Executa.SQL.Add('update notas_cab set '+
                ' STATUS_NOTA = ''I'', CSTAT = ''102'', DATA_INUTILIZA = :data  '+
                ' where ID = :id and SERIE = :se and modelo = :mo and cod_emitente = :emi ');
                UniMainModule.Executa.ParamByName('data').asDate     := date;
                UniMainModule.Executa.ParamByName('id').AsString     := UniMainModule.qNotasCabID.AsString;
                UniMainModule.Executa.ParamByName('se').AsString     := UniMainModule.qNotasCabSERIE.AsString;
                UniMainModule.Executa.ParamByName('mo').AsString     := UniMainModule.qNotasCabMODELO.AsString;
                UniMainModule.Executa.ParamByName('emi').AsString    := UniMainModule.CodigoEmitente;
                UniMainModule.Executa.ExecSQL;
                UniMainModule.tExecuta.Commit;

                with UniMainModule do
                begin
                     gravamsg(UniMainModule.qNotasCabID.AsInteger,UniMainModule.qNotasCabSERIE.AsInteger,
                     UniMainModule.qNotasCabMODELO.AsInteger,UniMainModule.qNotasCabCOD_EMITENTE.AsInteger,
                     ' '+UTF8Encode(unimainmodule.NFE.WebServices.EnvEvento.RetWS))
                end;

                sNomeArquivo := UniMainModule.NFE.Configuracoes.Arquivos.GetPathInu(UniMainModule.soNumero(UniMainModule.qEmitenteCNPJ.AsString))+
                '\'+copy(UniMainModule.NFE.WebServices.Inutilizacao.ID,3,41)+'-procInutNFe.xml';
            end;
        end;
    except on e:exception do
       showmessage('Erro: '+e.Message)
    end;
end;

procedure TfNfeOP.UniDBGrid3CellClick(Column: TUniDBGridColumn);
begin
     if UniMainModule.qEventoListarCSTATUS.AsInteger = 135 then
         bImprimirCCe.Enabled := true
     else
         bImprimirCCe.Enabled := false
end;

procedure TfNfeOP.mostraoperacoes(pvisible : boolean);
begin
  if pvisible = true then
  begin
    pgOperacoes.Align       := alBottom;
    pgOperacoes.Visible     := true;
    UniPageControl1.Visible := false;
    UniPanel4.Enabled       := false;
    UniPanel2.Enabled       := false;
    DBGrid2.Enabled         := false;
    UniPanel3.Enabled       := false;
  end
  else
  begin
    pgOperacoes.Align       := alBottom;
    pgOperacoes.Visible     := false;
    UniPageControl1.Visible := True;
    UniPanel4.Enabled       := True;
    UniPanel2.Enabled       := True;
    DBGrid2.Enabled         := True;
    UniPanel3.Enabled       := True;
  end;
end;

procedure TfNfeOP.UniFormCreate(Sender: TObject);
begin
     UniMainModule.LerConfiguracao(55);
     WindowState      := wsMaximized;
end;

procedure TfNfeOP.UniFormShow(Sender: TObject);
begin
     eInicio.DateTime := StartOfTheMonth(now);
     eFinal.DateTime  := EndOfTheMonth(now);

     btnNovoProd.Click;
end;

procedure TfNfeOP.btnNovoProdClick(Sender: TObject);
var
  sCondicao                                   : String;
  totalNotas, Canceladas, Validas, nrValidas, naoEmitidas: Currency;
begin
      WITH UniMainModule.qNotasCab do
      begin
          close;
          sql.Clear;
          sql.Add('select CLIENTES.NOMEFANTASIA,CLIENTES.CPF_CNPJ,CLIENTES.RAZAOSOCIAL,CLIENTES.FONE,CLIENTES.ENDERECO,');
          sql.Add('CLIENTES.UF,CLIENTES.CEP,NOTAS_CAB.ID,NOTAS_CAB.SERIE,NOTAS_CAB.MODELO,NOTAS_CAB.COD_EMITENTE,');
          sql.Add('NOTAS_CAB.NATUREZA_OPER,NOTAS_CAB.CRT,NOTAS_CAB.ALIQ_SIMPLES,NOTAS_CAB.TIPONOTA');
          sql.Add(',NOTAS_CAB.DTEMISSAO,NOTAS_CAB.DTSAIDA,NOTAS_CAB.IDCLIENTE,NOTAS_CAB.CPF_CONSUMIDOR');
          sql.Add(',NOTAS_CAB.NOME_CONSUMIDOR,NOTAS_CAB.IDTRANSP,NOTAS_CAB.TIPOFRETE,NOTAS_CAB.PLACAVEICULO');
          sql.Add(',NOTAS_CAB.UFVEICULO,NOTAS_CAB.COD_ANTT,NOTAS_CAB.BASE_ICMS,NOTAS_CAB.VALOR_ICMS ');
          sql.Add(',NOTAS_CAB.BASE_ICMS_ST,NOTAS_CAB.VALOR_ICMS_ST,NOTAS_CAB.VALOR_FRETE,NOTAS_CAB.VALOR_DESCONTO ');
          sql.Add(',NOTAS_CAB.VALOR_ACRESCIMO,NOTAS_CAB.VALOR_SEGURO,NOTAS_CAB.VALOR_OUTRAS_DESP,NOTAS_CAB.VALOR_IPI ');
          sql.Add(',NOTAS_CAB.BASE_IPI,NOTAS_CAB.TOTAL_PRODUTOS,NOTAS_CAB.TOTAL_NOTA,NOTAS_CAB.QUANT  ');
          sql.Add(',NOTAS_CAB.ESPECIE,NOTAS_CAB.MARCA,NOTAS_CAB.NUMERO,NOTAS_CAB.PESOBRUTO,NOTAS_CAB.PESOLIQUIDO ');
          sql.Add(',NOTAS_CAB.STATUS_NOTA,NOTAS_CAB.DADOS_ADICIONAIS,NOTAS_CAB.FORMA_PGTO,NOTAS_CAB.XML_NOTA ');
          sql.Add(',NOTAS_CAB.CSTAT,NOTAS_CAB.XSTAT,NOTAS_CAB.AMBIENTE,NOTAS_CAB.TIPOEMISSAO,NOTAS_CAB.PROTOCOLO ');
          sql.Add(',NOTAS_CAB.DATA_HORARECIBO,NOTAS_CAB.CHAVE_ACESSO,NOTAS_CAB.FINALIDADE,NOTAS_CAB.XML_ORIGINAL ');
          sql.Add(',NOTAS_CAB.CHAVE_ACESSO_ORIGINAL,NOTAS_CAB.DATA_CANCELA,NOTAS_CAB.PROTOCOLO_CANC,'+
                  ' NOTAS_CAB.DATA_INUTILIZA,NOTAS_CAB.PROTOCOLO_INUTILIZA,CFOPVENDA  ');
          sql.Add('from clientes  ');
          sql.Add('right outer join notas_cab on (clientes.idcliente = notas_cab.idcliente) and (clientes.idemitente = notas_cab.cod_emitente) ');
          sql.Add('WHERE NOTAS_CAB.COD_EMITENTE = :e');
          sql.Add('AND NOTAS_CAB.DTEMISSAO >= :vIni and NOTAS_CAB.DTEMISSAO <= :vFim ');

          if cbFiltro.ItemIndex = 1 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''V''  ');
          if cbFiltro.ItemIndex = 2 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''A''  '); // Aceita
          if cbFiltro.ItemIndex = 3 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''R''  '); // Rejeitada
          if cbFiltro.ItemIndex = 4 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''C''  '); // Cancelada
          if cbFiltro.ItemIndex = 5 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''P''  '); // Pendente
          if cbFiltro.ItemIndex = 6 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''I''  '); // Pendente
          if rEmissao.ItemIndex = 0 then
            sql.Add(' AND NOTAS_CAB.ambiente = 0 ');
          if rEmissao.ItemIndex = 1 then
            sql.Add(' AND NOTAS_CAB.ambiente = 1 ');
          if rTipo.ItemIndex = 0 then
            sql.Add(' AND NOTAS_CAB.MODELO = 65 ');
          if rTipo.ItemIndex = 1 then
            sql.Add(' AND NOTAS_CAB.MODELO = 55 ');
          if rGeral.Checked = false then
          begin
               if rFantasia.Checked = true then
                  sql.Add(' AND CLIENTES.NOMEFANTASIA like :cliente ')
               else if rRazao.Checked = true then
                  sql.Add(' AND CLIENTES.RAZAOSOCIAL like  :cliente ')
          end;
          sql.Add(' ORDER BY NOTAS_CAB.ID ');

          ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          ParamByName('vIni').AsDate := eInicio.DateTime;
          ParamByName('vFim').AsDate := eFinal.DateTime;
          if rGeral.Checked = false then
             ParamByName('cliente').asString := '%'+eCliente.Text+'%';
          open;
      end;

      case rTipo.ItemIndex of
        0:
          UniLabel1.Caption := 'NF-e - NFC-e - Consulta e Operações - Consultar NFC-e ';
        1:
          UniLabel1.Caption := 'NF-e - NFC-e - Consulta e Operações - Consultar NF-e ';
        2:
          UniLabel1.Caption := 'NF-e - NFC-e - Consulta e Operações - Consultar Todas ';
      end;

      UniMainModule.qNotasCab.First;
      nrValidas   := 0;
      totalNotas  := 0;
      Canceladas  := 0;
      Validas     := 0;
      naoEmitidas := 0;

      while not UniMainModule.qNotasCab.Eof do
      begin
        if UniMainModule.qNotasCabSTATUS_NOTA.AsString = 'A' then
        begin
             Validas   := Validas + UniMainModule.qNotasCabTOTAL_NOTA.Value; // Image1.Picture.Bitmap
             nrValidas := nrValidas + 1;
        end
        else if UniMainModule.qNotasCabSTATUS_NOTA.AsString = 'C' then
             Canceladas := Canceladas + UniMainModule.qNotasCabTOTAL_NOTA.Value // Image8.Picture.Bitmap
        else if UniMainModule.qNotasCabSTATUS_NOTA.AsString = 'P' then
             naoEmitidas := naoEmitidas + UniMainModule.qNotasCabTOTAL_NOTA.Value; // Image10.Picture.Bitmap
        totalNotas    := totalNotas + UniMainModule.qNotasCabTOTAL_NOTA.Value;
        UniMainModule.qNotasCab.Next;
      end;

      eNrNotas.Text         := FloatToStr(nrValidas);// intToStr( UniMainModule.qNotasCab.RecordCount);
      eTotalNotas.Text      := FloatToStrf(totalNotas, ffcurrency, 12, 2);
      eNotasCanceladas.Text := FloatToStrf(Canceladas, ffcurrency, 12, 2);
      eNotasValidas.Text    := FloatToStrf(Validas, ffcurrency, 12, 2);


      //////////////////////////////////////////////////////////////////////////

      if UniMainModule.vctoCertificado <> '' then
         ShowMessage( UniMainModule.vctoCertificado );

end;

procedure TfNfeOP.bWhatsClick(Sender: TObject);
var
  link: String;
begin
  link := 'http://afnapps.com.br/UniFiscal/unifiscal.dll/m?w=S*' +
    UniMainModule.base64Encode(UniMainModule.CodigoEmitente) + '*' +
    UniMainModule.base64Encode(UniMainModule.qNotasCabID.AsString) + '*';

  try
  //  UniSession.AddJS('window.open("http://www.nfce.se.gov.br/portal/painelMonitor.jsp")');
    // if rNumero.Checked = false then
    UniSession.AddJS('window.open("https://api.whatsapp.com/send?' + 'text=teste")')
    // else
    // UniSession.AddJS('window.location.href="whatsapp://send?text=Acesse o '+
    // 'link para baixar o PDF da NFCe. Link: '+link+'&phone=+55'+enumero.Text+'";');
  except
    ShowMessage('Ocorreu um erro ao enviar!');
  end;

end;

procedure TfNfeOP.DBGrid2FieldImage(const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic;
  var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
begin
     if SameText(AField.FieldName, 'STATUS_NOTA') then
     begin
          if Column.Field.AsString = 'A' then    // Aceita
          begin
            DoNotDispose := true;
            OutImage     := imAceita.Picture.Graphic;
          end
          else if Column.Field.AsString = 'C' then  // Cancelada
          begin
            DoNotDispose := true;
            OutImage     := imCancelada.Picture.Graphic;
          end
          else if Column.Field.AsString = 'P' then  // Pendente
          begin
            DoNotDispose := true;
            OutImage     := imPendente.Picture.Graphic;
          end
          else if Column.Field.AsString = 'I' then  // Inutilizada
          begin
            DoNotDispose := true;
            OutImage     := imInutilizada.Picture.Graphic;
          end
          else if Column.Field.AsString = 'R' then  // Recusada
          begin
            DoNotDispose := true;
            OutImage     := imRecusada.Picture.Graphic;
          end
          else
          begin
            DoNotDispose := true;
            OutImage     := image9.Picture.Graphic; // Outros
          end
     end;
end;

end.
