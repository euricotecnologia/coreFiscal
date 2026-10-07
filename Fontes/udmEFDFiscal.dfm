object dmEFDFiscal: TdmEFDFiscal
  OldCreateOrder = False
  Height = 299
  Width = 513
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = '.\'
    Delimitador = '|'
    ReplaceDelimitador = False
    TrimString = True
    CurMascara = '#0.00'
    Left = 204
    Top = 225
  end
  object qEmpresa: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      'Select * from emitente where idEmitente = :codEmp')
    Left = 48
    Top = 16
    ParamData = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qEmpresaIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmpresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 50
    end
    object qEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 50
    end
    object qEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object qEmpresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 10
    end
    object qEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 25
    end
    object qEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 25
    end
    object qEmpresaCODCIDADE: TStringField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      Size = 10
    end
    object qEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object qEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object qEmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 18
    end
    object qEmpresaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 13
    end
    object qEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object qEmpresaCRT: TIntegerField
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object qEmpresaCERT_CAMINHO: TStringField
      FieldName = 'CERT_CAMINHO'
      Origin = 'CERT_CAMINHO'
      Size = 200
    end
    object qEmpresaCERT_SENHA: TStringField
      FieldName = 'CERT_SENHA'
      Origin = 'CERT_SENHA'
    end
    object qEmpresaCERT_NUMSERIE: TStringField
      FieldName = 'CERT_NUMSERIE'
      Origin = 'CERT_NUMSERIE'
      Size = 30
    end
    object qEmpresaGERAL_DANFE: TIntegerField
      FieldName = 'GERAL_DANFE'
      Origin = 'GERAL_DANFE'
    end
    object qEmpresaGERAL_FORMAEMISSAO: TIntegerField
      FieldName = 'GERAL_FORMAEMISSAO'
      Origin = 'GERAL_FORMAEMISSAO'
    end
    object qEmpresaGERAL_LOGOMARCA: TStringField
      FieldName = 'GERAL_LOGOMARCA'
      Origin = 'GERAL_LOGOMARCA'
      Size = 200
    end
    object qEmpresaGERAL_SALVAR: TIntegerField
      FieldName = 'GERAL_SALVAR'
      Origin = 'GERAL_SALVAR'
    end
    object qEmpresaGERAL_PATHSALVAR: TStringField
      FieldName = 'GERAL_PATHSALVAR'
      Origin = 'GERAL_PATHSALVAR'
      Size = 255
    end
    object qEmpresaGERAL_SERIE: TIntegerField
      FieldName = 'GERAL_SERIE'
      Origin = 'GERAL_SERIE'
    end
    object qEmpresaGERAL_SERIEPRODUCAO: TIntegerField
      FieldName = 'GERAL_SERIEPRODUCAO'
      Origin = 'GERAL_SERIEPRODUCAO'
    end
    object qEmpresaGERAL_SERIEHOMOLOG: TIntegerField
      FieldName = 'GERAL_SERIEHOMOLOG'
      Origin = 'GERAL_SERIEHOMOLOG'
    end
    object qEmpresaGERAL_SERIESCAN: TIntegerField
      FieldName = 'GERAL_SERIESCAN'
      Origin = 'GERAL_SERIESCAN'
    end
    object qEmpresaGERAL_NNFEPRODUCAO: TIntegerField
      FieldName = 'GERAL_NNFEPRODUCAO'
      Origin = 'GERAL_NNFEPRODUCAO'
    end
    object qEmpresaGERAL_NNFEHOMOLOG: TIntegerField
      FieldName = 'GERAL_NNFEHOMOLOG'
      Origin = 'GERAL_NNFEHOMOLOG'
    end
    object qEmpresaGERAL_NNFESCAN: TIntegerField
      FieldName = 'GERAL_NNFESCAN'
      Origin = 'GERAL_NNFESCAN'
    end
    object qEmpresaGERAL_USARDESCCOMPLETA: TIntegerField
      FieldName = 'GERAL_USARDESCCOMPLETA'
      Origin = 'GERAL_USARDESCCOMPLETA'
    end
    object qEmpresaWEBSERVICE_UF: TStringField
      FieldName = 'WEBSERVICE_UF'
      Origin = 'WEBSERVICE_UF'
      FixedChar = True
      Size = 2
    end
    object qEmpresaWEBSERVICE_AMBIENTE: TIntegerField
      FieldName = 'WEBSERVICE_AMBIENTE'
      Origin = 'WEBSERVICE_AMBIENTE'
    end
    object qEmpresaWEBSERVICE_VISUALIZAR: TIntegerField
      FieldName = 'WEBSERVICE_VISUALIZAR'
      Origin = 'WEBSERVICE_VISUALIZAR'
    end
    object qEmpresaPROXY_HOST: TStringField
      FieldName = 'PROXY_HOST'
      Origin = 'PROXY_HOST'
      Size = 255
    end
    object qEmpresaPROXY_PORTA: TIntegerField
      FieldName = 'PROXY_PORTA'
      Origin = 'PROXY_PORTA'
    end
    object qEmpresaPROXY_USER: TStringField
      FieldName = 'PROXY_USER'
      Origin = 'PROXY_USER'
      Size = 200
    end
    object qEmpresaPROXY_PASS: TStringField
      FieldName = 'PROXY_PASS'
      Origin = 'PROXY_PASS'
      Size = 25
    end
    object qEmpresaEMAIL_HOST: TStringField
      FieldName = 'EMAIL_HOST'
      Origin = 'EMAIL_HOST'
      Size = 255
    end
    object qEmpresaEMAIL_PORT: TIntegerField
      FieldName = 'EMAIL_PORT'
      Origin = 'EMAIL_PORT'
    end
    object qEmpresaEMAIL_USER: TStringField
      FieldName = 'EMAIL_USER'
      Origin = 'EMAIL_USER'
      Size = 200
    end
    object qEmpresaEMAIL_PASS: TStringField
      FieldName = 'EMAIL_PASS'
      Origin = 'EMAIL_PASS'
      Size = 25
    end
    object qEmpresaEMAIL_ASSUNTO: TStringField
      FieldName = 'EMAIL_ASSUNTO'
      Origin = 'EMAIL_ASSUNTO'
      Size = 150
    end
    object qEmpresaEMAIL_SSL: TIntegerField
      FieldName = 'EMAIL_SSL'
      Origin = 'EMAIL_SSL'
    end
    object qEmpresaEMAIL_MENSAGEM: TMemoField
      FieldName = 'EMAIL_MENSAGEM'
      Origin = 'EMAIL_MENSAGEM'
      BlobType = ftMemo
    end
    object qEmpresaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object qEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object qEmpresaCHAVELIGACAO: TStringField
      FieldName = 'CHAVELIGACAO'
      Origin = 'CHAVELIGACAO'
      Size = 96
    end
    object qEmpresaFLAG_IBPT: TIntegerField
      FieldName = 'FLAG_IBPT'
      Origin = 'FLAG_IBPT'
    end
    object qEmpresaIDTOKEN: TStringField
      FieldName = 'IDTOKEN'
      Origin = 'IDTOKEN'
      Size = 50
    end
    object qEmpresaTOKEN: TStringField
      FieldName = 'TOKEN'
      Origin = 'TOKEN'
      Size = 60
    end
    object qEmpresaDATAVENCIMENTOCERTIFICADO: TStringField
      FieldName = 'DATAVENCIMENTOCERTIFICADO'
      Origin = 'DATAVENCIMENTOCERTIFICADO'
      Size = 10
    end
    object qEmpresaGERAL_NNFCEPRODUCAO: TIntegerField
      FieldName = 'GERAL_NNFCEPRODUCAO'
      Origin = 'GERAL_NNFCEPRODUCAO'
    end
    object qEmpresaGERAL_NNFCEHOMOLOG: TIntegerField
      FieldName = 'GERAL_NNFCEHOMOLOG'
      Origin = 'GERAL_NNFCEHOMOLOG'
    end
    object qEmpresaIMPRESSORANFE: TStringField
      FieldName = 'IMPRESSORANFE'
      Origin = 'IMPRESSORANFE'
      Size = 100
    end
    object qEmpresaIMPRESSORANFCE: TStringField
      FieldName = 'IMPRESSORANFCE'
      Origin = 'IMPRESSORANFCE'
      Size = 100
    end
    object qEmpresaPREVIEWNFE: TStringField
      FieldName = 'PREVIEWNFE'
      Origin = 'PREVIEWNFE'
      Size = 1
    end
    object qEmpresaPREVIEWNFCE: TStringField
      FieldName = 'PREVIEWNFCE'
      Origin = 'PREVIEWNFCE'
      Size = 1
    end
    object qEmpresaLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
    end
    object qEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
    end
    object qEmpresaTIPOCERTIFICADO: TStringField
      FieldName = 'TIPOCERTIFICADO'
      Origin = 'TIPOCERTIFICADO'
      Size = 2
    end
    object qEmpresaMODULO_NFE: TStringField
      FieldName = 'MODULO_NFE'
      Origin = 'MODULO_NFE'
      Size = 1
    end
    object qEmpresaMODULO_NFCE: TStringField
      FieldName = 'MODULO_NFCE'
      Origin = 'MODULO_NFCE'
      Size = 1
    end
    object qEmpresaMODULO_MDFE: TStringField
      FieldName = 'MODULO_MDFE'
      Origin = 'MODULO_MDFE'
      Size = 1
    end
    object qEmpresaESCRITORIOCONTADOR: TStringField
      FieldName = 'ESCRITORIOCONTADOR'
      Origin = 'ESCRITORIOCONTADOR'
      Size = 200
    end
    object qEmpresaCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Origin = 'CONTADOR'
      Size = 200
    end
    object qEmpresaFONECONTADOR: TStringField
      FieldName = 'FONECONTADOR'
      Origin = 'FONECONTADOR'
      Size = 100
    end
    object qEmpresaEMAILCONTADOR: TStringField
      FieldName = 'EMAILCONTADOR'
      Origin = 'EMAILCONTADOR'
      Size = 200
    end
    object qEmpresaUSUARIOCONTADOR: TStringField
      FieldName = 'USUARIOCONTADOR'
      Origin = 'USUARIOCONTADOR'
      Size = 100
    end
    object qEmpresaSENHACONTADOR: TStringField
      FieldName = 'SENHACONTADOR'
      Origin = 'SENHACONTADOR'
      Size = 100
    end
    object qEmpresaMENSAGEMPROCOM: TStringField
      FieldName = 'MENSAGEMPROCOM'
      Origin = 'MENSAGEMPROCOM'
      Size = 200
    end
    object qEmpresaALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Origin = 'ALIQUOTAICMS'
      Precision = 18
      Size = 2
    end
  end
  object TRFiscal: TFDTransaction
    Connection = UniMainModule.Banco
    Left = 447
    Top = 16
  end
  object QClientes_0150: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      
        'select c.idcliente ,C.nomefantasia, '#39'1058'#39' PAIS, C.cpf_cnpj, c.r' +
        'g_ie, c.codmunicipio,'
      'c.endereco, c.nro, c.observacao, c.bairro from clientes C'
      ''
      'WHERE c.idcliente IN (SELECT NF.idcliente'
      '             FROM notas_itens INF'
      '             INNER JOIN notas_cab NF'
      '             ON (INF.id = NF.id)'
      
        '             WHERE NF.cod_emitente = :CODEMP and  NF.dtemissao B' +
        'ETWEEN :DATAINI AND :DATAFIN AND NF.status_nota <> '#39'C'#39' AND'
      
        '             NF.modelo IN ('#39'01'#39', '#39'02'#39', '#39'06'#39', '#39'21'#39', '#39'22'#39', '#39'55'#39', '#39 +
        '65'#39'))'
      '')
    Left = 47
    Top = 66
    ParamData = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAFIN'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QClientes_0150IDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      Required = True
    end
    object QClientes_0150NOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 50
    end
    object QClientes_0150PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object QClientes_0150CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object QClientes_0150RG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      Size = 18
    end
    object QClientes_0150CODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Origin = 'CODMUNICIPIO'
      Size = 15
    end
    object QClientes_0150ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object QClientes_0150NRO: TStringField
      FieldName = 'NRO'
      Origin = 'NRO'
      Size = 5
    end
    object QClientes_0150OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 50
    end
    object QClientes_0150BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 25
    end
  end
  object QFornec_0150: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      
        'select f.idcliente, f.razaosocial, '#39'1058'#39' PAIS, f.cpf_cnpj, f.rg' +
        '_ie,'
      'f.codmunicipio, f.endereco, f.nro, f.bairro from clientes F'
      ''
      'WHERE f.idcliente IN (SELECT E.idfornecedor'
      '              FROM entrada_cor IE'
      '              INNER JOIN entrada_cab E'
      '              ON (IE.id = E.id)'
      
        '              WHERE E.dtentrada BETWEEN :DATAINI AND :DATAFIN AN' +
        'D IE.cod_emitente = :CODEMP)')
    Left = 46
    Top = 120
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIN'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFornec_0150IDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      Required = True
    end
    object QFornec_0150RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 50
    end
    object QFornec_0150PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object QFornec_0150CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object QFornec_0150RG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      Size = 18
    end
    object QFornec_0150CODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Origin = 'CODMUNICIPIO'
      Size = 15
    end
    object QFornec_0150ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object QFornec_0150NRO: TStringField
      FieldName = 'NRO'
      Origin = 'NRO'
      Size = 5
    end
    object QFornec_0150BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 25
    end
  end
  object NFSaidas: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      'SELECT NF.* from notas_cab NF'
      
        'WHERE NF.dtemissao BETWEEN :DATAINI AND :DATAFIN AND NF.cod_emit' +
        'ente =:CODEMP and NF.status_nota = '#39'A'#39' AND'
      
        'NF.tiponota IN ('#39'01'#39', '#39'02'#39', '#39'06'#39', '#39'21'#39', '#39'22'#39', '#39'55'#39', '#39'65'#39') order ' +
        'by NF.id')
    Left = 200
    Top = 16
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIN'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object NFSaidasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NFSaidasSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NFSaidasMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NFSaidasCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NFSaidasNATUREZA_OPER: TStringField
      FieldName = 'NATUREZA_OPER'
      Origin = 'NATUREZA_OPER'
      Size = 50
    end
    object NFSaidasCRT: TStringField
      FieldName = 'CRT'
      Origin = 'CRT'
      Size = 1
    end
    object NFSaidasTIPONOTA: TIntegerField
      FieldName = 'TIPONOTA'
      Origin = 'TIPONOTA'
    end
    object NFSaidasDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
    end
    object NFSaidasDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      Origin = 'DTSAIDA'
    end
    object NFSaidasIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
    end
    object NFSaidasCPF_CONSUMIDOR: TStringField
      FieldName = 'CPF_CONSUMIDOR'
      Origin = 'CPF_CONSUMIDOR'
      Size = 15
    end
    object NFSaidasNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = 'NOME_CONSUMIDOR'
      Size = 50
    end
    object NFSaidasIDTRANSP: TIntegerField
      FieldName = 'IDTRANSP'
      Origin = 'IDTRANSP'
    end
    object NFSaidasTIPOFRETE: TIntegerField
      FieldName = 'TIPOFRETE'
      Origin = 'TIPOFRETE'
    end
    object NFSaidasPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Origin = 'PLACAVEICULO'
      Size = 7
    end
    object NFSaidasUFVEICULO: TStringField
      FieldName = 'UFVEICULO'
      Origin = 'UFVEICULO'
      Size = 2
    end
    object NFSaidasCOD_ANTT: TStringField
      FieldName = 'COD_ANTT'
      Origin = 'COD_ANTT'
    end
    object NFSaidasBASE_ICMS: TBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
    end
    object NFSaidasVALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
    end
    object NFSaidasBASE_ICMS_ST: TBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      Precision = 18
    end
    object NFSaidasVALOR_ICMS_ST: TBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      Precision = 18
    end
    object NFSaidasVALOR_FRETE: TBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 18
    end
    object NFSaidasVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
    end
    object NFSaidasVALOR_ACRESCIMO: TBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      Precision = 18
    end
    object NFSaidasVALOR_SEGURO: TBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 18
    end
    object NFSaidasVALOR_OUTRAS_DESP: TBCDField
      FieldName = 'VALOR_OUTRAS_DESP'
      Origin = 'VALOR_OUTRAS_DESP'
      Precision = 18
    end
    object NFSaidasVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
    end
    object NFSaidasBASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
    end
    object NFSaidasTOTAL_PRODUTOS: TBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Origin = 'TOTAL_PRODUTOS'
      Precision = 18
    end
    object NFSaidasTOTAL_NOTA: TBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      Precision = 18
    end
    object NFSaidasQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object NFSaidasESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 15
    end
    object NFSaidasMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 15
    end
    object NFSaidasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 15
    end
    object NFSaidasPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
    end
    object NFSaidasPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
    end
    object NFSaidasSTATUS_NOTA: TStringField
      FieldName = 'STATUS_NOTA'
      Origin = 'STATUS_NOTA'
      Size = 1
    end
    object NFSaidasDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      Origin = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
    end
    object NFSaidasFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      Origin = 'FORMA_PGTO'
    end
    object NFSaidasXML_NOTA: TMemoField
      FieldName = 'XML_NOTA'
      Origin = 'XML_NOTA'
      BlobType = ftMemo
    end
    object NFSaidasCSTAT: TIntegerField
      FieldName = 'CSTAT'
      Origin = 'CSTAT'
    end
    object NFSaidasXSTAT: TStringField
      FieldName = 'XSTAT'
      Origin = 'XSTAT'
      Size = 1000
    end
    object NFSaidasAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
      Origin = 'AMBIENTE'
    end
    object NFSaidasTIPOEMISSAO: TIntegerField
      FieldName = 'TIPOEMISSAO'
      Origin = 'TIPOEMISSAO'
    end
    object NFSaidasPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 40
    end
    object NFSaidasDATA_HORARECIBO: TSQLTimeStampField
      FieldName = 'DATA_HORARECIBO'
      Origin = 'DATA_HORARECIBO'
    end
    object NFSaidasCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Origin = 'CHAVE_ACESSO'
      Size = 50
    end
    object NFSaidasFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
    end
    object NFSaidasXML_ORIGINAL: TMemoField
      FieldName = 'XML_ORIGINAL'
      Origin = 'XML_ORIGINAL'
      BlobType = ftMemo
    end
    object NFSaidasCHAVE_ACESSO_ORIGINAL: TStringField
      FieldName = 'CHAVE_ACESSO_ORIGINAL'
      Origin = 'CHAVE_ACESSO_ORIGINAL'
      Size = 50
    end
    object NFSaidasDATA_CANCELA: TSQLTimeStampField
      FieldName = 'DATA_CANCELA'
      Origin = 'DATA_CANCELA'
    end
    object NFSaidasPROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Origin = 'PROTOCOLO_CANC'
      Size = 40
    end
    object NFSaidasDATA_INUTILIZA: TSQLTimeStampField
      FieldName = 'DATA_INUTILIZA'
      Origin = 'DATA_INUTILIZA'
    end
    object NFSaidasPROTOCOLO_INUTILIZA: TStringField
      FieldName = 'PROTOCOLO_INUTILIZA'
      Origin = 'PROTOCOLO_INUTILIZA'
      Size = 40
    end
    object NFSaidasASSINADO: TStringField
      FieldName = 'ASSINADO'
      Origin = 'ASSINADO'
      Size = 1
    end
    object NFSaidasALIQ_SIMPLES: TFMTBCDField
      FieldName = 'ALIQ_SIMPLES'
      Origin = 'ALIQ_SIMPLES'
      Precision = 18
      Size = 2
    end
  end
  object NFEntradas: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      'select * from entrada_cab E'
      
        'WHERE E.dtentrada BETWEEN :DATAINI AND :DATAFIN AND E.cod_emiten' +
        'te = :CODEMP')
    Left = 287
    Top = 17
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43252d
      end
      item
        Name = 'DATAFIN'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object NFEntradasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object NFEntradasNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NFEntradasSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NFEntradasMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NFEntradasCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NFEntradasNATUREZA_OPER: TStringField
      FieldName = 'NATUREZA_OPER'
      Origin = 'NATUREZA_OPER'
      Size = 50
    end
    object NFEntradasCRT: TStringField
      FieldName = 'CRT'
      Origin = 'CRT'
      Size = 1
    end
    object NFEntradasTIPONOTA: TIntegerField
      FieldName = 'TIPONOTA'
      Origin = 'TIPONOTA'
    end
    object NFEntradasDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
    end
    object NFEntradasDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      Origin = 'DTENTRADA'
    end
    object NFEntradasIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = 'IDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NFEntradasIDTRANSP: TIntegerField
      FieldName = 'IDTRANSP'
      Origin = 'IDTRANSP'
    end
    object NFEntradasTIPOFRETE: TIntegerField
      FieldName = 'TIPOFRETE'
      Origin = 'TIPOFRETE'
    end
    object NFEntradasPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Origin = 'PLACAVEICULO'
      Size = 7
    end
    object NFEntradasUFVEICULO: TStringField
      FieldName = 'UFVEICULO'
      Origin = 'UFVEICULO'
      Size = 2
    end
    object NFEntradasCOD_ANTT: TStringField
      FieldName = 'COD_ANTT'
      Origin = 'COD_ANTT'
    end
    object NFEntradasBASE_ICMS: TBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
    end
    object NFEntradasVALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
    end
    object NFEntradasBASE_ICMS_ST: TBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      Precision = 18
    end
    object NFEntradasVALOR_ICMS_ST: TBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      Precision = 18
    end
    object NFEntradasVALOR_FRETE: TBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 18
    end
    object NFEntradasVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
    end
    object NFEntradasVALOR_ACRESCIMO: TBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      Precision = 18
    end
    object NFEntradasVALOR_SEGURO: TBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 18
    end
    object NFEntradasVALOR_OUTRAS_DESP: TBCDField
      FieldName = 'VALOR_OUTRAS_DESP'
      Origin = 'VALOR_OUTRAS_DESP'
      Precision = 18
    end
    object NFEntradasVALOR_PIS: TBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
    end
    object NFEntradasVALOR_COFINS: TBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
    end
    object NFEntradasVALOR_PIS_ST: TBCDField
      FieldName = 'VALOR_PIS_ST'
      Origin = 'VALOR_PIS_ST'
      Precision = 18
    end
    object NFEntradasVALOR_COFINS_ST: TBCDField
      FieldName = 'VALOR_COFINS_ST'
      Origin = 'VALOR_COFINS_ST'
      Precision = 18
    end
    object NFEntradasVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
    end
    object NFEntradasBASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
    end
    object NFEntradasTOTAL_PRODUTOS: TBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Origin = 'TOTAL_PRODUTOS'
      Precision = 18
    end
    object NFEntradasTOTAL_NOTA: TBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      Precision = 18
    end
    object NFEntradasQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object NFEntradasESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 15
    end
    object NFEntradasMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 15
    end
    object NFEntradasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 15
    end
    object NFEntradasPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
    end
    object NFEntradasPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
    end
    object NFEntradasSTATUS_NOTA: TStringField
      FieldName = 'STATUS_NOTA'
      Origin = 'STATUS_NOTA'
      Size = 1
    end
    object NFEntradasDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      Origin = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
    end
    object NFEntradasFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      Origin = 'FORMA_PGTO'
    end
    object NFEntradasXML_NOTA: TMemoField
      FieldName = 'XML_NOTA'
      Origin = 'XML_NOTA'
      BlobType = ftMemo
    end
    object NFEntradasCSTAT: TIntegerField
      FieldName = 'CSTAT'
      Origin = 'CSTAT'
    end
    object NFEntradasXSTAT: TStringField
      FieldName = 'XSTAT'
      Origin = 'XSTAT'
      Size = 1000
    end
    object NFEntradasAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
      Origin = 'AMBIENTE'
    end
    object NFEntradasTIPOEMISSAO: TIntegerField
      FieldName = 'TIPOEMISSAO'
      Origin = 'TIPOEMISSAO'
    end
    object NFEntradasPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 40
    end
    object NFEntradasDATA_HORARECIBO: TSQLTimeStampField
      FieldName = 'DATA_HORARECIBO'
      Origin = 'DATA_HORARECIBO'
    end
    object NFEntradasCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Origin = 'CHAVE_ACESSO'
      Size = 50
    end
    object NFEntradasFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
    end
    object NFEntradasXML_ORIGINAL: TMemoField
      FieldName = 'XML_ORIGINAL'
      Origin = 'XML_ORIGINAL'
      BlobType = ftMemo
    end
    object NFEntradasCHAVE_ACESSO_ORIGINAL: TStringField
      FieldName = 'CHAVE_ACESSO_ORIGINAL'
      Origin = 'CHAVE_ACESSO_ORIGINAL'
      Size = 50
    end
    object NFEntradasDATA_CANCELA: TSQLTimeStampField
      FieldName = 'DATA_CANCELA'
      Origin = 'DATA_CANCELA'
    end
    object NFEntradasPROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Origin = 'PROTOCOLO_CANC'
      Size = 40
    end
    object NFEntradasDATA_INUTILIZA: TSQLTimeStampField
      FieldName = 'DATA_INUTILIZA'
      Origin = 'DATA_INUTILIZA'
    end
    object NFEntradasPROTOCOLO_INUTILIZA: TStringField
      FieldName = 'PROTOCOLO_INUTILIZA'
      Origin = 'PROTOCOLO_INUTILIZA'
      Size = 40
    end
    object NFEntradasASSINADO: TStringField
      FieldName = 'ASSINADO'
      Origin = 'ASSINADO'
      Size = 1
    end
    object NFEntradasCODIGO_UF: TStringField
      FieldName = 'CODIGO_UF'
      Origin = 'CODIGO_UF'
      Size = 10
    end
    object NFEntradasENCERRADA: TStringField
      FieldName = 'ENCERRADA'
      Origin = 'ENCERRADA'
      Size = 1
    end
    object NFEntradasENCERRADA_DATA: TDateField
      FieldName = 'ENCERRADA_DATA'
      Origin = 'ENCERRADA_DATA'
    end
    object NFEntradasNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      Size = 150
    end
    object NFEntradasALIQ_SIMPLES: TFMTBCDField
      FieldName = 'ALIQ_SIMPLES'
      Origin = 'ALIQ_SIMPLES'
      Precision = 18
      Size = 2
    end
  end
  object Itens_NFSAIDA: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      'select I.*, P.* from notas_itens I'
      'inner join produtos P on ( P.idproduto = I.idproduto )'
      
        'INNER JOIN notas_cab n on (n.id = i.id and n.serie = i.serie and' +
        ' n.modelo = i.modelo)'
      'where'
      'i.id           = :CODNF AND'
      'I.modelo       = :MOD and'
      'I.cod_emitente = :EMI AND'
      'P.idemitente   = :EMI and'
      'n.cod_emitente = :emi')
    Left = 200
    Top = 64
    ParamData = <
      item
        Name = 'CODNF'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MOD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'EMI'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Itens_NFSAIDAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Itens_NFSAIDASERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Itens_NFSAIDAMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Itens_NFSAIDACOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Itens_NFSAIDAIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Itens_NFSAIDASEQ_PRODUTO: TIntegerField
      FieldName = 'SEQ_PRODUTO'
      Origin = 'SEQ_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Itens_NFSAIDANCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 15
    end
    object Itens_NFSAIDACFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object Itens_NFSAIDANATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
    end
    object Itens_NFSAIDAUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      Size = 3
    end
    object Itens_NFSAIDAQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object Itens_NFSAIDAVLUNIT: TBCDField
      FieldName = 'VLUNIT'
      Origin = 'VLUNIT'
      Precision = 18
    end
    object Itens_NFSAIDABASEICMS: TBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      Precision = 18
    end
    object Itens_NFSAIDAVLICMS: TBCDField
      FieldName = 'VLICMS'
      Origin = 'VLICMS'
      Precision = 18
    end
    object Itens_NFSAIDAALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ALIQICMS'
      Precision = 18
    end
    object Itens_NFSAIDABASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
    end
    object Itens_NFSAIDAVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
    end
    object Itens_NFSAIDAALIQ_IPI: TBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
    end
    object Itens_NFSAIDACST_CSOSN: TStringField
      FieldName = 'CST_CSOSN'
      Origin = 'CST_CSOSN'
      Size = 3
    end
    object Itens_NFSAIDACRED_ICMS: TBCDField
      FieldName = 'CRED_ICMS'
      Origin = 'CRED_ICMS'
      Precision = 18
    end
    object Itens_NFSAIDAMVA: TBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
    end
    object Itens_NFSAIDAPREDICMS: TBCDField
      FieldName = 'PREDICMS'
      Origin = 'PREDICMS'
      Precision = 18
    end
    object Itens_NFSAIDACEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object Itens_NFSAIDAEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 15
    end
    object Itens_NFSAIDAORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object Itens_NFSAIDACODIGO_ANP: TStringField
      FieldName = 'CODIGO_ANP'
      Origin = 'CODIGO_ANP'
    end
    object Itens_NFSAIDADESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
    end
    object Itens_NFSAIDAACRESCIMO: TBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
    end
    object Itens_NFSAIDAFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
    end
    object Itens_NFSAIDASEGURO: TBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 18
    end
    object Itens_NFSAIDAOUTROS: TBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Precision = 18
    end
    object Itens_NFSAIDAIDEMITENTE: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAIDPRODUTO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPRODUTO_1'
      Origin = 'IDPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDACODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAEAN_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EAN_1'
      Origin = 'EAN'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object Itens_NFSAIDADESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Itens_NFSAIDADESCRICAO_COMPLETA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_COMPLETA'
      Origin = 'DESCRICAO_COMPLETA'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object Itens_NFSAIDANCM_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_1'
      Origin = 'NCM'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object Itens_NFSAIDACEST_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST_1'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object Itens_NFSAIDACUSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFSAIDAPRECO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFSAIDAUN_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UN_1'
      Origin = 'UN'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object Itens_NFSAIDACST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST'
      Origin = 'CST'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Itens_NFSAIDAICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFSAIDAIPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI'
      Origin = 'IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFSAIDAPESOBRUTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object Itens_NFSAIDAPESOLIQ: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object Itens_NFSAIDACFOP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_1'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object Itens_NFSAIDACSOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Itens_NFSAIDAMVA_1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MVA_1'
      Origin = 'MVA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFSAIDAPREDICMS_1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PREDICMS_1'
      Origin = 'PREDICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFSAIDAORIGEM_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ORIGEM_1'
      Origin = 'ORIGEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDACSTIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object Itens_NFSAIDACSTPIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object Itens_NFSAIDACSTCOFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object Itens_NFSAIDAALIQPIS: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQPIS'
      Origin = 'ALIQPIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAALIQCOFINS: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQCOFINS'
      Origin = 'ALIQCOFINS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAOPER_ENTRADA_DENTRO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_ENTRADA_DENTRO'
      Origin = 'OPER_ENTRADA_DENTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAOPER_ENTRADA_FORA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_ENTRADA_FORA'
      Origin = 'OPER_ENTRADA_FORA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAOPER_SAIDA_DENTRO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_SAIDA_DENTRO'
      Origin = 'OPER_SAIDA_DENTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAOPER_SAIDA_FORA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_SAIDA_FORA'
      Origin = 'OPER_SAIDA_FORA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAOPER_DEVOLUCAO_DENTRO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_DEVOLUCAO_DENTRO'
      Origin = 'OPER_DEVOLUCAO_DENTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAOPER_DEVOLUCAO_FORA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_DEVOLUCAO_FORA'
      Origin = 'OPER_DEVOLUCAO_FORA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDACODIGO_ANP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ANP_1'
      Origin = 'CODIGO_ANP'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDAESTOQUE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object Itens_NFSAIDAMARGEM: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFSAIDACOD_FORN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_FORN'
      Origin = 'COD_FORN'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object C190_ITENS: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      'select I.cst_csosn,'
      'I.cfop CFO,'
      'I.aliqicms,'
      ''
      '/*SUM( I.baseicms ) BC_SUBS,'
      'SUM( I.vvalor_subtrib ) SUBS,'
      'SUM( I.vreducao_icms ) REDUCAO,*/'
      ''
      'SUM( I.vlunit * i.quant ) TOTAL,'
      'SUM( I.baseicms ) BC_ICMS,'
      'SUM( I.vlicms ) ICMS,'
      'SUM( I.valor_ipi ) IPI'
      ''
      'from notas_itens I'
      ''
      'where i.id = :CODNF and i.cod_emitente = :codEmp'
      'group by I.cst_csosn, I.cfop, I.aliqicms;')
    Left = 200
    Top = 112
    ParamData = <
      item
        Name = 'CODNF'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object C190_ITENSCST_CSOSN: TStringField
      FieldName = 'CST_CSOSN'
      Origin = 'CST_CSOSN'
      Size = 3
    end
    object C190_ITENSCFO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFO'
      Origin = 'CFO'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object C190_ITENSALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ALIQICMS'
      Precision = 18
    end
    object C190_ITENSTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object C190_ITENSBC_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BC_ICMS'
      Origin = 'BC_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object C190_ITENSICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object C190_ITENSIPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI'
      Origin = 'IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
  object Itens_NFEntradas: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      
        'select I.*, P.*  /* , G.aliquota_grp ALIQ_ICMS, U.descricao UNID' +
        '*/'
      'from entrada_cor I'
      'inner join produtos P'
      'on ( P.idproduto = I.cod_prod )'
      '/*inner join grupo_icms G'
      'on ( G.cod_grp = I.cod_grp )'
      'inner join UNIDADE_MEDIDA u'
      'on ( u.codigo = P.codigo_unidade_entrada )   */'
      'where'
      'i.nota         = :CODENT and'
      'i.cod_emitente = :codEmp and'
      'p.idemitente   = :codEmp')
    Left = 287
    Top = 64
    ParamData = <
      item
        Name = 'CODENT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Itens_NFEntradasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object Itens_NFEntradasCOD_ENTRADA: TIntegerField
      FieldName = 'COD_ENTRADA'
      Origin = 'COD_ENTRADA'
    end
    object Itens_NFEntradasNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'NOTA'
      Required = True
    end
    object Itens_NFEntradasSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Required = True
    end
    object Itens_NFEntradasMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Required = True
    end
    object Itens_NFEntradasCOD_EMITENTE: TIntegerField
      FieldName = 'COD_EMITENTE'
      Origin = 'COD_EMITENTE'
      Required = True
    end
    object Itens_NFEntradasCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Origin = 'COD_PROD'
    end
    object Itens_NFEntradasCOD_PROD_FORN: TStringField
      FieldName = 'COD_PROD_FORN'
      Origin = 'COD_PROD_FORN'
      Size = 50
    end
    object Itens_NFEntradasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object Itens_NFEntradasSEQ_PRODUTO: TIntegerField
      FieldName = 'SEQ_PRODUTO'
      Origin = 'SEQ_PRODUTO'
      Required = True
    end
    object Itens_NFEntradasNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 15
    end
    object Itens_NFEntradasCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object Itens_NFEntradasNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
    end
    object Itens_NFEntradasUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      Size = 3
    end
    object Itens_NFEntradasQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object Itens_NFEntradasVLUNIT: TBCDField
      FieldName = 'VLUNIT'
      Origin = 'VLUNIT'
      Precision = 18
    end
    object Itens_NFEntradasVLTOTAL: TBCDField
      FieldName = 'VLTOTAL'
      Origin = 'VLTOTAL'
      Precision = 18
    end
    object Itens_NFEntradasPRED_BC: TBCDField
      FieldName = 'PRED_BC'
      Origin = 'PRED_BC'
      Precision = 18
    end
    object Itens_NFEntradasPRED_BC_ST: TBCDField
      FieldName = 'PRED_BC_ST'
      Origin = 'PRED_BC_ST'
      Precision = 18
    end
    object Itens_NFEntradasBASEICMS: TBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      Precision = 18
    end
    object Itens_NFEntradasVLICMS: TBCDField
      FieldName = 'VLICMS'
      Origin = 'VLICMS'
      Precision = 18
    end
    object Itens_NFEntradasALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ALIQICMS'
      Precision = 18
    end
    object Itens_NFEntradasPERC_ICMS: TBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
    end
    object Itens_NFEntradasPREDICMS: TBCDField
      FieldName = 'PREDICMS'
      Origin = 'PREDICMS'
      Precision = 18
    end
    object Itens_NFEntradasBASE_ST: TBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      Precision = 18
    end
    object Itens_NFEntradasALIQ_ST: TBCDField
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      Precision = 18
    end
    object Itens_NFEntradasVALOR_ST: TBCDField
      FieldName = 'VALOR_ST'
      Origin = 'VALOR_ST'
      Precision = 18
    end
    object Itens_NFEntradasPERC_ST: TBCDField
      FieldName = 'PERC_ST'
      Origin = 'PERC_ST'
      Precision = 18
    end
    object Itens_NFEntradasCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 10
    end
    object Itens_NFEntradasBASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
    end
    object Itens_NFEntradasVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
    end
    object Itens_NFEntradasALIQ_IPI: TBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
    end
    object Itens_NFEntradasPERC_IPI: TBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
    end
    object Itens_NFEntradasVALOR_COFINS: TBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
    end
    object Itens_NFEntradasALIQ_COFINS: TBCDField
      FieldName = 'ALIQ_COFINS'
      Origin = 'ALIQ_COFINS'
      Precision = 18
    end
    object Itens_NFEntradasBASE_COFINS: TBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
    end
    object Itens_NFEntradasCOFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      Origin = 'COFINS_ST'
      Size = 10
    end
    object Itens_NFEntradasCST_CSOSN: TStringField
      FieldName = 'CST_CSOSN'
      Origin = 'CST_CSOSN'
      Size = 3
    end
    object Itens_NFEntradasPIS_CST: TStringField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      Size = 10
    end
    object Itens_NFEntradasPIS_BC: TBCDField
      FieldName = 'PIS_BC'
      Origin = 'PIS_BC'
      Precision = 18
    end
    object Itens_NFEntradasPIS_ALIQ: TBCDField
      FieldName = 'PIS_ALIQ'
      Origin = 'PIS_ALIQ'
      Precision = 18
    end
    object Itens_NFEntradasPIS_VALOR: TBCDField
      FieldName = 'PIS_VALOR'
      Origin = 'PIS_VALOR'
      Precision = 18
    end
    object Itens_NFEntradasCRED_ICMS: TBCDField
      FieldName = 'CRED_ICMS'
      Origin = 'CRED_ICMS'
      Precision = 18
    end
    object Itens_NFEntradasMVA: TBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
    end
    object Itens_NFEntradasCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object Itens_NFEntradasEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 15
    end
    object Itens_NFEntradasORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object Itens_NFEntradasCODIGO_ANP: TStringField
      FieldName = 'CODIGO_ANP'
      Origin = 'CODIGO_ANP'
    end
    object Itens_NFEntradasDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
    end
    object Itens_NFEntradasACRESCIMO: TBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
    end
    object Itens_NFEntradasFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
    end
    object Itens_NFEntradasSEGURO: TBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 18
    end
    object Itens_NFEntradasOUTROS: TBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Precision = 18
    end
    object Itens_NFEntradasBASE_CALCULO: TBCDField
      FieldName = 'BASE_CALCULO'
      Origin = 'BASE_CALCULO'
      Precision = 18
    end
    object Itens_NFEntradasOPER_SAIDA_DENTRO: TIntegerField
      FieldName = 'OPER_SAIDA_DENTRO'
      Origin = 'OPER_SAIDA_DENTRO'
    end
    object Itens_NFEntradasOPER_SAIDA_FORA: TIntegerField
      FieldName = 'OPER_SAIDA_FORA'
      Origin = 'OPER_SAIDA_FORA'
    end
    object Itens_NFEntradasNOVO: TStringField
      FieldName = 'NOVO'
      Origin = 'NOVO'
      Size = 1
    end
    object Itens_NFEntradasVINCULADO: TStringField
      FieldName = 'VINCULADO'
      Origin = 'VINCULADO'
      Size = 1
    end
    object Itens_NFEntradasMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
    end
    object Itens_NFEntradasMARGEM_NOVA: TCurrencyField
      FieldName = 'MARGEM_NOVA'
      Origin = 'MARGEM_NOVA'
    end
    object Itens_NFEntradasVALOR_VENDA: TBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object Itens_NFEntradasVALOR_VENDA_NOVO: TBCDField
      FieldName = 'VALOR_VENDA_NOVO'
      Origin = 'VALOR_VENDA_NOVO'
      Precision = 18
      Size = 2
    end
    object Itens_NFEntradasCUSTO_ANTIGO: TBCDField
      FieldName = 'CUSTO_ANTIGO'
      Origin = 'CUSTO_ANTIGO'
      Precision = 18
      Size = 2
    end
    object Itens_NFEntradasIDEMITENTE: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasIDPRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasEAN_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EAN_1'
      Origin = 'EAN'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object Itens_NFEntradasDESCRICAO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_1'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Itens_NFEntradasDESCRICAO_COMPLETA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_COMPLETA'
      Origin = 'DESCRICAO_COMPLETA'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object Itens_NFEntradasNCM_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_1'
      Origin = 'NCM'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object Itens_NFEntradasCEST_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST_1'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object Itens_NFEntradasCUSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFEntradasPRECO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFEntradasUN_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UN_1'
      Origin = 'UN'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object Itens_NFEntradasCST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST'
      Origin = 'CST'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Itens_NFEntradasICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFEntradasIPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI'
      Origin = 'IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFEntradasPESOBRUTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object Itens_NFEntradasPESOLIQ: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object Itens_NFEntradasCFOP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_1'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object Itens_NFEntradasCSOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Itens_NFEntradasMVA_1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MVA_1'
      Origin = 'MVA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFEntradasPREDICMS_1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PREDICMS_1'
      Origin = 'PREDICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Itens_NFEntradasORIGEM_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ORIGEM_1'
      Origin = 'ORIGEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasCSTIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object Itens_NFEntradasCSTPIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object Itens_NFEntradasCSTCOFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object Itens_NFEntradasALIQPIS: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQPIS'
      Origin = 'ALIQPIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasALIQCOFINS: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQCOFINS'
      Origin = 'ALIQCOFINS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasOPER_ENTRADA_DENTRO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_ENTRADA_DENTRO'
      Origin = 'OPER_ENTRADA_DENTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasOPER_ENTRADA_FORA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_ENTRADA_FORA'
      Origin = 'OPER_ENTRADA_FORA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasOPER_SAIDA_DENTRO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_SAIDA_DENTRO_1'
      Origin = 'OPER_SAIDA_DENTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasOPER_SAIDA_FORA_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_SAIDA_FORA_1'
      Origin = 'OPER_SAIDA_FORA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasOPER_DEVOLUCAO_DENTRO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_DEVOLUCAO_DENTRO'
      Origin = 'OPER_DEVOLUCAO_DENTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasOPER_DEVOLUCAO_FORA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPER_DEVOLUCAO_FORA'
      Origin = 'OPER_DEVOLUCAO_FORA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasCODIGO_ANP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ANP_1'
      Origin = 'CODIGO_ANP'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasESTOQUE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object Itens_NFEntradasMARGEM_1: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_1'
      Origin = 'MARGEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object Itens_NFEntradasCOD_FORN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_FORN'
      Origin = 'COD_FORN'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object C190_ENTRADA: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      'select I.cst_csosn,'
      'I.cfop CFO,'
      'I.perc_icms,'
      'SUM( I.vlunit ) TOTAL,'
      'SUM( I.baseicms ) BC_ICMS,'
      'SUM( I.vlicms ) ICMS,'
      'SUM( I.baseicms ) BC_SUBS,'
      'SUM( I.valor_st ) SUBS,'
      'SUM( ( I.vltotal * I.perc_icms ) / 100  ) REDUCAO,'
      'SUM( I.valor_ipi ) IPI  from entrada_cor I'
      ''
      'where i.cod_entrada = :CODNF and i.cod_emitente = :codEmp'
      ''
      'group by I.cst_csosn, I.cfop, I.perc_icms;')
    Left = 288
    Top = 112
    ParamData = <
      item
        Name = 'CODNF'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object C190_ENTRADACST_CSOSN: TStringField
      FieldName = 'CST_CSOSN'
      Origin = 'CST_CSOSN'
      Size = 3
    end
    object C190_ENTRADACFO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFO'
      Origin = 'CFO'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object C190_ENTRADAPERC_ICMS: TBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
    end
    object C190_ENTRADATOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object C190_ENTRADABC_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BC_ICMS'
      Origin = 'BC_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object C190_ENTRADAICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object C190_ENTRADABC_SUBS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BC_SUBS'
      Origin = 'BC_SUBS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object C190_ENTRADASUBS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUBS'
      Origin = 'SUBS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object C190_ENTRADAREDUCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAO'
      Origin = 'REDUCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object C190_ENTRADAIPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI'
      Origin = 'IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
  object qProdutos: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      'SELECT P.codigo,P.ean,P.descricao,P.ncm,P.un'
      'FROM produtos P'
      ''
      'WHERE  P.idproduto IN (SELECT IE.cod_prod'
      '              FROM entrada_cor IE'
      '              INNER JOIN entrada_cab E'
      
        '              ON (IE.cod_entrada = E.id and ie.serie = e.serie a' +
        'nd ie.modelo = e.modelo)'
      '              WHERE E.dtentrada BETWEEN :DATAINI AND :DATAFIN'
      '              AND e.cod_emitente  = :codemp'
      '              and IE.cod_emitente = :CODEMP'
      '              and p.idemitente    = :codemp )'
      'OR'
      ''
      'P.idproduto IN (SELECT inf.idproduto FROM notas_itens INF'
      
        '             INNER JOIN notas_cab NF ON (INF.id = NF.id and inf.' +
        'serie = nf.serie and'
      '             inf.modelo = nf.modelo)'
      
        '             WHERE NF.dtemissao BETWEEN :DATAINI AND :DATAFIN AN' +
        'D NF.status_nota = '#39'A'#39
      '             AND NF.cod_emitente  = :CODEMP'
      '             and p.idemitente     = :codemp'
      '             AND NF.modelo IN ('#39'01'#39', '#39'02'#39', '#39'06'#39', '#39'21'#39', '#39'22'#39' ))')
    Left = 43
    Top = 224
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIN'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
    object qProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object qProdutosUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      FixedChar = True
      Size = 2
    end
  end
  object QMedidas: TFDQuery
    Connection = UniMainModule.Banco
    Transaction = TRFiscal
    SQL.Strings = (
      'SELECT P.un'
      'FROM produtos P'
      ''
      'WHERE  P.idproduto IN (SELECT IE.cod_prod'
      '              FROM entrada_cor IE'
      '              INNER JOIN entrada_cab E'
      
        '              ON (IE.cod_entrada = E.id and ie.serie = e.serie a' +
        'nd ie.modelo = e.modelo)'
      '              WHERE E.dtentrada BETWEEN :DATAINI AND :DATAFIN'
      '              and p.idemitente    = :codemp'
      '              AND IE.cod_emitente = :CODEMP)'
      'OR'
      ''
      'P.idproduto IN (SELECT inf.idproduto'
      '             FROM notas_itens INF'
      
        '             INNER JOIN notas_cab NF ON (INF.id = NF.id and inf.' +
        'serie = nf.serie and'
      '             inf.modelo = nf.modelo)'
      
        '             WHERE NF.dtemissao BETWEEN :DATAINI AND :DATAFIN AN' +
        'D NF.status_nota = '#39'A'#39
      '             AND NF.cod_emitente = :CODEMP'
      '             and p.idemitente    = :codemp'
      '             AND NF.modelo IN ('#39'01'#39', '#39'02'#39', '#39'06'#39', '#39'21'#39', '#39'22'#39' ))'
      ''
      'group by P.un')
    Left = 45
    Top = 173
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIN'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMedidasUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      FixedChar = True
      Size = 2
    end
  end
end
