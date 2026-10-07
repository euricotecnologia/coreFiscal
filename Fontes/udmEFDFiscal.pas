unit udmEFDFiscal;

interface

uses
  SysUtils, Classes, ACBrEFDBlocos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,

  Messages, vcl.forms, uniScreenMask,uniGUIForm,

  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrSpedFiscal;

type
  TdmEFDFiscal = class(TDataModule)
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    qEmpresa: TFDQuery;
    TRFiscal: TFDTransaction;
    QClientes_0150: TFDQuery;
    QClientes_0150IDCLIENTE: TIntegerField;
    QClientes_0150NOMEFANTASIA: TStringField;
    QClientes_0150PAIS: TStringField;
    QClientes_0150CPF_CNPJ: TStringField;
    QClientes_0150RG_IE: TStringField;
    QClientes_0150CODMUNICIPIO: TStringField;
    QClientes_0150ENDERECO: TStringField;
    QClientes_0150NRO: TStringField;
    QClientes_0150OBSERVACAO: TStringField;
    QClientes_0150BAIRRO: TStringField;
    QFornec_0150: TFDQuery;
    QFornec_0150IDCLIENTE: TIntegerField;
    QFornec_0150RAZAOSOCIAL: TStringField;
    QFornec_0150PAIS: TStringField;
    QFornec_0150CPF_CNPJ: TStringField;
    QFornec_0150RG_IE: TStringField;
    QFornec_0150CODMUNICIPIO: TStringField;
    QFornec_0150ENDERECO: TStringField;
    QFornec_0150NRO: TStringField;
    QFornec_0150BAIRRO: TStringField;
    NFSaidas: TFDQuery;
    NFSaidasID: TIntegerField;
    NFSaidasSERIE: TIntegerField;
    NFSaidasMODELO: TIntegerField;
    NFSaidasCOD_EMITENTE: TIntegerField;
    NFSaidasNATUREZA_OPER: TStringField;
    NFSaidasCRT: TStringField;
    NFSaidasTIPONOTA: TIntegerField;
    NFSaidasDTEMISSAO: TDateField;
    NFSaidasDTSAIDA: TDateField;
    NFSaidasIDCLIENTE: TIntegerField;
    NFSaidasCPF_CONSUMIDOR: TStringField;
    NFSaidasNOME_CONSUMIDOR: TStringField;
    NFSaidasIDTRANSP: TIntegerField;
    NFSaidasTIPOFRETE: TIntegerField;
    NFSaidasPLACAVEICULO: TStringField;
    NFSaidasUFVEICULO: TStringField;
    NFSaidasCOD_ANTT: TStringField;
    NFSaidasBASE_ICMS: TBCDField;
    NFSaidasVALOR_ICMS: TBCDField;
    NFSaidasBASE_ICMS_ST: TBCDField;
    NFSaidasVALOR_ICMS_ST: TBCDField;
    NFSaidasVALOR_FRETE: TBCDField;
    NFSaidasVALOR_DESCONTO: TBCDField;
    NFSaidasVALOR_ACRESCIMO: TBCDField;
    NFSaidasVALOR_SEGURO: TBCDField;
    NFSaidasVALOR_OUTRAS_DESP: TBCDField;
    NFSaidasVALOR_IPI: TBCDField;
    NFSaidasBASE_IPI: TBCDField;
    NFSaidasTOTAL_PRODUTOS: TBCDField;
    NFSaidasTOTAL_NOTA: TBCDField;
    NFSaidasQUANT: TBCDField;
    NFSaidasESPECIE: TStringField;
    NFSaidasMARCA: TStringField;
    NFSaidasNUMERO: TStringField;
    NFSaidasPESOBRUTO: TBCDField;
    NFSaidasPESOLIQUIDO: TBCDField;
    NFSaidasSTATUS_NOTA: TStringField;
    NFSaidasDADOS_ADICIONAIS: TMemoField;
    NFSaidasFORMA_PGTO: TStringField;
    NFSaidasXML_NOTA: TMemoField;
    NFSaidasCSTAT: TIntegerField;
    NFSaidasXSTAT: TStringField;
    NFSaidasAMBIENTE: TIntegerField;
    NFSaidasTIPOEMISSAO: TIntegerField;
    NFSaidasPROTOCOLO: TStringField;
    NFSaidasDATA_HORARECIBO: TSQLTimeStampField;
    NFSaidasCHAVE_ACESSO: TStringField;
    NFSaidasFINALIDADE: TIntegerField;
    NFSaidasXML_ORIGINAL: TMemoField;
    NFSaidasCHAVE_ACESSO_ORIGINAL: TStringField;
    NFSaidasDATA_CANCELA: TSQLTimeStampField;
    NFSaidasPROTOCOLO_CANC: TStringField;
    NFSaidasDATA_INUTILIZA: TSQLTimeStampField;
    NFSaidasPROTOCOLO_INUTILIZA: TStringField;
    NFSaidasASSINADO: TStringField;
    NFEntradas: TFDQuery;
    NFEntradasID: TIntegerField;
    NFEntradasNOTA: TIntegerField;
    NFEntradasSERIE: TIntegerField;
    NFEntradasMODELO: TIntegerField;
    NFEntradasCOD_EMITENTE: TIntegerField;
    NFEntradasNATUREZA_OPER: TStringField;
    NFEntradasCRT: TStringField;
    NFEntradasTIPONOTA: TIntegerField;
    NFEntradasDTEMISSAO: TDateField;
    NFEntradasDTENTRADA: TDateField;
    NFEntradasIDFORNECEDOR: TIntegerField;
    NFEntradasIDTRANSP: TIntegerField;
    NFEntradasTIPOFRETE: TIntegerField;
    NFEntradasPLACAVEICULO: TStringField;
    NFEntradasUFVEICULO: TStringField;
    NFEntradasCOD_ANTT: TStringField;
    NFEntradasBASE_ICMS: TBCDField;
    NFEntradasVALOR_ICMS: TBCDField;
    NFEntradasBASE_ICMS_ST: TBCDField;
    NFEntradasVALOR_ICMS_ST: TBCDField;
    NFEntradasVALOR_FRETE: TBCDField;
    NFEntradasVALOR_DESCONTO: TBCDField;
    NFEntradasVALOR_ACRESCIMO: TBCDField;
    NFEntradasVALOR_SEGURO: TBCDField;
    NFEntradasVALOR_OUTRAS_DESP: TBCDField;
    NFEntradasVALOR_PIS: TBCDField;
    NFEntradasVALOR_COFINS: TBCDField;
    NFEntradasVALOR_PIS_ST: TBCDField;
    NFEntradasVALOR_COFINS_ST: TBCDField;
    NFEntradasVALOR_IPI: TBCDField;
    NFEntradasBASE_IPI: TBCDField;
    NFEntradasTOTAL_PRODUTOS: TBCDField;
    NFEntradasTOTAL_NOTA: TBCDField;
    NFEntradasQUANT: TBCDField;
    NFEntradasESPECIE: TStringField;
    NFEntradasMARCA: TStringField;
    NFEntradasNUMERO: TStringField;
    NFEntradasPESOBRUTO: TBCDField;
    NFEntradasPESOLIQUIDO: TBCDField;
    NFEntradasSTATUS_NOTA: TStringField;
    NFEntradasDADOS_ADICIONAIS: TMemoField;
    NFEntradasFORMA_PGTO: TStringField;
    NFEntradasXML_NOTA: TMemoField;
    NFEntradasCSTAT: TIntegerField;
    NFEntradasXSTAT: TStringField;
    NFEntradasAMBIENTE: TIntegerField;
    NFEntradasTIPOEMISSAO: TIntegerField;
    NFEntradasPROTOCOLO: TStringField;
    NFEntradasDATA_HORARECIBO: TSQLTimeStampField;
    NFEntradasCHAVE_ACESSO: TStringField;
    NFEntradasFINALIDADE: TIntegerField;
    NFEntradasXML_ORIGINAL: TMemoField;
    NFEntradasCHAVE_ACESSO_ORIGINAL: TStringField;
    NFEntradasDATA_CANCELA: TSQLTimeStampField;
    NFEntradasPROTOCOLO_CANC: TStringField;
    NFEntradasDATA_INUTILIZA: TSQLTimeStampField;
    NFEntradasPROTOCOLO_INUTILIZA: TStringField;
    NFEntradasASSINADO: TStringField;
    NFEntradasCODIGO_UF: TStringField;
    NFEntradasENCERRADA: TStringField;
    NFEntradasENCERRADA_DATA: TDateField;
    NFEntradasNOME_FORNECEDOR: TStringField;
    Itens_NFSAIDA: TFDQuery;
    Itens_NFSAIDAID: TIntegerField;
    Itens_NFSAIDASERIE: TIntegerField;
    Itens_NFSAIDAMODELO: TIntegerField;
    Itens_NFSAIDACOD_EMITENTE: TIntegerField;
    Itens_NFSAIDAIDPRODUTO: TIntegerField;
    Itens_NFSAIDASEQ_PRODUTO: TIntegerField;
    Itens_NFSAIDANCM: TStringField;
    Itens_NFSAIDACFOP: TStringField;
    Itens_NFSAIDANATUREZA: TStringField;
    Itens_NFSAIDAUN: TStringField;
    Itens_NFSAIDAQUANT: TBCDField;
    Itens_NFSAIDAVLUNIT: TBCDField;
    Itens_NFSAIDABASEICMS: TBCDField;
    Itens_NFSAIDAVLICMS: TBCDField;
    Itens_NFSAIDAALIQICMS: TBCDField;
    Itens_NFSAIDABASE_IPI: TBCDField;
    Itens_NFSAIDAVALOR_IPI: TBCDField;
    Itens_NFSAIDAALIQ_IPI: TBCDField;
    Itens_NFSAIDACST_CSOSN: TStringField;
    Itens_NFSAIDACRED_ICMS: TBCDField;
    Itens_NFSAIDAMVA: TBCDField;
    Itens_NFSAIDAPREDICMS: TBCDField;
    Itens_NFSAIDACEST: TStringField;
    Itens_NFSAIDAEAN: TStringField;
    Itens_NFSAIDAORIGEM: TIntegerField;
    Itens_NFSAIDACODIGO_ANP: TStringField;
    Itens_NFSAIDADESCONTO: TBCDField;
    Itens_NFSAIDAACRESCIMO: TBCDField;
    Itens_NFSAIDAFRETE: TBCDField;
    Itens_NFSAIDASEGURO: TBCDField;
    Itens_NFSAIDAOUTROS: TBCDField;
    Itens_NFSAIDAIDEMITENTE: TSmallintField;
    Itens_NFSAIDAIDPRODUTO_1: TIntegerField;
    Itens_NFSAIDACODIGO: TStringField;
    Itens_NFSAIDAEAN_1: TStringField;
    Itens_NFSAIDADESCRICAO: TStringField;
    Itens_NFSAIDADESCRICAO_COMPLETA: TStringField;
    Itens_NFSAIDANCM_1: TStringField;
    Itens_NFSAIDACEST_1: TStringField;
    Itens_NFSAIDACUSTO: TBCDField;
    Itens_NFSAIDAPRECO: TBCDField;
    Itens_NFSAIDAUN_1: TStringField;
    Itens_NFSAIDACST: TStringField;
    Itens_NFSAIDAICMS: TBCDField;
    Itens_NFSAIDAIPI: TBCDField;
    Itens_NFSAIDAPESOBRUTO: TBCDField;
    Itens_NFSAIDAPESOLIQ: TBCDField;
    Itens_NFSAIDACFOP_1: TStringField;
    Itens_NFSAIDACSOSN: TStringField;
    Itens_NFSAIDAMVA_1: TBCDField;
    Itens_NFSAIDAPREDICMS_1: TBCDField;
    Itens_NFSAIDAORIGEM_1: TIntegerField;
    Itens_NFSAIDACSTIPI: TStringField;
    Itens_NFSAIDACSTPIS: TStringField;
    Itens_NFSAIDACSTCOFINS: TStringField;
    Itens_NFSAIDAALIQPIS: TCurrencyField;
    Itens_NFSAIDAALIQCOFINS: TCurrencyField;
    Itens_NFSAIDAOPER_ENTRADA_DENTRO: TIntegerField;
    Itens_NFSAIDAOPER_ENTRADA_FORA: TIntegerField;
    Itens_NFSAIDAOPER_SAIDA_DENTRO: TIntegerField;
    Itens_NFSAIDAOPER_SAIDA_FORA: TIntegerField;
    Itens_NFSAIDAOPER_DEVOLUCAO_DENTRO: TIntegerField;
    Itens_NFSAIDAOPER_DEVOLUCAO_FORA: TIntegerField;
    Itens_NFSAIDACODIGO_ANP_1: TStringField;
    Itens_NFSAIDAESTOQUE: TBCDField;
    Itens_NFSAIDAMARGEM: TCurrencyField;
    Itens_NFSAIDACOD_FORN: TStringField;
    C190_ITENS: TFDQuery;
    C190_ITENSCST_CSOSN: TStringField;
    C190_ITENSCFO: TStringField;
    C190_ITENSALIQICMS: TBCDField;
    C190_ITENSTOTAL: TFMTBCDField;
    C190_ITENSBC_ICMS: TBCDField;
    C190_ITENSICMS: TBCDField;
    C190_ITENSIPI: TBCDField;
    Itens_NFEntradas: TFDQuery;
    Itens_NFEntradasID: TIntegerField;
    Itens_NFEntradasCOD_ENTRADA: TIntegerField;
    Itens_NFEntradasNOTA: TIntegerField;
    Itens_NFEntradasSERIE: TIntegerField;
    Itens_NFEntradasMODELO: TIntegerField;
    Itens_NFEntradasCOD_EMITENTE: TIntegerField;
    Itens_NFEntradasCOD_PROD: TIntegerField;
    Itens_NFEntradasCOD_PROD_FORN: TStringField;
    Itens_NFEntradasDESCRICAO: TStringField;
    Itens_NFEntradasSEQ_PRODUTO: TIntegerField;
    Itens_NFEntradasNCM: TStringField;
    Itens_NFEntradasCFOP: TStringField;
    Itens_NFEntradasNATUREZA: TStringField;
    Itens_NFEntradasUN: TStringField;
    Itens_NFEntradasQUANT: TBCDField;
    Itens_NFEntradasVLUNIT: TBCDField;
    Itens_NFEntradasVLTOTAL: TBCDField;
    Itens_NFEntradasPRED_BC: TBCDField;
    Itens_NFEntradasPRED_BC_ST: TBCDField;
    Itens_NFEntradasBASEICMS: TBCDField;
    Itens_NFEntradasVLICMS: TBCDField;
    Itens_NFEntradasALIQICMS: TBCDField;
    Itens_NFEntradasPERC_ICMS: TBCDField;
    Itens_NFEntradasPREDICMS: TBCDField;
    Itens_NFEntradasBASE_ST: TBCDField;
    Itens_NFEntradasALIQ_ST: TBCDField;
    Itens_NFEntradasVALOR_ST: TBCDField;
    Itens_NFEntradasPERC_ST: TBCDField;
    Itens_NFEntradasCST_IPI: TStringField;
    Itens_NFEntradasBASE_IPI: TBCDField;
    Itens_NFEntradasVALOR_IPI: TBCDField;
    Itens_NFEntradasALIQ_IPI: TBCDField;
    Itens_NFEntradasPERC_IPI: TBCDField;
    Itens_NFEntradasVALOR_COFINS: TBCDField;
    Itens_NFEntradasALIQ_COFINS: TBCDField;
    Itens_NFEntradasBASE_COFINS: TBCDField;
    Itens_NFEntradasCOFINS_ST: TStringField;
    Itens_NFEntradasCST_CSOSN: TStringField;
    Itens_NFEntradasPIS_CST: TStringField;
    Itens_NFEntradasPIS_BC: TBCDField;
    Itens_NFEntradasPIS_ALIQ: TBCDField;
    Itens_NFEntradasPIS_VALOR: TBCDField;
    Itens_NFEntradasCRED_ICMS: TBCDField;
    Itens_NFEntradasMVA: TBCDField;
    Itens_NFEntradasCEST: TStringField;
    Itens_NFEntradasEAN: TStringField;
    Itens_NFEntradasORIGEM: TIntegerField;
    Itens_NFEntradasCODIGO_ANP: TStringField;
    Itens_NFEntradasDESCONTO: TBCDField;
    Itens_NFEntradasACRESCIMO: TBCDField;
    Itens_NFEntradasFRETE: TBCDField;
    Itens_NFEntradasSEGURO: TBCDField;
    Itens_NFEntradasOUTROS: TBCDField;
    Itens_NFEntradasBASE_CALCULO: TBCDField;
    Itens_NFEntradasOPER_SAIDA_DENTRO: TIntegerField;
    Itens_NFEntradasOPER_SAIDA_FORA: TIntegerField;
    Itens_NFEntradasNOVO: TStringField;
    Itens_NFEntradasVINCULADO: TStringField;
    Itens_NFEntradasMARGEM: TCurrencyField;
    Itens_NFEntradasMARGEM_NOVA: TCurrencyField;
    Itens_NFEntradasVALOR_VENDA: TBCDField;
    Itens_NFEntradasVALOR_VENDA_NOVO: TBCDField;
    Itens_NFEntradasCUSTO_ANTIGO: TBCDField;
    Itens_NFEntradasIDEMITENTE: TSmallintField;
    Itens_NFEntradasIDPRODUTO: TIntegerField;
    Itens_NFEntradasCODIGO: TStringField;
    Itens_NFEntradasEAN_1: TStringField;
    Itens_NFEntradasDESCRICAO_1: TStringField;
    Itens_NFEntradasDESCRICAO_COMPLETA: TStringField;
    Itens_NFEntradasNCM_1: TStringField;
    Itens_NFEntradasCEST_1: TStringField;
    Itens_NFEntradasCUSTO: TBCDField;
    Itens_NFEntradasPRECO: TBCDField;
    Itens_NFEntradasUN_1: TStringField;
    Itens_NFEntradasCST: TStringField;
    Itens_NFEntradasICMS: TBCDField;
    Itens_NFEntradasIPI: TBCDField;
    Itens_NFEntradasPESOBRUTO: TBCDField;
    Itens_NFEntradasPESOLIQ: TBCDField;
    Itens_NFEntradasCFOP_1: TStringField;
    Itens_NFEntradasCSOSN: TStringField;
    Itens_NFEntradasMVA_1: TBCDField;
    Itens_NFEntradasPREDICMS_1: TBCDField;
    Itens_NFEntradasORIGEM_1: TIntegerField;
    Itens_NFEntradasCSTIPI: TStringField;
    Itens_NFEntradasCSTPIS: TStringField;
    Itens_NFEntradasCSTCOFINS: TStringField;
    Itens_NFEntradasALIQPIS: TCurrencyField;
    Itens_NFEntradasALIQCOFINS: TCurrencyField;
    Itens_NFEntradasOPER_ENTRADA_DENTRO: TIntegerField;
    Itens_NFEntradasOPER_ENTRADA_FORA: TIntegerField;
    Itens_NFEntradasOPER_SAIDA_DENTRO_1: TIntegerField;
    Itens_NFEntradasOPER_SAIDA_FORA_1: TIntegerField;
    Itens_NFEntradasOPER_DEVOLUCAO_DENTRO: TIntegerField;
    Itens_NFEntradasOPER_DEVOLUCAO_FORA: TIntegerField;
    Itens_NFEntradasCODIGO_ANP_1: TStringField;
    Itens_NFEntradasESTOQUE: TBCDField;
    Itens_NFEntradasMARGEM_1: TCurrencyField;
    Itens_NFEntradasCOD_FORN: TStringField;
    C190_ENTRADA: TFDQuery;
    C190_ENTRADACST_CSOSN: TStringField;
    C190_ENTRADACFO: TStringField;
    C190_ENTRADAPERC_ICMS: TBCDField;
    C190_ENTRADATOTAL: TBCDField;
    C190_ENTRADABC_ICMS: TBCDField;
    C190_ENTRADAICMS: TBCDField;
    C190_ENTRADABC_SUBS: TBCDField;
    C190_ENTRADASUBS: TBCDField;
    C190_ENTRADAREDUCAO: TFMTBCDField;
    C190_ENTRADAIPI: TBCDField;
    qProdutos: TFDQuery;
    qProdutosCODIGO: TStringField;
    qProdutosEAN: TStringField;
    qProdutosDESCRICAO: TStringField;
    qProdutosNCM: TStringField;
    qProdutosUN: TStringField;
    qEmpresaIDEMITENTE: TIntegerField;
    qEmpresaRAZAOSOCIAL: TStringField;
    qEmpresaFANTASIA: TStringField;
    qEmpresaENDERECO: TStringField;
    qEmpresaNUMERO: TIntegerField;
    qEmpresaCOMPLEMENTO: TStringField;
    qEmpresaBAIRRO: TStringField;
    qEmpresaCIDADE: TStringField;
    qEmpresaCODCIDADE: TStringField;
    qEmpresaUF: TStringField;
    qEmpresaCNPJ: TStringField;
    qEmpresaIE: TStringField;
    qEmpresaFONE: TStringField;
    qEmpresaCEP: TStringField;
    qEmpresaCRT: TIntegerField;
    qEmpresaCERT_CAMINHO: TStringField;
    qEmpresaCERT_SENHA: TStringField;
    qEmpresaCERT_NUMSERIE: TStringField;
    qEmpresaGERAL_DANFE: TIntegerField;
    qEmpresaGERAL_FORMAEMISSAO: TIntegerField;
    qEmpresaGERAL_LOGOMARCA: TStringField;
    qEmpresaGERAL_SALVAR: TIntegerField;
    qEmpresaGERAL_PATHSALVAR: TStringField;
    qEmpresaGERAL_SERIE: TIntegerField;
    qEmpresaGERAL_SERIEPRODUCAO: TIntegerField;
    qEmpresaGERAL_SERIEHOMOLOG: TIntegerField;
    qEmpresaGERAL_SERIESCAN: TIntegerField;
    qEmpresaGERAL_NNFEPRODUCAO: TIntegerField;
    qEmpresaGERAL_NNFEHOMOLOG: TIntegerField;
    qEmpresaGERAL_NNFESCAN: TIntegerField;
    qEmpresaGERAL_USARDESCCOMPLETA: TIntegerField;
    qEmpresaWEBSERVICE_UF: TStringField;
    qEmpresaWEBSERVICE_AMBIENTE: TIntegerField;
    qEmpresaWEBSERVICE_VISUALIZAR: TIntegerField;
    qEmpresaPROXY_HOST: TStringField;
    qEmpresaPROXY_PORTA: TIntegerField;
    qEmpresaPROXY_USER: TStringField;
    qEmpresaPROXY_PASS: TStringField;
    qEmpresaEMAIL_HOST: TStringField;
    qEmpresaEMAIL_PORT: TIntegerField;
    qEmpresaEMAIL_USER: TStringField;
    qEmpresaEMAIL_PASS: TStringField;
    qEmpresaEMAIL_ASSUNTO: TStringField;
    qEmpresaEMAIL_SSL: TIntegerField;
    qEmpresaEMAIL_MENSAGEM: TMemoField;
    qEmpresaCELULAR: TStringField;
    qEmpresaEMAIL: TStringField;
    qEmpresaCHAVELIGACAO: TStringField;
    qEmpresaFLAG_IBPT: TIntegerField;
    qEmpresaIDTOKEN: TStringField;
    qEmpresaTOKEN: TStringField;
    qEmpresaDATAVENCIMENTOCERTIFICADO: TStringField;
    qEmpresaGERAL_NNFCEPRODUCAO: TIntegerField;
    qEmpresaGERAL_NNFCEHOMOLOG: TIntegerField;
    qEmpresaIMPRESSORANFE: TStringField;
    qEmpresaIMPRESSORANFCE: TStringField;
    qEmpresaPREVIEWNFE: TStringField;
    qEmpresaPREVIEWNFCE: TStringField;
    qEmpresaLOGIN: TStringField;
    qEmpresaSENHA: TStringField;
    qEmpresaTIPOCERTIFICADO: TStringField;
    qEmpresaMODULO_NFE: TStringField;
    qEmpresaMODULO_NFCE: TStringField;
    qEmpresaMODULO_MDFE: TStringField;
    qEmpresaESCRITORIOCONTADOR: TStringField;
    qEmpresaCONTADOR: TStringField;
    qEmpresaFONECONTADOR: TStringField;
    qEmpresaEMAILCONTADOR: TStringField;
    qEmpresaUSUARIOCONTADOR: TStringField;
    qEmpresaSENHACONTADOR: TStringField;
    qEmpresaMENSAGEMPROCOM: TStringField;
    QMedidas: TFDQuery;
    QMedidasUN: TStringField;
    qEmpresaALIQUOTAICMS: TFMTBCDField;
    NFSaidasALIQ_SIMPLES: TFMTBCDField;
    NFEntradasALIQ_SIMPLES: TFMTBCDField;

    function ProcessaChave(chave:String):string;
    function FormataStringD(Valor,Tamanho,Complemento : String):String;
    function FormataStringE(Valor,Tamanho,Complemento : String):String;
    function FormataStringC(Valor,Tamanho,Complemento : String):String;
    function RetiraCaracter(Text : string) : string;
  private
    { Private declarations }
    EmpresaGerada: Integer;
    FDataIni: TDateTime;
    FDataFim: TDateTime;
    procedure Bloco_0;
    procedure Bloco_C;
    procedure Bloco_D;
    procedure Bloco_E;
    procedure Bloco_G;
    procedure Bloco_H;
    procedure Bloco_1;
    procedure AbreTabelas_Bloco_0;
    procedure FechaTabelas_Bloco_0;
    function FTIPO_ITEM(I: string): TACBrTipoItem;
    function BuscaPag(COD_NF: Integer): TACBrTipoPagamento;
    function BuscaPagENT(COD_NF: Integer): TACBrTipoPagamento;
  public
    SqlMedidas: string;
    SqlProdutos: string;
    CodInventario: Integer;
    data_inv_ini: TDateTime;
    data_inv_fim: TDateTime;
    procedure GeraSped(Cod_emp: Integer; DataIni, DataFim: TDateTime);
  end;

