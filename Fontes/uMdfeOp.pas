unit uMdfeOp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniDBGrid, uniButton, uniBitBtn,
  uniMultiItem, uniComboBox, uniEdit, uniDateTimePicker,
  uniGroupBox, uniRadioGroup, uniImage, uniLabel, uniGUIBaseClasses, uniPanel,

  ACBrUtil, pcnCOnversao,pmdfeConversaoMDFe, dateUtils,
  System.Types, System.strUtils,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniRadioButton, uniMemo,
  uniPageControl, uniDBComboBox, uniCheckBox, uniSpeedButton;

type
  TfMdfeOp = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    Image1: TUniImage;
    Image8: TUniImage;
    Image9: TUniImage;
    image10: TUniImage;
    image4: TUniImage;
    UniPanel2: TUniPanel;
    rEmissao: TUniRadioGroup;
    UniGroupBox1: TUniGroupBox;
    eInicio: TUniDateTimePicker;
    eFinal: TUniDateTimePicker;
    UniGroupBox2: TUniGroupBox;
    eNota: TUniEdit;
    cbFiltro: TUniComboBox;
    DBGrid2: TUniDBGrid;
    UniPanel3: TUniPanel;
    UniLabel3: TUniLabel;
    eNrNotas: TUniEdit;
    UniLabel4: TUniLabel;
    CurrencyEdit1: TUniEdit;
    UniLabel5: TUniLabel;
    CurrencyEdit2: TUniEdit;
    UniPanel4: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    UniBitBtn7: TUniBitBtn;
    bEncerrarChave: TUniBitBtn;
    UniBitBtn17: TUniBitBtn;
    qEvento: TFDQuery;
    dsEvento: TDataSource;
    qEventoID: TIntegerField;
    qEventoTIPO: TStringField;
    qEventoJUSTIFICATIVA: TStringField;
    qEventoDATA: TSQLTimeStampField;
    qEventoANO: TStringField;
    qEventoMODELO: TStringField;
    qEventoSERIE: TIntegerField;
    qEventoFAIXA_INICIAL: TIntegerField;
    qEventoFAIXA_FIM: TIntegerField;
    qEventoCSTATUS: TIntegerField;
    qEventoXMOTIVO: TStringField;
    qEventoPROTOCOLO: TStringField;
    qEventoRECIBO: TIntegerField;
    qEventoDHRECIBO: TSQLTimeStampField;
    qEventoIDEMITENTE: TIntegerField;
    qEventoARQXML: TMemoField;
    qEventoCAMINHO_XMLEVENTO: TStringField;
    qEventoNFENUMERO: TIntegerField;
    qEventoCCE_CHAVENFE: TStringField;
    qEventoCCE_IDLOTE: TIntegerField;
    qEventoCCE_CORRECAO: TStringField;
    qEventoCCE_SEQEVENTO: TIntegerField;
    dsMdfe: TDataSource;
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
    rNfeInutilizar: TUniRadioButton;
    rNfceInutilizar: TUniRadioButton;
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
    UniTabSheet1: TUniTabSheet;
    UniPanel5: TUniPanel;
    UniButton1: TUniButton;
    UniLabel2: TUniLabel;
    eChave: TUniEdit;
    UniLabel6: TUniLabel;
    eProtocolo: TUniEdit;
    UniLabel8: TUniLabel;
    eUfEncerramento: TUniDBComboBox;
    UniButton2: TUniButton;
    UniLabel9: TUniLabel;
    eCodMunicipio: TUniEdit;
    cOutroSistema: TUniCheckBox;
    bitbtn3: TUniSpeedButton;
    UniBitBtn5: TUniBitBtn;
    eCodigoMDFe: TUniEdit;
    UniLabel19: TUniLabel;
    UniTabSheet2: TUniTabSheet;
    UniLabel20: TUniLabel;
    UniButton3: TUniButton;
    mNaoEncerrados: TUniMemo;
    btnNovoProd: TUniBitBtn;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniBitBtn6Click(Sender: TObject);
    procedure bEncerrarChaveClick(Sender: TObject);
    procedure UniBitBtn7Click(Sender: TObject);
    procedure UniBitBtn4Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btnNovoProdClick(Sender: TObject);
    procedure UniBitBtn17Click(Sender: TObject);
    procedure UniBitBtn11Click(Sender: TObject);
    procedure btnGravaNFeClick(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure btnCancelaNFClick(Sender: TObject);
    procedure UniBitBtn10Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure bitbtn3Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TUniDBGridColumn);
    procedure UniBitBtn5Click(Sender: TObject);
  private
    procedure LerConfiguracao;
    procedure RemovePalavra(var origem: string; apagar:string);
    procedure mostraoperacoes(pvisible : boolean);
  public
    NomeXML, NomePDFCompleto, NomePDF, ArquivoPDF, FFolder, FUrl: string;
  end;

implementation

{$R *.dfm}

uses MainModule, uClsBase, ServerModule, uPDF, uPesquisa;



procedure TfMdfeOp.bitbtn3Click(Sender: TObject);
begin
     fPesquisa.Tag := 5;
     fPesquisa.ShowModal;

     if fPesquisa.wCodigo <> '' then
         eCodMunicipio.text := fPesquisa.wCodigo;
end;

procedure TfMdfeOp.btnCancelaNFClick(Sender: TObject);
begin
      mostraoperacoes(false);
end;

