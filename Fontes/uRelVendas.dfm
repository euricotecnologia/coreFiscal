object RelVendas: TRelVendas
  Left = 0
  Top = 0
  ClientHeight = 547
  ClientWidth = 530
  Caption = 'Relat'#243'rio de Vendas'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object rCLiente: TUniRadioGroup
    Left = 8
    Top = 82
    Width = 513
    Height = 59
    Hint = ''
    Caption = 'Filtrar por Cliente'
    TabOrder = 0
  end
  object UniRadioGroup2: TUniRadioGroup
    Left = 8
    Top = 144
    Width = 513
    Height = 64
    Hint = ''
    Caption = 'Filtrar por Forma de Pagamento'
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 17
    Top = 162
    Width = 75
    Height = 13
    Hint = ''
    Caption = 'Nome do Forma'
    TabOrder = 2
  end
  object UniRadioGroup3: TUniRadioGroup
    Left = 8
    Top = 263
    Width = 513
    Height = 57
    Hint = ''
    Caption = 'Filtrar por Periodo'
    TabOrder = 3
  end
  object UniLabel3: TUniLabel
    Left = 24
    Top = 284
    Width = 53
    Height = 13
    Hint = ''
    Caption = 'Data Inicial'
    TabOrder = 4
  end
  object UniLabel4: TUniLabel
    Left = 311
    Top = 284
    Width = 48
    Height = 13
    Hint = ''
    Caption = 'Data Final'
    TabOrder = 5
  end
  object UniRadioGroup1: TUniRadioGroup
    Left = 8
    Top = 3
    Width = 513
    Height = 73
    Hint = ''
    Caption = 'Tipo de Venda'
    TabOrder = 6
  end
  object UniLabel5: TUniLabel
    Left = 17
    Top = 20
    Width = 61
    Height = 13
    Hint = ''
    Caption = 'Nfe ou NFCe'
    TabOrder = 7
  end
  object rTipo: TUniComboBox
    Left = 17
    Top = 39
    Width = 494
    Hint = ''
    Text = 'rTipo'
    Items.Strings = (
      'Nfe'
      'NFce'
      'Todas')
    ItemIndex = 2
    TabOrder = 8
    IconItems = <>
  end
  object rFantasia: TUniRadioButton
    Left = 258
    Top = 90
    Width = 91
    Height = 17
    Hint = ''
    Caption = 'Nome Fantasia'
    TabOrder = 9
  end
  object rRazao: TUniRadioButton
    Left = 365
    Top = 90
    Width = 82
    Height = 17
    Hint = ''
    Caption = 'Raz'#227'o Social'
    TabOrder = 10
  end
  object rGeral: TUniRadioButton
    Left = 463
    Top = 90
    Width = 48
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Geral'
    TabOrder = 11
  end
  object eCliente: TUniEdit
    AlignWithMargins = True
    Left = 14
    Top = 110
    Width = 502
    Hint = 'Pesquisar por Cliente'
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 12
  end
  object UniGroupBox2: TUniGroupBox
    Left = 8
    Top = 208
    Width = 249
    Height = 54
    Hint = ''
    Caption = 'Status da Venda'
    TabOrder = 13
    object cbFiltro: TUniComboBox
      AlignWithMargins = True
      Left = 8
      Top = 23
      Width = 232
      Hint = ''
      Text = ''
      Items.Strings = (
        'Todas'
        'Validadas'
        'Autorizadas'
        'Rejeitadas'
        'Canceladas'
        'Pendentes')
      ItemIndex = 2
      TabOrder = 1
      EmptyText = 'Filtro'
      IconItems = <>
    end
  end
  object eForma: TUniComboBox
    Left = 17
    Top = 180
    Width = 497
    Hint = ''
    Text = 'eForma'
    Items.Strings = (
      'Avista'
      'Cheque'
      'Cart'#227'o de Cr'#233'dito'
      'Cart'#227'o de D'#233'bito'
      'Prazo'
      'Todas')
    TabOrder = 14
    IconItems = <>
  end
  object eInicio: TUniDateTimePicker
    AlignWithMargins = True
    Left = 83
    Top = 284
    Width = 142
    Hint = ''
    DateTime = 43248.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 15
  end
  object eFinal: TUniDateTimePicker
    AlignWithMargins = True
    Left = 365
    Top = 284
    Width = 142
    Hint = ''
    DateTime = 43248.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 16
  end
  object rEmissao: TUniRadioGroup
    Left = 264
    Top = 208
    Width = 257
    Height = 51
    Hint = ''
    Items.Strings = (
      'Normal'
      'Conting'#234'ncia')
    ItemIndex = 0
    Caption = 'Forma de Emiss'#227'o'
    TabOrder = 17
    Columns = 2
  end
  object rImpressao: TUniRadioGroup
    Left = 8
    Top = 400
    Width = 249
    Height = 80
    Hint = ''
    Items.Strings = (
      'Detalhado'
      'Agrupado por forma de pagamento')
    ItemIndex = 0
    Caption = 'Froma de imprss'#227'o'
    TabOrder = 18
    OnClick = rImpressaoClick
  end
  object UniRadioGroup4: TUniRadioGroup
    Left = 8
    Top = 320
    Width = 513
    Height = 73
    Hint = ''
    Caption = 'Vendedor'
    TabOrder = 19
  end
  object UniLabel1: TUniLabel
    Left = 17
    Top = 338
    Width = 103
    Height = 13
    Hint = ''
    Caption = 'Selecione o Vendedor'
    TabOrder = 20
  end
  object eVendedor: TUniDBLookupComboBox
    Left = 17
    Top = 357
    Width = 430
    Hint = ''
    ListField = 'NOME'
    ListSource = dsVendedores
    KeyField = 'ID'
    ListFieldIndex = 0
    TabOrder = 21
    Color = clWindow
  end
  object cVendedor: TUniCheckBox
    Left = 455
    Top = 359
    Width = 59
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Geral'
    TabOrder = 22
  end
  object rModelo: TUniRadioGroup
    Left = 264
    Top = 402
    Width = 257
    Height = 78
    Hint = ''
    Visible = False
    Items.Strings = (
      'Impress'#227'o A4'
      'Impress'#227'o termica')
    ItemIndex = 0
    Caption = 'Modelo de Impress'#227'o'
    TabOrder = 23
  end
  object UniButton1: TUniButton
    Left = 808
    Top = 455
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Teste'
    TabOrder = 24
    OnClick = UniButton1Click
  end
  object UniMemo1: TUniMemo
    Left = 784
    Top = 396
    Width = 129
    Height = 53
    Hint = ''
    Lines.Strings = (
      '****************************************'
      ' ********* DEMONSTRACAO  PAYGO *********'
      ' ****************************************'
      '     '
      '            COMPROVANTE DE TEF'
      '           VIA: ESTABELECIMENTO'
      '     '
      '         ESTABELECIMENTO DE TESTE'
      '     823982346832235/03876463'
      '     '
      '     14/06/2018              23:22:46'
      '     REF.FISCAL:21'
      '     DOC:014017        AUTORIZ:021183'
      '     REF.HOST:23224619946'
      '     '
      '     DEMOCARD        ************2866'
      '     VENDA CREDITO A VISTA'
      '     VALOR FINAL: R$ 21,00'
      '     '
      '      TRANSACAO AUTORIZADA MEDIANTE'
      '          USO DA SENHA PESSOAL.'
      '     '
      '     ARQC: '
      '     '
      ' ****************************************'
      ' ********* DEMONSTRACAO  PAYGO *********'
      ' ****************************************'
      '****************************************'
      ' ********* DEMONSTRACAO  PAYGO *********'
      ' ****************************************'
      '     '
      '            COMPROVANTE DE TEF'
      '               VIA: CLIENTE'
      '     '
      '         ESTABELECIMENTO DE TESTE'
      '     823982346832235/03876463'
      '     '
      '     14/06/2018              23:22:46'
      '     REF.FISCAL:21'
      '     DOC:014017        AUTORIZ:021183'
      '     REF.HOST:23224619946'
      '     '
      '     DEMOCARD        ************2866'
      '     VENDA CREDITO A VISTA'
      '     VALOR FINAL: R$ 21,00'
      '     '
      '     ARQC: '
      '     '
      ' ****************************************'
      ' ********* DEMONSTRACAO  PAYGO *********'
      ' ****************************************')
    TabOrder = 25
  end
  object UniButton2: TUniButton
    Left = 105
    Top = 486
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Visualizar'
    TabOrder = 26
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 264
    Top = 486
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 27
    OnClick = UniButton3Click
  end
  object frxVisualizar: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42749.812137673600000000
    ReportOptions.LastChange = 42749.816015740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 921
    Top = 64
    Datasets = <
      item
        DataSet = frxDB
        DataSetName = 'Visualizar'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Cliente'
        Value = ''
      end
      item
        Name = 'Periodo'
        Value = ''
      end
      item
        Name = 'tipo'
        Value = ''
      end
      item
        Name = 'forma'
        Value = ''
      end
      item
        Name = 'forma2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 90.708720000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 9.456710000000001000
          Width = 555.590910000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE MOVIMENTO DE VENDAS')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Periodo:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 68.031540000000010000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 68.031540000000010000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma Pgto:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
        end
        object Periodo: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 45.354360000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Periodo]')
        end
        object Cliente: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 68.031540000000010000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Cliente]')
        end
        object tipo: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 45.354360000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[tipo]')
        end
        object forma: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 68.031540000000010000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[forma]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NF.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDB
        DataSetName = 'Visualizar'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."ID"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 49.354360000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'MODELO'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."MODELO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'DTEMISSAO'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."DTEMISSAO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CONSUMIDOR'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."NOME_CONSUMIDOR"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 2.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_NOTA'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."TOTAL_NOTA"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Vendas:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Vendas:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Visualizar."TOTAL_NOTA">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDB: TfrxDBDataset
    UserName = 'Visualizar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'SERIE=SERIE'
      'MODELO=MODELO'
      'COD_EMITENTE=COD_EMITENTE'
      'NATUREZA_OPER=NATUREZA_OPER'
      'CRT=CRT'
      'ALIQ_SIMPLES=ALIQ_SIMPLES'
      'TIPONOTA=TIPONOTA'
      'DTEMISSAO=DTEMISSAO'
      'DTSAIDA=DTSAIDA'
      'IDCLIENTE=IDCLIENTE'
      'CPF_CONSUMIDOR=CPF_CONSUMIDOR'
      'NOME_CONSUMIDOR=NOME_CONSUMIDOR'
      'IDTRANSP=IDTRANSP'
      'TIPOFRETE=TIPOFRETE'
      'PLACAVEICULO=PLACAVEICULO'
      'UFVEICULO=UFVEICULO'
      'COD_ANTT=COD_ANTT'
      'BASE_ICMS=BASE_ICMS'
      'VALOR_ICMS=VALOR_ICMS'
      'BASE_ICMS_ST=BASE_ICMS_ST'
      'VALOR_ICMS_ST=VALOR_ICMS_ST'
      'VALOR_FRETE=VALOR_FRETE'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'VALOR_ACRESCIMO=VALOR_ACRESCIMO'
      'VALOR_SEGURO=VALOR_SEGURO'
      'VALOR_OUTRAS_DESP=VALOR_OUTRAS_DESP'
      'VALOR_IPI=VALOR_IPI'
      'BASE_IPI=BASE_IPI'
      'TOTAL_PRODUTOS=TOTAL_PRODUTOS'
      'TOTAL_NOTA=TOTAL_NOTA'
      'QUANT=QUANT'
      'ESPECIE=ESPECIE'
      'MARCA=MARCA'
      'NUMERO=NUMERO'
      'PESOBRUTO=PESOBRUTO'
      'PESOLIQUIDO=PESOLIQUIDO'
      'STATUS_NOTA=STATUS_NOTA'
      'DADOS_ADICIONAIS=DADOS_ADICIONAIS'
      'FORMA_PGTO=FORMA_PGTO'
      'XML_NOTA=XML_NOTA'
      'CSTAT=CSTAT'
      'XSTAT=XSTAT'
      'AMBIENTE=AMBIENTE'
      'TIPOEMISSAO=TIPOEMISSAO'
      'PROTOCOLO=PROTOCOLO'
      'DATA_HORARECIBO=DATA_HORARECIBO'
      'CHAVE_ACESSO=CHAVE_ACESSO'
      'FINALIDADE=FINALIDADE'
      'XML_ORIGINAL=XML_ORIGINAL'
      'CHAVE_ACESSO_ORIGINAL=CHAVE_ACESSO_ORIGINAL'
      'NOMEFANTASIA=NOMEFANTASIA'
      'CPF_CNPJ=CPF_CNPJ'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FONE=FONE'
      'ENDERECO=ENDERECO'
      'UF=UF'
      'CEP=CEP'
      'DATA_CANCELA=DATA_CANCELA'
      'PROTOCOLO_CANC=PROTOCOLO_CANC'
      'DATA_INUTILIZA=DATA_INUTILIZA'
      'PROTOCOLO_INUTILIZA=PROTOCOLO_INUTILIZA')
    DataSource = dsVisualizar
    BCDToCurrency = False
    Left = 833
    Top = 64
  end
  object frxPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
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
    Left = 873
    Top = 64
  end
  object dsVisualizar: TDataSource
    DataSet = qNotasCab
    Left = 913
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42749.812137673600000000
    ReportOptions.LastChange = 42749.816015740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 913
    Top = 232
    Datasets = <
      item
        DataSet = frxDB
        DataSetName = 'Visualizar'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Cliente'
        Value = ''
      end
      item
        Name = 'Periodo'
        Value = ''
      end
      item
        Name = 'Atendente'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 90.708720000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 9.456710000000001000
          Width = 555.590910000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ATENDIMENTOS GERAL')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Periodo:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 68.031540000000010000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Cliente: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000010000
          Top = 68.031540000000010000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Cliente]')
        end
        object Periodo: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000010000
          Top = 45.354360000000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Periodo]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 68.031540000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Atendente:')
          ParentFont = False
        end
        object Atendente: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 68.031540000000010000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Atendente]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDB
        DataSetName = 'Visualizar'
        RowCount = 0
        Stretched = True
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'NCLIENTE'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."NCLIENTE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 190.976500000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'DESCRICAO'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."DESCRICAO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 417.748300000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'SOLICITANTE'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."SOLICITANTE"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 563.913730000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."DATA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 638.961040000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DATAENTREGA'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."DATAENTREGA"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        Condition = 'Visualizar."NRESPONSAVEL"'
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Responsavel:')
          ParentFont = False
        end
        object CompradorTermoNOMEFANTASIA: TfrxMemoView
          AllowVectorExport = True
          Left = 104.826840000000000000
          Top = 3.559059999999988000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataField = 'NRESPONSAVEL'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."NRESPONSAVEL"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456709999999990000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 26.456709999999990000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 26.456709999999990000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Solicitante')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 564.913730000000000000
          Top = 26.456709999999990000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 630.063390000000000000
          Top = 26.456709999999990000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Entrega')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 45.181199999999990000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Atendimentos:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
      end
    end
  end
  object qVendaAgrupada: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    Transaction = tQVendaAgrupada
    SQL.Strings = (
      'select nf.tipo_fatura, sum(nf.valor) from notas_formas nf'
      ''
      'join notas_cab nc on (nc.id = nf.id and nc.serie = nc.serie'
      'and nf.modelo = nc.modelo and nf.cod_emitente = nc.cod_emitente)'
      ''
      
        'LEFT OUTER JOIN CLIENTES C ON (nc.idcliente = C.IDCLIENTE AND NC' +
        '.cod_emitente = C.IDEMITENTE)'
      ''
      
        'where nf.cod_emitente = :emi and nf.emissao between :ini and :fi' +
        'm'
      'group by nf.tipo_fatura')
    Left = 728
    Top = 232
    ParamData = <
      item
        Name = 'EMI'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'INI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'FIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qVendaAgrupadaTIPO_FATURA: TStringField
      FieldName = 'TIPO_FATURA'
      Origin = 'TIPO_FATURA'
      Size = 2
    end
    object qVendaAgrupadaSUM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
  end
  object tQVendaAgrupada: TFDTransaction
    Connection = UniMainModule.Banco
    Left = 728
    Top = 280
  end
  object dsVendaAgrupada: TDataSource
    DataSet = qVendaAgrupada
    Left = 801
    Top = 232
  end
  object frxAgrupado: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42749.812137673600000000
    ReportOptions.LastChange = 42749.816015740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure forma2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '         if <Agrupado."TIPO_FATURA"> = 1 then'
      '          forma2.memo.text := '#39'DINHEIRO'#39
      '       else if <Agrupado."TIPO_FATURA"> = 2 then'
      '          forma2.memo.text := '#39'CHEQUE'#39
      '       else if <Agrupado."TIPO_FATURA"> = 3 then'
      '          forma2.memo.text := '#39'CART'#195'O CR'#201'DITO'#39
      '       else if <Agrupado."TIPO_FATURA"> = 4 then'
      '          forma2.memo.text := '#39'CART'#195'O D'#201'BITO'#39
      '       else if <Agrupado."TIPO_FATURA"> = 5 then'
      '          forma2.memo.text := '#39'PRAZO'#39
      '       else'
      '          forma2.memo.text := '#39'OUTROS'#39'  '
      'end;'
      ''
      'begin'
      ''
      'end.          ')
    Left = 801
    Top = 176
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'Agrupado'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Cliente'
        Value = Null
      end
      item
        Name = 'Periodo'
        Value = Null
      end
      item
        Name = 'tipo'
        Value = Null
      end
      item
        Name = 'forma'
        Value = Null
      end
      item
        Name = 'forma2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = -6.779530000000000000
          Width = 718.110700000000000000
          Height = 90.708720000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 9.456710000000001000
          Width = 653.858690000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE MOVIMENTO DE VENDAS AGRUPADO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Periodo:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 68.031540000000010000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 68.031540000000010000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma Pgto:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
        end
        object Periodo: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 45.354360000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Periodo]')
        end
        object Cliente: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 68.031540000000010000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Cliente]')
        end
        object tipo: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 45.354360000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[tipo]')
        end
        object forma: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 68.031540000000010000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[forma]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'Agrupado'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'TIPO_FATURA'
          DataSet = frxDBDataset1
          DataSetName = 'Agrupado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Agrupado."TIPO_FATURA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'Agrupado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Agrupado."SUM"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Vendas:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Vendas:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Agrupado."SUM">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Agrupado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TIPO_FATURA=TIPO_FATURA'
      'SUM=SUM')
    DataSource = dsVendaAgrupada
    BCDToCurrency = False
    Left = 729
    Top = 176
  end
  object qNotasCab: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    SQL.Strings = (
      
        'select CLIENTES.NOMEFANTASIA,CLIENTES.CPF_CNPJ,CLIENTES.RAZAOSOC' +
        'IAL,'
      
        ' NOTAS_CAB.ID,NOTAS_CAB.SERIE,NOTAS_CAB.MODELO,NOTAS_CAB.DTEMISS' +
        'AO,'
      ' NOTAS_CAB.DTSAIDA,NOTAS_CAB.IDCLIENTE,NOTAS_CAB.CPF_CONSUMIDOR,'
      
        ' NOTAS_CAB.NOME_CONSUMIDOR,NOTAS_CAB.VALOR_DESCONTO,NOTAS_CAB.VA' +
        'LOR_ACRESCIMO,'
      
        ' NOTAS_CAB.TOTAL_PRODUTOS,NOTAS_CAB.TOTAL_NOTA,NOTAS_CAB.QUANT,N' +
        'OTAS_CAB.NUMERO,'
      
        ' NOTAS_CAB.PESOBRUTO,NOTAS_CAB.STATUS_NOTA,NOTAS_CAB.FORMA_PGTO,' +
        'NOTAS_CAB.DATA_CANCELA'
      'from NOTAS_CAB'
      
        'LEFT OUTER JOIN CLIENTES ON (NOTAS_CAB.IDCLIENTE=CLIENTES.IDCLIE' +
        'NTE AND NOTAS_CAB.COD_EMITENTE=CLIENTES.IDEMITENTE)'
      'WHERE 1=2')
    Left = 843
    Top = 8
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
    object qNotasCabVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      currency = True
      Precision = 18
    end
    object qNotasCabVALOR_ACRESCIMO: TBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 18
    end
    object qNotasCabTOTAL_PRODUTOS: TBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Origin = 'TOTAL_PRODUTOS'
      currency = True
      Precision = 18
    end
    object qNotasCabTOTAL_NOTA: TBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      currency = True
      Precision = 18
    end
    object qNotasCabQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
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
    object qNotasCabSTATUS_NOTA: TStringField
      FieldName = 'STATUS_NOTA'
      Origin = 'STATUS_NOTA'
      Size = 1
    end
    object qNotasCabFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      Origin = 'FORMA_PGTO'
    end
    object qNotasCabDATA_CANCELA: TSQLTimeStampField
      FieldName = 'DATA_CANCELA'
      Origin = 'DATA_CANCELA'
    end
  end
  object qVendedor: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    Transaction = tVendedores
    SQL.Strings = (
      'select codigo, id, nome from VENDEDORES where 1=2 ')
    Left = 720
    Top = 8
    object qVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qVendedorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
  object dsVendedores: TDataSource
    DataSet = qVendedor
    Left = 721
    Top = 57
  end
  object tVendedores: TFDTransaction
    Connection = UniMainModule.Banco
    Left = 720
    Top = 104
  end
  object Agrupado2: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 42573.457939479200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure forma2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '         if <Agrupado."TIPO_FATURA"> = 1 then'
      '          forma2.memo.text := '#39'DINHEIRO'#39
      '       else if <Agrupado."TIPO_FATURA"> = 2 then'
      '          forma2.memo.text := '#39'CHEQUE'#39
      '       else if <Agrupado."TIPO_FATURA"> = 3 then'
      '          forma2.memo.text := '#39'CART'#195'O CR'#201'DITO'#39
      '       else if <Agrupado."TIPO_FATURA"> = 4 then'
      '          forma2.memo.text := '#39'CART'#195'O D'#201'BITO'#39
      '       else if <Agrupado."TIPO_FATURA"> = 5 then'
      '          forma2.memo.text := '#39'PRAZO'#39
      '       else'
      '          forma2.memo.text := '#39'OUTROS'#39'  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 865
    Top = 176
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'Agrupado'
      end>
    Variables = <
      item
        Name = ' User'
        Value = Null
      end
      item
        Name = 'LinhasImpressas'
        Value = Null
      end
      item
        Name = 'Cliente'
        Value = ''
      end
      item
        Name = 'Periodo'
        Value = ''
      end
      item
        Name = 'tipo'
        Value = ''
      end
      item
        Name = 'forma'
        Value = ''
      end
      item
        Name = 'forma2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 72.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      TopMargin = 0.500000000000000000
      Frame.Typ = []
      EndlessHeight = True
      MirrorMode = []
      PrintIfEmpty = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object DadosProdutos: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897642680000000000
        Top = 200.315090000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'DadosProdutosOnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'Agrupado'
        RowCount = 0
        Stretched = True
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 176.637870940000000000
          Top = 2.000000000000000000
          Width = 86.929229060000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'Agrupado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Agrupado."SUM"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 3.779530000000000000
          Top = 1.779529999999994000
          Width = 34.015730940000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DataField = 'TIPO_FATURA'
          DataSet = frxDBDataset1
          DataSetName = 'Agrupado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Agrupado."TIPO_FATURA"]')
          ParentFont = False
          WordWrap = False
        end
        object forma2: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[forma2]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Top = 28.456710000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Periodo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Top = 3.000000000000000000
          Width = 272.126160000000000000
          Height = 20.787391810000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          LineSpacing = 4.000000000000000000
          Memo.UTF8W = (
            'RELAT'#211'RIO DE MOVIMENTO DE VENDAS AGRUPADO')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Periodo: TfrxMemoView
          AllowVectorExport = True
          Left = 52.692950000000000000
          Top = 28.236240000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Periodo]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Top = 49.133889999999990000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Cliente: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 49.133889999999990000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Cliente]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 272.126160000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Forma Pagamento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 185.196970000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 272.126160000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 131.063080000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Total:  [SUM(<Agrupado."SUM">,DadosProdutos)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxImpCartao: TfrxReport
    Version = '6.7.6'
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
    Left = 812
    Top = 349
    Datasets = <
      item
        DataSet = frxUserDataSet1
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[texto]')
          ParentFont = False
        end
      end
    end
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'StringDS2'
    Left = 872
    Top = 349
  end
end