function dmEFDFiscal: TdmEFDFiscal;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, uniGUIApplication, MainModule, uniGUIDialogs, uSpedFiscal,
  ServerModule;

function dmEFDFiscal: TdmEFDFiscal;
begin
  Result := TdmEFDFiscal(UniMainModule.GetModuleInstance(TdmEFDFiscal));
end;

{ TdmEFDFiscal }

procedure TdmEFDFiscal.AbreTabelas_Bloco_0;
begin
      QClientes_0150.Close;
      QClientes_0150.ParamByName('DATAINI').AsDate   := FDataIni;
      QClientes_0150.ParamByName('DATAFIN').AsDate   := FDataFim;
      QClientes_0150.ParamByName('CODEMP').AsInteger := EmpresaGerada;
      QClientes_0150.Open;
      QFornec_0150.Close;
      QFornec_0150.ParamByName('DATAINI').AsDate := FDataIni;
      QFornec_0150.ParamByName('DATAFIN').AsDate := FDataFim;
      QFornec_0150.ParamByName('CODEMP').AsInteger := EmpresaGerada;
      QFornec_0150.Open;
      QProdutos.Close;
      QProdutos.ParamByName('DATAINI').AsDate := FDataIni;
      QProdutos.ParamByName('DATAFIN').AsDate := FDataFim;
      QProdutos.ParamByName('CODEMP').AsInteger := EmpresaGerada;
      QProdutos.Open;
      NFSaidas.Close;
      NFSaidas.ParamByName('DATAINI').AsDate := FDataIni;
      NFSaidas.ParamByName('DATAFIN').AsDate := FDataFim;
      NFSaidas.ParamByName('CODEMP').AsInteger := EmpresaGerada;
      NFSaidas.Open;
      NFEntradas.Close;
      NFEntradas.ParamByName('DATAINI').AsDate   := FDataIni;
      NFEntradas.ParamByName('DATAFIN').AsDate   := FDataFim;
      NFEntradas.ParamByName('CODEMP').AsInteger := EmpresaGerada;
      NFEntradas.Open;
      QMedidas.Close;
      QMedidas.ParamByName('DATAINI').AsDate   := FDataIni;
      QMedidas.ParamByName('DATAFIN').AsDate   := FDataFim;
      QMedidas.ParamByName('CODEMP').AsInteger := EmpresaGerada;
      QMedidas.Open;
