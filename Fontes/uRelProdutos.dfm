object relProdutos: TrelProdutos
  Left = 0
  Top = 0
  ClientHeight = 300
  ClientWidth = 521
  Caption = 'Relat'#243'rio de Produtos'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object rFiltro: TUniRadioGroup
    Left = 133
    Top = 10
    Width = 378
    Height = 33
    Hint = ''
    Items.Strings = (
      'C'#243'digo'
      'C'#243'digo Barras'
      'Descri'#231#227'o')
    ItemIndex = 0
    Caption = ''
    TabOrder = 0
    Columns = 3
  end
  object eCliePesq: TUniEdit
    Left = 5
    Top = 49
    Width = 505
    Height = 24
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 1
    EmptyText = 'Digite sua Pesquisa'
  end
  object UniLabel2: TUniLabel
    Left = 5
    Top = 22
    Width = 109
    Height = 13
    Hint = ''
    Caption = 'Pesquisa Avan'#231'ada'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 2
  end
  object rEstoque: TUniRadioGroup
    Left = 8
    Top = 79
    Width = 502
    Height = 67
    Hint = ''
    Items.Strings = (
      'Apenas estoque positivo'
      'todos')
    ItemIndex = 2
    Caption = 'Estoque'
    TabOrder = 3
    Columns = 2
  end
  object rOrdem: TUniRadioGroup
    Left = 8
    Top = 152
    Width = 502
    Height = 78
    Hint = ''
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    ItemIndex = 2
    Caption = 'Tipo de Ordena'#231#227'o'
    TabOrder = 4
    Columns = 2
  end
  object UniButton2: TUniButton
    Left = 110
    Top = 236
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Visualizar'
    TabOrder = 5
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 269
    Top = 236
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = UniButton3Click
  end
  object frxVisualizar: TfrxReport
    Version = '6.9.15'
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
    Left = 552
    Top = 16
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
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
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
            'RELAT'#211'RIO DE PRODUTOS CADASTRADOS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 21.677180000000000000
        Top = 177.637910000000000000
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
          DataField = 'CODIGO'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."CODIGO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 62.472480000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'EAN'
          DataSet = frxDB
          DataSetName = 'Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Visualizar."EAN"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 153.181200000000000000
          Width = 268.346630000000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 427.850650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDB
          DataSetName = 'Visualizar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Visualizar."ESTOQUE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 529.354670000000100000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDB
          DataSetName = 'Visualizar'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Visualizar."CUSTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDB
          DataSetName = 'Visualizar'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Visualizar."PRECO"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ean')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
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
          Left = 430.866420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000100000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 3.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Visualizar."ESTOQUE">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
            '[SUM(<Visualizar."ESTOQUE">*<Visualizar."CUSTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
            '[SUM(<Visualizar."ESTOQUE">*<Visualizar."PRECO">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDB: TfrxDBDataset
    UserName = 'Visualizar'
    CloseDataSource = False
    DataSet = qVisualizar
    BCDToCurrency = False
    Left = 616
    Top = 16
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
    Left = 616
    Top = 64
  end
  object qVisualizar: TFDQuery
    Connection = UniMainModule.Banco
    SQL.Strings = (
      'select estoque,CODIGO,EAN,DESCRICAO,NCM,CEST,CUSTO,PRECO,UN'
      'from PRODUTOS ')
    Left = 688
    Top = 16
    object qVisualizarESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object qVisualizarCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qVisualizarEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 14
    end
    object qVisualizarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object qVisualizarNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object qVisualizarCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object qVisualizarUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      FixedChar = True
      Size = 2
    end
    object qVisualizarCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qVisualizarPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dsVisualizar: TDataSource
    DataSet = qVisualizar
    Left = 688
    Top = 64
  end
end
