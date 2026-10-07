object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  BackButtonAction = bbaWarnUser
  TouchTheme = 'neptune'
  DocumentKeyOptions = [dkDisableBackSpace, dkDisableESC, dkDisableF5]
  NavigateKeys.Next.Key = 13
  MonitoredKeys.Keys = <>
  EnableSynchronousOperations = True
  ServerMessages.UnavailableErrMsg = 'Erro de Comunica'#231#227'o'
  ServerMessages.LoadingMessage = 'Carregando...'
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">Ocorreu um erro na ap' +
      'lica'#231#227'o:</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reiniciar aplica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reiniciar Aplica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reiniciar Aplica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o invalida ou o tempo acabou.'
  ServerMessages.TerminateMessage = 'Sess'#227'o web terminou.'
  Height = 563
  Width = 1068
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 808
    Top = 240
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\CoreFiscal\fbclient.dll'
    Left = 808
    Top = 288
  end
  object qEmitente: TFDQuery
    CachedUpdates = True
    Connection = Banco
    SQL.Strings = (
      
        'Select * from Emitente where idEmitente = :idEmitente Order By i' +
        'dEmitente')
    Left = 144
    Top = 8
    ParamData = <
      item
        Name = 'IDEMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qEmitenteIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmitenteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 50
    end
    object qEmitenteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 50
    end
    object qEmitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object qEmitenteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qEmitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 10
    end
    object qEmitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 25
    end
    object qEmitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 25
    end
    object qEmitenteCODCIDADE: TStringField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      Size = 10
    end
    object qEmitenteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object qEmitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object qEmitenteIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 18
    end
    object qEmitenteFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 13
    end
    object qEmitenteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object qEmitenteCRT: TIntegerField
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object qEmitenteCERT_CAMINHO: TStringField
      FieldName = 'CERT_CAMINHO'
      Origin = 'CERT_CAMINHO'
      Size = 200
    end
    object qEmitenteCERT_SENHA: TStringField
      FieldName = 'CERT_SENHA'
      Origin = 'CERT_SENHA'
    end
    object qEmitenteCERT_NUMSERIE: TStringField
      FieldName = 'CERT_NUMSERIE'
      Origin = 'CERT_NUMSERIE'
      Size = 30
    end
    object qEmitenteGERAL_DANFE: TIntegerField
      FieldName = 'GERAL_DANFE'
      Origin = 'GERAL_DANFE'
    end
    object qEmitenteGERAL_FORMAEMISSAO: TIntegerField
      FieldName = 'GERAL_FORMAEMISSAO'
      Origin = 'GERAL_FORMAEMISSAO'
    end
    object qEmitenteGERAL_LOGOMARCA: TStringField
      FieldName = 'GERAL_LOGOMARCA'
      Origin = 'GERAL_LOGOMARCA'
      Size = 200
    end
    object qEmitenteGERAL_SALVAR: TIntegerField
      FieldName = 'GERAL_SALVAR'
      Origin = 'GERAL_SALVAR'
    end
    object qEmitenteGERAL_PATHSALVAR: TStringField
      FieldName = 'GERAL_PATHSALVAR'
      Origin = 'GERAL_PATHSALVAR'
      Size = 255
    end
    object qEmitenteGERAL_SERIE: TIntegerField
      FieldName = 'GERAL_SERIE'
      Origin = 'GERAL_SERIE'
    end
    object qEmitenteGERAL_SERIEPRODUCAO: TIntegerField
      FieldName = 'GERAL_SERIEPRODUCAO'
      Origin = 'GERAL_SERIEPRODUCAO'
    end
    object qEmitenteGERAL_SERIEHOMOLOG: TIntegerField
      FieldName = 'GERAL_SERIEHOMOLOG'
      Origin = 'GERAL_SERIEHOMOLOG'
    end
    object qEmitenteGERAL_SERIESCAN: TIntegerField
      FieldName = 'GERAL_SERIESCAN'
      Origin = 'GERAL_SERIESCAN'
    end
    object qEmitenteGERAL_NNFEPRODUCAO: TIntegerField
      FieldName = 'GERAL_NNFEPRODUCAO'
      Origin = 'GERAL_NNFEPRODUCAO'
    end
    object qEmitenteGERAL_NNFEHOMOLOG: TIntegerField
      FieldName = 'GERAL_NNFEHOMOLOG'
      Origin = 'GERAL_NNFEHOMOLOG'
    end
    object qEmitenteGERAL_NNFESCAN: TIntegerField
      FieldName = 'GERAL_NNFESCAN'
      Origin = 'GERAL_NNFESCAN'
    end
    object qEmitenteGERAL_USARDESCCOMPLETA: TIntegerField
      FieldName = 'GERAL_USARDESCCOMPLETA'
      Origin = 'GERAL_USARDESCCOMPLETA'
    end
    object qEmitenteWEBSERVICE_UF: TStringField
      FieldName = 'WEBSERVICE_UF'
      Origin = 'WEBSERVICE_UF'
      FixedChar = True
      Size = 2
    end
    object qEmitenteWEBSERVICE_AMBIENTE: TIntegerField
      FieldName = 'WEBSERVICE_AMBIENTE'
      Origin = 'WEBSERVICE_AMBIENTE'
    end
    object qEmitenteWEBSERVICE_VISUALIZAR: TIntegerField
      FieldName = 'WEBSERVICE_VISUALIZAR'
      Origin = 'WEBSERVICE_VISUALIZAR'
    end
    object qEmitentePROXY_HOST: TStringField
      FieldName = 'PROXY_HOST'
      Origin = 'PROXY_HOST'
      Size = 255
    end
    object qEmitentePROXY_PORTA: TIntegerField
      FieldName = 'PROXY_PORTA'
      Origin = 'PROXY_PORTA'
    end
    object qEmitentePROXY_USER: TStringField
      FieldName = 'PROXY_USER'
      Origin = 'PROXY_USER'
      Size = 200
    end
    object qEmitentePROXY_PASS: TStringField
      FieldName = 'PROXY_PASS'
      Origin = 'PROXY_PASS'
      Size = 25
    end
    object qEmitenteEMAIL_HOST: TStringField
      FieldName = 'EMAIL_HOST'
      Origin = 'EMAIL_HOST'
      Size = 255
    end
    object qEmitenteEMAIL_PORT: TIntegerField
      FieldName = 'EMAIL_PORT'
      Origin = 'EMAIL_PORT'
    end
    object qEmitenteEMAIL_USER: TStringField
      FieldName = 'EMAIL_USER'
      Origin = 'EMAIL_USER'
      Size = 200
    end
    object qEmitenteEMAIL_PASS: TStringField
      FieldName = 'EMAIL_PASS'
      Origin = 'EMAIL_PASS'
      Size = 25
    end
    object qEmitenteEMAIL_ASSUNTO: TStringField
      FieldName = 'EMAIL_ASSUNTO'
      Origin = 'EMAIL_ASSUNTO'
      Size = 150
    end
    object qEmitenteEMAIL_SSL: TIntegerField
      FieldName = 'EMAIL_SSL'
      Origin = 'EMAIL_SSL'
    end
    object qEmitenteEMAIL_MENSAGEM: TMemoField
      FieldName = 'EMAIL_MENSAGEM'
      Origin = 'EMAIL_MENSAGEM'
      BlobType = ftMemo
    end
    object qEmitenteCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object qEmitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object qEmitenteCHAVELIGACAO: TStringField
      FieldName = 'CHAVELIGACAO'
      Origin = 'CHAVELIGACAO'
      Size = 96
    end
    object qEmitenteFLAG_IBPT: TIntegerField
      FieldName = 'FLAG_IBPT'
      Origin = 'FLAG_IBPT'
    end
    object qEmitenteIDTOKEN: TStringField
      FieldName = 'IDTOKEN'
      Origin = 'IDTOKEN'
      Size = 50
    end
    object qEmitenteTOKEN: TStringField
      FieldName = 'TOKEN'
      Origin = 'TOKEN'
      Size = 60
    end
    object qEmitenteDATAVENCIMENTOCERTIFICADO: TStringField
      FieldName = 'DATAVENCIMENTOCERTIFICADO'
      Origin = 'DATAVENCIMENTOCERTIFICADO'
      Size = 10
    end
    object qEmitenteGERAL_NNFCEPRODUCAO: TIntegerField
      FieldName = 'GERAL_NNFCEPRODUCAO'
      Origin = 'GERAL_NNFCEPRODUCAO'
    end
    object qEmitenteGERAL_NNFCEHOMOLOG: TIntegerField
      FieldName = 'GERAL_NNFCEHOMOLOG'
      Origin = 'GERAL_NNFCEHOMOLOG'
    end
    object qEmitenteIMPRESSORANFE: TStringField
      FieldName = 'IMPRESSORANFE'
      Origin = 'IMPRESSORANFE'
      Size = 100
    end
    object qEmitenteIMPRESSORANFCE: TStringField
      FieldName = 'IMPRESSORANFCE'
      Origin = 'IMPRESSORANFCE'
      Size = 100
    end
    object qEmitentePREVIEWNFE: TStringField
      FieldName = 'PREVIEWNFE'
      Origin = 'PREVIEWNFE'
      Size = 1
    end
    object qEmitentePREVIEWNFCE: TStringField
      FieldName = 'PREVIEWNFCE'
      Origin = 'PREVIEWNFCE'
      Size = 1
    end
    object qEmitenteLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
    end
    object qEmitenteSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
    end
    object qEmitenteTIPOCERTIFICADO: TStringField
      FieldName = 'TIPOCERTIFICADO'
      Origin = 'TIPOCERTIFICADO'
      Size = 2
    end
    object qEmitenteMODULO_NFE: TStringField
      FieldName = 'MODULO_NFE'
      Origin = 'MODULO_NFE'
      Size = 1
    end
    object qEmitenteMODULO_NFCE: TStringField
      FieldName = 'MODULO_NFCE'
      Origin = 'MODULO_NFCE'
      Size = 1
    end
    object qEmitenteMODULO_MDFE: TStringField
      FieldName = 'MODULO_MDFE'
      Origin = 'MODULO_MDFE'
      Size = 1
    end
    object qEmitenteESCRITORIOCONTADOR: TStringField
      FieldName = 'ESCRITORIOCONTADOR'
      Origin = 'ESCRITORIOCONTADOR'
      Size = 200
    end
    object qEmitenteCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Origin = 'CONTADOR'
      Size = 200
    end
    object qEmitenteFONECONTADOR: TStringField
      FieldName = 'FONECONTADOR'
      Origin = 'FONECONTADOR'
      Size = 100
    end
    object qEmitenteEMAILCONTADOR: TStringField
      FieldName = 'EMAILCONTADOR'
      Origin = 'EMAILCONTADOR'
      Size = 200
    end
    object qEmitenteUSUARIOCONTADOR: TStringField
      FieldName = 'USUARIOCONTADOR'
      Origin = 'USUARIOCONTADOR'
      Size = 100
    end
    object qEmitenteSENHACONTADOR: TStringField
      FieldName = 'SENHACONTADOR'
      Origin = 'SENHACONTADOR'
      Size = 100
    end
    object qEmitenteMENSAGEMPROCOM: TStringField
      FieldName = 'MENSAGEMPROCOM'
      Origin = 'MENSAGEMPROCOM'
      Size = 200
    end
    object qEmitenteTEF_PAYGO: TStringField
      FieldName = 'TEF_PAYGO'
      Origin = 'TEF_PAYGO'
      Size = 1
    end
    object qEmitenteTEF_PADRAO_PAYGO: TStringField
      FieldName = 'TEF_PADRAO_PAYGO'
      Origin = 'TEF_PADRAO_PAYGO'
      Size = 1
    end
    object qEmitenteTEF_PADRAO_PAYGO_ID: TIntegerField
      FieldName = 'TEF_PADRAO_PAYGO_ID'
      Origin = 'TEF_PADRAO_PAYGO_ID'
    end
    object qEmitenteTEF_PAYGO_KEY: TStringField
      FieldName = 'TEF_PAYGO_KEY'
      Origin = 'TEF_PAYGO_KEY'
      Size = 200
    end
    object qEmitenteTEF_PAYGO_URLVENDA: TStringField
      FieldName = 'TEF_PAYGO_URLVENDA'
      Origin = 'TEF_PAYGO_URLVENDA'
      Size = 200
    end
    object qEmitenteTEF_PAYGO_URLCONSULTA: TStringField
      FieldName = 'TEF_PAYGO_URLCONSULTA'
      Origin = 'TEF_PAYGO_URLCONSULTA'
      Size = 200
    end
    object qEmitenteTEF_PAYGO_URLCANCELAR: TStringField
      FieldName = 'TEF_PAYGO_URLCANCELAR'
      Origin = 'TEF_PAYGO_URLCANCELAR'
      Size = 200
    end
    object qEmitenteTEF_PAYGO_SENHATECNICA: TStringField
      FieldName = 'TEF_PAYGO_SENHATECNICA'
      Origin = 'TEF_PAYGO_SENHATECNICA'
      Size = 100
    end
    object qEmitenteCFOPPADRAO: TStringField
      FieldName = 'CFOPPADRAO'
      Origin = 'CFOPPADRAO'
      Size = 4
    end
    object qEmitenteMODULO_OSOTICA: TStringField
      FieldName = 'MODULO_OSOTICA'
      Origin = 'MODULO_OSOTICA'
      Size = 1
    end
    object qEmitenteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object qEmitenteLOGO: TStringField
      FieldName = 'LOGO'
      Origin = 'LOGO'
      Size = 500
    end
    object qEmitenteCNPJOPERADORA: TStringField
      FieldName = 'CNPJOPERADORA'
      Origin = 'CNPJOPERADORA'
      Size = 18
    end
    object qEmitenteTEF_IPSITEF: TStringField
      FieldName = 'TEF_IPSITEF'
      Origin = 'TEF_IPSITEF'
    end
    object qEmitenteTEF_EMPRESA: TStringField
      FieldName = 'TEF_EMPRESA'
      Origin = 'TEF_EMPRESA'
    end
    object qEmitenteTEF_TERMINAL: TStringField
      FieldName = 'TEF_TERMINAL'
      Origin = 'TEF_TERMINAL'
      Size = 60
    end
    object qEmitenteTEF_SITEF: TStringField
      FieldName = 'TEF_SITEF'
      Origin = 'TEF_SITEF'
      Size = 1
    end
    object qEmitenteEDITARORCAMENTO: TStringField
      FieldName = 'EDITARORCAMENTO'
      Origin = 'EDITARORCAMENTO'
      Size = 1
    end
    object qEmitenteIDREVENDA: TIntegerField
      FieldName = 'IDREVENDA'
      Origin = 'IDREVENDA'
    end
    object qEmitenteALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Origin = 'ALIQUOTAICMS'
      Precision = 18
      Size = 2
    end
  end
  object dsEmitente: TDataSource
    DataSet = qEmitente
    Left = 200
    Top = 8
  end
  object Banco: TFDConnection
    Params.Strings = (
      'Database=C:\CoreFiscal\banco\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = fdBanco
    UpdateTransaction = fdBanco
    Left = 19
    Top = 8
  end
  object qGeral: TFDQuery
    Connection = Banco
    Left = 604
    Top = 8
  end
  object qIbge: TFDQuery
    Connection = Banco
    Transaction = tIbge
    SQL.Strings = (
      'select * from MUNICIPIOS order by NOME')
    Left = 16
    Top = 184
    object qIbgeID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      Size = 10
    end
    object qIbgeIDUF: TStringField
      FieldName = 'IDUF'
      Origin = 'IDUF'
      FixedChar = True
      Size = 2
    end
    object qIbgeNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 35
    end
  end
  object qIbgeCod: TFDQuery
    Connection = Banco
    Transaction = tIbgeCod
    SQL.Strings = (
      'select * from MUNICIPIOS order by NOME')
    Left = 72
    Top = 184
    object qIbgeCodID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      Size = 10
    end
    object qIbgeCodIDUF: TStringField
      FieldName = 'IDUF'
      Origin = 'IDUF'
      FixedChar = True
      Size = 2
    end
    object qIbgeCodNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 35
    end
  end
  object qTES: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tTes
    SQL.Strings = (
      
        'select ID,DESCRICAO,CFOP,ALIQICMS,REDBCICMS,ALIQICMSST,REDBCICMS' +
        'ST,MVAICMSST,CSTIPI,ALIQIPI,CSTPIS'
      
        '      ,ALIQPIS,ALIQPISST,CSTCOFINS,ALIQCOFINS,ALIQCOFINSST,DESTA' +
        'CA_ICMS,DESTACA_IPI,DESTACA_PIS'
      '      ,DESTACA_COFINS,CST,CSOSN,IDEMITENTE from TBTES where 1=2')
    Left = 184
    Top = 184
    object qTESID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTESDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qTESCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qTESALIQICMS: TCurrencyField
      FieldName = 'ALIQICMS'
      Origin = 'ALIQICMS'
    end
    object qTESREDBCICMS: TCurrencyField
      FieldName = 'REDBCICMS'
      Origin = 'REDBCICMS'
    end
    object qTESALIQICMSST: TCurrencyField
      FieldName = 'ALIQICMSST'
      Origin = 'ALIQICMSST'
    end
    object qTESREDBCICMSST: TCurrencyField
      FieldName = 'REDBCICMSST'
      Origin = 'REDBCICMSST'
    end
    object qTESMVAICMSST: TCurrencyField
      FieldName = 'MVAICMSST'
      Origin = 'MVAICMSST'
    end
    object qTESCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object qTESALIQIPI: TCurrencyField
      FieldName = 'ALIQIPI'
      Origin = 'ALIQIPI'
    end
    object qTESCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object qTESALIQPIS: TCurrencyField
      FieldName = 'ALIQPIS'
      Origin = 'ALIQPIS'
    end
    object qTESALIQPISST: TCurrencyField
      FieldName = 'ALIQPISST'
      Origin = 'ALIQPISST'
    end
    object qTESCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object qTESALIQCOFINS: TCurrencyField
      FieldName = 'ALIQCOFINS'
      Origin = 'ALIQCOFINS'
    end
    object qTESALIQCOFINSST: TCurrencyField
      FieldName = 'ALIQCOFINSST'
      Origin = 'ALIQCOFINSST'
    end
    object qTESDESTACA_ICMS: TIntegerField
      FieldName = 'DESTACA_ICMS'
      Origin = 'DESTACA_ICMS'
    end
    object qTESDESTACA_IPI: TIntegerField
      FieldName = 'DESTACA_IPI'
      Origin = 'DESTACA_IPI'
    end
    object qTESDESTACA_PIS: TIntegerField
      FieldName = 'DESTACA_PIS'
      Origin = 'DESTACA_PIS'
    end
    object qTESDESTACA_COFINS: TIntegerField
      FieldName = 'DESTACA_COFINS'
      Origin = 'DESTACA_COFINS'
    end
    object qTESCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      FixedChar = True
      Size = 2
    end
    object qTESCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      FixedChar = True
      Size = 3
    end
    object qTESIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
  end
  object qCFOP: TFDQuery
    Connection = Banco
    Transaction = tCfop
    SQL.Strings = (
      'select * from CFOP order by CFOP')
    Left = 128
    Top = 184
    object qCFOPID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCFOPCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'CFOP'
    end
    object qCFOPNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 100
    end
    object qCFOPTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qCFOPOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 100
    end
    object qCFOPOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 100
    end
  end
  object qProdutos: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tProdutos
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SizeMin = 255
        SourceDataType = dtAnsiString
      end>
    SQL.Strings = (
      'select '
      '      ESTOQUE'
      '      ,MARGEM'
      '      ,IDPRODUTO'
      '      ,CODIGO'
      '      ,EAN'
      '      ,DESCRICAO'
      '      ,DESCRICAO_COMPLETA'
      '      ,NCM'
      '      ,CEST'
      '      ,CUSTO'
      '      ,PRECO'
      '      ,UN'
      '      ,CST'
      '      ,ICMS'
      '      ,IPI'
      '      ,PESOBRUTO'
      '      ,PESOLIQ'
      '      ,CFOP'
      '      ,CSOSN'
      '      ,MVA'
      '      ,PREDICMS'
      '      ,ORIGEM'
      '      ,CSTIPI'
      '      ,CSTPIS'
      '      ,CSTCOFINS'
      '      ,ALIQPIS'
      '      ,ALIQCOFINS'
      '      ,OPER_ENTRADA_DENTRO'
      '      ,OPER_ENTRADA_FORA'
      '      ,OPER_SAIDA_DENTRO'
      '      ,OPER_SAIDA_FORA'
      '      ,IDEMITENTE'
      '      ,OPER_DEVOLUCAO_DENTRO'
      '      ,OPER_DEVOLUCAO_FORA'
      '      ,CODIGO_ANP'
      '      ,DESC_ANP'
      '      ,PGPL_ANP'
      '      ,PGNN_ANP'
      '      ,PGNI_ANP'
      '      ,VPART_ANP'
      'from PRODUTOS'
      'WHERE 1=2')
    Left = 240
    Top = 184
    object qProdutosIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      Required = True
    end
    object qProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qProdutosEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 30
    end
    object qProdutosDESCRICAO_COMPLETA: TStringField
      FieldName = 'DESCRICAO_COMPLETA'
      Origin = 'DESCRICAO_COMPLETA'
      Size = 300
    end
    object qProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object qProdutosCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object qProdutosUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      FixedChar = True
      Size = 3
    end
    object qProdutosCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      FixedChar = True
      Size = 3
    end
    object qProdutosCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      FixedChar = True
      Size = 3
    end
    object qProdutosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qProdutosCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object qProdutosCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object qProdutosCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object qProdutosALIQPIS: TCurrencyField
      FieldName = 'ALIQPIS'
      Origin = 'ALIQPIS'
    end
    object qProdutosALIQCOFINS: TCurrencyField
      FieldName = 'ALIQCOFINS'
      Origin = 'ALIQCOFINS'
    end
    object qProdutosOPER_ENTRADA_DENTRO: TIntegerField
      FieldName = 'OPER_ENTRADA_DENTRO'
      Origin = 'OPER_ENTRADA_DENTRO'
    end
    object qProdutosOPER_ENTRADA_FORA: TIntegerField
      FieldName = 'OPER_ENTRADA_FORA'
      Origin = 'OPER_ENTRADA_FORA'
    end
    object qProdutosOPER_SAIDA_DENTRO: TIntegerField
      FieldName = 'OPER_SAIDA_DENTRO'
      Origin = 'OPER_SAIDA_DENTRO'
    end
    object qProdutosOPER_SAIDA_FORA: TIntegerField
      FieldName = 'OPER_SAIDA_FORA'
      Origin = 'OPER_SAIDA_FORA'
    end
    object qProdutosIDEMITENTE: TSmallintField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qProdutosOPER_DEVOLUCAO_DENTRO: TIntegerField
      FieldName = 'OPER_DEVOLUCAO_DENTRO'
      Origin = 'OPER_DEVOLUCAO_DENTRO'
    end
    object qProdutosOPER_DEVOLUCAO_FORA: TIntegerField
      FieldName = 'OPER_DEVOLUCAO_FORA'
      Origin = 'OPER_DEVOLUCAO_FORA'
    end
    object qProdutosCODIGO_ANP: TStringField
      FieldName = 'CODIGO_ANP'
      Origin = 'CODIGO_ANP'
    end
    object qProdutosESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object qProdutosMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
    end
    object qProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object qProdutosDESC_ANP: TStringField
      FieldName = 'DESC_ANP'
      Origin = 'DESC_ANP'
      Size = 100
    end
    object qProdutosCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qProdutosPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qProdutosICMS: TFMTBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object qProdutosIPI: TFMTBCDField
      FieldName = 'IPI'
      Origin = 'IPI'
      Precision = 18
      Size = 2
    end
    object qProdutosPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object qProdutosPESOLIQ: TFMTBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
      Size = 3
    end
    object qProdutosMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qProdutosPREDICMS: TFMTBCDField
      FieldName = 'PREDICMS'
      Origin = 'PREDICMS'
      Precision = 18
      Size = 2
    end
    object qProdutosPGPL_ANP: TFMTBCDField
      FieldName = 'PGPL_ANP'
      Origin = 'PGPL_ANP'
      Precision = 18
      Size = 2
    end
    object qProdutosPGNN_ANP: TFMTBCDField
      FieldName = 'PGNN_ANP'
      Origin = 'PGNN_ANP'
      Precision = 18
      Size = 2
    end
    object qProdutosPGNI_ANP: TFMTBCDField
      FieldName = 'PGNI_ANP'
      Origin = 'PGNI_ANP'
      Precision = 18
      Size = 2
    end
    object qProdutosVPART_ANP: TFMTBCDField
      FieldName = 'VPART_ANP'
      Origin = 'VPART_ANP'
      Precision = 18
      Size = 2
    end
  end
  object dsTes: TDataSource
    DataSet = qTES
    Left = 184
    Top = 235
  end
  object dsCFOP: TDataSource
    DataSet = qCFOP
    Left = 128
    Top = 235
  end
  object dsProduto: TDataSource
    DataSet = qProdutos
    Left = 240
    Top = 235
  end
  object fdBanco: TFDTransaction
    Connection = Banco
    Left = 59
    Top = 9
  end
  object docValido: TACBrValidador
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 809
    Top = 7
  end
  object qClientes: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tClientes
    SQL.Strings = (
      
        'select tipo, REGIMEcLIENTE, IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,NOM' +
        'EFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO,NRO,'
      
        'COMPLEMENTO,BAIRRO,CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,CONSUMI' +
        'DORFINAL,IDEMITENTE,'
      'email,emailautomatico,dataNascimento '
      'from CLIENTES where 1=2 ')
    Left = 352
    Top = 184
    object qClientesIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      Required = True
    end
    object qClientesTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Origin = 'TIPOPESSOA'
      Size = 8
    end
    object qClientesRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object qClientesNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 150
    end
    object qClientesRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      Size = 18
    end
    object qClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qClientesFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 13
    end
    object qClientesFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 13
    end
    object qClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object qClientesNRO: TStringField
      FieldName = 'NRO'
      Origin = 'NRO'
      Size = 5
    end
    object qClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 10
    end
    object qClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 25
    end
    object qClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object qClientesCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Origin = 'CODMUNICIPIO'
      Size = 15
    end
    object qClientesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object qClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object qClientesOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 50
    end
    object qClientesCONSUMIDORFINAL: TStringField
      FieldName = 'CONSUMIDORFINAL'
      Origin = 'CONSUMIDORFINAL'
      FixedChar = True
      Size = 3
    end
    object qClientesIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qClientesREGIMECLIENTE: TStringField
      FieldName = 'REGIMECLIENTE'
      Origin = 'REGIMECLIENTE'
    end
    object qClientesTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 200
    end
    object qClientesEMAILAUTOMATICO: TStringField
      FieldName = 'EMAILAUTOMATICO'
      Origin = 'EMAILAUTOMATICO'
      Size = 1
    end
    object qClientesDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
  end
  object qNCM: TFDQuery
    Connection = Banco
    SQL.Strings = (
      'Select * from tbNCM')
    Left = 482
    Top = 9
    object qNCMID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNCMCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object qNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
  end
  object qCEST: TFDQuery
    Connection = Banco
    SQL.Strings = (
      'Select * from TBCEST')
    Left = 520
    Top = 9
  end
  object qNotasCab: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tNotasCab
    UpdateTransaction = tNotasCab
    SQL.Strings = (
      
        'select CLIENTES.NOMEFANTASIA,CLIENTES.CPF_CNPJ,CLIENTES.RAZAOSOC' +
        'IAL,CLIENTES.FONE,CLIENTES.ENDERECO,CLIENTES.UF,CLIENTES.CEP,NOT' +
        'AS_CAB.ID,NOTAS_CAB.SERIE,NOTAS_CAB.MODELO,NOTAS_CAB.COD_EMITENT' +
        'E,'
      
        'NOTAS_CAB.NATUREZA_OPER,NOTAS_CAB.CRT,NOTAS_CAB.ALIQ_SIMPLES,NOT' +
        'AS_CAB.TIPONOTA'
      
        ',NOTAS_CAB.DTEMISSAO,NOTAS_CAB.DTSAIDA,NOTAS_CAB.IDCLIENTE,NOTAS' +
        '_CAB.CPF_CONSUMIDOR'
      
        ',NOTAS_CAB.NOME_CONSUMIDOR,NOTAS_CAB.IDTRANSP,NOTAS_CAB.TIPOFRET' +
        'E,NOTAS_CAB.PLACAVEICULO'
      
        ',NOTAS_CAB.UFVEICULO,NOTAS_CAB.COD_ANTT,NOTAS_CAB.BASE_ICMS,NOTA' +
        'S_CAB.VALOR_ICMS'
      
        ',NOTAS_CAB.BASE_ICMS_ST,NOTAS_CAB.VALOR_ICMS_ST,NOTAS_CAB.VALOR_' +
        'FRETE,NOTAS_CAB.VALOR_DESCONTO'
      
        ',NOTAS_CAB.VALOR_ACRESCIMO,NOTAS_CAB.VALOR_SEGURO,NOTAS_CAB.VALO' +
        'R_OUTRAS_DESP,NOTAS_CAB.VALOR_IPI'
      
        ',NOTAS_CAB.BASE_IPI,NOTAS_CAB.TOTAL_PRODUTOS,NOTAS_CAB.TOTAL_NOT' +
        'A,NOTAS_CAB.QUANT'
      
        ',NOTAS_CAB.ESPECIE,NOTAS_CAB.MARCA,NOTAS_CAB.NUMERO,NOTAS_CAB.PE' +
        'SOBRUTO,NOTAS_CAB.PESOLIQUIDO'
      
        ',NOTAS_CAB.STATUS_NOTA,NOTAS_CAB.DADOS_ADICIONAIS,NOTAS_CAB.FORM' +
        'A_PGTO,NOTAS_CAB.XML_NOTA'
      
        ',NOTAS_CAB.CSTAT,NOTAS_CAB.XSTAT,NOTAS_CAB.AMBIENTE,NOTAS_CAB.TI' +
        'POEMISSAO,NOTAS_CAB.PROTOCOLO'
      
        ',NOTAS_CAB.DATA_HORARECIBO,NOTAS_CAB.CHAVE_ACESSO,NOTAS_CAB.FINA' +
        'LIDADE,NOTAS_CAB.XML_ORIGINAL'
      
        ',NOTAS_CAB.CHAVE_ACESSO_ORIGINAL,NOTAS_CAB.DATA_CANCELA,NOTAS_CA' +
        'B.PROTOCOLO_CANC,NOTAS_CAB.DATA_INUTILIZA,'
      'NOTAS_CAB.PROTOCOLO_INUTILIZA,CFOPVENDA'
      'from NOTAS_CAB'
      
        'LEFT OUTER JOIN CLIENTES ON (NOTAS_CAB.IDCLIENTE=CLIENTES.IDCLIE' +
        'NTE AND NOTAS_CAB.COD_EMITENTE=CLIENTES.IDEMITENTE)'
      'WHERE 1=2')
    Left = 19
    Top = 72
    object qNotasCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasCabSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasCabMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasCabCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasCabNATUREZA_OPER: TStringField
      FieldName = 'NATUREZA_OPER'
      Origin = 'NATUREZA_OPER'
      Size = 50
    end
    object qNotasCabCRT: TStringField
      FieldName = 'CRT'
      Origin = 'CRT'
      Size = 1
    end
    object qNotasCabTIPONOTA: TIntegerField
      FieldName = 'TIPONOTA'
      Origin = 'TIPONOTA'
    end
    object qNotasCabDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
    end
    object qNotasCabDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      Origin = 'DTSAIDA'
    end
    object qNotasCabIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
    end
    object qNotasCabCPF_CONSUMIDOR: TStringField
      FieldName = 'CPF_CONSUMIDOR'
      Origin = 'CPF_CONSUMIDOR'
      Size = 15
    end
    object qNotasCabNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = 'NOME_CONSUMIDOR'
      Size = 50
    end
    object qNotasCabIDTRANSP: TIntegerField
      FieldName = 'IDTRANSP'
      Origin = 'IDTRANSP'
    end
    object qNotasCabTIPOFRETE: TIntegerField
      FieldName = 'TIPOFRETE'
      Origin = 'TIPOFRETE'
    end
    object qNotasCabPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Origin = 'PLACAVEICULO'
      Size = 7
    end
    object qNotasCabUFVEICULO: TStringField
      FieldName = 'UFVEICULO'
      Origin = 'UFVEICULO'
      Size = 2
    end
    object qNotasCabCOD_ANTT: TStringField
      FieldName = 'COD_ANTT'
      Origin = 'COD_ANTT'
    end
    object qNotasCabBASE_ICMS: TBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      currency = True
      Precision = 18
    end
    object qNotasCabVALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabBASE_ICMS_ST: TBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      currency = True
      Precision = 18
    end
    object qNotasCabVALOR_ICMS_ST: TBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabVALOR_FRETE: TBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabVALOR_ACRESCIMO: TBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabVALOR_SEGURO: TBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabVALOR_OUTRAS_DESP: TBCDField
      FieldName = 'VALOR_OUTRAS_DESP'
      Origin = 'VALOR_OUTRAS_DESP'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabBASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      currency = True
      Precision = 18
    end
    object qNotasCabTOTAL_PRODUTOS: TBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Origin = 'TOTAL_PRODUTOS'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabTOTAL_NOTA: TBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      OnGetText = qNotasCabVALOR_ICMSGetText
      currency = True
      Precision = 18
    end
    object qNotasCabQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object qNotasCabESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 15
    end
    object qNotasCabMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 15
    end
    object qNotasCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 15
    end
    object qNotasCabPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
    end
    object qNotasCabPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
    end
    object qNotasCabSTATUS_NOTA: TStringField
      FieldName = 'STATUS_NOTA'
      Origin = 'STATUS_NOTA'
      Size = 1
    end
    object qNotasCabDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      Origin = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
    end
    object qNotasCabFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      Origin = 'FORMA_PGTO'
    end
    object qNotasCabXML_NOTA: TMemoField
      FieldName = 'XML_NOTA'
      Origin = 'XML_NOTA'
      BlobType = ftMemo
    end
    object qNotasCabCSTAT: TIntegerField
      FieldName = 'CSTAT'
      Origin = 'CSTAT'
    end
    object qNotasCabXSTAT: TStringField
      FieldName = 'XSTAT'
      Origin = 'XSTAT'
      Size = 1000
    end
    object qNotasCabAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
      Origin = 'AMBIENTE'
    end
    object qNotasCabTIPOEMISSAO: TIntegerField
      FieldName = 'TIPOEMISSAO'
      Origin = 'TIPOEMISSAO'
    end
    object qNotasCabPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 40
    end
    object qNotasCabDATA_HORARECIBO: TSQLTimeStampField
      FieldName = 'DATA_HORARECIBO'
      Origin = 'DATA_HORARECIBO'
    end
    object qNotasCabCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Origin = 'CHAVE_ACESSO'
      Size = 50
    end
    object qNotasCabFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
    end
    object qNotasCabXML_ORIGINAL: TMemoField
      FieldName = 'XML_ORIGINAL'
      Origin = 'XML_ORIGINAL'
      BlobType = ftMemo
    end
    object qNotasCabCHAVE_ACESSO_ORIGINAL: TStringField
      FieldName = 'CHAVE_ACESSO_ORIGINAL'
      Origin = 'CHAVE_ACESSO_ORIGINAL'
      Size = 50
    end
    object qNotasCabNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 50
    end
    object qNotasCabCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qNotasCabRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 50
    end
    object qNotasCabFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 13
    end
    object qNotasCabENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object qNotasCabUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object qNotasCabCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object qNotasCabDATA_CANCELA: TSQLTimeStampField
      FieldName = 'DATA_CANCELA'
      Origin = 'DATA_CANCELA'
    end
    object qNotasCabPROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Origin = 'PROTOCOLO_CANC'
      Size = 40
    end
    object qNotasCabDATA_INUTILIZA: TSQLTimeStampField
      FieldName = 'DATA_INUTILIZA'
      Origin = 'DATA_INUTILIZA'
    end
    object qNotasCabPROTOCOLO_INUTILIZA: TStringField
      FieldName = 'PROTOCOLO_INUTILIZA'
      Origin = 'PROTOCOLO_INUTILIZA'
      Size = 40
    end
    object qNotasCabCFOPVENDA: TStringField
      FieldName = 'CFOPVENDA'
      Origin = 'CFOPVENDA'
      Size = 4
    end
    object qNotasCabALIQ_SIMPLES: TFMTBCDField
      FieldName = 'ALIQ_SIMPLES'
      Origin = 'ALIQ_SIMPLES'
      Precision = 18
      Size = 2
    end
  end
  object qNotasItens: TFDQuery
    OnCalcFields = qNotasItensCalcFields
    Connection = Banco
    Transaction = tNotasItens
    SQL.Strings = (
      
        'select A.ID,A.SERIE,A.MODELO,A.COD_EMITENTE,A.IDPRODUTO,A.SEQ_PR' +
        'ODUTO,A.NCM,A.CFOP,A.NATUREZA,A.UN,A.QUANT,A.VLUNIT,A.BASEICMS'
      
        '      ,A.VLICMS,A.ALIQICMS,A.BASE_IPI,A.VALOR_IPI,A.ALIQ_IPI,A.C' +
        'ST_CSOSN,A.CRED_ICMS,A.MVA,A.PREDICMS,A.CEST,A.EAN,A.ORIGEM'
      
        '      ,A.CODIGO_ANP,A.DESCONTO,A.ACRESCIMO,A.FRETE,A.SEGURO,A.OU' +
        'TROS,B.DESCRICAO,B.DESCRICAO_COMPLETA,B.CODIGO'
      'from NOTAS_ITENS A, PRODUTOS B WHERE A.IDPRODUTO=B.IDPRODUTO'
      'AND 1=2')
    Left = 79
    Top = 72
    object qNotasItensID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasItensSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasItensMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasItensCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasItensIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasItensSEQ_PRODUTO: TIntegerField
      FieldName = 'SEQ_PRODUTO'
      Origin = 'SEQ_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 15
    end
    object qNotasItensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qNotasItensNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
    end
    object qNotasItensUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      Size = 3
    end
    object qNotasItensQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object qNotasItensVLUNIT: TBCDField
      FieldName = 'VLUNIT'
      Origin = 'VLUNIT'
      OnGetText = qNotasItensVLUNITGetText
      currency = True
      Precision = 18
    end
    object qNotasItensBASEICMS: TBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      currency = True
      Precision = 18
    end
    object qNotasItensVLICMS: TBCDField
      FieldName = 'VLICMS'
      Origin = 'VLICMS'
      currency = True
      Precision = 18
    end
    object qNotasItensALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ALIQICMS'
      Precision = 18
    end
    object qNotasItensBASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      currency = True
      Precision = 18
    end
    object qNotasItensVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      currency = True
      Precision = 18
    end
    object qNotasItensALIQ_IPI: TBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
    end
    object qNotasItensCST_CSOSN: TStringField
      FieldName = 'CST_CSOSN'
      Origin = 'CST_CSOSN'
      Size = 3
    end
    object qNotasItensCRED_ICMS: TBCDField
      FieldName = 'CRED_ICMS'
      Origin = 'CRED_ICMS'
      Precision = 18
    end
    object qNotasItensMVA: TBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
    end
    object qNotasItensPREDICMS: TBCDField
      FieldName = 'PREDICMS'
      Origin = 'PREDICMS'
      Precision = 18
    end
    object qNotasItensCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object qNotasItensEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 15
    end
    object qNotasItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qNotasItensCODIGO_ANP: TStringField
      FieldName = 'CODIGO_ANP'
      Origin = 'CODIGO_ANP'
    end
    object qNotasItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      OnGetText = qNotasItensVLUNITGetText
      currency = True
      Precision = 18
    end
    object qNotasItensACRESCIMO: TBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      OnGetText = qNotasItensVLUNITGetText
      currency = True
      Precision = 18
    end
    object qNotasItensFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      OnGetText = qNotasItensVLUNITGetText
      currency = True
      Precision = 18
    end
    object qNotasItensSEGURO: TBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      OnGetText = qNotasItensVLUNITGetText
      currency = True
      Precision = 18
    end
    object qNotasItensOUTROS: TBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      currency = True
      Precision = 18
    end
    object qNotasItensDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qNotasItensDESCRICAO_COMPLETA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_COMPLETA'
      Origin = 'DESCRICAO_COMPLETA'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object qNotasItensCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qNotasItenstotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total'
      OnGetText = qNotasItensVLUNITGetText
      Calculated = True
    end
  end
  object qFormasNotas: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tFormasNtoas
    SQL.Strings = (
      'select * from notas_formas'
      'where 1=2')
    Left = 147
    Top = 72
    object qFormasNotasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFormasNotasSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFormasNotasMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFormasNotasCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFormasNotasPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFormasNotasEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object qFormasNotasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object qFormasNotasVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object qFormasNotasTIPO_FATURA: TStringField
      FieldName = 'TIPO_FATURA'
      Origin = 'TIPO_FATURA'
      Size = 1
    end
  end
  object qNotasMsg: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tNotasMsg
    SQL.Strings = (
      
        'select id,serie,modelo,cod_emitente,seq_msg,mensagem from notas_' +
        'msg'
      'where 1=2')
    Left = 211
    Top = 72
    object qNotasMsgID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasMsgSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasMsgMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasMsgCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasMsgSEQ_MSG: TIntegerField
      FieldName = 'SEQ_MSG'
      Origin = 'SEQ_MSG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasMsgMENSAGEM: TMemoField
      FieldName = 'MENSAGEM'
      Origin = 'MENSAGEM'
      BlobType = ftMemo
    end
  end
  object NFE: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.PathSchemas = 'C:\CoreFiscal\Schemas\'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.SalvarApenasNFeProcessadas = True
    Configuracoes.WebServices.UF = 'MT'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = aDanfe
    Left = 26
    Top = 360
  end
  object docValidador: TACBrValidador
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 809
    Top = 48
  end
  object qAux: TFDQuery
    Connection = Banco
    Left = 556
    Top = 8
  end
  object aDanfe: TACBrNFeDANFEFR
    MostraPreview = False
    MostraStatus = False
    Logo = 'C:\CoreFiscal\Imagens\nfe.jpg'
    Sistema = 'CoreFiscal'
    Site = 'www.kophex.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = NFE
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 28
    Top = 411
  end
  object ACBrMail1: TACBrMail
    Host = 'servidor'
    Port = '587'
    Username = 'usuario'
    Password = 'senha'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 888
    Top = 97
  end
  object qTransp: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tTransp
    SQL.Strings = (
      'select * from transportador'
      'where 1=2')
    Left = 296
    Top = 184
    object qTranspIDTRANSP: TIntegerField
      FieldName = 'IDTRANSP'
      Origin = 'IDTRANSP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTranspTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Origin = 'TIPOPESSOA'
      Size = 15
    end
    object qTranspNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qTranspCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qTranspIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 18
    end
    object qTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qTranspNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object qTranspMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 25
    end
    object qTranspUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object qTranspTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object qTranspEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 70
    end
    object qTranspIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qTranspPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
    end
    object qTranspPLACAUF: TStringField
      FieldName = 'PLACAUF'
      Origin = 'PLACAUF'
      Size = 2
    end
    object qTranspANTT: TStringField
      FieldName = 'ANTT'
      Origin = 'ANTT'
      Size = 30
    end
  end
  object dsTransp: TDataSource
    DataSet = qTransp
    Left = 296
    Top = 235
  end
  object ACBrConsultaCNPJ1: TACBrConsultaCNPJ
    ProxyPort = '8080'
    PesquisarIBGE = False
    Left = 807
    Top = 146
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsCorreios
    ChaveAcesso = '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.'
    PesquisarIBGE = True
    Left = 807
    Top = 192
  end
  object ACBrIBGE1: TACBrIBGE
    ProxyPort = '8080'
    CacheArquivo = 'ACBrIBGE.txt'
    Left = 888
    Top = 146
  end
  object MDFE: TACBrMDFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.RetirarAcentos = False
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.EmissaoPathMDFe = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DAMDFE = aDanfeMdfe
    Left = 84
    Top = 359
  end
  object qMdfe: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tMdfe
    SQL.Strings = (
      'Select * From mdfe where id_emitente = :id_emitente')
    Left = 309
    Top = 368
    ParamData = <
      item
        Name = 'ID_EMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qMdfeID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMdfeCOD_MDFE: TIntegerField
      FieldName = 'COD_MDFE'
      Origin = 'COD_MDFE'
    end
    object qMdfeCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      Origin = 'COD_VEICULO'
    end
    object qMdfePLACA_VEICULO: TStringField
      FieldName = 'PLACA_VEICULO'
      Origin = 'PLACA_VEICULO'
      Size = 15
    end
    object qMdfeNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Origin = 'NOME_VEICULO'
      Size = 60
    end
    object qMdfeUF_VEICULO: TStringField
      FieldName = 'UF_VEICULO'
      Origin = 'UF_VEICULO'
      Size = 2
    end
    object qMdfeTARA_VEICULO: TIntegerField
      FieldName = 'TARA_VEICULO'
      Origin = 'TARA_VEICULO'
    end
    object qMdfePESOBRUTO_TOTAL: TSingleField
      FieldName = 'PESOBRUTO_TOTAL'
      Origin = 'PESOBRUTO_TOTAL'
    end
    object qMdfePRIMEIRA_UF_ENTREGA: TStringField
      FieldName = 'PRIMEIRA_UF_ENTREGA'
      Origin = 'PRIMEIRA_UF_ENTREGA'
      Size = 2
    end
    object qMdfeULTIMA_UF_ENTREGA: TStringField
      FieldName = 'ULTIMA_UF_ENTREGA'
      Origin = 'ULTIMA_UF_ENTREGA'
      Size = 2
    end
    object qMdfeTOTAL_NOTAS: TIntegerField
      FieldName = 'TOTAL_NOTAS'
      Origin = 'TOTAL_NOTAS'
    end
    object qMdfeCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 255
    end
    object qMdfePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 255
    end
    object qMdfeRECIBO: TStringField
      FieldName = 'RECIBO'
      Origin = 'RECIBO'
      Size = 255
    end
    object qMdfeXML: TBlobField
      FieldName = 'XML'
      Origin = 'XML'
    end
    object qMdfeID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qMdfeDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
      Origin = 'DATAEMISSAO'
    end
    object qMdfeHORAEMISSAO: TTimeField
      FieldName = 'HORAEMISSAO'
      Origin = 'HORAEMISSAO'
    end
    object qMdfeFORMAEMISSAO: TStringField
      FieldName = 'FORMAEMISSAO'
      Origin = 'FORMAEMISSAO'
      Size = 30
    end
    object qMdfeSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 50
    end
    object qMdfeARQUIVADA: TStringField
      FieldName = 'ARQUIVADA'
      Origin = 'ARQUIVADA'
      Size = 1
    end
    object qMdfeARQ_MDFE: TStringField
      FieldName = 'ARQ_MDFE'
      Origin = 'ARQ_MDFE'
      Size = 1000
    end
    object qMdfeCSTATUS: TIntegerField
      FieldName = 'CSTATUS'
      Origin = 'CSTATUS'
    end
    object qMdfeXSTATUS: TStringField
      FieldName = 'XSTATUS'
      Origin = 'XSTATUS'
      Size = 1000
    end
    object qMdfeVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object qAux2: TFDQuery
    Connection = Banco
    Left = 556
    Top = 56
  end
  object aDanfeMdfe: TACBrMDFeDAMDFEFR
    Sistema = 'CoreFiscal'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrMDFe = MDFE
    ImprimeHoraSaida = False
    TipoDAMDFe = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    Encerrado = False
    ImprimeDadosExtras = [deValorTotal, deRelacaoDFe]
    ExibirMunicipioDescarregamento = False
    SelecionaImpressora = False
    EspessuraBorda = 1
    Left = 83
    Top = 412
  end
  object qCondutores: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tCondutores
    SQL.Strings = (
      
        'select * from CONDUTORES WHERE ID_EMITENTE = :IDEMITENTE order b' +
        'y NOME;')
    Left = 408
    Top = 184
    ParamData = <
      item
        Name = 'IDEMITENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qCondutoresCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qCondutoresID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qCondutoresNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object qCondutoresCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
  end
  object tExecuta: TFDTransaction
    Options.AutoStart = False
    Options.AutoStop = False
    Connection = Banco
    Left = 656
    Top = 56
  end
  object Executa: TFDQuery
    Connection = Banco
    Transaction = tExecuta
    Left = 656
    Top = 8
  end
  object tClientes: TFDTransaction
    Connection = Banco
    Left = 352
    Top = 232
  end
  object tProdutos: TFDTransaction
    Connection = Banco
    Left = 240
    Top = 288
  end
  object tCondutores: TFDTransaction
    Connection = Banco
    Left = 408
    Top = 232
  end
  object tTes: TFDTransaction
    Connection = Banco
    Left = 184
    Top = 288
  end
  object tCfop: TFDTransaction
    Connection = Banco
    Left = 128
    Top = 288
  end
  object tIbgeCod: TFDTransaction
    Connection = Banco
    Left = 72
    Top = 233
  end
  object tIbge: TFDTransaction
    Connection = Banco
    Left = 16
    Top = 232
  end
  object tNotasCab: TFDTransaction
    Connection = Banco
    Left = 19
    Top = 120
  end
  object tNotasItens: TFDTransaction
    Connection = Banco
    Left = 83
    Top = 120
  end
  object tFormasNtoas: TFDTransaction
    Connection = Banco
    Left = 147
    Top = 120
  end
  object tNotasMsg: TFDTransaction
    Connection = Banco
    Left = 211
    Top = 120
  end
  object tMdfe: TFDTransaction
    Connection = Banco
    Left = 309
    Top = 416
  end
  object tTransp: TFDTransaction
    Connection = Banco
    Left = 296
    Top = 288
  end
  object qGrafico: TFDQuery
    Connection = Banco
    Left = 604
    Top = 56
  end
  object aDanfeNfse: TACBrNFSeDANFSeFR
    Sistema = 'CoreFiscal'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFSe = nfse
    Cancelada = False
    Provedor = proNenhum
    TamanhoFonte = 6
    FormatarNumeroDocumentoNFSe = True
    EspessuraBorda = 1
    Left = 146
    Top = 412
  end
  object nfse: TACBrNFSe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = True
    Configuracoes.Geral.Emitente.DadosSenhaParams = <>
    Configuracoes.Geral.Resposta = 0
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'PR'
    Configuracoes.WebServices.AguardarConsultaRet = 2000
    Configuracoes.WebServices.Tentativas = 10
    Configuracoes.WebServices.IntervaloTentativas = 3000
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.Certificados.VerificarValidade = False
    DANFSE = aDanfeNfse
    Left = 146
    Top = 360
  end
  object qEvento: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tqEventos
    SQL.Strings = (
      
        'SELECT * FROM TBEVENTOS WHERE IDEMITENTE = :IDEMITENTE ORDER BY ' +
        'ID;')
    Left = 267
    Top = 72
    ParamData = <
      item
        Name = 'IDEMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qEventoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEventoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qEventoJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Origin = 'JUSTIFICATIVA'
      Size = 700
    end
    object qEventoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qEventoANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object qEventoMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object qEventoSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
    end
    object qEventoFAIXA_INICIAL: TIntegerField
      FieldName = 'FAIXA_INICIAL'
      Origin = 'FAIXA_INICIAL'
    end
    object qEventoFAIXA_FIM: TIntegerField
      FieldName = 'FAIXA_FIM'
      Origin = 'FAIXA_FIM'
    end
    object qEventoCSTATUS: TIntegerField
      FieldName = 'CSTATUS'
      Origin = 'CSTATUS'
    end
    object qEventoXMOTIVO: TStringField
      FieldName = 'XMOTIVO'
      Origin = 'XMOTIVO'
      Size = 255
    end
    object qEventoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 40
    end
    object qEventoRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = 'RECIBO'
    end
    object qEventoDHRECIBO: TSQLTimeStampField
      FieldName = 'DHRECIBO'
      Origin = 'DHRECIBO'
    end
    object qEventoIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qEventoARQXML: TMemoField
      FieldName = 'ARQXML'
      Origin = 'ARQXML'
      BlobType = ftMemo
    end
    object qEventoCAMINHO_XMLEVENTO: TStringField
      FieldName = 'CAMINHO_XMLEVENTO'
      Origin = 'CAMINHO_XMLEVENTO'
      Size = 255
    end
    object qEventoNFENUMERO: TIntegerField
      FieldName = 'NFENUMERO'
      Origin = 'NFENUMERO'
    end
    object qEventoCCE_CHAVENFE: TStringField
      FieldName = 'CCE_CHAVENFE'
      Origin = 'CCE_CHAVENFE'
      Size = 50
    end
    object qEventoCCE_IDLOTE: TIntegerField
      FieldName = 'CCE_IDLOTE'
      Origin = 'CCE_IDLOTE'
    end
    object qEventoCCE_CORRECAO: TStringField
      FieldName = 'CCE_CORRECAO'
      Origin = 'CCE_CORRECAO'
      Size = 700
    end
    object qEventoCCE_SEQEVENTO: TIntegerField
      FieldName = 'CCE_SEQEVENTO'
      Origin = 'CCE_SEQEVENTO'
    end
  end
  object tqEventos: TFDTransaction
    Connection = Banco
    Left = 267
    Top = 120
  end
  object qEventoListar: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tqEventoListar
    SQL.Strings = (
      
        'SELECT * FROM TBEVENTOS WHERE IDEMITENTE = :IDEMITENTE ORDER BY ' +
        'ID;')
    Left = 323
    Top = 72
    ParamData = <
      item
        Name = 'IDEMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qEventoListarID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEventoListarTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qEventoListarJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Origin = 'JUSTIFICATIVA'
      Size = 700
    end
    object qEventoListarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qEventoListarANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object qEventoListarMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object qEventoListarSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
    end
    object qEventoListarFAIXA_INICIAL: TIntegerField
      FieldName = 'FAIXA_INICIAL'
      Origin = 'FAIXA_INICIAL'
    end
    object qEventoListarFAIXA_FIM: TIntegerField
      FieldName = 'FAIXA_FIM'
      Origin = 'FAIXA_FIM'
    end
    object qEventoListarCSTATUS: TIntegerField
      FieldName = 'CSTATUS'
      Origin = 'CSTATUS'
    end
    object qEventoListarXMOTIVO: TStringField
      FieldName = 'XMOTIVO'
      Origin = 'XMOTIVO'
      Size = 255
    end
    object qEventoListarPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 40
    end
    object qEventoListarRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = 'RECIBO'
    end
    object qEventoListarDHRECIBO: TSQLTimeStampField
      FieldName = 'DHRECIBO'
      Origin = 'DHRECIBO'
    end
    object qEventoListarIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qEventoListarARQXML: TMemoField
      FieldName = 'ARQXML'
      Origin = 'ARQXML'
      BlobType = ftMemo
    end
    object qEventoListarCAMINHO_XMLEVENTO: TStringField
      FieldName = 'CAMINHO_XMLEVENTO'
      Origin = 'CAMINHO_XMLEVENTO'
      Size = 255
    end
    object qEventoListarNFENUMERO: TIntegerField
      FieldName = 'NFENUMERO'
      Origin = 'NFENUMERO'
    end
    object qEventoListarCCE_CHAVENFE: TStringField
      FieldName = 'CCE_CHAVENFE'
      Origin = 'CCE_CHAVENFE'
      Size = 50
    end
    object qEventoListarCCE_IDLOTE: TIntegerField
      FieldName = 'CCE_IDLOTE'
      Origin = 'CCE_IDLOTE'
    end
    object qEventoListarCCE_CORRECAO: TStringField
      FieldName = 'CCE_CORRECAO'
      Origin = 'CCE_CORRECAO'
      Size = 700
    end
    object qEventoListarCCE_SEQEVENTO: TIntegerField
      FieldName = 'CCE_SEQEVENTO'
      Origin = 'CCE_SEQEVENTO'
    end
  end
  object tqEventoListar: TFDTransaction
    Connection = Banco
    Left = 323
    Top = 120
  end
  object qVeiculo: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tVeiculo
    SQL.Strings = (
      'select id_Emitente,ID,CODIGO,CARRO,PLACA,UF,TARA from veiculos'
      'WHERE ID_EMITENTE = :IDEMITENTE order by CARRO;'
      ' ')
    Left = 467
    Top = 184
    ParamData = <
      item
        Name = 'IDEMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qVeiculoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object qVeiculoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qVeiculoCARRO: TStringField
      FieldName = 'CARRO'
      Origin = 'CARRO'
      Size = 100
    end
    object qVeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 30
    end
    object qVeiculoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qVeiculoTARA: TStringField
      FieldName = 'TARA'
      Origin = 'TARA'
    end
    object qVeiculoID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
  end
  object tVeiculo: TFDTransaction
    Connection = Banco
    Left = 467
    Top = 232
  end
  object IdHTTP1: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 888
    Top = 48
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 888
    Top = 8
  end
  object qEntradaCab: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tEntradaCab
    SQL.Strings = (
      'Select * from entrada_cab')
    Left = 364
    Top = 368
    object qEntradaCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qEntradaCabNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEntradaCabSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEntradaCabMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEntradaCabCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEntradaCabNATUREZA_OPER: TStringField
      FieldName = 'NATUREZA_OPER'
      Origin = 'NATUREZA_OPER'
      Size = 50
    end
    object qEntradaCabCRT: TStringField
      FieldName = 'CRT'
      Origin = 'CRT'
      Size = 1
    end
    object qEntradaCabTIPONOTA: TIntegerField
      FieldName = 'TIPONOTA'
      Origin = 'TIPONOTA'
    end
    object qEntradaCabDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
    end
    object qEntradaCabDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      Origin = 'DTENTRADA'
    end
    object qEntradaCabIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = 'IDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEntradaCabIDTRANSP: TIntegerField
      FieldName = 'IDTRANSP'
      Origin = 'IDTRANSP'
    end
    object qEntradaCabTIPOFRETE: TIntegerField
      FieldName = 'TIPOFRETE'
      Origin = 'TIPOFRETE'
    end
    object qEntradaCabPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Origin = 'PLACAVEICULO'
      Size = 7
    end
    object qEntradaCabUFVEICULO: TStringField
      FieldName = 'UFVEICULO'
      Origin = 'UFVEICULO'
      Size = 2
    end
    object qEntradaCabCOD_ANTT: TStringField
      FieldName = 'COD_ANTT'
      Origin = 'COD_ANTT'
    end
    object qEntradaCabBASE_ICMS: TBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
    end
    object qEntradaCabVALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
    end
    object qEntradaCabBASE_ICMS_ST: TBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      Precision = 18
    end
    object qEntradaCabVALOR_ICMS_ST: TBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      Precision = 18
    end
    object qEntradaCabVALOR_FRETE: TBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 18
    end
    object qEntradaCabVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
    end
    object qEntradaCabVALOR_ACRESCIMO: TBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      Precision = 18
    end
    object qEntradaCabVALOR_SEGURO: TBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 18
    end
    object qEntradaCabVALOR_OUTRAS_DESP: TBCDField
      FieldName = 'VALOR_OUTRAS_DESP'
      Origin = 'VALOR_OUTRAS_DESP'
      Precision = 18
    end
    object qEntradaCabVALOR_PIS: TBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
    end
    object qEntradaCabVALOR_COFINS: TBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
    end
    object qEntradaCabVALOR_PIS_ST: TBCDField
      FieldName = 'VALOR_PIS_ST'
      Origin = 'VALOR_PIS_ST'
      Precision = 18
    end
    object qEntradaCabVALOR_COFINS_ST: TBCDField
      FieldName = 'VALOR_COFINS_ST'
      Origin = 'VALOR_COFINS_ST'
      Precision = 18
    end
    object qEntradaCabVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
    end
    object qEntradaCabBASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
    end
    object qEntradaCabTOTAL_PRODUTOS: TBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Origin = 'TOTAL_PRODUTOS'
      currency = True
      Precision = 18
    end
    object qEntradaCabTOTAL_NOTA: TBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      currency = True
      Precision = 18
    end
    object qEntradaCabQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object qEntradaCabESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 15
    end
    object qEntradaCabMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 15
    end
    object qEntradaCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 15
    end
    object qEntradaCabPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
    end
    object qEntradaCabPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
    end
    object qEntradaCabSTATUS_NOTA: TStringField
      FieldName = 'STATUS_NOTA'
      Origin = 'STATUS_NOTA'
      Size = 1
    end
    object qEntradaCabDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      Origin = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
    end
    object qEntradaCabFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      Origin = 'FORMA_PGTO'
    end
    object qEntradaCabXML_NOTA: TMemoField
      FieldName = 'XML_NOTA'
      Origin = 'XML_NOTA'
      BlobType = ftMemo
    end
    object qEntradaCabCSTAT: TIntegerField
      FieldName = 'CSTAT'
      Origin = 'CSTAT'
    end
    object qEntradaCabXSTAT: TStringField
      FieldName = 'XSTAT'
      Origin = 'XSTAT'
      Size = 1000
    end
    object qEntradaCabAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
      Origin = 'AMBIENTE'
    end
    object qEntradaCabTIPOEMISSAO: TIntegerField
      FieldName = 'TIPOEMISSAO'
      Origin = 'TIPOEMISSAO'
    end
    object qEntradaCabPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 40
    end
    object qEntradaCabDATA_HORARECIBO: TSQLTimeStampField
      FieldName = 'DATA_HORARECIBO'
      Origin = 'DATA_HORARECIBO'
    end
    object qEntradaCabCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Origin = 'CHAVE_ACESSO'
      Size = 50
    end
    object qEntradaCabFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
    end
    object qEntradaCabXML_ORIGINAL: TMemoField
      FieldName = 'XML_ORIGINAL'
      Origin = 'XML_ORIGINAL'
      BlobType = ftMemo
    end
    object qEntradaCabCHAVE_ACESSO_ORIGINAL: TStringField
      FieldName = 'CHAVE_ACESSO_ORIGINAL'
      Origin = 'CHAVE_ACESSO_ORIGINAL'
      Size = 50
    end
    object qEntradaCabDATA_CANCELA: TSQLTimeStampField
      FieldName = 'DATA_CANCELA'
      Origin = 'DATA_CANCELA'
    end
    object qEntradaCabPROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Origin = 'PROTOCOLO_CANC'
      Size = 40
    end
    object qEntradaCabDATA_INUTILIZA: TSQLTimeStampField
      FieldName = 'DATA_INUTILIZA'
      Origin = 'DATA_INUTILIZA'
    end
    object qEntradaCabPROTOCOLO_INUTILIZA: TStringField
      FieldName = 'PROTOCOLO_INUTILIZA'
      Origin = 'PROTOCOLO_INUTILIZA'
      Size = 40
    end
    object qEntradaCabASSINADO: TStringField
      FieldName = 'ASSINADO'
      Origin = 'ASSINADO'
      Size = 1
    end
    object qEntradaCabCODIGO_UF: TStringField
      FieldName = 'CODIGO_UF'
      Origin = 'CODIGO_UF'
      Size = 10
    end
    object qEntradaCabENCERRADA: TStringField
      FieldName = 'ENCERRADA'
      Origin = 'ENCERRADA'
      Size = 1
    end
    object qEntradaCabENCERRADA_DATA: TDateField
      FieldName = 'ENCERRADA_DATA'
      Origin = 'ENCERRADA_DATA'
    end
    object qEntradaCabNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      Size = 150
    end
    object qEntradaCabALIQ_SIMPLES: TFMTBCDField
      FieldName = 'ALIQ_SIMPLES'
      Origin = 'ALIQ_SIMPLES'
      Precision = 18
      Size = 2
    end
  end
  object tEntradaCab: TFDTransaction
    Connection = Banco
    Left = 364
    Top = 416
  end
  object qEntradaCor: TFDQuery
    OnCalcFields = qNotasItensCalcFields
    CachedUpdates = True
    Connection = Banco
    Transaction = tEntradaCor
    SQL.Strings = (
      'SELECT * FROM ENTRADA_COR')
    Left = 426
    Top = 368
    object qEntradaCorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qEntradaCorNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'NOTA'
      Required = True
    end
    object qEntradaCorSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Required = True
    end
    object qEntradaCorMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Required = True
    end
    object qEntradaCorCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      Required = True
    end
    object qEntradaCorCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Origin = 'COD_PROD'
    end
    object qEntradaCorCOD_PROD_FORN: TStringField
      FieldName = 'COD_PROD_FORN'
      Origin = 'COD_PROD_FORN'
      Size = 50
    end
    object qEntradaCorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object qEntradaCorSEQ_PRODUTO: TIntegerField
      FieldName = 'SEQ_PRODUTO'
      Origin = 'SEQ_PRODUTO'
      Required = True
    end
    object qEntradaCorNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 15
    end
    object qEntradaCorCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qEntradaCorNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
    end
    object qEntradaCorUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      Size = 3
    end
    object qEntradaCorQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object qEntradaCorVLUNIT: TBCDField
      FieldName = 'VLUNIT'
      Origin = 'VLUNIT'
      currency = True
      Precision = 18
    end
    object qEntradaCorVLTOTAL: TBCDField
      FieldName = 'VLTOTAL'
      Origin = 'VLTOTAL'
      currency = True
      Precision = 18
    end
    object qEntradaCorPRED_BC: TBCDField
      FieldName = 'PRED_BC'
      Origin = 'PRED_BC'
      Precision = 18
    end
    object qEntradaCorPRED_BC_ST: TBCDField
      FieldName = 'PRED_BC_ST'
      Origin = 'PRED_BC_ST'
      Precision = 18
    end
    object qEntradaCorBASEICMS: TBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      Precision = 18
    end
    object qEntradaCorVLICMS: TBCDField
      FieldName = 'VLICMS'
      Origin = 'VLICMS'
      currency = True
      Precision = 18
    end
    object qEntradaCorALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ALIQICMS'
      Precision = 18
    end
    object qEntradaCorBASE_ST: TBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      Precision = 18
    end
    object qEntradaCorALIQ_ST: TBCDField
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      Precision = 18
    end
    object qEntradaCorVALOR_ST: TBCDField
      FieldName = 'VALOR_ST'
      Origin = 'VALOR_ST'
      currency = True
      Precision = 18
    end
    object qEntradaCorCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 10
    end
    object qEntradaCorBASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
    end
    object qEntradaCorVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      currency = True
      Precision = 18
    end
    object qEntradaCorALIQ_IPI: TBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
    end
    object qEntradaCorVALOR_COFINS: TBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      currency = True
      Precision = 18
    end
    object qEntradaCorALIQ_COFINS: TBCDField
      FieldName = 'ALIQ_COFINS'
      Origin = 'ALIQ_COFINS'
      Precision = 18
    end
    object qEntradaCorBASE_COFINS: TBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
    end
    object qEntradaCorCOFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      Origin = 'COFINS_ST'
      Size = 10
    end
    object qEntradaCorCST_CSOSN: TStringField
      FieldName = 'CST_CSOSN'
      Origin = 'CST_CSOSN'
      Size = 3
    end
    object qEntradaCorPIS_CST: TStringField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      Size = 10
    end
    object qEntradaCorPIS_BC: TBCDField
      FieldName = 'PIS_BC'
      Origin = 'PIS_BC'
      Precision = 18
    end
    object qEntradaCorPIS_ALIQ: TBCDField
      FieldName = 'PIS_ALIQ'
      Origin = 'PIS_ALIQ'
      Precision = 18
    end
    object qEntradaCorPIS_VALOR: TBCDField
      FieldName = 'PIS_VALOR'
      Origin = 'PIS_VALOR'
      currency = True
      Precision = 18
    end
    object qEntradaCorCRED_ICMS: TBCDField
      FieldName = 'CRED_ICMS'
      Origin = 'CRED_ICMS'
      Precision = 18
    end
    object qEntradaCorMVA: TBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
    end
    object qEntradaCorPREDICMS: TBCDField
      FieldName = 'PREDICMS'
      Origin = 'PREDICMS'
      Precision = 18
    end
    object qEntradaCorCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object qEntradaCorEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 15
    end
    object qEntradaCorORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qEntradaCorCODIGO_ANP: TStringField
      FieldName = 'CODIGO_ANP'
      Origin = 'CODIGO_ANP'
    end
    object qEntradaCorDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
    end
    object qEntradaCorACRESCIMO: TBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      currency = True
      Precision = 18
    end
    object qEntradaCorFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      currency = True
      Precision = 18
    end
    object qEntradaCorSEGURO: TBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      currency = True
      Precision = 18
    end
    object qEntradaCorOUTROS: TBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      currency = True
      Precision = 18
    end
    object qEntradaCorPERC_ICMS: TBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
    end
    object qEntradaCorPERC_ST: TBCDField
      FieldName = 'PERC_ST'
      Origin = 'PERC_ST'
      Precision = 18
    end
    object qEntradaCorPERC_IPI: TBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
    end
    object qEntradaCorBASE_CALCULO: TBCDField
      FieldName = 'BASE_CALCULO'
      Origin = 'BASE_CALCULO'
      Precision = 18
    end
    object qEntradaCorOPER_SAIDA_DENTRO: TIntegerField
      FieldName = 'OPER_SAIDA_DENTRO'
      Origin = 'OPER_SAIDA_DENTRO'
    end
    object qEntradaCorOPER_SAIDA_FORA: TIntegerField
      FieldName = 'OPER_SAIDA_FORA'
      Origin = 'OPER_SAIDA_FORA'
    end
    object qEntradaCorNOVO: TStringField
      FieldName = 'NOVO'
      Origin = 'NOVO'
      Size = 1
    end
    object qEntradaCorMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
    end
    object qEntradaCorVINCULADO: TStringField
      FieldName = 'VINCULADO'
      Origin = 'VINCULADO'
      Size = 1
    end
    object qEntradaCorCOD_ENTRADA: TIntegerField
      FieldName = 'COD_ENTRADA'
      Origin = 'COD_ENTRADA'
    end
    object qEntradaCorMARGEM_NOVA: TCurrencyField
      FieldName = 'MARGEM_NOVA'
      Origin = 'MARGEM_NOVA'
    end
    object qEntradaCorVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object qEntradaCorVALOR_VENDA_NOVO: TFMTBCDField
      FieldName = 'VALOR_VENDA_NOVO'
      Origin = 'VALOR_VENDA_NOVO'
      Precision = 18
      Size = 2
    end
    object qEntradaCorCUSTO_ANTIGO: TFMTBCDField
      FieldName = 'CUSTO_ANTIGO'
      Origin = 'CUSTO_ANTIGO'
      Precision = 18
      Size = 2
    end
  end
  object tEntradaCor: TFDTransaction
    Connection = Banco
    Left = 430
    Top = 416
  end
  object frxTexto: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38006.786384259300000000
    ReportOptions.LastChange = 38007.009433217600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 892
    Top = 191
    Datasets = <
      item
        DataSet = FrxuserTexto
        DataSetName = 'StringDS2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'texto'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 72.000000000000000000
      PaperHeight = 180.000000000000000000
      PaperSize = 256
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      EndlessWidth = True
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object texto: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[texto]')
          ParentFont = False
        end
      end
    end
  end
  object FrxuserTexto: TfrxUserDataSet
    UserName = 'StringDS2'
    Left = 893
    Top = 240
  end
  object frxPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 894
    Top = 288
  end
  object qOticaCab: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tOticaCab
    SQL.Strings = (
      'Select oc.*, c.nomefantasia, c.razaosocial, c.fone, c.fax '
      'from oticacab oc '
      'join clientes c on (c.idcliente = oc.cliente and '
      'oc.cod_emitente = C.idemitente )'
      'WHERE 1=2')
    Left = 518
    Top = 184
    object qOticaCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qOticaCabCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
    end
    object qOticaCabCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qOticaCabDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qOticaCabHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qOticaCabVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object qOticaCabSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 60
    end
    object qOticaCabCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object qOticaCabSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      currency = True
      Precision = 18
    end
    object qOticaCabPERCDESCONTO: TBCDField
      FieldName = 'PERCDESCONTO'
      Origin = 'PERCDESCONTO'
      Precision = 18
    end
    object qOticaCabDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
    end
    object qOticaCabTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
    end
    object qOticaCabESFLONGEDIREITO: TStringField
      FieldName = 'ESFLONGEDIREITO'
      Origin = 'ESFLONGEDIREITO'
      Size = 10
    end
    object qOticaCabESFLONGEESQUERDO: TStringField
      FieldName = 'ESFLONGEESQUERDO'
      Origin = 'ESFLONGEESQUERDO'
      Size = 10
    end
    object qOticaCabESFPERTODIREITO: TStringField
      FieldName = 'ESFPERTODIREITO'
      Origin = 'ESFPERTODIREITO'
      Size = 10
    end
    object qOticaCabESFPERTOESQUERDO: TStringField
      FieldName = 'ESFPERTOESQUERDO'
      Origin = 'ESFPERTOESQUERDO'
      Size = 10
    end
    object qOticaCabCILLONGEDIREITO: TStringField
      FieldName = 'CILLONGEDIREITO'
      Origin = 'CILLONGEDIREITO'
      Size = 10
    end
    object qOticaCabCILLONGEESQUERDO: TStringField
      FieldName = 'CILLONGEESQUERDO'
      Origin = 'CILLONGEESQUERDO'
      Size = 10
    end
    object qOticaCabCILPERTODIREITO: TStringField
      FieldName = 'CILPERTODIREITO'
      Origin = 'CILPERTODIREITO'
      Size = 10
    end
    object qOticaCabCILPERTOESQUERDO: TStringField
      FieldName = 'CILPERTOESQUERDO'
      Origin = 'CILPERTOESQUERDO'
      Size = 10
    end
    object qOticaCabEIXOLONGEDIREITO: TStringField
      FieldName = 'EIXOLONGEDIREITO'
      Origin = 'EIXOLONGEDIREITO'
      Size = 10
    end
    object qOticaCabEIXOLONGEESQUERDO: TStringField
      FieldName = 'EIXOLONGEESQUERDO'
      Origin = 'EIXOLONGEESQUERDO'
      Size = 10
    end
    object qOticaCabEIXOPERTODIREITO: TStringField
      FieldName = 'EIXOPERTODIREITO'
      Origin = 'EIXOPERTODIREITO'
      Size = 10
    end
    object qOticaCabEIXOPERTOESQUERDO: TStringField
      FieldName = 'EIXOPERTOESQUERDO'
      Origin = 'EIXOPERTOESQUERDO'
      Size = 10
    end
    object qOticaCabALTURALONGEDIREITO: TStringField
      FieldName = 'ALTURALONGEDIREITO'
      Origin = 'ALTURALONGEDIREITO'
      Size = 10
    end
    object qOticaCabALTURALONGEESQUERDO: TStringField
      FieldName = 'ALTURALONGEESQUERDO'
      Origin = 'ALTURALONGEESQUERDO'
      Size = 10
    end
    object qOticaCabALTURAPERTODIREITO: TStringField
      FieldName = 'ALTURAPERTODIREITO'
      Origin = 'ALTURAPERTODIREITO'
      Size = 10
    end
    object qOticaCabALTURAPERTOESQUERDO: TStringField
      FieldName = 'ALTURAPERTOESQUERDO'
      Origin = 'ALTURAPERTOESQUERDO'
      Size = 10
    end
    object qOticaCabDNPLONGEDIREITO: TStringField
      FieldName = 'DNPLONGEDIREITO'
      Origin = 'DNPLONGEDIREITO'
      Size = 10
    end
    object qOticaCabDNPLONGEESQUERDO: TStringField
      FieldName = 'DNPLONGEESQUERDO'
      Origin = 'DNPLONGEESQUERDO'
      Size = 10
    end
    object qOticaCabDNPPERTODIREITO: TStringField
      FieldName = 'DNPPERTODIREITO'
      Origin = 'DNPPERTODIREITO'
      Size = 10
    end
    object qOticaCabDNPPERTOESQUERDO: TStringField
      FieldName = 'DNPPERTOESQUERDO'
      Origin = 'DNPPERTOESQUERDO'
      Size = 10
    end
    object qOticaCabADCAO: TStringField
      FieldName = 'ADCAO'
      Origin = 'ADCAO'
      Size = 10
    end
    object qOticaCabDATARECEITA: TDateField
      FieldName = 'DATARECEITA'
      Origin = 'DATARECEITA'
    end
    object qOticaCabOBSRECEITA: TStringField
      FieldName = 'OBSRECEITA'
      Origin = 'OBSRECEITA'
      Size = 1000
    end
    object qOticaCabMEDICO: TStringField
      FieldName = 'MEDICO'
      Origin = 'MEDICO'
      Size = 200
    end
    object qOticaCabOBSINTERNA: TStringField
      FieldName = 'OBSINTERNA'
      Origin = 'OBSINTERNA'
      Size = 1000
    end
    object qOticaCabLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      Size = 200
    end
    object qOticaCabACOMPANHARECEITA: TStringField
      FieldName = 'ACOMPANHARECEITA'
      Origin = 'ACOMPANHARECEITA'
      Size = 1
    end
    object qOticaCabACOMPANHAARMACAO: TStringField
      FieldName = 'ACOMPANHAARMACAO'
      Origin = 'ACOMPANHAARMACAO'
      Size = 1
    end
    object qOticaCabNOMEFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qOticaCabRAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qOticaCabDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object qOticaCabDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'DATASAIDA'
    end
    object qOticaCabHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = 'HORASAIDA'
    end
    object qOticaCabATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qOticaCabFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE'
      Origin = 'FONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object qOticaCabFAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAX'
      Origin = 'FAX'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object tOticaCab: TFDTransaction
    Connection = Banco
    Left = 521
    Top = 232
  end
  object qOticaCor: TFDQuery
    CachedUpdates = True
    Connection = Banco
    SQL.Strings = (
      
        'Select * from OticaCor where cod_emitente = :emi and idOtica = :' +
        'id ')
    Left = 572
    Top = 184
    ParamData = <
      item
        Name = 'EMI'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qOticaCorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOticaCorCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
    end
    object qOticaCorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qOticaCorIDOTICA: TIntegerField
      FieldName = 'IDOTICA'
      Origin = 'IDOTICA'
    end
    object qOticaCorPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object qOticaCorQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object qOticaCorVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
    end
    object qOticaCorTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
    end
    object qOticaCorNPRODUTO: TStringField
      FieldName = 'NPRODUTO'
      Origin = 'NPRODUTO'
      Size = 200
    end
    object qOticaCorGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
      Size = 3
    end
  end
  object dsOticaCor: TDataSource
    DataSet = qOticaCor
    Left = 572
    Top = 232
  end
  object qReceberCab: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tReceberCab
    SQL.Strings = (
      'Select rc.*, c.nomefantasia, c.razaosocial'
      'from ReceberCab rc'
      'join clientes c on (c.idcliente = rc.cliente and'
      'rc.IDemitente = C.idemitente )'
      'WHERE 1=2')
    Left = 632
    Top = 184
    object qReceberCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qReceberCabIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qReceberCabCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qReceberCabFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = 'FATURA'
    end
    object qReceberCabREFPEDIDO: TIntegerField
      FieldName = 'REFPEDIDO'
      Origin = 'REFPEDIDO'
    end
    object qReceberCabDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qReceberCabDATAVCTO: TDateField
      FieldName = 'DATAVCTO'
      Origin = 'DATAVCTO'
    end
    object qReceberCabOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 1000
    end
    object qReceberCabTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object qReceberCabPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object qReceberCabUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object qReceberCabCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object qReceberCabNOMEFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qReceberCabRAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qReceberCabVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qReceberCabSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qReceberCabJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object qReceberCabDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object tReceberCab: TFDTransaction
    Connection = Banco
    Left = 635
    Top = 232
  end
  object qReceberCor: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tReceberCor
    SQL.Strings = (
      'Select *'
      'from ReceberCor rc'
      ''
      'WHERE 1=2')
    Left = 698
    Top = 184
    object qReceberCorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qReceberCorIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qReceberCorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qReceberCorFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = 'FATURA'
    end
    object qReceberCorREFPEDIDO: TIntegerField
      FieldName = 'REFPEDIDO'
      Origin = 'REFPEDIDO'
    end
    object qReceberCorPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object qReceberCorOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 500
    end
    object qReceberCorDATAPGTO: TDateField
      FieldName = 'DATAPGTO'
      Origin = 'DATAPGTO'
    end
    object qReceberCorUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object qReceberCorHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qReceberCorJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object qReceberCorDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qReceberCorVALORPAGO: TFMTBCDField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object tReceberCor: TFDTransaction
    Connection = Banco
    Left = 701
    Top = 232
  end
  object qPagarCab: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tPagarCab
    SQL.Strings = (
      'Select pc.*, c.nomefantasia, c.razaosocial'
      'from PagarCab pc'
      'join clientes c on (c.idcliente = pc.Fornecedor and'
      'pc.IDemitente = C.idemitente )'
      'WHERE 1=2')
    Left = 632
    Top = 280
    object qPagarCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qPagarCabIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qPagarCabCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qPagarCabREFPEDIDO: TIntegerField
      FieldName = 'REFPEDIDO'
      Origin = 'REFPEDIDO'
    end
    object qPagarCabDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qPagarCabDATAVCTO: TDateField
      FieldName = 'DATAVCTO'
      Origin = 'DATAVCTO'
    end
    object qPagarCabOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 1000
    end
    object qPagarCabTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object qPagarCabPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object qPagarCabUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object qPagarCabFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object qPagarCabNOMEFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qPagarCabRAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qPagarCabFATURA: TStringField
      FieldName = 'FATURA'
      Origin = 'FATURA'
    end
    object qPagarCabVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qPagarCabSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qPagarCabJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object qPagarCabDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object tPagarCab: TFDTransaction
    Connection = Banco
    Left = 635
    Top = 328
  end
  object qPagarCor: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tPagarCor
    SQL.Strings = (
      'Select *'
      'from PagarCor pc'
      'WHERE 1=2')
    Left = 698
    Top = 280
    object qPagarCorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPagarCorIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qPagarCorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qPagarCorFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = 'FATURA'
    end
    object qPagarCorREFPEDIDO: TIntegerField
      FieldName = 'REFPEDIDO'
      Origin = 'REFPEDIDO'
    end
    object qPagarCorPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object qPagarCorOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 500
    end
    object qPagarCorDATAPGTO: TDateField
      FieldName = 'DATAPGTO'
      Origin = 'DATAPGTO'
    end
    object qPagarCorUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object qPagarCorHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qPagarCorJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object qPagarCorDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qPagarCorVALORPAGO: TFMTBCDField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object tPagarCor: TFDTransaction
    Connection = Banco
    Left = 701
    Top = 328
  end
  object qOScab: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tqOScab
    SQL.Strings = (
      'Select oc.*, c.nomefantasia, c.razaosocial, c.fone, c.fax '
      'from oscab oc '
      'join clientes c on (c.idcliente = oc.cliente and '
      'oc.cod_emitente = C.idemitente )'
      'WHERE 1=2')
    Left = 518
    Top = 280
    object qOScabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object qOScabCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
    end
    object qOScabCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qOScabDATAHORAENTRADA: TSQLTimeStampField
      FieldName = 'DATAHORAENTRADA'
      Origin = 'DATAHORAENTRADA'
    end
    object qOScabDATAHORASAIDA: TSQLTimeStampField
      FieldName = 'DATAHORASAIDA'
      Origin = 'DATAHORASAIDA'
    end
    object qOScabVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object qOScabSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 100
    end
    object qOScabCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object qOScabTOTALPRODUTOS: TBCDField
      FieldName = 'TOTALPRODUTOS'
      Origin = 'TOTALPRODUTOS'
      currency = True
      Precision = 18
    end
    object qOScabTOTALSERVICOS: TBCDField
      FieldName = 'TOTALSERVICOS'
      Origin = 'TOTALSERVICOS'
      currency = True
      Precision = 18
    end
    object qOScabSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      currency = True
      Precision = 18
    end
    object qOScabPERCDESCONTO: TBCDField
      FieldName = 'PERCDESCONTO'
      Origin = 'PERCDESCONTO'
      currency = True
      Precision = 18
    end
    object qOScabDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
    end
    object qOScabTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
    end
    object qOScabEQUIPAMENTO_VEICULO: TStringField
      FieldName = 'EQUIPAMENTO_VEICULO'
      Origin = 'EQUIPAMENTO_VEICULO'
      Size = 255
    end
    object qOScabNRSERIE_PLACA: TStringField
      FieldName = 'NRSERIE_PLACA'
      Origin = 'NRSERIE_PLACA'
      Size = 255
    end
    object qOScabINFORMACOES_KM: TStringField
      FieldName = 'INFORMACOES_KM'
      Origin = 'INFORMACOES_KM'
      Size = 500
    end
    object qOScabDEFEITORECLAMADO: TStringField
      FieldName = 'DEFEITORECLAMADO'
      Origin = 'DEFEITORECLAMADO'
      Size = 2000
    end
    object qOScabDEFEITOENCONTRADO_SOLUCAO: TStringField
      FieldName = 'DEFEITOENCONTRADO_SOLUCAO'
      Origin = 'DEFEITOENCONTRADO_SOLUCAO'
      Size = 10
    end
    object qOScabNOMEFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object qOScabRAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object qOScabFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE'
      Origin = 'FONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qOScabFAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAX'
      Origin = 'FAX'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qOScabATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object tqOScab: TFDTransaction
    Connection = Banco
    Left = 521
    Top = 328
  end
  object qOsCor: TFDQuery
    CachedUpdates = True
    Connection = Banco
    SQL.Strings = (
      'Select * from OSCor where cod_emitente = :emi and idOS = :id ')
    Left = 575
    Top = 281
    ParamData = <
      item
        Name = 'EMI'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qOsCorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qOsCorCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
    end
    object qOsCorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qOsCorIDOS: TIntegerField
      FieldName = 'IDOS'
      Origin = 'IDOS'
    end
    object qOsCorPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object qOsCorTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
    end
    object qOsCorNTECNICO: TStringField
      FieldName = 'NTECNICO'
      Origin = 'NTECNICO'
      Size = 150
    end
    object qOsCorQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object qOsCorVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
    end
    object qOsCorTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
    end
    object qOsCorNPRODUTO: TStringField
      FieldName = 'NPRODUTO'
      Origin = 'NPRODUTO'
      Size = 200
    end
    object qOsCorGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
      Size = 3
    end
  end
  object dsOsCor: TDataSource
    DataSet = qOsCor
    Left = 575
    Top = 329
  end
  object qOsCorSer: TFDQuery
    CachedUpdates = True
    Connection = Banco
    SQL.Strings = (
      'Select * from OSCorser where cod_emitente = :emi and idOS = :id ')
    Left = 575
    Top = 377
    ParamData = <
      item
        Name = 'EMI'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qOsCorSerID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qOsCorSerCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
    end
    object qOsCorSerCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qOsCorSerIDOS: TIntegerField
      FieldName = 'IDOS'
      Origin = 'IDOS'
    end
    object qOsCorSerSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
    end
    object qOsCorSerTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
    end
    object qOsCorSerNTECNICO: TStringField
      FieldName = 'NTECNICO'
      Origin = 'NTECNICO'
      Size = 150
    end
    object qOsCorSerQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object qOsCorSerVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
    end
    object qOsCorSerTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
    end
    object qOsCorSerNSERVICO: TStringField
      FieldName = 'NSERVICO'
      Origin = 'NSERVICO'
      Size = 200
    end
    object qOsCorSerGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
      Size = 3
    end
  end
  object dsOsCorSer: TDataSource
    DataSet = qOsCorSer
    Left = 575
    Top = 425
  end
  object qServico: TFDQuery
    CachedUpdates = True
    Connection = Banco
    Transaction = tServico
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SizeMin = 255
        SourceDataType = dtAnsiString
      end>
    SQL.Strings = (
      'select idEmitente, id, codigo, nome, valor, comissao'
      'from servicos'
      'WHERE 1=2')
    Left = 240
    Top = 344
    object qServicoIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qServicoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qServicoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object qServicoVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object qServicoCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
  end
  object dsServico: TDataSource
    DataSet = qServico
    Left = 240
    Top = 395
  end
  object tServico: TFDTransaction
    Connection = Banco
    Left = 240
    Top = 448
  end
end