end;

procedure TdmEFDFiscal.Bloco_0;
var
  Pasta: String;
  AUX: String;
begin
      unimainModule.pasta   := UniServerModule.LocalCachePath;
      unimainModule.arquivo := 'SPEDFiscal_'+FormatDateTime('ddmmyyyy', FDataIni)+'.txt';
      fSpedFiscal.AdicionaItem('Iniciando...', 5);
      with ACBrSPEDFiscal1 do
      begin
          DT_INI := FDataIni;
          DT_FIN := FDataFim;
      end;
      ACBrSPEDFiscal1.Path    := UniMainModule.pasta;
      ACBrSPEDFiscal1.Arquivo := UniMainModule.arquivo;
      fSpedFiscal.AdicionaItem('Iniciando Geração', 8);
      ACBrSPEDFiscal1.IniciaGeracao;
      fSpedFiscal.AdicionaItem('Abrindo Tabelas Bloco 0', 10);
      AbreTabelas_Bloco_0;
      QEmpresa.First;
      with ACBrSPEDFiscal1.Bloco_0 do
      begin
        // Dados da Empresa
        with Registro0000New do
        begin
//          case QEmpresaVERSAO_EFD.AsInteger of
//            1:
//              COD_VER := vlVersao103;
//            2:
//              COD_VER := vlVersao104;
//            3:
//              COD_VER := vlVersao105;
//            4:
//              COD_VER := vlVersao108
//          else
            COD_VER := High(TACBrCodVer);
 //         end;
          COD_FIN := raOriginal;
          NOME    := qEmpresaRAZAOSOCIAL.AsString;
          CNPJ    := RetiraCaracter(qEmpresaCNPJ.AsString);
          CPF     := '';
          UF      := qEmpresaUF.AsString;
          IE      := RetiraCaracter(qEmpresaIE.AsString);
          COD_MUN := qEmpresaCODCIDADE.AsInteger;
          IM      := '';// RetiraCaracter(qEmpresaIE.AsString);
          SUFRAMA := '';