procedure TfMdfeOp.btnGravaNFeClick(Sender: TObject);
var
 Para : String;
 ArquivoXML:String;
 cc:TStrings;
 xx         : TStringStream;
begin
    if eEmail.Text = '' then
       exit;

    UniMainModule.MDFE.DAMDFE.TipoDAMDFe    := tiRetrato;
    UniMainModule.aDanfeMdfe.PathPDF        := FFolder;
    UniMainModule.aDanfeMdfe.Sistema        := 'Nota Facil';
    UniMainModule.aDanfeMdfe.PathPDF        := UniServerModule.LocalCachePath;
    UniMainModule.aDanfeMdfe.FastFileEvento := ExtractFilePath(ParamStr(0)) + 'EVENTOS_MDFE.fr3';
//    UniMainModule.aDanfeMdfe.MostrarPreview := false;
//    UniMainModule.aDanfeMdfe.MostrarStatus  := false;

    //ArquivoXML := UniMainModule.qmdfeARQ_MDFE.AsString;
    xx := TStringStream.create(UniMainModule.qMdfeXML.AsString);

    UniMainModule.MDFE.Manifestos.Clear;
    //UniMainModule.MDFe.Manifestos.LoadFromFile(ArquivoXML);
    UniMainModule.MDFe.Manifestos.LoadFromstream(xx);

    UniMainModule.MDFe.Manifestos.Items[0].EnviarEmail( Para, 'Arquivo MDF-e',
                                               cc
                                               , True  // Enviar PDF junto
                                               , nil    // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                                               , nil); // Lista de anexos - TStrings

    sleep(1000);
    ShowMessage('O e-mail foi enviado.');
end;

procedure TfMdfeOp.btnNovoProdClick(Sender: TObject);
var
 sCondicao:String;
 totalNotas,Canceladas,Validas,naoEmitidas, ENCERRADAS : Currency;
begin

     case cbFiltro.ItemIndex of
         0: scondicao := '';
         1: sCondicao := ' AND SITUACAO = ''AGUARDANDO''';
         2: sCondicao := ' AND SITUACAO = ''AUTORIZADA''';
         3: sCondicao := ' AND SITUACAO = ''ENCERRADA''';
         4: sCondicao := ' AND SITUACAO = ''CANCELADA''';
     end;

//     case rEmissao.ItemIndex of
//         0: scondicao := scondicao + ' AND NFE_TRANSMITIDA = ''S'' ';
//         1: scondicao := scondicao + ' AND NFE_TRANSMITIDA = ''C'' ';
//         2: scondicao := scondicao + '';
//     end;

     if (eInicio.Text <> '') and (eFinal.Text <> '') then
     begin
         UniMainModule.qMdfe.Close;
         UniMainModule.qMdfe.SQL.Clear;
         UniMainModule.qMdfe.SQL.Text := 'select * from MDFE where ID_EMITENTE = :ID_EMITENTE '+
         'AND DATAEMISSAO >= :vIni and DATAEMISSAO <= :vFim ';
         UniMainModule.qMdfe.SQL.Text := UniMainModule.qMdfe.SQL.Text + sCondicao;
         UniMainModule.qMdfe.ParamByName('vIni').AsDate := eInicio.DateTime;
         UniMainModule.qMdfe.ParamByName('vFim').AsDate := eFinal.DateTime;
         UniMainModule.qMdfe.ParamByName('ID_EMITENTE').AsString := uniMainModule.CodigoEmitente;
         UniMainModule.qMdfe.Open;
     end
     else
     begin
         UniMainModule.qMdfe.Close;
         UniMainModule.qMdfe.SQL.Clear;
         UniMainModule.qMdfe.SQL.Text := 'select * from MDFE where ID_EMITENTE = :ID_EMITENTE AND ';
         UniMainModule.qMdfe.SQL.Text := UniMainModule.qMdfe.SQL.Text + 'COD_MDFE = :vNota';
         UniMainModule.qMdfe.SQL.Text := UniMainModule.qMdfe.SQL.Text + sCondicao;
         UniMainModule.qMdfe.ParamByName('vNota').AsInteger := StrToInt(eNota.Text);
         UniMainModule.qMdfe.ParamByName('ID_EMITENTE').asString := UniMainModule.CodigoEmitente;
         UniMainModule.qMdfe.Open;
     end;

     UniMainModule.qMdfe.First;

     totalNotas  := 0;
     Canceladas  := 0;
     Validas     := 0;
     naoEmitidas := 0;
     ENCERRADAS  := 0;

     while not UniMainModule.qMdfe.Eof do
     begin
          if UniMainModule.qMdfeSITUACAO.AsString = 'AUTORIZADA' then
               validas := validas + 1
          else if UniMainModule.qMdfeSITUACAO.AsString = 'CANCELADA' then
               Canceladas := Canceladas + 1
          else if UniMainModule.qMdfeSITUACAO.AsString = 'AGUARDANDO' then
               naoEmitidas := naoEmitidas + 1
          else if UniMainModule.qMdfeSITUACAO.AsString = 'ENCERRADA' then
               ENCERRADAS := ENCERRADAS + 1;
          UniMainModule.qMdfe.Next;
     end;

     eNrNotas.text       := intToStr( UniMainModule.qMdfe.RecordCount );
     CurrencyEdit1.text  := FloatToStr( Validas );
     CurrencyEdit2.text  := FloatToStr( ENCERRADAS );
end;

procedure TfMdfeOp.DBGrid2CellClick(Column: TUniDBGridColumn);
begin
     eCodigoMDFe.text := UniMainModule.qMdfeCOD_MDFE.asString;
     eChave.text      := UniMainModule.qMdfeCHAVE.asString;
     eProtocolo.text  := UniMainModule.qMdfePROTOCOLO.asString;
end;

procedure TfMdfeOp.LerConfiguracao;
Var  vcaminho:String;
     ok:Boolean;
     PathMensal: String;
begin
      vCaminho:= ExtractFilePath(Application.ExeName);

      with uniMainModule.MDFe.Configuracoes.Arquivos do
      begin
           PathSalvar := uniMainModule.caminhoArqs+'MDFe\Resp\';  //edtPathLogs.Text;
           PathMDFe   := uniMainModule.caminhoArqs+'MDFe\XML\';
           PathEvento := uniMainModule.caminhoArqs+'MDFe\Eventos\';
      end;

      if UniMainModule.MDFe.DAMDFE <> nil then
      begin
         UniMainModule.MDFe.DAMDFE.TipoDAMDFe     := StrToTpImp(Ok, IntToStr(UniMainModule.qEmitenteGERAL_DANFE.AsInteger));
         UniMainModule.MDFe.DAMDFE.Logo           := uniMainModule.qEmitenteGERAL_LOGOMARCA.asString;
         UniMainModule.aDanfeMdfe.MargemEsquerda  :=0;
         UniMainModule.aDanfeMdfe.MargemDireita   :=0;
         UniMainModule.aDanfeMdfe.MargemSuperior  :=0;
         UniMainModule.aDanfeMdfe.MargemInferior  :=0;
         UniMainModule.aDanfeMdfe.PathPDF         := uniMainModule.caminhoArqs + 'PDF';
      end;

     // Configurações -> Certificados
     UniMainModule.MDFe.Configuracoes.Certificados.ArquivoPFX  := UniMainModule.qEmitenteCERT_CAMINHO.AsString;
     UniMainModule.MDFe.Configuracoes.Certificados.senha       := UniMainModule.qEmitenteCERT_SENHA.AsString;
     UniMainModule.MDFe.SSL.CarregarCertificado;

     if UniMainModule.vctoCertificado <> '' then
        ShowMessage( UniMainModule.vctoCertificado );

     UniMainModule.MDFe.Configuracoes.Certificados.VerificarValidade := False;

     // Configurações -> Arquivos
     UniMainModule.MDFe.Configuracoes.Arquivos.AdicionarLiteral := True;
     UniMainModule.MDFe.Configuracoes.Arquivos.EmissaoPathMDFe  := True;
     UniMainModule.MDFe.Configuracoes.Arquivos.SepararPorMes    := false;
     UniMainModule.MDFe.Configuracoes.Arquivos.PathMDFe         := unimainModule.caminhoArqs+'MDFe\XML\';// Trim(edtPathLogs.Text);
     UniMainModule.MDFe.Configuracoes.Arquivos.PathSalvar       := unimainModule.caminhoArqs+'MDFe\XML\';
     UniMainModule.MDFe.Configuracoes.Arquivos.Salvar           := True;
     UniMainModule.MDFe.Configuracoes.Geral.VersaoDF            := ve300;
     UniMainModule.MDFe.Configuracoes.Arquivos.PathSalvar       := PathMensal;

     // Configurações -> WebServices
     UniMainModule.MDFe.Configuracoes.WebServices.AguardarConsultaRet      := 0;
     UniMainModule.MDFe.Configuracoes.WebServices.AjustaAguardaConsultaRet := False;
     UniMainModule.MDFe.Configuracoes.WebServices.Ambiente                 := StrToTpAmb(Ok, IntToStr(UniMainModule.qEmitenteWEBSERVICE_AMBIENTE.AsInteger + 1));
     UniMainModule.MDFe.Configuracoes.WebServices.IntervaloTentativas      := 0;
     UniMainModule.MDFe.Configuracoes.WebServices.Tentativas               := 5;
     UniMainModule.MDFe.Configuracoes.WebServices.UF                       := UniMainModule.qEmitenteWEBSERVICE_UF.AsString;
 //    UniMainModule.MDFe.Configuracoes.WebServices.Visualizar               := UniMainModule.qEmitenteWEBSERVICE_VISUALIZAR.AsInteger;
     UniMainModule.MDFe.Configuracoes.WebServices.ProxyHost                := uniMainModule.qEmitentePROXY_HOST.AsString;
     UniMainModule.MDFe.Configuracoes.WebServices.ProxyPort                := uniMainModule.qEmitentePROXY_PORTA.asString;
     UniMainModule.MDFe.Configuracoes.WebServices.ProxyUser                := uniMainModule.qEmitentePROXY_USER.AsString;
     UniMainModule.MDFe.Configuracoes.WebServices.ProxyPass                := uniMainModule.qEmitentePROXY_PASS.asString;
     UniMainModule.MDFe.Configuracoes.WebServices.Salvar                   := True;

//     edtPathLogs.Text          := frmPrincipal.qEmitenteGERAL_PATHSALVAR.asString;
//     edtSerie.Text             := FrmPrincipal.qEmitenteGERAL_SERIE.AsString;

     // Configurações -> Geral
     UniMainModule.MDFe.Configuracoes.Geral.FormaEmissao :=  StrToTpEmis(Ok, IntToStr(UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger));
//     UniMainModule.MDFe.Configuracoes.Geral.Salvar       := UniMainModule.qEmitenteGERAL_SALVAR.AsInteger;
// StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));

     UniMainModule.MDFe.Configuracoes.Arquivos.PathSchemas  := 'C:\CoreFiscal\Schemas';
//    PathMensal := ACBrMDFe1.Configuracoes.Arquivos.GetPathMDFe(0);


//      edtSmtpHost.Text      := FrmPrincipal.qEmitenteEMAIL_HOST.AsString;
//      edtSmtpPort.Text      := FrmPrincipal.qEmitenteEMAIL_PORT.asString;
//      edtSmtpUser.Text      := FrmPrincipal.qEmitenteEMAIL_USER.AsString;
//      edtSmtpPass.Text      := FrmPrincipal.qEmitenteEMAIL_PASS.AsString;
//      edtEmailAssunto.Text  := FrmPrincipal.qEmitenteEMAIL_ASSUNTO.AsString;
//
//      if FrmPrincipal.qEmitenteEMAIL_SSL.AsInteger = 1 then
//       cbEmailSSL.Checked    :=True
//      else
//       cbEmailSSL.Checked    :=False;
//
//       mmEmailMsg.Text       := frmPrincipal.qEmitenteEMAIL_MENSAGEM.AsString;

     // DAMDFe
     if UniMainModule.MDFe.DAMDFe <> nil then
      begin
           UniMainModule.MDFe.DAMDFe.PathPDF           := unimainModule.caminhoArqs+'MDFe\Resp'; // := PathMensal;
        //   UniMainModule.MDFe.DAMDFe.ExpandirLogoMarca := False;
           UniMainModule.MDFe.DAMDFe.Logo              := uniMainModule.qEmitenteGERAL_LOGOMARCA.asString;
        //   UniMainModule.MDFe.DAMDFe.MostrarPreview    := false;
     //      ACBrMDFe1.DAMDFe.TipoDAMDFe        := StrToTpImp(OK, IntToStr(rgTipoDaMDFe.ItemIndex+1));
      end;

end;

procedure TfMdfeOp.mostraoperacoes(pvisible: boolean);
begin
    if pvisible = true then
    begin
        pgOperacoes.Align       := alBottom;
        pgOperacoes.Visible     := true;
    //    UniPageControl1.Visible := false;
        UniPanel4.Enabled       := false;
        UniPanel2.Enabled       := false;
        DBGrid2.Enabled         := false;
        UniPanel3.Enabled       := false;
    end
    else
    begin
        pgOperacoes.Align       := alBottom;
        pgOperacoes.Visible     := false;
   //     UniPageControl1.Visible := True;
        UniPanel4.Enabled       := True;
        UniPanel2.Enabled       := True;
        DBGrid2.Enabled         := True;
        UniPanel3.Enabled       := True;
    end;
end;

procedure TfMdfeOp.RemovePalavra(var origem: string; apagar: string);
var
   InicioPalavra, TamanhoPalavra : Integer;
begin
    InicioPalavra := pos(apagar,origem);
    TamanhoPalavra := length(apagar);

    if InicioPalavra > 0 then
       Delete(origem,InicioPalavra,TamanhoPalavra);
end;


procedure TfMdfeOp.UniBitBtn10Click(Sender: TObject);
begin
      mostraoperacoes(false);
end;

procedure TfMdfeOp.UniBitBtn11Click(Sender: TObject);
var
    sStringSeparada : TStringDynArray;
    ArquivoXML,sString : String;
    lbase: TBase;
    xx         : TStringStream;
begin
      if uniMainModule.qMdfeCSTATUS.AsInteger <> 135 then
      begin
          //ArquivoXML := uniMainModule.qMdfeARQ_MDFE.AsString;
          xx := TStringStream.create(UniMainModule.qMdfeXML.AsString);
          mostraoperacoes(false);

          UniMainModule.MDFe.Manifestos.Clear;
          //UniMainModule.MDFe.Manifestos.LoadFromFile(ArquivoXML);
          UniMainModule.MDFe.Manifestos.LoadFromstream(xx);

          UniMainModule.MDFe.EventoMDFe.Evento.Clear;

          with UniMainModule.MDFe.EventoMDFe.Evento.Add do
          begin
              // infEvento.chMDFe   := Copy(UniMainModule.MDFe.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
               infEvento.chMDFe   := UniMainModule.soNumero(UniMainModule.MDFe.Manifestos.Items[0].MDFe.infMDFe.ID);
               infEvento.CNPJCPF  := uniMainModule.qEmitenteCNPJ.AsString;
               infEvento.dhEvento := now;

          //  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
          //                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
          //                  teEncerramento);

               infEvento.tpEvento        := teCancelamento;
               infEvento.detEvento.xJust := trim(eJustificativa.Text);

               infEvento.detEvento.nProt := UniMainModule.MDFe.Manifestos.Items[0].MDFe.procMDFe.nProt;
               infEvento.detEvento.dtEnc := Date;
               infEvento.detEvento.cUF   := StrToInt(Copy(IntToStr(UniMainModule.MDFe.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga),1,2));
               infEvento.detEvento.cMun  := UniMainModule.MDFe.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga;
          end;

          TRY
               UniMainModule.MDFe.Configuracoes.Arquivos.PathEvento := UniMainModule.caminhoArqs+'MDFe';

               UniMainModule.MDFe.EnviarEvento( 1 ); // 1 = Numero do Lote

               UniMainModule.qMdfe.Edit;
               UniMainModule.qMdfeCSTATUS.AsInteger  := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat;
               UniMainModule.qMdfeXSTATUS.AsString   := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;
               UniMainModule.qMdfePROTOCOLO.AsString := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;
               UniMainModule.qMdfeSITUACAO.AsString  := 'CANCELADA';
               UniMainModule.qMdfe.Post;
               UniMainModule.qMdfe.ApplyUpdates;
               UniMainModule.qMdfe.CommitUpdates;

               qevento.Open;
               qEvento.Append;
               qEventoID.asInteger               := lbase.GerarCodigo('GEN_TBEVENTOS_ID',UniMainModule.Banco);
               qEventoIDEmitente.asString        := UniMainModule.CodigoEmitente;
               qEventoNFENumero.AsInteger        := UniMainModule.qMdfeCOD_MDFE.AsInteger;
               qEventoTipo.asString              := 'teCancelamento';
               qEventoJustificativa.AsString     := 'CANCELAMENTO MDFE '+eJustificativa.Text;
               qEventoData.AsDateTime            := now;
               qEventocStatus.AsInteger          := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat;
               qEventoxMotivo.AsString           := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;
               qEventoProtocolo.AsString         := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;
               qEventoDHRecibo.AsDateTime        := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.dhRegEvento;
               qEventoARQXML.AsBytes             := BytesOF(UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.XML);
               qEventoCaminho_XMLEvento.AsString := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;
               qEvento.Post;
               qEvento.ApplyUpdates;
               qEvento.CommitUpdates;

               UniMainModule.MDFE.DAMDFE.TipoDAMDFe    := tiRetrato;
               UniMainModule.aDanfeMdfe.PathPDF        := FFolder;
               UniMainModule.aDanfeMdfe.Sistema        := 'Nota Facil';
               UniMainModule.aDanfeMdfe.PathPDF        := UniServerModule.LocalCachePath;
               UniMainModule.aDanfeMdfe.FastFileEvento := ExtractFilePath(ParamStr(0)) + 'EVENTOS_MDFE.fr3';
//               UniMainModule.aDanfeMdfe.MostrarPreview := false;
//               UniMainModule.aDanfeMdfe.MostrarStatus  := false;

               NomePDF := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;

               sString := NomePDF;
               sStringSeparada := SplitString( sString, '.');
               NomePDF := sStringSeparada[0];

               FFolder := UniServerModule.LocalCachePath;
               FUrl    := UniServerModule.LocalCacheURL+'MDFE/'+ExtractFileName(NomePDF)+'.pdf';

               UniMainModule.MDFE.ImprimirEventoPDF;

               fPDF.Caption          := NomePDF;
               fPDF.UniURLFrame1.URL := FUrl;
               fPDF.ShowModal;

          Except on e:Exception do
               showmessage(e.message);
          end;
      end
      else
          ShowMessage('MDFe ja encerrada!');
end;

procedure TfMdfeOp.UniBitBtn17Click(Sender: TObject);
begin
//     UniMainModule.MDFE.Configuracoes.WebServices.Visualizar := true;

      UniMainModule.MDFE.WebServices.StatusServico.Executar;

      if UniMainModule.MDFe.WebServices.Consulta.cStat = 107 then
         ShowMessage('Serviço em operação!')
//      else
//         ShowMessage(UniMainModule.MDFe.WebServices.Consulta.);

//     UniMainModule.MDFE.Configuracoes.WebServices.Visualizar := false;
end;

procedure TfMdfeOp.UniBitBtn1Click(Sender: TObject);
var
  ArquivoXML : String;
  xx         : TStringStream;
begin
     if UniMainModule.qMdfe.RecordCount = 0 then
     begin
          ShowMessage('Nenhum dado para realizar a impressão!');
          exit;
     end;

     try
         //ArquivoXML := UniMainModule.qMdfeARQ_MDFE.AsString;                 // usando o arquivo em disco
         xx := TStringStream.create(UniMainModule.qMdfeXML.AsString); // usando o xml no banco

         UniMainModule.MDFe.Manifestos.Clear;
         //UniMainModule.MDFe.Manifestos.LoadFromFile(ArquivoXML);              // usando o arquivo em disco
         UniMainModule.MDFe.Manifestos.LoadFromstream(xx);                     // usando o xml no banco

         //NomePDF := Copy(UniMainModule.MDFE.Manifestos.Items[0].MDFe.infMDFe.Id, 5, 44);  // usando o arquivo em disco
         //NomeXML := Copy(UniMainModule.MDFE.Manifestos.Items[0].MDFe.infMDFe.Id, 5, 44);  // usando o arquivo em disco

         NomePDF := UniMainModule.soNumero(UniMainModule.MDFE.Manifestos.Items[0].MDFe.infMDFe.Id);    // usando o xml no banco
         NomeXML := UniMainModule.MDFE.Manifestos.Items[0].MDFe.infMDFe.Id;    // usando o xml no banco

         NomeXML := UniMainModule.MDFE.Configuracoes.Arquivos.PathMDFe+NomeXML+'-mdfe.xml';

         FFolder := UniServerModule.LocalCachePath;
         FUrl    := UniServerModule.LocalCacheURL+ExtractFileName(NomePDF)+'-mdfe.pdf';

         UniMainModule.MDFE.DAMDFE.TipoDAMDFe       := tiRetrato;
         UniMainModule.aDanfeMdfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DAMDFe_Retrato.fr3';
         UniMainModule.aDanfeMdfe.PathPDF           := FFolder;
         UniMainModule.aDanfeMdfe.Sistema           := 'Nota Facil';
         UniMainModule.aDanfeMdfe.PathPDF           := UniServerModule.LocalCachePath;
//         UniMainModule.aDanfeMdfe.MostrarPreview    := false;
//         UniMainModule.aDanfeMdfe.MostrarStatus     := false;

         UniMainModule.MDFe.Manifestos.ImprimirPDF;

         fPDF.Caption          := NomePDF;
         fPDF.UniURLFrame1.URL := FUrl;
         fPDF.ShowModal;

     except on e:exception do
     begin
        // UniMainModule.sa.Error('Ops','Ocorreu um erro ao realizar a impressão!');
          showmessage('Erro: '+e.message);
     end;
     end;
end;

procedure TfMdfeOp.UniBitBtn2Click(Sender: TObject);
begin
      mostraoperacoes(true);
      pgOperacoes.ActivePage := tsMail;
      pEmail.Visible := true;
      eEmail.Clear;
      eEmail.SetFocus;
end;

procedure TfMdfeOp.UniBitBtn4Click(Sender: TObject);
var
 vChave : String;
begin
//      UniMainModule.MDFe.Configuracoes.WebServices.Visualizar := true;
      vChave := UniMainModule.qMdfeCHAVE.AsString;

      UniMainModule.MDFe.WebServices.Consulta.MDFeChave := vChave;
      UniMainModule.MDFe.WebServices.Consulta.Executar;

      if UniMainModule.MDFe.WebServices.Consulta.cStat = 132 then
         ShowMessage('Encerramento de MDF-e homologado!')
      else if UniMainModule.MDFe.WebServices.Consulta.cStat = 101 then
         ShowMessage( 'MDF-e Cancelada!')
      else if UniMainModule.MDFe.WebServices.Consulta.cStat = 100 then
         ShowMessage( 'Autorizado o uso do MDF-e!');

//      UniMainModule.MDFe.Configuracoes.WebServices.Visualizar := false;// ckVisualizar.Checked;
end;


procedure TfMdfeOp.UniBitBtn5Click(Sender: TObject);
begin
    try
         pgOperacoes.Visible         := True;
         pgOperacoes.ActivePageIndex := 5;
         UniMainModule.MDFE.WebServices.ConsultaMDFeNaoEnc( UniMainModule.qEmitenteCNPJ.AsString );
    finally
         mNaoEncerrados.lines.clear;
         mNaoEncerrados.Lines.Text   := ACBrUTF8ToAnsi(UniMainModule.MDFE.WebServices.ConsMDFeNaoEnc.RetWS);
    end;
end;

procedure TfMdfeOp.UniBitBtn6Click(Sender: TObject);
var
  sStringSeparada : TStringDynArray;
  ArquivoXML,sString:String;
  lbase: TBase;
  xx         : TStringStream;
begin
      if UniMainModule.qMdfeCSTATUS.AsInteger <> 135 then
      begin
          //ArquivoXML := UniMainModule.qMdfeARQ_MDFE.AsString;
          xx := TStringStream.create(UniMainModule.qMdfeXML.AsString); // usando o xml no banco

          UniMainModule.MDFe.Manifestos.Clear;
          //UniMainModule.MDFe.Manifestos.LoadFromFile(ArquivoXML);
          UniMainModule.MDFe.Manifestos.LoadFromstream(xx);

          UniMainModule.MDFe.EventoMDFe.Evento.Clear;

          with UniMainModule.MDFe.EventoMDFe.Evento.Add do
          begin
              // infEvento.chMDFe   := Copy(UniMainModule.MDFe.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
               infEvento.chMDFe   := UniMainModule.soNumero(UniMainModule.MDFE.Manifestos.Items[0].MDFe.infMDFe.Id);
               infEvento.CNPJCPF  := UniMainModule.qEmitenteCNPJ.AsString;
               infEvento.dhEvento := now;

          //  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
          //                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
          //                  teEncerramento);

               infEvento.tpEvento   := teEncerramento;
          //     infEvento.nSeqEvento := 1;

               infEvento.detEvento.nProt := UniMainModule.MDFe.Manifestos.Items[0].MDFe.procMDFe.nProt;
               infEvento.detEvento.dtEnc := Date;
               infEvento.detEvento.cUF   := StrToInt(Copy(IntToStr(UniMainModule.MDFe.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga),1,2));
               infEvento.detEvento.cMun  := UniMainModule.MDFe.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga;
          end;

          TRY
               UniMainModule.MDFe.Configuracoes.Arquivos.PathEvento := UniMainModule.caminhoArqs+'MDFe';

               UniMainModule.MDFe.EnviarEvento(1); // 1 = Numero do Lote

               UniMainModule.qMdfe.Edit;
               UniMainModule.qMdfeCSTATUS.AsInteger  := UniMainModule.Mdfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat;
               UniMainModule.qMdfeXSTATUS.AsString   := UniMainModule.Mdfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;
               UniMainModule.qMdfePROTOCOLO.AsString := UniMainModule.Mdfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;
               UniMainModule.qMdfeSITUACAO.AsString  := 'ENCERRADA';
               UniMainModule.qMdfe.Post;
               UniMainModule.qMdfe.ApplyUpdates;
               UniMainModule.qMdfe.CommitUpdates;

               qevento.Open;
               qEvento.Append;
               qEventoID.asInteger               := lbase.GerarCodigo('GEN_TBEVENTOS_ID',UniMainModule.Banco);
               qEventoIDEmitente.AsString        := UniMainModule.CodigoEmitente;
               qEventoNFENumero.AsInteger        := UniMainModule.qMdfeCOD_MDFE.AsInteger;
               qEventoTipo.asString              := 'teEncerramento';
               qEventoJustificativa.AsString     := 'ECERRAMENTO MDFE';
               qEventoData.AsDateTime            := now;
               qEventocStatus.AsInteger          := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat;
               qEventoxMotivo.AsString           := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;
               qEventoProtocolo.AsString         := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;
               qEventoDHRecibo.AsDateTime        := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.dhRegEvento;
               qEventoARQXML.AsBytes             := BytesOF(UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.XML);
               qEventoCaminho_XMLEvento.AsString := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;
               qEvento.Post;
               qEvento.ApplyUpdates;
               qEvento.CommitUpdates;

               UniMainModule.MDFE.DAMDFE.TipoDAMDFe    := tiRetrato;
               UniMainModule.aDanfeMdfe.PathPDF        := FFolder;
               UniMainModule.aDanfeMdfe.Sistema        := 'Nota Facil';
               UniMainModule.aDanfeMdfe.PathPDF        := UniServerModule.LocalCachePath;
               UniMainModule.aDanfeMdfe.FastFileEvento := ExtractFilePath(ParamStr(0)) + 'EVENTOS_MDFE.fr3';
//               UniMainModule.aDanfeMdfe.MostrarPreview := false;
//               UniMainModule.aDanfeMdfe.MostrarStatus  := false;

               NomePDF := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;

               sString := NomePDF;
               sStringSeparada := SplitString( sString, '.');
               NomePDF := sStringSeparada[0];

               FFolder := UniServerModule.LocalCachePath;
               FUrl    := UniServerModule.LocalCacheURL+ExtractFileName(NomePDF)+'.pdf';

               UniMainModule.MDFE.ImprimirEventoPDF;

               fPDF.Caption          := NomePDF;
               fPDF.UniURLFrame1.URL := FUrl;
               fPDF.ShowModal;

          Except on e:Exception do
               showmessage(e.message);
          end;
      end
      else
          ShowMessage('MDFe ja encerrada!');
end;

procedure TfMdfeOp.UniBitBtn7Click(Sender: TObject);
begin
    if (UniMainModule.qMdfeCSTATUS.AsString = '100') then
    begin
        mostraoperacoes(True);
        pgOperacoes.ActivePageIndex := 3;
        pCancelamento.Visible := true;
        eJustificativa.Clear;
        eJustificativa.SetFocus;
    end
    else if (UniMainModule.qMdfeCSTATUS.AsString = '135')  then
        ShowMessage('Este MDF-e Já foi cancelado ou encerrado!')
    else if (UniMainModule.qMdfeCSTATUS.AsString = '101')  then
        ShowMessage('Este MDF-e Já foi Cancelada!');
end;

procedure TfMdfeOp.UniButton1Click(Sender: TObject);
var chave,  protocolo : String;
    vChave, vProtocolo, vUF, vCodMun : String;
    ArquivoXML,sString:String;
    sStringSeparada : TStringDynArray;
      lbase: TBase;
begin
      if cOutroSistema.Checked = false then
      begin
           if UniMainModule.qMdfeSITUACAO.AsString  = 'ENCERRADA' then
           begin
                ShowMessage('Este MDFe ja foi encerrado!');
                abort;
           end;

           UniMainModule.MDFE.Manifestos.Clear;
           UniMainModule.MDFE.EventoMDFe.Evento.Clear;

           with UniMainModule.MDFE.EventoMDFe.Evento.Add do
           begin
             infEvento.chMDFe          := eChave.text;
             infEvento.CNPJCPF            := UniMainModule.qEmitenteCNPJ.AsString;
             infEvento.dhEvento        := now;
             infEvento.tpEvento        := teEncerramento;
             infEvento.nSeqEvento      := 1;
             infEvento.detEvento.nProt := eProtocolo.text;
             infEvento.detEvento.dtEnc := Date;
             infEvento.detEvento.cUF   := UFtoCUF( eUfEncerramento.text );
             infEvento.detEvento.cMun  := StrToInt(eCodMunicipio.text);
           end;

           TRY
               UniMainModule.MDFe.Configuracoes.Arquivos.PathEvento := UniMainModule.caminhoArqs+'MDFe';

               UniMainModule.MDFe.EnviarEvento(1);

               if eCodigoMDFe.text <> '' then
               begin
                   UniMainModule.qMdfe.Edit;
                   UniMainModule.qMdfeCSTATUS.AsInteger  := UniMainModule.Mdfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat;
                   UniMainModule.qMdfeXSTATUS.AsString   := UniMainModule.Mdfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;
                   UniMainModule.qMdfePROTOCOLO.AsString := UniMainModule.Mdfe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;
                   UniMainModule.qMdfeSITUACAO.AsString  := 'ENCERRADA';
                   UniMainModule.qMdfe.Post;
                   UniMainModule.qMdfe.ApplyUpdates;
                   UniMainModule.qMdfe.CommitUpdates;

                   qevento.Open;
                   qEvento.Append;
                   qEventoID.asInteger               := lbase.GerarCodigo('GEN_TBEVENTOS_ID',UniMainModule.Banco);
                   qEventoIDEmitente.AsString        := UniMainModule.CodigoEmitente;
                   qEventoNFENumero.AsString         := eCodigoMDFe.text; // UniMainModule.qMdfeCOD_MDFE.AsInteger;
                   qEventoTipo.asString              := 'teEncerramento';
                   qEventoJustificativa.AsString     := 'ECERRAMENTO MDFE';
                   qEventoData.AsDateTime            := now;
                   qEventocStatus.AsInteger          := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat;
                   qEventoxMotivo.AsString           := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;
                   qEventoProtocolo.AsString         := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;
                   qEventoDHRecibo.AsDateTime        := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.dhRegEvento;
                   qEventoARQXML.AsBytes             := BytesOF(UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.XML);
                   qEventoCaminho_XMLEvento.AsString := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;
                   qEvento.Post;
                   qEvento.ApplyUpdates;
                   qEvento.CommitUpdates;
               end;

               UniMainModule.MDFE.DAMDFE.TipoDAMDFe    := tiRetrato;
               UniMainModule.aDanfeMdfe.PathPDF        := FFolder;
               UniMainModule.aDanfeMdfe.Sistema        := 'Nota Facil';
               UniMainModule.aDanfeMdfe.PathPDF        := UniServerModule.LocalCachePath;
               UniMainModule.aDanfeMdfe.FastFileEvento := ExtractFilePath(ParamStr(0)) + 'EVENTOS_MDFE.fr3';
//               UniMainModule.aDanfeMdfe.MostrarPreview := false;
//               UniMainModule.aDanfeMdfe.MostrarStatus  := false;

               NomePDF := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;

               sString := NomePDF;
               sStringSeparada := SplitString( sString, '.');
               NomePDF := sStringSeparada[0];

               FFolder := UniServerModule.LocalCachePath;
               FUrl    := UniServerModule.LocalCacheURL+ExtractFileName(NomePDF)+'.pdf';

               UniMainModule.MDFE.ImprimirEventoPDF;

               fPDF.Caption          := NomePDF;
               fPDF.UniURLFrame1.URL := FUrl;
               fPDF.ShowModal;

           Except on e:Exception do
               showmessage(e.message);
           end;
      end
      else
      begin
           UniMainModule.MDFE.Manifestos.Clear;
           UniMainModule.MDFE.EventoMDFe.Evento.Clear;

           with UniMainModule.MDFE.EventoMDFe.Evento.Add do
           begin
             infEvento.chMDFe          := eChave.text;
             infEvento.CNPJCPF         := UniMainModule.qEmitenteCNPJ.AsString;
             infEvento.dhEvento        := now;
             infEvento.tpEvento        := teEncerramento;
             infEvento.nSeqEvento      := 1;
             infEvento.detEvento.nProt := eProtocolo.text;
             infEvento.detEvento.dtEnc := Date;
             infEvento.detEvento.cUF   := UFtoCUF( eUfEncerramento.text );
             infEvento.detEvento.cMun  := StrToInt(eCodMunicipio.text);
           end;

           TRY
               UniMainModule.MDFe.Configuracoes.Arquivos.PathEvento := UniMainModule.caminhoArqs+'MDFe';

               UniMainModule.MDFe.EnviarEvento(1);

               UniMainModule.MDFE.DAMDFE.TipoDAMDFe    := tiRetrato;
               UniMainModule.aDanfeMdfe.PathPDF        := FFolder;
               UniMainModule.aDanfeMdfe.Sistema        := 'Nota Facil';
               UniMainModule.aDanfeMdfe.PathPDF        := UniServerModule.LocalCachePath;
               UniMainModule.aDanfeMdfe.FastFileEvento := ExtractFilePath(ParamStr(0)) + 'EVENTOS_MDFE.fr3';
//               UniMainModule.aDanfeMdfe.MostrarPreview := false;
//               UniMainModule.aDanfeMdfe.MostrarStatus  := false;

               NomePDF := UniMainModule.MDFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;

               sString := NomePDF;
               sStringSeparada := SplitString( sString, '.');
               NomePDF := sStringSeparada[0];

               FFolder := UniServerModule.LocalCachePath;
               FUrl    := UniServerModule.LocalCacheURL+ExtractFileName(NomePDF)+'.pdf';

               UniMainModule.MDFE.ImprimirEventoPDF;

               fPDF.Caption          := NomePDF;
               fPDF.UniURLFrame1.URL := FUrl;
               fPDF.ShowModal;

           Except on e:Exception do
               showmessage(e.message);
           end;
      end;
end;

procedure TfMdfeOp.UniButton2Click(Sender: TObject);
begin
     pgOperacoes.Visible := false;

     eChave.Clear;
     eChave.clear;
     eProtocolo.clear;
end;

procedure TfMdfeOp.bEncerrarChaveClick(Sender: TObject);
begin
     pgOperacoes.Visible         := True;
     pgOperacoes.ActivePageIndex := 4;
end;

procedure TfMdfeOp.UniFrameCreate(Sender: TObject);
begin
     LerConfiguracao;

     eInicio.DateTime := StartOfTheMonth(now);
     eFinal.DateTime  := EndOfTheMonth(now);

     btnNovoProd.Click;
end;

end.
