unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,

  DateUtils, midaslib,ACBrUtil,

  FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrBase, ACBrValidador,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, uniGUIBaseClasses, uniGUIClasses,
  ACBrNFeDANFEClass, ACBrDANFCeFortesFr, ACBrDFe, ACBrNFe, ACBrNFeDANFEFRDM,
  ACBrNFeDANFEFR, ACBrNFeDANFeRLClass, ACBrMail, ACBrSocket, ACBrConsultaCNPJ,
  ACBrIBGE, idCOderMIME, ACBrCEP, ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFeRLClass,
  ACBrMDFe, ACBrMDFeDAMDFEFR, IBX.IBCustomDataSet, ACBrNFSe,
  ACBrNFSeDANFSeClass, ACBrNFSeDANFSeFR, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL,  frxClass, frxExportPDF, ACBrDFeReport,
  ACBrDFeDANFeReport, frxExportBaseDialog, FireDAC.Phys.IB, FireDAC.Phys.IBDef;

type
  PtrData = ^TDatainfo;

  TDatainfo = record
    xdatalancs: TDate;
    xcod_empresa: integer;
    CodigoEmitente: integer;
    xUsuario: string;
    xPass: string;
    xnomeempsel: string;
    ip: string;
    navegador: string;
    xmodelo : integer;
    xfinalidade : integer;
    xtipodoc : integer;
    xdataemissao : tDate;
    xchavecomplementar  : string;
    xchavecomplementar2 : string;
    xchavecomplementar3 : string;
    xchavecomplementar4 : string;
    xchavecomplementar5 : string;
    xchavecomplementar6 : string;
    xcfop        : string;
    xnatureza   : string;
    os: string;
  end;