//          if QEmpresaPERFIL_EFD.AsString = 'A' then
//            IND_PERFIL := pfPerfilA
//          else if QEmpresaPERFIL_EFD.AsString = 'B' then
//            IND_PERFIL := pfPerfilB
//          else if QEmpresaPERFIL_EFD.AsString = 'C' then
            IND_PERFIL := pfPerfilC;
//          case QEmpresaTIPO_ATIVIDADE_EFD.AsInteger of
//            0:
//              IND_ATIV := atIndustrial;
//            1:
              IND_ATIV := atOutros;
//          end;
        end;
        with Registro0001New do
        begin
          IND_MOV := imComDados;
          // FILHO - Dados complementares da Empresa 0005
          with Registro0005New do
          begin
            FANTASIA := qEmpresaFANTASIA.AsString;
            CEP      := RetiraCaracter(qEmpresaCEP.AsString);
            ENDERECO := qEmpresaENDERECO.AsString;
            NUM      := qEmpresaNUMERO.AsString;
            COMPL    := '';
            BAIRRO   := qEmpresaBAIRRO.AsString;
            FONE     := RetiraCaracter(qEmpresaFONE.AsString);
            FAX      := RetiraCaracter(qEmpresaCELULAR.AsString);
            EMAIL    := '';
          end;
          /// DADOS CONTADOR 0100
          try
                with Registro0100New do
                begin
                  NOME     := qEmpresaCONTADOR.AsString;
                  CPF      := '11111111111';// RetiraCaracter(QEmpresaCPF_CONTADOR.AsString);
                  CRC      := '11111111111'; //.AsString;
                  CNPJ     := '11111111111111'; // RetiraCaracter(QEmpresaCNPJ_CONTADOR.AsString);
                  CEP      := '87910000'; // RetiraCaracter(QEmpresaCEP_CONTADOR.AsString);
                  ENDERECO := 'Rua de teste do contador'; // QEmpresaEND_CONTADOR.AsString;
                  NUM      := '123'; //  QEmpresaNUMERO_CONTADOR.AsString;
                  COMPL    := '';
                  BAIRRO   := 'Centro'; // QEmpresaBAIRRO_CONTADOR.AsString;
                  FONE     := '4434531313'; // RetiraCaracter(QEmpresaTEL_CONTADOR.AsString);
                  FAX      := '';
                  EMAIL    := '171@171.com.br';
                  COD_MUN  := 4123709; // QEmpresaCODIGO_MUNICIPIO_CONTADOR.AsInteger;
                end;
          except
                ShowMessage( 'Preencha os dados do contador completos' + sLineBreak +
                         ' Com CRC e COD IBGE e Endereço completo');
          end;
          // CLIENTES 0150
          QClientes_0150.First;
          while not QClientes_0150.Eof do
          begin
            with Registro0150New do
            begin
              COD_PART := 'C' + QClientes_0150IDCLIENTE.AsString;
              NOME     := QClientes_0150NOMEFANTASIA.AsString;
              COD_PAIS := QClientes_0150PAIS.AsString;
              AUX := Trim(RetiraCaracter(QClientes_0150CPF_CNPJ.AsString));
              if Length(AUX) > 11 then
              begin
                CNPJ := AUX;
                IE := RetiraCaracter(QClientes_0150RG_IE.AsString);
                CPF := '';
              end
              else
              begin
                if AUX = '' then
                  CPF := '12345678909'
                else
                  CPF := AUX;
                CNPJ := '';
                IE := '';
              end;
              COD_MUN  := QClientes_0150CODMUNICIPIO.AsInteger;
              SUFRAMA  := '';
              ENDERECO := QClientes_0150ENDERECO.AsString;
              NUM      := QClientes_0150NRO.AsString;
              COMPL    := '';
              BAIRRO   := QClientes_0150BAIRRO.AsString;
            end;
            QClientes_0150.Next;
          end;
          // FORNECEDORES 0150
          QFornec_0150.First;
          while not QFornec_0150.Eof do
          begin
            with Registro0150New do
            begin
              COD_PART := 'F' + QFornec_0150IDCLIENTE.AsString;
              NOME     := QFornec_0150RAZAOSOCIAL.AsString;
              COD_PAIS := QFornec_0150PAIS.AsString;
              AUX      := Trim(RetiraCaracter(QFornec_0150CPF_CNPJ.AsString));
              if Length(AUX) > 11 then
              begin
                CNPJ := AUX;
                IE := RetiraCaracter(QFornec_0150RG_IE.AsString);
                CPF := '';
              end
              else
              begin
                if AUX = '' then
                  CPF := '12345678909'
                else
                  CPF := AUX;
                CNPJ := '';
                IE := '';
              end;
              COD_MUN  := QFornec_0150CODMUNICIPIO.AsInteger;
              SUFRAMA  := '';
              ENDERECO := QFornec_0150ENDERECO.AsString;
              NUM      := QFornec_0150NRO.AsString;
              COMPL    := '';
              BAIRRO   := QFornec_0150BAIRRO.AsString;
            end;
            QFornec_0150.Next;
          end;
          // 0190 - UNIDADES MEDIDAS
          QMedidas.First;
          while not QMedidas.Eof do
          begin
            with Registro0190New do
            begin
              UNID  := QMedidasUN.AsString; // QMedidasDESCRICAO.AsString;
              DESCR := 'UNID ' + QMedidasUN.AsString; // QMedidasDESCRICAO.AsString;
            end;
            QMedidas.Next;
          end;
          // 0200 - PRODUTOS
          QProdutos.First;
          while not QProdutos.Eof do
          begin
            with Registro0200New do
            begin
              COD_ITEM   := FormataStringD(qProdutosCODIGO.AsString, '8', '0');
              DESCR_ITEM := qProdutosDESCRICAO.AsString;
              COD_BARRA  := qProdutosEAN.AsString;
    //          COD_ANT_ITEM := FormataStringD(QProdutosCOD_PRO.AsString, '8', '0');;
              UNID_INV   := qProdutosUN.AsString;
              TIPO_ITEM  :=  FTIPO_ITEM('1');// FTIPO_ITEM(QProdutosEFD_TIPO.AsString);
              COD_NCM    := qProdutosNCM.AsString;
              EX_IPI     := '';
              COD_GEN    := '';
              COD_LST    := '';
              ALIQ_ICMS  := 0; // QProdutosALIQUOTA_GRP.AsCurrency;
            end;
            QProdutos.Next;
          end;
