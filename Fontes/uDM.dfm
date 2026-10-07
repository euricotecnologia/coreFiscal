object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 428
  Width = 615
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 472
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 472
    Top = 64
  end
  object qEmitente: TFDQuery
    Connection = Banco
    SQL.Strings = (
      
        'Select * from Emitente where idEmitente = :idEmitente Order By i' +
        'dEmitente')
    Left = 168
    Top = 16
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
    object qEmitenteALIQUOTAICMS: TBCDField
      FieldName = 'ALIQUOTAICMS'
      Origin = 'ALIQUOTAICMS'
      Precision = 18
      Size = 2
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
  end
  object dsEmitente: TDataSource
    DataSet = qEmitente
    Left = 224
    Top = 16
  end
  object Banco: TFDConnection
    Params.Strings = (
      'Database=C:\DataNFe\Dados\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 24
    Top = 16
  end
  object qGeral: TFDQuery
    Connection = Banco
    Left = 24
    Top = 168
  end
  object qIbge: TFDQuery
    Connection = Banco
    SQL.Strings = (
      'select * from MUNICIPIOS order by NOME')
    Left = 136
    Top = 168
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
    SQL.Strings = (
      'select * from MUNICIPIOS order by NOME')
    Left = 192
    Top = 168
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
    Connection = Banco
    SQL.Strings = (
      'SELECT * FROM TBTES;')
    Left = 304
    Top = 168
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
  end
  object qCFOP: TFDQuery
    Connection = Banco
    SQL.Strings = (
      'select * from CFOP order by CFOP')
    Left = 248
    Top = 168
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
    Connection = Banco
    SQL.Strings = (
      
        'select * from PRODUTOS WHERE IDEMITENTE = :IDEMITENTE order by I' +
        'DPRODUTO;')
    Left = 360
    Top = 168
    ParamData = <
      item
        Name = 'IDEMITENTE'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
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
      Size = 14
    end
    object qProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
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
    object qProdutosCUSTO: TBCDField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      Precision = 18
      Size = 2
    end
    object qProdutosPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object qProdutosUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      FixedChar = True
      Size = 2
    end
    object qProdutosCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      FixedChar = True
      Size = 3
    end
    object qProdutosICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object qProdutosIPI: TBCDField
      FieldName = 'IPI'
      Origin = 'IPI'
      Precision = 18
      Size = 2
    end
    object qProdutosPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object qProdutosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
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
    object qProdutosMVA: TBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qProdutosPREDICMS: TBCDField
      FieldName = 'PREDICMS'
      Origin = 'PREDICMS'
      Precision = 18
      Size = 2
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
  end
  object dsTes: TDataSource
    DataSet = qTES
    Left = 304
    Top = 219
  end
  object dsCFOP: TDataSource
    DataSet = qCFOP
    Left = 248
    Top = 219
  end
  object dsProduto: TDataSource
    DataSet = qProdutos
    Left = 360
    Top = 219
  end
  object FDTransaction1: TFDTransaction
    Connection = Banco
    Left = 80
    Top = 16
  end
  object docValido: TACBrValidador
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 472
    Top = 117
  end
end
