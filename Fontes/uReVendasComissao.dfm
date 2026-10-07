object reVendasComissao: TreVendasComissao
  Left = 0
  Top = 0
  ClientHeight = 256
  ClientWidth = 532
  Caption = 'Relat'#243'rio de Comiss'#227'o'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniRadioGroup4: TUniRadioGroup
    Left = 8
    Top = 8
    Width = 513
    Height = 88
    Hint = ''
    Caption = 'Vendedor'
    TabOrder = 0
  end
  object UniLabel1: TUniLabel
    Left = 17
    Top = 26
    Width = 103
    Height = 13
    Hint = ''
    Caption = 'Selecione o Vendedor'
    TabOrder = 1
  end
  object eVendedor: TUniDBLookupComboBox
    Left = 17
    Top = 45
    Width = 430
    Hint = ''
    ListField = 'NOME'
    ListSource = dsVendedores
    KeyField = 'ID'
    ListFieldIndex = 0
    TabOrder = 2
    Color = clWindow
  end
  object cVendedor: TUniCheckBox
    Left = 455
    Top = 47
    Width = 59
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Geral'
    TabOrder = 3
  end
  object UniRadioGroup3: TUniRadioGroup
    Left = 8
    Top = 102
    Width = 513
    Height = 82
    Hint = ''
    Caption = 'Filtrar por Periodo'
    TabOrder = 4
  end
  object UniLabel3: TUniLabel
    Left = 31
    Top = 132
    Width = 53
    Height = 13
    Hint = ''
    Caption = 'Data Inicial'
    TabOrder = 5
  end
  object UniLabel4: TUniLabel
    Left = 318
    Top = 132
    Width = 48
    Height = 13
    Hint = ''
    Caption = 'Data Final'
    TabOrder = 6
  end
  object eInicio: TUniDateTimePicker
    AlignWithMargins = True
    Left = 90
    Top = 132
    Width = 142
    Hint = ''
    DateTime = 43248.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 7
  end
  object eFinal: TUniDateTimePicker
    AlignWithMargins = True
    Left = 372
    Top = 132
    Width = 142
    Hint = ''
    DateTime = 43248.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 8
  end
  object UniButton1: TUniButton
    Left = 113
    Top = 190
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Visualizar'
    TabOrder = 9
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 272
    Top = 190
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 10
    OnClick = UniButton2Click
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
      'procedure valorComissaoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                             '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 649
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
        Name = 'Periodo'
        Value = ''
      end
      item
        Name = 'valorComissao'
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
            'RELAT'#211'RIO DE COMISS'#195'O DE VENDEDORES')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
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
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Periodo: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 45.354360000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Periodo]')
        end
        object Cliente: TfrxMemoView
          AllowVectorExport = True
          Left = 80.031540000000010000
          Top = 68.031540000000010000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Cliente]')
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
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
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
          Left = 147.401670000000000000
          Width = 272.126160000000000000
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
          Left = 425.086890000000000000
          Width = 86.929190000000000000
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
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 608.961040000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Comiss'#227'o')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 518.354670000000100000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '% Comiss'#227'o')
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
          Top = 1.000000000000000000
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
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 1.000000000000000000
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
          Left = 139.622140000000000000
          Top = 1.000000000000000000
          Width = 279.685220000000000000
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
          Left = 423.866420000000000000
          Top = 1.000000000000000000
          Width = 90.708720000000000000
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
          HAlign = haRight
          Memo.UTF8W = (
            '[Visualizar."TOTAL_NOTA"]')
          ParentFont = False
        end
        object VisualizarVALORCOMISSAO: TfrxMemoView
          AllowVectorExport = True
          Left = 610.622450000000000000
          Top = 2.779529999999994000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxDB
          DataSetName = 'Visualizar'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Visualizar."VALORCOMISSAO"]')
          ParentFont = False
        end
        object VisualizarCOMISSAO: TfrxMemoView
          AllowVectorExport = True
          Left = 521.134199999999900000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Visualizar."COMISSAO"]')
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
          Width = 102.047310000000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 0.779530000000022500
          Width = 102.047310000000000000
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
            '[SUM(<Visualizar."VALORCOMISSAO">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDB: TfrxDBDataset
    UserName = 'Visualizar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME=NOME'
      'COMISSAO=COMISSAO'
      'ID=ID'
      'DTEMISSAO=DTEMISSAO'
      'CPF_CONSUMIDOR=CPF_CONSUMIDOR'
      'NOME_CONSUMIDOR=NOME_CONSUMIDOR'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'VALOR_ACRESCIMO=VALOR_ACRESCIMO'
      'TOTAL_PRODUTOS=TOTAL_PRODUTOS'
      'TOTAL_NOTA=TOTAL_NOTA'
      'QUANT=QUANT'
      'NUMERO=NUMERO'
      'VALORCOMISSAO=VALORCOMISSAO')
    DataSource = dsVisualizar
    BCDToCurrency = False
    Left = 561
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
    Left = 601
    Top = 64
  end
  object dsVisualizar: TDataSource
    DataSet = qNotasCab
    Left = 649
    Top = 8
  end
  object qNotasCab: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    SQL.Strings = (
      'select'
      
        '((vendedores.comissao * NOTAS_CAB.TOTAL_NOTA) / 100) as valorCom' +
        'issao,'
      ' vendedores.nome, vendedores.comissao,'
      ' NOTAS_CAB.ID,NOTAS_CAB.DTEMISSAO,'
      ' NOTAS_CAB.CPF_CONSUMIDOR,'
      
        ' NOTAS_CAB.NOME_CONSUMIDOR,NOTAS_CAB.VALOR_DESCONTO,NOTAS_CAB.VA' +
        'LOR_ACRESCIMO,'
      
        ' NOTAS_CAB.TOTAL_PRODUTOS,NOTAS_CAB.TOTAL_NOTA,NOTAS_CAB.QUANT,N' +
        'OTAS_CAB.NUMERO'
      'from NOTAS_CAB'
      
        'LEFT OUTER JOIN vendedores ON (NOTAS_CAB.vendedor = vendedores.i' +
        'd AND NOTAS_CAB.COD_EMITENTE = vendedores.idemitente)'
      'WHERE 1=2')
    Left = 563
    Top = 8
    object qNotasCabNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object qNotasCabCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qNotasCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNotasCabDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
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
    object qNotasCabVALORCOMISSAO: TFMTBCDField
      FieldName = 'VALORCOMISSAO'
      Origin = 'VALORCOMISSAO'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object qVendedor: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    Transaction = tVendedores
    SQL.Strings = (
      'select codigo, id, nome from VENDEDORES where 1=2 ')
    Left = 560
    Top = 136
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
    Left = 561
    Top = 185
  end
  object tVendedores: TFDTransaction
    Connection = UniMainModule.Banco
    Left = 560
    Top = 248
  end
end