type
  TUniMainModule = class(TUniGUIMainModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qEmitente: TFDQuery;
    qEmitenteIDEMITENTE: TIntegerField;
    qEmitenteRAZAOSOCIAL: TStringField;
    qEmitenteFANTASIA: TStringField;
    qEmitenteENDERECO: TStringField;
    qEmitenteNUMERO: TIntegerField;
    qEmitenteCOMPLEMENTO: TStringField;
    qEmitenteBAIRRO: TStringField;
    qEmitenteCIDADE: TStringField;
    qEmitenteCODCIDADE: TStringField;
    qEmitenteUF: TStringField;
    qEmitenteCNPJ: TStringField;
    qEmitenteIE: TStringField;
    qEmitenteFONE: TStringField;
    qEmitenteCEP: TStringField;
    qEmitenteCRT: TIntegerField;
    qEmitenteCERT_CAMINHO: TStringField;
    qEmitenteCERT_SENHA: TStringField;
    qEmitenteCERT_NUMSERIE: TStringField;
    qEmitenteGERAL_DANFE: TIntegerField;
    qEmitenteGERAL_FORMAEMISSAO: TIntegerField;
    qEmitenteGERAL_LOGOMARCA: TStringField;
    qEmitenteGERAL_SALVAR: TIntegerField;
    qEmitenteGERAL_PATHSALVAR: TStringField;
    qEmitenteGERAL_SERIE: TIntegerField;
    qEmitenteGERAL_SERIEPRODUCAO: TIntegerField;
    qEmitenteGERAL_SERIEHOMOLOG: TIntegerField;
    qEmitenteGERAL_SERIESCAN: TIntegerField;
    qEmitenteGERAL_NNFEPRODUCAO: TIntegerField;
    qEmitenteGERAL_NNFEHOMOLOG: TIntegerField;
    qEmitenteGERAL_NNFESCAN: TIntegerField;
    qEmitenteGERAL_USARDESCCOMPLETA: TIntegerField;
    qEmitenteWEBSERVICE_UF: TStringField;
    qEmitenteWEBSERVICE_AMBIENTE: TIntegerField;
    qEmitenteWEBSERVICE_VISUALIZAR: TIntegerField;
    qEmitentePROXY_HOST: TStringField;
    qEmitentePROXY_PORTA: TIntegerField;
    qEmitentePROXY_USER: TStringField;
    qEmitentePROXY_PASS: TStringField;
    qEmitenteEMAIL_HOST: TStringField;
    qEmitenteEMAIL_PORT: TIntegerField;
    qEmitenteEMAIL_USER: TStringField;
    qEmitenteEMAIL_PASS: TStringField;
    qEmitenteEMAIL_ASSUNTO: TStringField;
    qEmitenteEMAIL_SSL: TIntegerField;
    qEmitenteEMAIL_MENSAGEM: TMemoField;
    qEmitenteCELULAR: TStringField;
    qEmitenteEMAIL: TStringField;
    qEmitenteCHAVELIGACAO: TStringField;
    qEmitenteFLAG_IBPT: TIntegerField;
    qEmitenteIDTOKEN: TStringField;
    qEmitenteTOKEN: TStringField;
    qEmitenteDATAVENCIMENTOCERTIFICADO: TStringField;
    qEmitenteGERAL_NNFCEPRODUCAO: TIntegerField;
    qEmitenteGERAL_NNFCEHOMOLOG: TIntegerField;
    qEmitenteIMPRESSORANFE: TStringField;
    qEmitenteIMPRESSORANFCE: TStringField;
    qEmitentePREVIEWNFE: TStringField;
    qEmitentePREVIEWNFCE: TStringField;
    qEmitenteLOGIN: TStringField;
    qEmitenteSENHA: TStringField;
    dsEmitente: TDataSource;
    Banco: TFDConnection;
    qGeral: TFDQuery;
    qIbge: TFDQuery;
    qIbgeID: TStringField;
    qIbgeIDUF: TStringField;
    qIbgeNOME: TStringField;
    qIbgeCod: TFDQuery;
    qIbgeCodID: TStringField;
    qIbgeCodIDUF: TStringField;
    qIbgeCodNOME: TStringField;
    qTES: TFDQuery;
    qCFOP: TFDQuery;
    qCFOPID: TIntegerField;
    qCFOPCFOP: TIntegerField;
    qCFOPNATUREZA: TStringField;
    qCFOPTIPO: TIntegerField;
    qCFOPOBS1: TStringField;
    qCFOPOBS2: TStringField;
    qProdutos: TFDQuery;
    qProdutosIDPRODUTO: TIntegerField;
    qProdutosCODIGO: TStringField;
    qProdutosEAN: TStringField;
    qProdutosDESCRICAO_COMPLETA: TStringField;
    qProdutosNCM: TStringField;
    qProdutosCEST: TStringField;
    qProdutosUN: TStringField;
    qProdutosCST: TStringField;
    qProdutosCFOP: TStringField;
    qProdutosCSOSN: TStringField;
    qProdutosORIGEM: TIntegerField;
    qProdutosCSTIPI: TStringField;
    qProdutosCSTPIS: TStringField;
    qProdutosCSTCOFINS: TStringField;
    qProdutosALIQPIS: TCurrencyField;
    qProdutosALIQCOFINS: TCurrencyField;
    qProdutosOPER_ENTRADA_DENTRO: TIntegerField;
    qProdutosOPER_ENTRADA_FORA: TIntegerField;
    qProdutosOPER_SAIDA_DENTRO: TIntegerField;
    qProdutosOPER_SAIDA_FORA: TIntegerField;
    qProdutosIDEMITENTE: TSmallintField;
    qProdutosOPER_DEVOLUCAO_DENTRO: TIntegerField;
    qProdutosOPER_DEVOLUCAO_FORA: TIntegerField;
    qProdutosCODIGO_ANP: TStringField;
    dsTes: TDataSource;
    dsCFOP: TDataSource;
    dsProduto: TDataSource;
    fdBanco: TFDTransaction;
    docValido: TACBrValidador;
    qClientes: TFDQuery;
    qClientesIDCLIENTE: TIntegerField;
    qClientesTIPOPESSOA: TStringField;
    qClientesRAZAOSOCIAL: TStringField;
    qClientesNOMEFANTASIA: TStringField;
    qClientesRG_IE: TStringField;
    qClientesCPF_CNPJ: TStringField;
    qClientesFONE: TStringField;
    qClientesFAX: TStringField;
    qClientesENDERECO: TStringField;
    qClientesNRO: TStringField;
    qClientesCOMPLEMENTO: TStringField;
    qClientesBAIRRO: TStringField;
    qClientesCIDADE: TStringField;
    qClientesCODMUNICIPIO: TStringField;
    qClientesUF: TStringField;
    qClientesCEP: TStringField;
    qClientesOBSERVACAO: TStringField;
    qClientesCONSUMIDORFINAL: TStringField;
    qClientesIDEMITENTE: TIntegerField;
    qNCM: TFDQuery;
    qNCMID: TIntegerField;
    qNCMCODIGO: TStringField;
    qNCMDESCRICAO: TStringField;
    qCEST: TFDQuery;
    qTESID: TIntegerField;
    qTESDESCRICAO: TStringField;
    qTESCFOP: TStringField;
    qTESALIQICMS: TCurrencyField;
    qTESREDBCICMS: TCurrencyField;
    qTESALIQICMSST: TCurrencyField;
    qTESREDBCICMSST: TCurrencyField;
    qTESMVAICMSST: TCurrencyField;
    qTESCSTIPI: TStringField;
    qTESALIQIPI: TCurrencyField;
    qTESCSTPIS: TStringField;
    qTESALIQPIS: TCurrencyField;
    qTESALIQPISST: TCurrencyField;
    qTESCSTCOFINS: TStringField;
    qTESALIQCOFINS: TCurrencyField;
    qTESALIQCOFINSST: TCurrencyField;
    qTESDESTACA_ICMS: TIntegerField;
    qTESDESTACA_IPI: TIntegerField;
    qTESDESTACA_PIS: TIntegerField;
    qTESDESTACA_COFINS: TIntegerField;
    qTESCST: TStringField;
    qTESCSOSN: TStringField;
    qTESIDEMITENTE: TIntegerField;
    qNotasCab: TFDQuery;
    qNotasCabID: TIntegerField;
    qNotasCabSERIE: TIntegerField;
    qNotasCabMODELO: TIntegerField;
    qNotasCabCOD_EMITENTE: TIntegerField;
    qNotasCabNATUREZA_OPER: TStringField;
    qNotasCabCRT: TStringField;
    qNotasCabTIPONOTA: TIntegerField;
    qNotasCabDTEMISSAO: TDateField;
    qNotasCabDTSAIDA: TDateField;
    qNotasCabIDCLIENTE: TIntegerField;
    qNotasCabCPF_CONSUMIDOR: TStringField;
    qNotasCabNOME_CONSUMIDOR: TStringField;
    qNotasCabIDTRANSP: TIntegerField;
    qNotasCabTIPOFRETE: TIntegerField;
    qNotasCabPLACAVEICULO: TStringField;
    qNotasCabUFVEICULO: TStringField;
    qNotasCabCOD_ANTT: TStringField;
    qNotasCabBASE_ICMS: TBCDField;
    qNotasCabVALOR_ICMS: TBCDField;
    qNotasCabBASE_ICMS_ST: TBCDField;
    qNotasCabVALOR_ICMS_ST: TBCDField;
    qNotasCabVALOR_FRETE: TBCDField;
    qNotasCabVALOR_DESCONTO: TBCDField;
    qNotasCabVALOR_ACRESCIMO: TBCDField;
    qNotasCabVALOR_SEGURO: TBCDField;
    qNotasCabVALOR_OUTRAS_DESP: TBCDField;
    qNotasCabVALOR_IPI: TBCDField;
    qNotasCabBASE_IPI: TBCDField;
    qNotasCabTOTAL_PRODUTOS: TBCDField;
    qNotasCabTOTAL_NOTA: TBCDField;
    qNotasCabQUANT: TBCDField;
    qNotasCabESPECIE: TStringField;
    qNotasCabMARCA: TStringField;
    qNotasCabNUMERO: TStringField;
    qNotasCabPESOBRUTO: TBCDField;
    qNotasCabPESOLIQUIDO: TBCDField;
    qNotasCabSTATUS_NOTA: TStringField;
    qNotasCabDADOS_ADICIONAIS: TMemoField;
    qNotasCabFORMA_PGTO: TStringField;
    qNotasCabXML_NOTA: TMemoField;
    qNotasCabCSTAT: TIntegerField;
    qNotasCabXSTAT: TStringField;
    qNotasCabAMBIENTE: TIntegerField;
    qNotasCabTIPOEMISSAO: TIntegerField;
    qNotasCabPROTOCOLO: TStringField;
    qNotasCabDATA_HORARECIBO: TSQLTimeStampField;
    qNotasCabCHAVE_ACESSO: TStringField;
    qNotasCabFINALIDADE: TIntegerField;
    qNotasCabXML_ORIGINAL: TMemoField;
    qNotasCabCHAVE_ACESSO_ORIGINAL: TStringField;
    qNotasItens: TFDQuery;
    qNotasItensID: TIntegerField;
    qNotasItensSERIE: TIntegerField;
    qNotasItensMODELO: TIntegerField;
    qNotasItensCOD_EMITENTE: TIntegerField;
    qNotasItensIDPRODUTO: TIntegerField;
    qNotasItensSEQ_PRODUTO: TIntegerField;
    qNotasItensNCM: TStringField;
    qNotasItensCFOP: TStringField;
    qNotasItensNATUREZA: TStringField;
    qNotasItensUN: TStringField;
    qNotasItensQUANT: TBCDField;
    qNotasItensVLUNIT: TBCDField;
    qNotasItensBASEICMS: TBCDField;
    qNotasItensVLICMS: TBCDField;
    qNotasItensALIQICMS: TBCDField;
    qNotasItensBASE_IPI: TBCDField;
    qNotasItensVALOR_IPI: TBCDField;
    qNotasItensALIQ_IPI: TBCDField;
    qNotasItensCST_CSOSN: TStringField;
    qNotasItensCRED_ICMS: TBCDField;
    qNotasItensMVA: TBCDField;
    qNotasItensPREDICMS: TBCDField;
    qNotasItensCEST: TStringField;
    qNotasItensEAN: TStringField;
    qNotasItensORIGEM: TIntegerField;
    qNotasItensCODIGO_ANP: TStringField;
    qNotasItensDESCONTO: TBCDField;
    qNotasItensACRESCIMO: TBCDField;
    qNotasItensFRETE: TBCDField;
    qNotasItensSEGURO: TBCDField;
    qNotasItensOUTROS: TBCDField;
    qFormasNotas: TFDQuery;
    qFormasNotasID: TIntegerField;
    qFormasNotasSERIE: TIntegerField;
    qFormasNotasMODELO: TIntegerField;
    qFormasNotasCOD_EMITENTE: TIntegerField;
    qFormasNotasPARCELA: TIntegerField;
    qFormasNotasEMISSAO: TDateField;
    qFormasNotasVENCIMENTO: TDateField;
    qFormasNotasVALOR: TBCDField;
    qFormasNotasTIPO_FATURA: TStringField;
    qNotasMsg: TFDQuery;
    qNotasMsgID: TIntegerField;
    qNotasMsgSERIE: TIntegerField;
    qNotasMsgMODELO: TIntegerField;
    qNotasMsgCOD_EMITENTE: TIntegerField;
    qNotasMsgSEQ_MSG: TIntegerField;
    qNotasMsgMENSAGEM: TMemoField;
    docValidador: TACBrValidador;
    qAux: TFDQuery;
    qNotasItensDESCRICAO: TStringField;
    qNotasItensDESCRICAO_COMPLETA: TStringField;
    qNotasItensCODIGO: TStringField;
    qNotasItenstotal: TCurrencyField;
    qNotasCabNOMEFANTASIA: TStringField;
    qNotasCabCPF_CNPJ: TStringField;
    qNotasCabRAZAOSOCIAL: TStringField;
    qNotasCabFONE: TStringField;
    qNotasCabENDERECO: TStringField;
    qNotasCabUF: TStringField;
    qNotasCabCEP: TStringField;
    aDanfe: TACBrNFeDANFEFR;
    NFE: TACBrNFe;
    ACBrMail1: TACBrMail;
    qTransp: TFDQuery;
    qTranspIDTRANSP: TIntegerField;
    qTranspTIPOPESSOA: TStringField;
    qTranspNOME: TStringField;
    qTranspCPF_CNPJ: TStringField;
    qTranspIE: TStringField;
    qTranspENDERECO: TStringField;
    qTranspNUMERO: TIntegerField;
    qTranspBAIRRO: TStringField;
    qTranspMUNICIPIO: TStringField;
    qTranspUF: TStringField;
    qTranspTELEFONE: TStringField;
    qTranspEMAIL: TStringField;
    qTranspIDEMITENTE: TIntegerField;
    dsTransp: TDataSource;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    ACBrCEP1: TACBrCEP;
    ACBrIBGE1: TACBrIBGE;
    qNotasCabDATA_CANCELA: TSQLTimeStampField;
    qNotasCabPROTOCOLO_CANC: TStringField;
    qNotasCabDATA_INUTILIZA: TSQLTimeStampField;
    qNotasCabPROTOCOLO_INUTILIZA: TStringField;
    MDFE: TACBrMDFe;
    qMdfe: TFDQuery;
    qMdfeID: TIntegerField;
    qMdfeCOD_MDFE: TIntegerField;
    qMdfeCOD_VEICULO: TIntegerField;
    qMdfePLACA_VEICULO: TStringField;
    qMdfeNOME_VEICULO: TStringField;
    qMdfeUF_VEICULO: TStringField;
    qMdfeTARA_VEICULO: TIntegerField;
    qMdfePESOBRUTO_TOTAL: TSingleField;
    qMdfePRIMEIRA_UF_ENTREGA: TStringField;
    qMdfeULTIMA_UF_ENTREGA: TStringField;
    qMdfeTOTAL_NOTAS: TIntegerField;
    qMdfeCHAVE: TStringField;
    qMdfePROTOCOLO: TStringField;
    qMdfeRECIBO: TStringField;
    qMdfeXML: TBlobField;
    qMdfeID_EMITENTE: TIntegerField;
    qMdfeDATAEMISSAO: TDateField;
    qMdfeHORAEMISSAO: TTimeField;
    qMdfeFORMAEMISSAO: TStringField;
    qMdfeSITUACAO: TStringField;
    qMdfeARQUIVADA: TStringField;
    qMdfeARQ_MDFE: TStringField;
    qMdfeCSTATUS: TIntegerField;
    qMdfeXSTATUS: TStringField;
    qAux2: TFDQuery;
    aDanfeMdfe: TACBrMDFeDAMDFEFR;
    qCondutores: TFDQuery;
    qCondutoresCODIGO: TIntegerField;
    qCondutoresID_EMITENTE: TIntegerField;
    qCondutoresNOME: TStringField;
    qCondutoresCPF: TStringField;
    qEmitenteTIPOCERTIFICADO: TStringField;
    tExecuta: TFDTransaction;
    Executa: TFDQuery;
    qEmitenteMODULO_NFE: TStringField;
    qEmitenteMODULO_NFCE: TStringField;
    qEmitenteMODULO_MDFE: TStringField;
    qClientesREGIMECLIENTE: TStringField;
    tClientes: TFDTransaction;
    tProdutos: TFDTransaction;
    tCondutores: TFDTransaction;
    tTes: TFDTransaction;
    tCfop: TFDTransaction;
    tIbgeCod: TFDTransaction;
    tIbge: TFDTransaction;
    tNotasCab: TFDTransaction;
    tNotasItens: TFDTransaction;
    tFormasNtoas: TFDTransaction;
    tNotasMsg: TFDTransaction;
    tMdfe: TFDTransaction;
    tTransp: TFDTransaction;
    qGrafico: TFDQuery;
    qEmitenteESCRITORIOCONTADOR: TStringField;
    qEmitenteCONTADOR: TStringField;
    qEmitenteFONECONTADOR: TStringField;
    qEmitenteEMAILCONTADOR: TStringField;
    qEmitenteUSUARIOCONTADOR: TStringField;
    qEmitenteSENHACONTADOR: TStringField;
    aDanfeNfse: TACBrNFSeDANFSeFR;
    nfse: TACBrNFSe;
    qProdutosESTOQUE: TBCDField;
    qEvento: TFDQuery;
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
    tqEventos: TFDTransaction;
    qEventoListar: TFDQuery;
    tqEventoListar: TFDTransaction;
    qEventoListarID: TIntegerField;
    qEventoListarTIPO: TStringField;
    qEventoListarJUSTIFICATIVA: TStringField;
    qEventoListarDATA: TSQLTimeStampField;
    qEventoListarANO: TStringField;
    qEventoListarMODELO: TStringField;
    qEventoListarSERIE: TIntegerField;
    qEventoListarFAIXA_INICIAL: TIntegerField;
    qEventoListarFAIXA_FIM: TIntegerField;
    qEventoListarCSTATUS: TIntegerField;
    qEventoListarXMOTIVO: TStringField;
    qEventoListarPROTOCOLO: TStringField;
    qEventoListarRECIBO: TIntegerField;
    qEventoListarDHRECIBO: TSQLTimeStampField;
    qEventoListarIDEMITENTE: TIntegerField;
    qEventoListarARQXML: TMemoField;
    qEventoListarCAMINHO_XMLEVENTO: TStringField;
    qEventoListarNFENUMERO: TIntegerField;
    qEventoListarCCE_CHAVENFE: TStringField;
    qEventoListarCCE_IDLOTE: TIntegerField;
    qEventoListarCCE_CORRECAO: TStringField;
    qEventoListarCCE_SEQEVENTO: TIntegerField;
    qVeiculo: TFDQuery;
    tVeiculo: TFDTransaction;
    qVeiculoID: TIntegerField;
    qVeiculoCODIGO: TIntegerField;
    qVeiculoCARRO: TStringField;
    qVeiculoPLACA: TStringField;
    qVeiculoUF: TStringField;
    qVeiculoTARA: TStringField;
    qVeiculoID_EMITENTE: TIntegerField;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    qEmitenteMENSAGEMPROCOM: TStringField;
    qClientesTIPO: TStringField;
    qEntradaCab: TFDQuery;
    tEntradaCab: TFDTransaction;
    qEntradaCor: TFDQuery;
    tEntradaCor: TFDTransaction;
    qEntradaCorID: TIntegerField;
    qEntradaCorNOTA: TIntegerField;
    qEntradaCorSERIE: TIntegerField;
    qEntradaCorMODELO: TIntegerField;
    qEntradaCorCOD_EMITENTE: TIntegerField;
    qEntradaCorCOD_PROD: TIntegerField;
    qEntradaCorCOD_PROD_FORN: TStringField;
    qEntradaCorDESCRICAO: TStringField;
    qEntradaCorSEQ_PRODUTO: TIntegerField;
    qEntradaCorNCM: TStringField;
    qEntradaCorCFOP: TStringField;
    qEntradaCorNATUREZA: TStringField;
    qEntradaCorUN: TStringField;
    qEntradaCorQUANT: TBCDField;
    qEntradaCorVLUNIT: TBCDField;
    qEntradaCorVLTOTAL: TBCDField;
    qEntradaCorPRED_BC: TBCDField;
    qEntradaCorPRED_BC_ST: TBCDField;
    qEntradaCorBASEICMS: TBCDField;
    qEntradaCorVLICMS: TBCDField;
    qEntradaCorALIQICMS: TBCDField;
    qEntradaCorBASE_ST: TBCDField;
    qEntradaCorALIQ_ST: TBCDField;
    qEntradaCorVALOR_ST: TBCDField;
    qEntradaCorCST_IPI: TStringField;
    qEntradaCorBASE_IPI: TBCDField;
    qEntradaCorVALOR_IPI: TBCDField;
    qEntradaCorALIQ_IPI: TBCDField;
    qEntradaCorVALOR_COFINS: TBCDField;
    qEntradaCorALIQ_COFINS: TBCDField;
    qEntradaCorBASE_COFINS: TBCDField;
    qEntradaCorCOFINS_ST: TStringField;
    qEntradaCorCST_CSOSN: TStringField;
    qEntradaCorPIS_CST: TStringField;
    qEntradaCorPIS_BC: TBCDField;
    qEntradaCorPIS_ALIQ: TBCDField;
    qEntradaCorPIS_VALOR: TBCDField;
    qEntradaCorCRED_ICMS: TBCDField;
    qEntradaCorMVA: TBCDField;
    qEntradaCorPREDICMS: TBCDField;
    qEntradaCorCEST: TStringField;
    qEntradaCorEAN: TStringField;
    qEntradaCorORIGEM: TIntegerField;
    qEntradaCorCODIGO_ANP: TStringField;
    qEntradaCorDESCONTO: TBCDField;
    qEntradaCorACRESCIMO: TBCDField;
    qEntradaCorFRETE: TBCDField;
    qEntradaCorSEGURO: TBCDField;
    qEntradaCorOUTROS: TBCDField;
    qEntradaCorPERC_ICMS: TBCDField;
    qEntradaCorPERC_ST: TBCDField;
    qEntradaCorPERC_IPI: TBCDField;
    qEntradaCorBASE_CALCULO: TBCDField;
    qEntradaCabID: TIntegerField;
    qEntradaCabNOTA: TIntegerField;
    qEntradaCabSERIE: TIntegerField;
    qEntradaCabMODELO: TIntegerField;
    qEntradaCabCOD_EMITENTE: TIntegerField;
    qEntradaCabNATUREZA_OPER: TStringField;
    qEntradaCabCRT: TStringField;
    qEntradaCabTIPONOTA: TIntegerField;
    qEntradaCabDTEMISSAO: TDateField;
    qEntradaCabDTENTRADA: TDateField;
    qEntradaCabIDFORNECEDOR: TIntegerField;
    qEntradaCabIDTRANSP: TIntegerField;
    qEntradaCabTIPOFRETE: TIntegerField;
    qEntradaCabPLACAVEICULO: TStringField;
    qEntradaCabUFVEICULO: TStringField;
    qEntradaCabCOD_ANTT: TStringField;
    qEntradaCabBASE_ICMS: TBCDField;
    qEntradaCabVALOR_ICMS: TBCDField;
    qEntradaCabBASE_ICMS_ST: TBCDField;
    qEntradaCabVALOR_ICMS_ST: TBCDField;
    qEntradaCabVALOR_FRETE: TBCDField;
    qEntradaCabVALOR_DESCONTO: TBCDField;
    qEntradaCabVALOR_ACRESCIMO: TBCDField;
    qEntradaCabVALOR_SEGURO: TBCDField;
    qEntradaCabVALOR_OUTRAS_DESP: TBCDField;
    qEntradaCabVALOR_PIS: TBCDField;
    qEntradaCabVALOR_COFINS: TBCDField;
    qEntradaCabVALOR_PIS_ST: TBCDField;
    qEntradaCabVALOR_COFINS_ST: TBCDField;
    qEntradaCabVALOR_IPI: TBCDField;
    qEntradaCabBASE_IPI: TBCDField;
    qEntradaCabTOTAL_PRODUTOS: TBCDField;
    qEntradaCabTOTAL_NOTA: TBCDField;
    qEntradaCabQUANT: TBCDField;
    qEntradaCabESPECIE: TStringField;
    qEntradaCabMARCA: TStringField;
    qEntradaCabNUMERO: TStringField;
    qEntradaCabPESOBRUTO: TBCDField;
    qEntradaCabPESOLIQUIDO: TBCDField;
    qEntradaCabSTATUS_NOTA: TStringField;
    qEntradaCabDADOS_ADICIONAIS: TMemoField;
    qEntradaCabFORMA_PGTO: TStringField;
    qEntradaCabXML_NOTA: TMemoField;
    qEntradaCabCSTAT: TIntegerField;
    qEntradaCabXSTAT: TStringField;
    qEntradaCabAMBIENTE: TIntegerField;
    qEntradaCabTIPOEMISSAO: TIntegerField;
    qEntradaCabPROTOCOLO: TStringField;
    qEntradaCabDATA_HORARECIBO: TSQLTimeStampField;
    qEntradaCabCHAVE_ACESSO: TStringField;
    qEntradaCabFINALIDADE: TIntegerField;
    qEntradaCabXML_ORIGINAL: TMemoField;
    qEntradaCabCHAVE_ACESSO_ORIGINAL: TStringField;
    qEntradaCabDATA_CANCELA: TSQLTimeStampField;
    qEntradaCabPROTOCOLO_CANC: TStringField;
    qEntradaCabDATA_INUTILIZA: TSQLTimeStampField;
    qEntradaCabPROTOCOLO_INUTILIZA: TStringField;
    qEntradaCabASSINADO: TStringField;
    qEntradaCabCODIGO_UF: TStringField;
    qEntradaCorOPER_SAIDA_DENTRO: TIntegerField;
    qEntradaCorOPER_SAIDA_FORA: TIntegerField;
    qProdutosMARGEM: TCurrencyField;
    qEntradaCorNOVO: TStringField;
    qEntradaCorMARGEM: TCurrencyField;
    qEntradaCorVINCULADO: TStringField;
    qEntradaCabENCERRADA: TStringField;
    qEntradaCabENCERRADA_DATA: TDateField;
    qEntradaCorCOD_ENTRADA: TIntegerField;
    qEntradaCorMARGEM_NOVA: TCurrencyField;
    qEntradaCabNOME_FORNECEDOR: TStringField;
    qNotasCabCFOPVENDA: TStringField;
    qEmitenteTEF_PAYGO: TStringField;
    qEmitenteTEF_PADRAO_PAYGO: TStringField;
    qEmitenteTEF_PADRAO_PAYGO_ID: TIntegerField;
    qEmitenteTEF_PAYGO_KEY: TStringField;
    qEmitenteTEF_PAYGO_URLVENDA: TStringField;
    qEmitenteTEF_PAYGO_URLCONSULTA: TStringField;
    qEmitenteTEF_PAYGO_URLCANCELAR: TStringField;
    qEmitenteTEF_PAYGO_SENHATECNICA: TStringField;
    qTranspPLACA: TStringField;
    qTranspPLACAUF: TStringField;
    qTranspANTT: TStringField;
    frxTexto: TfrxReport;
    FrxuserTexto: TfrxUserDataSet;
    frxPDF: TfrxPDFExport;
    qEmitenteCFOPPADRAO: TStringField;
    qEmitenteMODULO_OSOTICA: TStringField;
    qOticaCab: TFDQuery;
    qOticaCabID: TIntegerField;
    qOticaCabCOD_EMITENTE: TIntegerField;
    qOticaCabCODIGO: TIntegerField;
    qOticaCabDATA: TDateField;
    qOticaCabHORA: TTimeField;
    qOticaCabVENDEDOR: TIntegerField;
    qOticaCabSITUACAO: TStringField;
    qOticaCabCLIENTE: TIntegerField;
    qOticaCabSUBTOTAL: TBCDField;
    qOticaCabPERCDESCONTO: TBCDField;
    qOticaCabDESCONTO: TBCDField;
    qOticaCabTOTAL: TBCDField;
    qOticaCabESFLONGEDIREITO: TStringField;
    qOticaCabESFLONGEESQUERDO: TStringField;
    qOticaCabESFPERTODIREITO: TStringField;
    qOticaCabESFPERTOESQUERDO: TStringField;
    qOticaCabCILLONGEDIREITO: TStringField;
    qOticaCabCILLONGEESQUERDO: TStringField;
    qOticaCabCILPERTODIREITO: TStringField;
    qOticaCabCILPERTOESQUERDO: TStringField;
    qOticaCabEIXOLONGEDIREITO: TStringField;
    qOticaCabEIXOLONGEESQUERDO: TStringField;
    qOticaCabEIXOPERTODIREITO: TStringField;
    qOticaCabEIXOPERTOESQUERDO: TStringField;
    qOticaCabALTURALONGEDIREITO: TStringField;
    qOticaCabALTURALONGEESQUERDO: TStringField;
    qOticaCabALTURAPERTODIREITO: TStringField;
    qOticaCabALTURAPERTOESQUERDO: TStringField;
    qOticaCabDNPLONGEDIREITO: TStringField;
    qOticaCabDNPLONGEESQUERDO: TStringField;
    qOticaCabDNPPERTODIREITO: TStringField;
    qOticaCabDNPPERTOESQUERDO: TStringField;
    qOticaCabADCAO: TStringField;
    qOticaCabDATARECEITA: TDateField;
    qOticaCabOBSRECEITA: TStringField;
    qOticaCabMEDICO: TStringField;
    qOticaCabOBSINTERNA: TStringField;
    qOticaCabLABORATORIO: TStringField;
    qOticaCabACOMPANHARECEITA: TStringField;
    qOticaCabACOMPANHAARMACAO: TStringField;
    tOticaCab: TFDTransaction;
    qOticaCabNOMEFANTASIA: TStringField;
    qOticaCabRAZAOSOCIAL: TStringField;
    qEmitenteDATACADASTRO: TDateField;
    qOticaCor: TFDQuery;
    qOticaCorID: TIntegerField;
    qOticaCorCOD_EMITENTE: TIntegerField;
    qOticaCorCODIGO: TIntegerField;
    qOticaCorIDOTICA: TIntegerField;
    qOticaCorPRODUTO: TIntegerField;
    qOticaCorQUANTIDADE: TBCDField;
    qOticaCorVALOR: TBCDField;
    qOticaCorTOTAL: TBCDField;
    qOticaCorNPRODUTO: TStringField;
    dsOticaCor: TDataSource;
    qReceberCab: TFDQuery;
    tReceberCab: TFDTransaction;
    qReceberCabID: TIntegerField;
    qReceberCabIDEMITENTE: TIntegerField;
    qReceberCabCODIGO: TIntegerField;
    qReceberCabFATURA: TIntegerField;
    qReceberCabREFPEDIDO: TIntegerField;
    qReceberCabDATA: TDateField;
    qReceberCabDATAVCTO: TDateField;
    qReceberCabOBS: TStringField;
    qReceberCabTIPODOCUMENTO: TIntegerField;
    qReceberCabPARCELA: TIntegerField;
    qReceberCabUSUARIO: TIntegerField;
    qReceberCabCLIENTE: TIntegerField;
    qReceberCabNOMEFANTASIA: TStringField;
    qReceberCabRAZAOSOCIAL: TStringField;
    qReceberCor: TFDQuery;
    tReceberCor: TFDTransaction;
    qReceberCorID: TIntegerField;
    qReceberCorIDEMITENTE: TIntegerField;
    qReceberCorCODIGO: TIntegerField;
    qReceberCorFATURA: TIntegerField;
    qReceberCorREFPEDIDO: TIntegerField;
    qReceberCorPARCELA: TIntegerField;
    qReceberCorOBS: TStringField;
    qReceberCorDATAPGTO: TDateField;
    qReceberCorUSUARIO: TIntegerField;
    qReceberCorHORA: TTimeField;
    qEmitenteLOGO: TStringField;
    qPagarCab: TFDQuery;
    tPagarCab: TFDTransaction;
    qPagarCor: TFDQuery;
    tPagarCor: TFDTransaction;
    qPagarCabID: TIntegerField;
    qPagarCabIDEMITENTE: TIntegerField;
    qPagarCabCODIGO: TIntegerField;
    qPagarCabREFPEDIDO: TIntegerField;
    qPagarCabDATA: TDateField;
    qPagarCabDATAVCTO: TDateField;
    qPagarCabOBS: TStringField;
    qPagarCabTIPODOCUMENTO: TIntegerField;
    qPagarCabPARCELA: TIntegerField;
    qPagarCabUSUARIO: TIntegerField;
    qPagarCabFORNECEDOR: TIntegerField;
    qPagarCabNOMEFANTASIA: TStringField;
    qPagarCabRAZAOSOCIAL: TStringField;
    qPagarCorID: TIntegerField;
    qPagarCorIDEMITENTE: TIntegerField;
    qPagarCorCODIGO: TIntegerField;
    qPagarCorFATURA: TIntegerField;
    qPagarCorREFPEDIDO: TIntegerField;
    qPagarCorPARCELA: TIntegerField;
    qPagarCorOBS: TStringField;
    qPagarCorDATAPGTO: TDateField;
    qPagarCorUSUARIO: TIntegerField;
    qPagarCorHORA: TTimeField;
    qEmitenteCNPJOPERADORA: TStringField;
    qOticaCabDATACADASTRO: TDateField;
    qOticaCabDATASAIDA: TDateField;
    qOticaCabHORASAIDA: TTimeField;
    qOticaCabATIVO: TStringField;
    qOticaCorGARANTIA: TStringField;
    qOticaCabFONE: TStringField;
    qOticaCabFAX: TStringField;
    qClientesEMAIL: TStringField;
    qClientesEMAILAUTOMATICO: TStringField;
    qClientesDATANASCIMENTO: TDateField;
    qEmitenteTEF_IPSITEF: TStringField;
    qEmitenteTEF_EMPRESA: TStringField;
    qEmitenteTEF_TERMINAL: TStringField;
    qEmitenteTEF_SITEF: TStringField;
    qEmitenteEDITARORCAMENTO: TStringField;
    qProdutosDESCRICAO: TStringField;
    qProdutosDESC_ANP: TStringField;
    qPagarCabFATURA: TStringField;
    qOScab: TFDQuery;
    tqOScab: TFDTransaction;
    qOsCor: TFDQuery;
    dsOsCor: TDataSource;
    qOScabID: TIntegerField;
    qOScabCOD_EMITENTE: TIntegerField;
    qOScabCODIGO: TIntegerField;
    qOScabDATAHORAENTRADA: TSQLTimeStampField;
    qOScabDATAHORASAIDA: TSQLTimeStampField;
    qOScabVENDEDOR: TIntegerField;
    qOScabSITUACAO: TStringField;
    qOScabCLIENTE: TIntegerField;
    qOScabTOTALPRODUTOS: TBCDField;
    qOScabTOTALSERVICOS: TBCDField;
    qOScabSUBTOTAL: TBCDField;
    qOScabPERCDESCONTO: TBCDField;
    qOScabDESCONTO: TBCDField;
    qOScabTOTAL: TBCDField;
    qOScabEQUIPAMENTO_VEICULO: TStringField;
    qOScabNRSERIE_PLACA: TStringField;
    qOScabINFORMACOES_KM: TStringField;
    qOScabDEFEITORECLAMADO: TStringField;
    qOScabDEFEITOENCONTRADO_SOLUCAO: TStringField;
    qOScabNOMEFANTASIA: TStringField;
    qOScabRAZAOSOCIAL: TStringField;
    qOScabFONE: TStringField;
    qOScabFAX: TStringField;
    qOsCorID: TIntegerField;
    qOsCorCOD_EMITENTE: TIntegerField;
    qOsCorCODIGO: TIntegerField;
    qOsCorIDOS: TIntegerField;
    qOsCorPRODUTO: TIntegerField;
    qOsCorTECNICO: TIntegerField;
    qOsCorNTECNICO: TStringField;
    qOsCorQUANTIDADE: TBCDField;
    qOsCorVALOR: TBCDField;
    qOsCorTOTAL: TBCDField;
    qOsCorNPRODUTO: TStringField;
    qOsCorGARANTIA: TStringField;
    qOScabATIVO: TStringField;
    qOsCorSer: TFDQuery;
    dsOsCorSer: TDataSource;
    qOsCorSerID: TIntegerField;
    qOsCorSerCOD_EMITENTE: TIntegerField;
    qOsCorSerCODIGO: TIntegerField;
    qOsCorSerIDOS: TIntegerField;
    qOsCorSerSERVICO: TIntegerField;
    qOsCorSerTECNICO: TIntegerField;
    qOsCorSerNTECNICO: TStringField;
    qOsCorSerQUANTIDADE: TBCDField;
    qOsCorSerVALOR: TBCDField;
    qOsCorSerTOTAL: TBCDField;
    qOsCorSerNSERVICO: TStringField;
    qOsCorSerGARANTIA: TStringField;
    qServico: TFDQuery;
    dsServico: TDataSource;
    tServico: TFDTransaction;
    qServicoIDEMITENTE: TIntegerField;
    qServicoID: TIntegerField;
    qServicoCODIGO: TIntegerField;
    qServicoNOME: TStringField;
    qServicoVALOR: TCurrencyField;
    qServicoCOMISSAO: TCurrencyField;
    qEmitenteIDREVENDA: TIntegerField;
    qEmitenteALIQUOTAICMS: TFMTBCDField;
    qProdutosCUSTO: TFMTBCDField;
    qProdutosPRECO: TFMTBCDField;
    qProdutosICMS: TFMTBCDField;
    qProdutosIPI: TFMTBCDField;
    qProdutosPESOBRUTO: TFMTBCDField;
    qProdutosPESOLIQ: TFMTBCDField;
    qProdutosMVA: TFMTBCDField;
    qProdutosPREDICMS: TFMTBCDField;
    qProdutosPGPL_ANP: TFMTBCDField;
    qProdutosPGNN_ANP: TFMTBCDField;
    qProdutosPGNI_ANP: TFMTBCDField;
    qProdutosVPART_ANP: TFMTBCDField;
    qNotasCabALIQ_SIMPLES: TFMTBCDField;
    qReceberCabVALOR: TFMTBCDField;
    qReceberCabSALDO: TFMTBCDField;
    qReceberCabJUROS: TFMTBCDField;
    qReceberCabDESCONTO: TFMTBCDField;
    qReceberCorJUROS: TFMTBCDField;
    qReceberCorDESCONTO: TFMTBCDField;
    qReceberCorVALORPAGO: TFMTBCDField;
    qMdfeVALOR_TOTAL: TFMTBCDField;
    qEntradaCabALIQ_SIMPLES: TFMTBCDField;
    qEntradaCorVALOR_VENDA: TFMTBCDField;
    qEntradaCorVALOR_VENDA_NOVO: TFMTBCDField;
    qPagarCabVALOR: TFMTBCDField;
    qPagarCabSALDO: TFMTBCDField;
    qPagarCabJUROS: TFMTBCDField;
    qPagarCabDESCONTO: TFMTBCDField;
    qPagarCorJUROS: TFMTBCDField;
    qPagarCorDESCONTO: TFMTBCDField;
    qPagarCorVALORPAGO: TFMTBCDField;
    qEntradaCorCUSTO_ANTIGO: TFMTBCDField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure qNotasItensCalcFields(DataSet: TDataSet);
    procedure qProdutosCUSTOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qNotasCabVALOR_ICMSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qNotasItensVLUNITGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    TRdata : PtrData;
    xx     : TStringStream;

    SiTef_NSU, SiTef_NSUHOST, SiTef_Bandeira, SiTef_DataHora, SiTef_NomePortador,vctoCertificado,
    SiTef_4ultDig, SiTef_ViaCli, SiTef_ViaEst, SiTef_OK, SiTef_CompCli, SiTef_ComEst : String;
    SiTef_Valor : Extended;

    idIntencaoTEF, tokenItencaoTEF,nomeIntencaoStatusTEF,idIntencaoStatusTEF,urlPagamento: String;

    CodigoEmitente, AUserName, usuario2, sLogin,
    sSenha, sEmail, Resultado, xmlExterno, teste,
    NomePDF,ArquivoPDF,FFolder,FUrl,interna,pdfNfeInterna,VersaoNFE,Tela,CodigoTela : string;
    usuario, nota, Modelo, serie, notaw, Modelow, seriew : integer;
    tipoEmissao, mobile, vPdf,vEmitente,vNf  : string;
    caminhoArqs, caminhoPDF                  : string[255];
    arquivo, pasta, arqpdf,xDataRel,posVenda : String;
    MesmoEstado,mostrarBotoesRelatorioEmail,mostrarBotoesRelatorioWhats : Boolean;

    procedure LerConfiguracao(const pmodelo: integer);
    procedure VisualizarPDFexterno (emitente,nf,modelo,serie : String);
    procedure MontaMenu;

    function VerificaVencimentoCertificado(vencimento:String) : String;

    procedure AumentaEstoque(emitente,produto:integer; quantidade:Real);
    procedure DiminuiEstoque(emitente,produto:integer; quantidade:Real);

    function base64Decode(const vText : AnsiString) : AnsiString;
    function base64Encode(const vText : AnsiString) : AnsiString;
    function VerificaEmail(email: string): Boolean;
    function Login(Login, senha: string): Boolean;
    function LoginC(Login, senha: string): Boolean;
    function GerarCodigo(gen: string): integer;
    function soNumero(Texto: string): string;
    function UFToInt(AUF:String):Integer;
    function TirarEspacos ( source : String ) : String;


    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, Vcl.Forms, pcnConversao, blcksock,
  uPrincipal, pcnConversaoNFe, ACBrDFeSSL, uPdfM, UFStatus;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.AumentaEstoque(emitente, produto: integer;
  quantidade: Real);
begin
    with UniMainModule.Banco do
    begin
         try
             StartTransaction;

             ExecSQL(' update produtos set estoque = estoque + :estoque '+
             ' where idProduto = :produto and idEmitente = :emitente ',
             [quantidade,produto,emitente]);

             Commit;
         except
         on e: Exception do
         begin
              Rollback;
              raise Exception.create(e.Message);
         end;
         end;
    end;
end;

function tUniMainModule.base64Decode(const vText: AnsiString): AnsiString;
var Decoder : TIdDecoderMIME;
begin
     Decoder := TIdDecoderMIME.Create(nil);
     try
          result := Decoder.DecodeString(vText);
     finally

     end; FreeAndNil(Decoder);
end;

function tUniMainModule.base64Encode(const vText: AnsiString): AnsiString;
var Encoder : TIdEncoderMIME;
begin
     Encoder := TIdEncoderMIME.Create(nil);
     try
          result := Encoder.EncodeString(vText);
     finally
          FreeAndNil(Encoder);
     end;
end;

procedure TUniMainModule.DiminuiEstoque(emitente, produto: integer;
  quantidade: Real);
begin
    with UniMainModule.Banco do
    begin
         try
             StartTransaction;

             ExecSQL(' update produtos set estoque = estoque - :estoque '+
             ' where idProduto = :produto and idEmitente = :emitente ',
             [quantidade,produto,emitente]);

             Commit;
         except
         on e: Exception do
         begin
              Rollback;
              raise Exception.create(e.Message);
         end;
         end;
    end;
end;

function TUniMainModule.Login(Login, senha: string): Boolean;
var
  mes, ano, empresa: string;
begin
      qGeral.Close;
      qGeral.sql.clear;
      qGeral.sql.Add('Select idEmitente, Fantasia from Emitente ' +
      ' where Login = :login and senha = :senha');
      qGeral.ParamByName('login').Value := UpperCase(trim(Login));
      qGeral.ParamByName('senha').Value := UpperCase(trim(senha));
      qGeral.Prepare;
      qGeral.Open();

      if qGeral.RecordCount > 0 then
      begin
          UniMainModule.qEmitente.Close;
          UniMainModule.qEmitente.ParamByName('idEmitente').Value := qGeral.FieldByName('idEmitente').Value;
          UniMainModule.qEmitente.Open();

          UniMainModule.CodigoEmitente := UniMainModule.qEmitenteIDEMITENTE.AsString;

          mes := formatdatetime('mm', date);
          ano := formatdatetime('yyyy', date);

          UniMainModule.caminhoArqs := 'c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\' + ano + mes + '\';
          UniMainModule.caminhoPDF  := 'c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\PDF\' + ano + mes + '\';

          if ( (UpperCase(trim(Login)) = 'TESTE') and (UpperCase(trim(senha)) = 'TESTE'))  then
             teste := 'S'
          else
             teste := 'N';

          if mobile <> 'S' then
          begin
             fPrincipal.bEmpresa.Caption := qEmitenteFANTASIA.AsString;
             montaMenu;
          end;

          usuario := qGeral.FieldByName('idEmitente').AsInteger;
          Result  := true;
      end
      else
          Result := false;
end;

function TUniMainModule.LoginC(Login, senha: string): Boolean;
var
  mes, ano, empresa: string;
begin
      qGeral.Close;
      qGeral.sql.clear;
      qGeral.sql.Add('Select idEmitente, Fantasia from Emitente ' +
      ' where usuarioContador = :login and senhaContador = :senha');
      qGeral.ParamByName('login').Value := UpperCase(trim(Login));
      qGeral.ParamByName('senha').Value := UpperCase(trim(senha));
      qGeral.Prepare;
      qGeral.Open();

      if qGeral.RecordCount > 0 then
      begin
          UniMainModule.qEmitente.Close;
          UniMainModule.qEmitente.ParamByName('idEmitente').Value := qGeral.FieldByName('idEmitente').Value;
          UniMainModule.qEmitente.Open();

          UniMainModule.CodigoEmitente := UniMainModule.qEmitenteIDEMITENTE.AsString;

          mes := formatdatetime('mm', date);
          ano := formatdatetime('yyyy', date);

          UniMainModule.caminhoArqs := 'c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\' + ano + mes + '\';
          UniMainModule.caminhoPDF  := 'c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\PDF\' + ano + mes + '\';

          if ( (UpperCase(trim(Login)) = 'TESTE') and (UpperCase(trim(senha)) = 'TESTE'))  then
             teste := 'S'
          else
             teste := 'N';

          usuario := qGeral.FieldByName('idEmitente').AsInteger;
          Result  := true;
      end
      else
          Result := false;
end;

procedure TUniMainModule.MontaMenu;
begin
      if qEmitenteMODULO_MDFE.AsString <> 'S' then
      begin
         fPrincipal.bCondutores.Visible  := false;
         fPrincipal.bVeiculos.Visible    := false;
      end;

      if qEmitenteMODULO_NFE.AsString <> 'S' then
      begin
           fPrincipal.bTransportadora.Visible := false;
           fPrincipal.bNfe.Visible            := false;
      end;

      if qEmitenteMODULO_NFCE.AsString <> 'S' then
         fPrincipal.bNfce.Visible := false;

      if qEmitenteMODULO_MDFE.AsString <> 'S' then
      begin
           fPrincipal.bMDFe.Visible       := false;
           fPrincipal.bGerenciarMDFe.Visible     := false;
      end;

      if teste = 'S' then
          fPrincipal.bEmitente.Visible := false
      else
          fPrincipal.bEmitente.Visible := True;

      if qEmitenteMODULO_OSOTICA.AsString <> 'S' then
           fPrincipal.bOsOtica.Caption := 'Orçamentos'
      else
           fPrincipal.bOsOtica.Caption := 'Os Ótica';

      fPrincipal.tMenu.Enabled := true;
end;

procedure TUniMainModule.LerConfiguracao(const pmodelo: integer);
var
  vcaminho, Temp: string;
  Ok            : Boolean;
begin
    vcaminho                                  := ExtractFilePath(Application.ExeName);

    if pmodelo = 65 then
      NFE.Configuracoes.Geral.ModeloDF        := moNFCe
    else
      NFE.Configuracoes.Geral.ModeloDF        := moNFe;

    NFE.Configuracoes.Geral.VersaoDF          := ve400;

    if NFe.Configuracoes.Geral.VersaoDF = ve400 then
    begin
        if qEmitenteUF.AsString = 'GO' then
        begin
            NFe.Configuracoes.Geral.SSLLib := libCapicom
        end
        else if qEmitenteUF.AsString = 'AL' then
        begin
            NFe.Configuracoes.Geral.SSLLib        := libWinCrypt;
            nFe.Configuracoes.Geral.SSLCryptLib   := cryWinCrypt;
            NFe.Configuracoes.Geral.SSLHttpLib    := httpWinHttp;
            NFe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;//xsMsXml;
            nfe.SSL.SSLType                       := LT_TLSv1_2;
        end
        else
        begin
            NFe.Configuracoes.Geral.SSLLib        := libWinCrypt;
            nFe.Configuracoes.Geral.SSLCryptLib   := cryWinCrypt;
            NFe.Configuracoes.Geral.SSLHttpLib    := httpWinHttp;
            NFe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;//xsMsXml;
            nfe.SSL.SSLType                       := LT_TLSv1_2;
        end;
    end;

    if UniMainModule.qEmitenteTIPOCERTIFICADO.AsString <> 'A3' then
    begin
        NFE.Configuracoes.Certificados.ArquivoPFX  := qEmitenteCERT_CAMINHO.AsString;
        NFE.Configuracoes.Certificados.senha       := qEmitenteCERT_SENHA.AsString;
        NFE.SSL.CarregarCertificado;

        vctoCertificado := VerificaVencimentoCertificado( FormatDateBr(NFE.SSL.CertDataVenc) );
    end;

    if qEmitenteGERAL_FORMAEMISSAO.AsInteger = 1 then
    begin
        NFE.Configuracoes.Geral.FormaEmissao := teOffLine;
        tipoEmissao                          := 'C';
    end
    else
    begin
        NFE.Configuracoes.Geral.FormaEmissao := StrToTpEmis(Ok, IntToStr(qEmitenteGERAL_FORMAEMISSAO.AsInteger));
        tipoEmissao                          := 'N';
    end;

    if UniMainModule.qEmitenteGERAL_SALVAR.AsInteger = 1 then
        NFE.Configuracoes.Geral.Salvar := true
    else
        NFE.Configuracoes.Geral.Salvar := false;

    NFE.Configuracoes.Arquivos.PathSchemas  := 'C:\CoreFiscal\Schemas';
    NFSE.Configuracoes.Arquivos.PathSchemas := 'C:\CoreFiscal\Schemas Nfse\Betha';

    if pmodelo = 65 then
    begin
        with NFE.Configuracoes.Arquivos do
        begin
            PathSalvar := UniMainModule.caminhoArqs + 'NFce\Resp'; // edtPathLogs.Text;
            PathNFe    := UniMainModule.caminhoArqs + 'NFce\XML';
            PathEvento := UniMainModule.caminhoArqs + 'Nfce\Eventos';
            PathInu    := UniMainModule.caminhoArqs + 'Nfce\Inutilizadas';
        end;
    end
    else
    begin
        with NFE.Configuracoes.Arquivos do
        begin
            PathSalvar := UniMainModule.caminhoArqs + 'NFe\Resp'; // edtPathLogs.Text;
            PathNFe    := UniMainModule.caminhoArqs + 'NFe\XML';
            PathEvento := UniMainModule.caminhoArqs + 'Nfe\Eventos';
            PathInu    := UniMainModule.caminhoArqs + 'Nfe\Inutilizadas';
        end;
    end;

    if UniMainModule.qEmitenteWEBSERVICE_VISUALIZAR.AsInteger = 1 then
        NFE.Configuracoes.WebServices.Visualizar := true
    else
        NFE.Configuracoes.WebServices.Visualizar := false;

    NFE.Configuracoes.WebServices.UF       := qEmitenteUF.Text;
    NFE.Configuracoes.WebServices.Ambiente := StrToTpAmb(Ok, IntToStr(qEmitenteWEBSERVICE_AMBIENTE.AsInteger + 1));

    if NFE.DANFE <> Nil then
    begin
         NFE.DANFE.TipoDANFE := StrToTpImp(Ok, IntToStr(qEmitenteGERAL_DANFE.AsInteger));
         NFE.DANFE.Logo      := UniMainModule.qEmitenteGERAL_LOGOMARCA.AsString;
    end;
end;

procedure TUniMainModule.qNotasCabVALOR_ICMSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
     if DisplayText then
        Text := FormatCurr('R$ ###,###,##0.00',Sender.ascurrency);
end;

procedure TUniMainModule.qNotasItensCalcFields(DataSet: TDataSet);
begin
    qNotasItenstotal.AsCurrency := (qNotasItensQUANT.AsCurrency * qNotasItensVLUNIT.AsCurrency) -
    qNotasItensDESCONTO.AsCurrency + qNotasItensACRESCIMO.AsCurrency + qNotasItensOUTROS.AsCurrency +
    qNotasItensSEGURO.AsCurrency + qNotasItensFRETE.AsCurrency;
end;

procedure TUniMainModule.qNotasItensVLUNITGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
     if DisplayText then
        Text := FormatCurr('R$ ###,###,##0.00',Sender.ascurrency);
end;

procedure TUniMainModule.qProdutosCUSTOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
     if DisplayText then
        Text := FormatCurr('R$ ###,###,##0.00',Sender.ascurrency);
end;

function TUniMainModule.GerarCodigo(gen: string): integer;
begin
     Result := Banco.ExecSQLScalar('SELECT GEN_ID(' + gen + ', 1) AS CODIGO FROM RDB$DATABASE');
end;

function TUniMainModule.soNumero(Texto: string): string;
var
  I: integer;
  S: string;
begin
      S     := '';
      for I := 1 To Length(Texto) do
      begin
          if (Texto[I] in ['0' .. '9']) then
          begin
            S := S + Copy(Texto, I, 1);
          end;
      end;
      Result := S;
end;

function TUniMainModule.TirarEspacos(source: String): String;
var
S, strTarget: String;
I: Integer;
begin
    S         := Trim(Source);
    strTarget := '';

    for I := 1 to Length(S) do
    begin
        if (Copy(S,I,1) <> ' ') then
            strTarget := strTarget + Copy(S,I,1);
    end;
        Result := strTarget;
end;


function TUniMainModule.VerificaEmail(email: string): Boolean;
begin
      qGeral.Close;
      qGeral.sql.clear;
      qGeral.sql.Add('Select Fantasia, Login, email, senha from Emitente ' + ' where email = :email');
      qGeral.ParamByName('email').Value := trim(LowerCase(email));
      qGeral.Prepare;
      qGeral.Open();

      if qGeral.RecordCount > 0 then
      begin
          sEmail   := qGeral.FieldByName('email').AsString;
          sLogin   := qGeral.FieldByName('login').AsString;
          sSenha   := qGeral.FieldByName('senha').AsString;
          usuario2 := qGeral.FieldByName('fantasia').AsString;
          Result   := true;
      end
      else
          Result := false;
end;

function TUniMainModule.VerificaVencimentoCertificado(
  vencimento: String): String;
var i : integer;
begin
      try
          if  strToDate( vencimento ) > date then
          begin
                i := DaysBetween(date, strToDate( vencimento ));

                if i < 10 then
                    Result := 'ATENÇÃO, SEU CERTIFICADO VENCERÁ EM '+IntToStr(I)+' DIA(S)!'
          end
          else if strToDate( vencimento ) = date then
          begin
                Result := 'ATENÇÃO, SEU CERTIFICADO VENCE HOJE!';
          end
          else if strToDate( vencimento ) < date then
          begin
                Result := 'ATENÇÃO, SEU CERTIFICADO JA ESTA VENCIDO, NÃO SERA POSSIVEL EMITIR NOTAS FISCAIS!';
          end
          else
                Result := '';

      except on e:Exception do
      begin
          Result := 'Erro 16 - problema ao verificar o vencimento do certificado.'+#13#10+
          'Certificado talvez não esteja instalado! ';
      end;
      end;
end;

procedure TUniMainModule.VisualizarPDFexterno(emitente,nf,modelo,serie: String);
begin
      qgeral.Close;
      qgeral.SQL.Clear;
      qgeral.SQL.Add('Select XML_NOTA, MODELO from Notas_Cab '+
      ' where COD_EMITENTE = :e and ID = :i and MODELO = :m and serie = :s');
      qGeral.ParamByName('e').AsString := emitente;
      qgeral.ParamByName('i').asString := NF;
      qgeral.ParamByName('m').asString := modelo;
      qgeral.ParamByName('s').asString := serie;
      qGeral.Prepare;
      qgeral.Open;

      xmlExterno := qgeral.FieldByName('XML_NOTA').AsString;
      MODELO     := qgeral.FieldByName('MODELO').asString;
      notaw      := strToInt(nf);    // qgeral.FieldByName('MODELO').asInteger;
      Modelow    := qgeral.FieldByName('MODELO').asInteger;
      seriew     := strToInt(serie); // qgeral.FieldByName('MODELO').asInteger;
end;

function TUniMainModule.UFToInt(AUF: String): Integer;
begin
     if (AUF='RO') then Result := 11;
     if (AUF='AC') then Result := 12;
     if (AUF='AM') then Result := 13;
     if (AUF='RR') then Result := 14;
     if (AUF='PA') then Result := 15;
     if (AUF='AP') then Result := 16;
     if (AUF='TO') then Result := 17;
     if (AUF='MA') then Result := 21;
     if (AUF='PI') then Result := 22;
     if (AUF='CE') then Result := 23;
     if (AUF='RN') then Result := 24;
     if (AUF='PB') then Result := 25;
     if (AUF='PE') then Result := 26;
     if (AUF='AL') then Result := 27;
     if (AUF='SE') then Result := 28;
     if (AUF='BA') then Result := 29;
     if (AUF='MG') then Result := 31;
     if (AUF='ES') then Result := 32;
     if (AUF='RJ') then Result := 33;
     if (AUF='SP') then Result := 35;
     if (AUF='PR') then Result := 41;
     if (AUF='SC') then Result := 42;
     if (AUF='RS') then Result := 43;
     if (AUF='MS') then Result := 50;
     if (AUF='MT') then Result := 51;
     if (AUF='GO') then Result := 52;
     if (AUF='DF') then Result := 53;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
     TRdata := New(PtrData);
end;

initialization

RegisterMainModuleClass(TUniMainModule);

end.