//          NatOperacao.First;
//          while not NatOperacao.Eof do
//             begin
//                with Registro0400New do
//                    begin
//                       COD_NAT := NatOperacaoCOD_CFO.AsString;
//                       DESCR_NAT := NatOperacaoNOME_CFO.AsString;
//                    end;
//                NatOperacao.Next;
//             end;
          // 0450 - INFORMACOES COMPLEMETARES DAS NOTAS FISCAIS
          NFSaidas.First;
          while not NFSaidas.Eof do
          begin
              if NFSaidasDADOS_ADICIONAIS.AsString <> '' then
              begin
                  with Registro0450New do
                  begin
                    COD_INF := 'I' + NFSaidasID.AsString;
                    TXT :=StringReplace( NFSaidasDADOS_ADICIONAIS.AsString, #13, ' ', [rfReplaceAll] );
                    TXT := StringReplace( TXT, #10, ' ', [rfReplaceAll] );
                  end;
              end;
              NFSaidas.Next;
          end;
        end;
      end;
      ACBrSPEDFiscal1.WriteBloco_0;
end;

procedure TdmEFDFiscal.Bloco_1;
begin
      with ACBrSPEDFiscal1.Bloco_1 do
      begin
          with Registro1001New do
          begin
            IND_MOV := imComDados;
          end;
          with Registro1010New do
          begin
            IND_EXP   := 'N';
            IND_CCRF  := 'N';
            IND_COMB  := 'N';
            IND_USINA := 'N';
            IND_VA    := 'N';
            IND_EE    := 'N';
            IND_CART  := 'N';
            IND_FORM  := 'N';
            IND_AER   := 'N';
          end;
      end;
      ACBrSPEDFiscal1.WriteBloco_1;
end;

procedure TdmEFDFiscal.Bloco_C;
var
  IItens: Integer;
begin
  fSpedFiscal.AdicionaItem('Iniciando Bloco C', 20);
  with ACBrSPEDFiscal1.Bloco_C do
  begin
    with RegistroC001New do
    begin
      if NFSaidas.IsEmpty and NFEntradas.IsEmpty { and QCaixa.IsEmpty }then
      begin
        IND_MOV := imSemDados;
        ACBrSPEDFiscal1.WriteBloco_C(True);
        Exit;
      end;
      IND_MOV := imComDados;
      NFSaidas.First;
      while not NFSaidas.Eof do
      begin
        // C100 - Documento - Nota Fiscal (código 01), Nota Fiscal Avulsa (código 1B), Nota
        // Fiscal de Produtor (código 04) e NF-e (código 55)
        with RegistroC100New do
        begin
         fSpedFiscal.AdicionaItem('Processando Nota Saida: ' +
           NFSaidasID.AsString, 6);
          Sleep(100);
          if NFSaidasTIPONOTA.AsInteger = 1 then  // antes era < 5
            IND_OPER := tpSaidaPrestacao
          else
            IND_OPER := tpEntradaAquisicao;
          IND_EMIT := edEmissaoPropria;
          COD_MOD := Trim(NFSaidasMODELO.AsString);
          if (NFSaidasSTATUS_NOTA.AsString = 'C') then
             COD_SIT := sdCancelado;
          if (NFSaidasSTATUS_NOTA.AsString = 'I') then
            COD_SIT := sdDoctoNumInutilizada;
          if ((not NFSaidasCHAVE_ACESSO.IsNull) and
            (not NFSaidasCHAVE_ACESSO_ORIGINAL.IsNull) and (not NFSaidasPROTOCOLO.IsNull)
            {and (NFSaidasSTATUS_CANCELADO.AsString = '') }) then
            COD_SIT := sdRegular;
          SER := Trim(NFSaidasSERIE.AsString);
          NUM_DOC := FormatFloat('000000000', NFSaidasID.AsInteger);
          //
          if COD_SIT = sdDoctoNumInutilizada then
            CHV_NFE := ''
          else
            CHV_NFE := ProcessaChave(NFSaidasCHAVE_ACESSO.AsString);
          DT_DOC := NFSaidasDTEMISSAO.AsDateTime;
          if NFSaidasDTSAIDA.IsNull then
            DT_E_S := NFSaidasDTEMISSAO.AsDateTime
          else
            DT_E_S := NFSaidasDTSAIDA.AsDateTime;
          if not((COD_SIT = sdCancelado) or
            (COD_SIT = sdDoctoNumInutilizada)) then
          begin
            if not NFSaidasIDCLIENTE.IsNull then
              COD_PART := 'C' + NFSaidasIDCLIENTE.AsString
            else
              COD_PART := 'F' + NFSaidasIDCLIENTE.AsString;
            VL_DOC := NFSaidasTOTAL_NOTA.AsCurrency;
            //
            IND_PGTO   := BuscaPag(NFSaidasID.AsInteger);
            VL_DESC    := NFSaidasVALOR_DESCONTO.AsCurrency;
            VL_ABAT_NT := 0;
            VL_MERC := NFSaidasTOTAL_PRODUTOS.AsCurrency;
            if Trim(NFSaidasTIPOFRETE.AsString) = '1' then
              IND_FRT := tfPorContaEmitente;
            if Trim(NFSaidasTIPOFRETE.AsString) = '2' then
              IND_FRT := tfPorContaDestinatario;
            if Trim(NFSaidasTIPOFRETE.AsString) = '3' then
              IND_FRT := tfPorContaTerceiros;
            if Trim(NFSaidasTIPOFRETE.AsString) = '4' then
              IND_FRT := tfSemCobrancaFrete;
            VL_FRT        := NFSaidasVALOR_FRETE.AsCurrency;
            VL_SEG        := NFSaidasVALOR_SEGURO.AsCurrency;
            VL_OUT_DA     := NFSaidasVALOR_OUTRAS_DESP.AsCurrency;
            VL_BC_ICMS    := NFSaidasBASE_ICMS.AsCurrency;
            VL_ICMS       := NFSaidasVALOR_ICMS.AsCurrency;
            VL_BC_ICMS_ST := NFSaidasBASE_ICMS_ST.AsCurrency;
            VL_ICMS_ST    := NFSaidasVALOR_ICMS_ST.AsCurrency;
            VL_IPI        := NFSaidasVALOR_IPI.AsCurrency;
            VL_PIS        := 0; // NFSaidaspiALOR_PIS.AsCurrency;
            VL_COFINS     := 0; // NFSaidasVALOR_COFINS.AsCurrency;
            VL_PIS_ST     := 0;
            VL_COFINS_ST  := 0;
          end;
          if NFSaidasDADOS_ADICIONAIS.AsString <> '' then
          begin
               With RegistroC110New do
               begin
                    COD_INF :=  'I' + NFSaidasID.AsString;
               end;
          end;
          C190_ITENS.Close;
          C190_ITENS.ParamByName('CODNF').AsInteger  := NFSaidasID.AsInteger;
          C190_ITENS.ParamByName('CODEMP').AsInteger := StrToInt(UniMainModule.CodigoEmitente);
          C190_ITENS.Open;
          C190_ITENS.First;
          if not((COD_SIT = sdCancelado) or (COD_SIT = sdDoctoNumInutilizada)) then
            while not C190_ITENS.Eof do
            begin
              with RegistroC190New do
              begin
                CST_ICMS      := C190_ITENSCST_CSOSN.AsString;
                CFOP          := C190_ITENSCFO.AsString;
                ALIQ_ICMS     := C190_ITENSALIQICMS.AsFloat;
                VL_OPR        := C190_ITENSTOTAL.AsCurrency;
                VL_BC_ICMS    := C190_ITENSBC_ICMS.AsCurrency;
                VL_ICMS       := C190_ITENSICMS.AsCurrency;
                VL_BC_ICMS_ST := C190_ITENSBC_ICMS.AsCurrency;
                VL_ICMS_ST    := C190_ITENSBC_ICMS.AsCurrency;
                VL_RED_BC     := 0; // C190_ITENSREDUCAO.AsCurrency;
                VL_IPI        := C190_ITENSIPI.AsCurrency;
              end;
              C190_ITENS.Next;
            end;
        end;
        NFSaidas.Next;
      end;
      // ENTRADAS
      // Inserir Notas...
      NFEntradas.First;
      while not NFEntradas.Eof do
      begin
        // C100 - Documento - Nota Fiscal (código 01), Nota Fiscal Avulsa (código 1B), Nota
        // Fiscal de Produtor (código 04) e NF-e (código 55)
        with RegistroC100New do
        begin
         fSpedFiscal.AdicionaItem('Processando Nota Ent: ' +
           NFEntradasNOTA.AsString, 6);
          Sleep(100);
          if NFEntradasTIPONOTA.AsInteger = 1 then  // antes era < 5
            IND_OPER := tpSaidaPrestacao
          else
            IND_OPER := tpSaidaPrestacao;
 //        IND_OPER := tpEntradaAquisicao;
          IND_EMIT   := edTerceiros;
          COD_PART   := 'F' + NFEntradasIDFORNECEDOR.AsString;
          // Baseado no registro 0200
          COD_MOD    := NFEntradasMODELO.AsString;
          COD_SIT    := sdRegular;
          SER        := NFEntradasSERIE.AsString;
          NUM_DOC    := FormatFloat('000000000', NFEntradasNOTA.AsInteger);
          CHV_NFE    := ProcessaChave(NFEntradasCHAVE_ACESSO.AsString);
          DT_DOC     := NFEntradasDTEMISSAO.AsDateTime;
          DT_E_S     := NFEntradasDTENTRADA.AsDateTime;
          VL_DOC     := NFEntradasTOTAL_NOTA.AsCurrency;
          IND_PGTO   := BuscaPagENT(NFEntradasID.AsInteger);
          VL_DESC    := NFEntradasVALOR_DESCONTO.AsCurrency;
          VL_ABAT_NT := 0;
          VL_MERC    := NFEntradasTOTAL_PRODUTOS.AsCurrency;
          IND_FRT    := tfPorContaDestinatario;
          VL_FRT     := NFEntradasVALOR_FRETE.AsCurrency;
          VL_SEG     := NFEntradasVALOR_SEGURO.AsCurrency; // COLOQUEI
          VL_OUT_DA  := NFEntradasVALOR_ACRESCIMO.AsCurrency;
          VL_BC_ICMS := NFEntradasVALOR_ICMS.AsCurrency; // COLOQUIE
          VL_ICMS    := NFEntradasVALOR_ICMS.AsCurrency; // COLOQUEI
          VL_BC_ICMS_ST := NFEntradasBASE_ICMS_ST.AsCurrency;
          VL_ICMS_ST := NFEntradasVALOR_ICMS_ST.AsCurrency;
          VL_IPI     := NFEntradasVALOR_IPI.AsCurrency; // COLOQUEI
          VL_PIS     := NFEntradasVALOR_PIS.AsCurrency;
          VL_COFINS  := NFEntradasVALOR_COFINS.AsCurrency;
          VL_PIS_ST  := 0;
          VL_COFINS_ST := 0;

          if ACBrSPEDFiscal1.Bloco_0.Registro0000.IND_PERFIL <> pfPerfilC then
          begin
              Itens_NFEntradas.Close;
              Itens_NFEntradas.ParamByName('CODENT').AsInteger := NFEntradasID.AsInteger;
              Itens_NFEntradas.ParamByName('CodEMp').AsInteger := EmpresaGerada;
              Itens_NFEntradas.Open;
              IItens := 1;
              while not Itens_NFEntradas.Eof do
              begin
                  // c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
                  with RegistroC170New do // Inicio Adicionar os Itens:
                  begin
                    NUM_ITEM    := FormatFloat('000', IItens);
                    COD_ITEM    := FormataStringD(Itens_NFEntradasCOD_PROD.AsString,'8', '0');
                    DESCR_COMPL := Itens_NFEntradasDESCRICAO.AsString;
                    QTD         := Itens_NFEntradasQUANT.AsCurrency;
                    // O último dígito deve ser ignorado no arquivo
                    UNID        := Itens_NFEntradasUN.AsString;
                    VL_ITEM     := Itens_NFEntradasVLTOTAL.AsCurrency;
                    VL_DESC     := Itens_NFEntradasDESCONTO.AsCurrency;
                    IND_MOV     := mfSim;
                    CST_ICMS    := Itens_NFEntradasCST.AsString;
                    CFOP        := Itens_NFEntradasCFOP.AsString;
                    COD_NAT     := Itens_NFEntradasCFOP.AsString;    // codigo CFOP
                    // COD_NAT          := '64'; //Informar no 0400 antes de utilizá-lo
                    VL_BC_ICMS  := Itens_NFEntradasBASE_CALCULO.AsCurrency;
                    ALIQ_ICMS   := Itens_NFEntradasPERC_ICMS.AsCurrency;
                    VL_ICMS     := Itens_NFEntradasVLICMS.AsCurrency;
                    ALIQ_ST     := Itens_NFEntradasPERC_ST.AsCurrency;
                    VL_ICMS_ST  := Itens_NFEntradasVALOR_ST.AsCurrency;
                    IND_APUR    := iaMensal;
                    CST_IPI     := Itens_NFEntradasCST_IPI.AsString;
                    // FAZER FALTA CAMPO
                    COD_ENQ     := '';
                    VL_BC_IPI   := Itens_NFEntradasBASE_CALCULO.AsCurrency;
                    ALIQ_IPI    := Itens_NFEntradasPERC_IPI.AsCurrency;
                    VL_IPI      := Itens_NFEntradasVALOR_IPI.AsCurrency;
                    CST_PIS     := Itens_NFEntradasCSTPIS.AsString;
                    // FALTA
                    VL_BC_PIS     := Itens_NFEntradasBASE_CALCULO.AsCurrency; // COLOCAR
                    ALIQ_PIS_PERC := Itens_NFEntradasALIQPIS.AsCurrency;
                    // COLOCAR CAMPO
                    QUANT_BC_PIS := 0;
                    ALIQ_PIS_R   := 0;
                    VL_PIS       := Itens_NFEntradasPIS_VALOR.AsCurrency; // COLOCAR CAMPO
                    CST_COFINS   := Itens_NFEntradasCSTCOFINS.AsString;
                    VL_BC_COFINS := Itens_NFEntradasBASE_CALCULO.AsCurrency;
                    // COLOCAR
                    ALIQ_COFINS_PERC := Itens_NFEntradasALIQ_COFINS.AsCurrency;
                    // COLOCAR
                    QUANT_BC_COFINS := 0;
                    ALIQ_COFINS_R   := 0;
                    VL_COFINS       := Itens_NFEntradasVALOR_COFINS.AsCurrency; // COLOCAR
                    COD_CTA         := '01'; // Baseado no 0500
                  end; // Fim dos Itens;
                  Itens_NFEntradas.Next;
                  IItens := IItens + 1;
              end;
          end;
          C190_ENTRADA.Close;
          C190_ENTRADA.ParamByName('CODNF').AsInteger  := NFEntradasID.AsInteger;
          C190_ENTRADA.ParamByName('CodEmp').AsInteger := EmpresaGerada; // NFEntradasID.AsInteger;
          C190_ENTRADA.Open;
          C190_ENTRADA.First;
          if not((COD_SIT = sdCancelado) or
            (COD_SIT = sdDoctoNumInutilizada)) then
            while not C190_ENTRADA.Eof do
            begin
              with RegistroC190New do
              begin
                CST_ICMS      := C190_ENTRADACST_CSOSN.AsString;
                CFOP          := C190_ENTRADACFO.AsString;
                ALIQ_ICMS     := C190_ENTRADAPERC_ICMS.AsFloat;
                VL_OPR        := C190_ENTRADATOTAL.AsCurrency;
                VL_BC_ICMS    := C190_ENTRADABC_ICMS.AsCurrency;
                VL_ICMS       := C190_ENTRADAICMS.AsCurrency;
                VL_BC_ICMS_ST := C190_ENTRADABC_SUBS.AsCurrency;
                VL_ICMS_ST    := C190_ENTRADASUBS.AsCurrency;
                VL_RED_BC     := C190_ENTRADAREDUCAO.AsCurrency;
                VL_IPI        := C190_ENTRADAIPI.AsCurrency;
              end;
              C190_ENTRADA.Next;
            end;
            C190_ENTRADA.Close;
        end;
        NFEntradas.Next;
      end;
//      QCaixa.First;
//      while not QCaixa.Eof do
//      begin
//        // REGISTRO C400 - EQUIPAMENTO ECF (CÓDIGO 02 e 2D).
//        With RegistroC400New do
//        begin
//           frmSpedFiscal.AdicionaItem('Processando ECF: ' +
//           QCaixaR01_MODELO_ECF.AsString + ' - ' + QCaixaR01_NUMERO_SERIE.AsString, 6);
//
//           Application.processmessages;
//          COD_MOD := QCaixaMODELO.AsString;
//          ECF_MOD := QCaixaR01_MODELO_ECF.AsString;
//          ECF_FAB := QCaixaR01_NUMERO_SERIE.AsString;
//          ECF_CX := QCaixaR01_NUMERO_USUARIO.AsString;
//          Reducoes.Close;
//          Reducoes.ParamByName('CODCAI').AsInteger := QCaixaCOD_CAI.AsInteger;
//          Reducoes.ParamByName('DATAINI').AsDate := FDataIni;
//          Reducoes.ParamByName('DATAFIN').AsDate := FDataFim;
//          Reducoes.Open;
//          Reducoes.First;
//          while not Reducoes.Eof do
//          begin
//            With RegistroC405New do
//            begin
//              DT_DOC := ReducoesDATA.AsDateTime; // StrToDate('30/11/2011');
//              CRO := ReducoesCRO.AsInteger;
//              CRZ := ReducoesCRZ.AsInteger;
//              NUM_COO_FIN := ReducoesCOO_FINAL.AsInteger;
//              GT_FIN := ReducoesGT_FINAL.AsFloat;
//              VL_BRT := ReducoesVENDA_BRUTA.AsFloat;
//
//              { With RegistroC410New do
//                begin
//                VL_PIS := 0.00;
//                VL_COFINS := 0.00;
//                end; }
//
//              Totalizadores.Close;
//              Totalizadores.ParamByName('COD').AsInteger :=
//                ReducoesCODIGO.AsInteger;
//              Totalizadores.Open;
//              Totalizadores.First;
//              while not Totalizadores.Eof do
//              begin
//                if TotalizadoresVALOR.AsCurrency <> 0 then
//                with RegistroC420New do
//                begin
//                  COD_TOT_PAR := TotalizadoresINDICE_R03.AsString;
//                  VLR_ACUM_TOT := TotalizadoresVALOR.AsCurrency;
//                  if TotalizadoresALIQUOTA_GRP.AsCurrency > 0 then
//                     begin
//                        if ( Pos ( 'T', TotalizadoresINDICE_R03.AsString ) > 0 )
//                         and ( Length( TotalizadoresINDICE_R03.AsString ) >= 5 ) then
//                         begin
//                            NR_TOT := StrToint(Copy( TotalizadoresINDICE_R03.AsString, 1, 2 ) );
//                            DESCR_NR_TOT := 'TOTALIZADOR ' + TotalizadoresINDICE_R03.AsString;
//                         end;
//
//                     end;
//
//                  { Gera este registro somente para empresas do pergil B de apresentação }
//                  if Bloco_0.Registro0000.IND_PERFIL = pfPerfilB then
//                  begin
//                    ITENS_TOTALIZADORES.Close;
//                    ITENS_TOTALIZADORES.ParamByName('DATAINI').AsDate :=
//                      ReducoesDATA.AsDateTime;
//                    ITENS_TOTALIZADORES.ParamByName('COD_GRP').AsInteger :=
//                      TotalizadoresCOD_GRP.AsInteger;
//                    ITENS_TOTALIZADORES.ParamByName('CODCAI').AsInteger :=
//                      QCaixaCOD_CAI.AsInteger;
//                    ITENS_TOTALIZADORES.ParamByName('CODEMP').AsInteger := iEmp;
//                    ITENS_TOTALIZADORES.Open;
//                    ITENS_TOTALIZADORES.First;
//                    while not ITENS_TOTALIZADORES.Eof do
//                    begin
//                      With RegistroC425New do
//                      begin
//                        COD_ITEM :=
//                          FormataStringD(ITENS_TOTALIZADORESCOD_PRO.AsString,
//                          '8', '0');
//                        QTD := ITENS_TOTALIZADORESQUANT.AsFloat;
//                        UNID := ITENS_TOTALIZADORESUNIDADE.AsString;
//                        if ITENS_TOTALIZADORESVALOR.AsFloat < 0 then
//                           VL_ITEM := ITENS_TOTALIZADORESVALOR.AsFloat * -1
//                        else
//                           VL_ITEM := ITENS_TOTALIZADORESVALOR.AsFloat;
//                        VL_PIS := 0.00;
//                        VL_COFINS := 0.00;
//                      end;
//                      ITENS_TOTALIZADORES.Next
//                    end;
//                    ITENS_TOTALIZADORES.Close;
//                  end;
//                end;
//                Totalizadores.Next;
//              end;
//              Totalizadores.Close;
//
//              if ( Bloco_0.Registro0000.IND_PERFIL <> pfPerfilB ) and
//              ( Bloco_0.Registro0000.IND_PERFIL <> pfPerfilC )then
//              begin
//                VendasC460.Close;
//                VendasC460.ParamByName('DATAINI').AsDate :=
//                  ReducoesDATA.AsDateTime;
//                VendasC460.ParamByName('COD_CAI').AsInteger :=
//                  QCaixaCOD_CAI.AsInteger;
//                VendasC460.ParamByName('CODEMP').AsInteger := iEmp;
//                VendasC460.Open;
//                VendasC460.First;
//                while not VendasC460.Eof do
//                begin
//                  with REgistroC460New do
//                  begin
//
//                    if VendasC460CANCELADA_VEN.AsInteger = 1 then
//                      COD_SIT := sdCancelado
//                    else
//                      COD_SIT := sdRegular;
//                    COD_MOD := '2D';
//                    NUM_DOC := VendasC460CUPOM_FISCAL_VEN.AsString;
//
//                    if COD_SIT = sdRegular then
//                    begin
//
//                      DT_DOC := VendasC460DATA_VEN.AsDateTime;
//                      VL_DOC := VendasC460TOTAL_VEN.AsCurrency;
//                      VL_PIS := 0.00;
//                      VL_COFINS := 0.00;
//                      CPF_CNPJ := '';
//                      NOM_ADQ := '';
//
//                      ItensC470.Close;
//                      ItensC470.ParamByName('CODVEN').AsInteger :=
//                        VendasC460COD_VEN.AsInteger;
//                      ItensC470.ParamByName('CODEMP').AsInteger := iEmp;
//                      ItensC470.Open;
//                      ItensC470.First;
//                      while not ItensC470.Eof do
//                      begin
//                        if not ( ItensC470CANCELADO.AsInteger = 1 ) then
//                          begin
//                              with RegistroC470New do
//                              begin
//                                COD_ITEM := FormataStringD(ItensC470COD_PRO.AsString,
//                                  '8', '0');
//                                QTD := ItensC470QUANT.AsCurrency;
//                                if ItensC470CANCELADO.AsInteger = 1 then
//                                  QTD_CANC := QTD
//                                else
//                                  QTD_CANC := 0;
//
//                                UNID := ItensC470UNID.AsString;
//                                if ( ( QTD  ) * ( ItensC470VALOR.AsCurrency - ItensC470DESCONTO.AsCurrency ) ) < 0 then
//                                   VL_ITEM := (( QTD  ) * ( ItensC470VALOR.AsCurrency - ItensC470DESCONTO.AsCurrency )) * -1
//                                else
//                                   VL_ITEM := ( QTD  ) * ( ItensC470VALOR.AsCurrency - ItensC470DESCONTO.AsCurrency );
//                                CST_ICMS := ItensC470CST_CF_EST.AsString;
//                                CFOP := ItensC470CFOP_VENDAS_CF_EST.AsString;
//                                ALIQ_ICMS := ItensC470ALIQUOTA_GRP.AsCurrency;
//                                VL_PIS := 0.00;
//                                VL_COFINS := 0.00;
//                              end;
//                          end;
//                        ItensC470.Next;
//                      end;
//                    end;
//                  end;
//                  VendasC460.Next;
//                end;
//                VendasC460.Close;
//              end;
//
//              C490.Close;
//              C490.ParamByName('CODEMP').AsInteger := iEmp;
//              C490.ParamByName('DATAINI').AsDate := ReducoesDATA.AsDateTime;
//              C490.Open;
//              C490.First;
//
//              while not C490.Eof do
//              begin
//                with RegistroC490New do
//                begin
//                  CST_ICMS   := C490CST.AsString;
//                  CFOP       := C490CFOP.AsString;
//                  ALIQ_ICMS  := C490ALIQ.AsCurrency;
//                  VL_OPR     := C490TOTAL.AsCurrency;
//                  VL_BC_ICMS := C490BC_ICMS.AsCurrency;
//                  VL_ICMS    := C490ICMS.AsCurrency;
//                  COD_OBS    := ''
//                end;
//                C490.Next;
//              end;
//              C490.Close;
//
//              { Só envia este registro se o contribuinte for da BA }
//              if Bloco_0.Registro0000.UF = 'BA' then
//              begin
//                with RegistroC495New do
//                begin
//                  ALIQ_ICMS := 17.00;
//                  COD_ITEM := '000001';
//                  QTD := 1.00;
//                  QTD_CANC := 0.00;
//                  UNID := 'UN';
//                  VL_ITEM := 100.00;
//                  VL_DESC := 0.00;
//                  VL_CANC := 0.00;
//                  VL_ACMO := 0.00;
//                  VL_BC_ICMS := 100.00;
//                  VL_ICMS := 17.00;
//                  VL_ISEN := 0.00;
//                  VL_ICMS_ST := 0.00;
//                end;
//              end;
//            end; // AQUI
//            Reducoes.Next;
//          end;
//
//        end;
//        QCaixa.Next;
//      end;
    end;
  end;
  ACBrSPEDFiscal1.WriteBloco_C(True);
end;

procedure TdmEFDFiscal.Bloco_D;
begin
      with ACBrSPEDFiscal1.Bloco_D do
      begin
          with RegistroD001New do
          begin
            IND_MOV := imSemDados;
          end;
      end;
      ACBrSPEDFiscal1.WriteBloco_D;
end;

procedure TdmEFDFiscal.Bloco_E;
begin
      with ACBrSPEDFiscal1.Bloco_E do
      begin
          with RegistroE001New do
          begin
            IND_MOV := imSemDados;
            { with RegistroE100New do
              begin
              DT_INI := FDataIni;
              DT_FIN:= FDataFim;
              end; }
          end;
      end;
      ACBrSPEDFiscal1.WriteBloco_E;
end;

procedure TdmEFDFiscal.Bloco_G;
begin
      with ACBrSPEDFiscal1.Bloco_G do
      begin
          with RegistroG001New do
          begin
            IND_MOV := imSemDados;
          end;
      end;
      ACBrSPEDFiscal1.WriteBloco_G;
end;

procedure TdmEFDFiscal.Bloco_H;
begin
  with ACBrSPEDFiscal1.Bloco_H do
  begin
 //      if CodInventario = 0 then
       begin
          with RegistroH001New do
            begin
                IND_MOV := imSemDados;
            end;
       end
//       else
//       begin
//          INVENTARIO_H.Close;
//          INVENTARIO_H.ParamByName( 'COD' ).AsInteger := CodInventario;
//          INVENTARIO_H.Open;
//          INVENTARIO_TOTAL.Close;
//          INVENTARIO_TOTAL.ParamByName( 'COD' ).AsInteger := CodInventario;
//          INVENTARIO_TOTAL.Open;
//          with RegistroH001New do
//            begin
//                IND_MOV := imComDados;
//            end;
//          with RegistroH005New do
//               begin
//                  DT_INV := data_inv_fim;
//                  MOT_INV := miFinalPeriodo;
//                  VL_INV := INVENTARIO_TOTALTOTAL_INVENTARIO.AsCurrency;
//               end;
//          INVENTARIO_H.First;
//          while not INVENTARIO_H.Eof do
//             begin
//                with RegistroH010New do
//                    begin
//                         COD_ITEM := INVENTARIO_HCOD_PRO.AsString;
//                         UNID := INVENTARIO_HDESCRICAO.AsString;
//                         VL_UNIT := INVENTARIO_HPRECO_VENDA.AsCurrency;
//                         QTD := INVENTARIO_HQUANT.AsCurrency;
//                         VL_ITEM := INVENTARIO_HTOTAL_PRECO_VENDA.AsCurrency;
//                         IND_PROP := piInformante;
//                         TXT_COMPL := INVENTARIO_HNOME_PRO.AsString;
//                         COD_CTA := '01';
//                    end;
//                INVENTARIO_H.Next;
//             end;
//          INVENTARIO_H.Close;
//          INVENTARIO_TOTAL.Close;
//       end;
  end;
  ACBrSPEDFiscal1.WriteBloco_H;
end;

function TdmEFDFiscal.BuscaPag(COD_NF: Integer): TACBrTipoPagamento;
begin

end;

function TdmEFDFiscal.BuscaPagENT(COD_NF: Integer): TACBrTipoPagamento;
begin

end;

procedure TdmEFDFiscal.FechaTabelas_Bloco_0;
begin
    QClientes_0150.Close;
    QFornec_0150.Close;
    QMedidas.Close;
    QProdutos.Close;
    NFSaidas.Close;
    NFEntradas.Close;
  //  QCaixa.Close;
  //  NatOperacao.Open;
end;

function TdmEFDFiscal.FormataStringC(Valor, Tamanho,
  Complemento: String): String;
var
   Calc, L, Tam: Integer;
begin
   L := Length( Valor );
   Tam := StrToInt( Tamanho );
   Calc := ( ( Tam - L ) div 2 );
   Result :=  FormataStringD( '', IntToStr( Calc ), Complemento )  + Valor + FormataStringD( '', IntToStr( Calc ), Complemento );
end;

function TdmEFDFiscal.FormataStringD(Valor, Tamanho,
  Complemento: String): String;
var X, Y : Integer;
begin
   Y := Length(Valor);
   For X := Y to StrToInt(Tamanho) do
     begin
        If (x<>StrToInt(Tamanho)) then
           Valor := Complemento + Valor
        else
           Valor := '' + Valor ;
     end;
   Result := Valor;
end;

function TdmEFDFiscal.FormataStringE(Valor, Tamanho,
  Complemento: String): String;
var X, Y : Integer;
begin
   Y := Length(Valor);
   For X := Y to StrToInt(Tamanho) do
     begin
        If (x <> StrToInt(Tamanho)) then
           Valor := Valor + Complemento
        else
           Valor := Valor + '';
     end;
   Result := Valor;
end;

function TdmEFDFiscal.FTIPO_ITEM(I: string): TACBrTipoItem;
begin

end;

procedure TdmEFDFiscal.GeraSped(Cod_emp: Integer; DataIni, DataFim: TDateTime);
begin
      if TRFiscal.Active then
        TRFiscal.Commit;
      TRFiscal.StartTransaction;
      EmpresaGerada := strToInt( UniMainModule.CodigoEmitente );// Cod_emp;
      QEmpresa.Close;
      QEmpresa.ParamByName('CODEMP').AsInteger := EmpresaGerada;
      QEmpresa.Open;
      if QEmpresa.IsEmpty then
      begin
        ShowMessage ('Empresa não encontrata');
        TRFiscal.Commit;
        Exit;
      end;
      ACBrSPEDFiscal1.TrimString := true;
      FDataIni := DataIni;
      FDataFim := DataFim;
      fSpedFiscal.AdicionaItem('Processando Bloco 0', 30);
      UniSession.Synchronize;
      Bloco_0;
      fSpedFiscal.AdicionaItem('Processando Bloco C', 40);
      UniSession.Synchronize;
      Bloco_C;
      fSpedFiscal.AdicionaItem('Processando Bloco D', 50);
      UniSession.Synchronize;
      Bloco_D; // OK
      fSpedFiscal.AdicionaItem('Processando Bloco E', 60);
      UniSession.Synchronize;
      Bloco_E; // OK
      fSpedFiscal.AdicionaItem('Processando Bloco G', 70);
      UniSession.Synchronize;
      Bloco_G; // OK
      fSpedFiscal.AdicionaItem('Processando Bloco H', 80);
      UniSession.Synchronize;
      Bloco_H;
      fSpedFiscal.AdicionaItem('Processando Bloco 1', 90);
      UniSession.Synchronize;
      Bloco_1; // OK
      TRFiscal.Commit;
      ACBrSPEDFiscal1.SaveFileTXT;
      FechaTabelas_Bloco_0;
end;

function TdmEFDFiscal.ProcessaChave(chave: String): string;
var
    ChaveTemp, T: String;
    I: Integer;
begin
    ChaveTemp := Chave;
    T := '';
    for I := 1 to Length(ChaveTemp) do
    begin
      if (ChaveTemp[I] in ['0' .. '9']) then
        T := T + ChaveTemp[I];
    end;
    result := Trim(T);
end;


function TdmEFDFiscal.RetiraCaracter(Text: string): string;
var n : integer;
begin
   for n:= 1 to length(Text) do
     begin
        if (Copy(Text,n,1) = '.') or (Copy(Text,n,1) = '-') or (copy(text,n,1)
            = ',') or (copy(text,n,1) = '/') or (copy(text,n,1) = ':') then
           Delete(Text,n,1);
     end;
   Result:= Text;
end;

initialization
  RegisterModuleClass(TdmEFDFiscal);

end.
