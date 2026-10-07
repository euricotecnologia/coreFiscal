object ReApagar: TReApagar
  Left = 0
  Top = 0
  ClientHeight = 351
  ClientWidth = 559
  Caption = 'Relat'#243'rio de Contas a Pagar'
  Color = clWhite
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'config.style = '#39'border: 0px; padding: 0px; border-radius: 0px'#39';' +
      #13#10'config.shadow = false;'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object UniRadioGroup3: TUniRadioGroup
    Left = 12
    Top = 141
    Width = 513
    Height = 57
    Hint = ''
    Caption = 'Data de Emiss'#227'o'
    TabOrder = 0
  end
  object UniLabel3: TUniLabel
    Left = 25
    Top = 164
    Width = 53
    Height = 13
    Hint = ''
    Caption = 'Data Inicial'
    TabOrder = 1
  end
  object eInicio: TUniDateTimePicker
    AlignWithMargins = True
    Left = 84
    Top = 164
    Width = 142
    Hint = ''
    DateTime = 43248.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 2
  end
  object UniLabel4: TUniLabel
    Left = 256
    Top = 164
    Width = 48
    Height = 13
    Hint = ''
    Caption = 'Data Final'
    TabOrder = 3
  end
  object eFinal: TUniDateTimePicker
    AlignWithMargins = True
    Left = 310
    Top = 164
    Width = 142
    Hint = ''
    DateTime = 43248.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 4
  end
  object UniRadioGroup1: TUniRadioGroup
    Left = 12
    Top = 204
    Width = 513
    Height = 57
    Hint = ''
    Caption = 'Data de Vencimento'
    TabOrder = 5
  end
  object UniLabel1: TUniLabel
    Left = 25
    Top = 227
    Width = 53
    Height = 13
    Hint = ''
    Caption = 'Data Inicial'
    TabOrder = 6
  end
  object eInicio2: TUniDateTimePicker
    AlignWithMargins = True
    Left = 84
    Top = 227
    Width = 142
    Hint = ''
    DateTime = 43248.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 7
  end
  object UniLabel2: TUniLabel
    Left = 256
    Top = 227
    Width = 48
    Height = 13
    Hint = ''
    Caption = 'Data Final'
    TabOrder = 8
  end
  object eFinal2: TUniDateTimePicker
    AlignWithMargins = True
    Left = 310
    Top = 227
    Width = 142
    Hint = ''
    DateTime = 43248.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 9
  end
  object cEmissao: TUniCheckBox
    Left = 470
    Top = 164
    Width = 43
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Geral'
    TabOrder = 10
  end
  object cVencimento: TUniCheckBox
    Left = 470
    Top = 227
    Width = 43
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Geral'
    TabOrder = 11
  end
  object UniRadioGroup4: TUniRadioGroup
    Left = 16
    Top = 59
    Width = 513
    Height = 73
    Hint = ''
    Caption = 'Fornecedor'
    TabOrder = 12
  end
  object UniLabel5: TUniLabel
    Left = 25
    Top = 77
    Width = 159
    Height = 13
    Hint = ''
    Caption = 'Selecione o Fornecedor desejado'
    TabOrder = 13
  end
  object eCliente: TUniDBLookupComboBox
    Left = 25
    Top = 96
    Width = 430
    Hint = ''
    ListField = 'RAZAOSOCIAL'
    ListSource = dsClientes
    KeyField = 'IDCLIENTE'
    ListFieldIndex = 0
    DataSource = dsClientes
    TabOrder = 14
    Color = clWindow
  end
  object cCliente: TUniCheckBox
    Left = 470
    Top = 96
    Width = 55
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Geral'
    TabOrder = 15
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 559
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 16
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    LayoutConfig.Width = '100'
    object UniLabel15: TUniLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 225
      Height = 19
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Alignment = taCenter
      Caption = 'Consulta de Contas a Pagar'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object UniButton2: TUniButton
    Left = 120
    Top = 279
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Visualizar'
    TabOrder = 17
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 279
    Top = 279
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 18
    OnClick = UniButton3Click
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
    Left = 579
    Top = 64
  end
  object frxAgrupado: TfrxReport
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
      'procedure forma2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '               '
      'end;'
      ''
      'begin'
      '  '
      'end.          ')
    Left = 445
    Top = 286
    Datasets = <
      item
        DataSet = frxDB
        DataSetName = 'ContasPagar'
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
        Name = 'PeriodoEmissao'
        Value = ''
      end
      item
        Name = 'PeriodoVencimento'
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
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = -14.338590000000000000
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
            'RELAT'#211'RIO DE CONTAS A PAGAR')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 45.354360000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Periodo Emiss'#227'o:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 67.811070000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 68.031540000000010000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Periodo Vencimento:')
          ParentFont = False
        end
        object PeriodoEmissao: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 45.354360000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[PeriodoEmissao]')
        end
        object PeriodoVencimento: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 68.031540000000010000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[PeriodoVencimento]')
        end
        object Cliente: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 68.031540000000010000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Cliente]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDB
        DataSetName = 'ContasPagar'
        RowCount = 0
        object ContasReceberFATURA: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContasPagar."FATURA"]')
        end
        object ContasReceberREFPEDIDO: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContasPagar."REFPEDIDO"]')
        end
        object ContasReceberDATA: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContasPagar."DATA"]')
        end
        object ContasReceberDATAVCTO: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContasPagar."DATAVCTO"]')
        end
        object ContasReceberVALOR: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 2.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContasPagar."VALOR"]')
        end
        object ContasReceberSALDO: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 2.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContasPagar."SALDO"]')
        end
        object ContasReceberOBS: TfrxMemoView
          AllowVectorExport = True
          Left = 528.134199999999900000
          Top = 1.779529999999994000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContasPagar."OBS"]')
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
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 1.000000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Geral')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<ContasPagar."SALDO">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<ContasPagar."VALOR">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        Condition = 'ContasPagar."RAZAOSOCIAL"'
        object ContasReceberRAZAOSOCIAL: TfrxMemoView
          AllowVectorExport = True
          Left = 51.692950000000010000
          Top = 3.000000000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContasPagar."RAZAOSOCIAL"]')
        end
        object ContasReceberNOMEFANTASIA: TfrxMemoView
          AllowVectorExport = True
          Left = 335.598640000000000000
          Top = 3.000000000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContasPagar."NOMEFANTASIA"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677179999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 22.677179999999990000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Compra')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 22.677179999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 255.787570000000000000
          Top = 22.677179999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 22.677179999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 22.677179999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 22.677179999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Obs')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.779529999999994000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 2.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fantasia')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 1.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Totais')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
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
          Memo.UTF8W = (
            '[SUM(<ContasPagar."SALDO">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
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
          Memo.UTF8W = (
            '[SUM(<ContasPagar."VALOR">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dsPagarCab: TDataSource
    DataSet = UniMainModule.qPagarCab
    Left = 578
    Top = 176
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.qClientes
    Left = 504
    Top = 286
  end
  object frxDB: TfrxDBDataset
    UserName = 'ContasPagar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'IDEMITENTE=IDEMITENTE'
      'CODIGO=CODIGO'
      'FATURA=FATURA'
      'REFPEDIDO=REFPEDIDO'
      'DATA=DATA'
      'DATAVCTO=DATAVCTO'
      'VALOR=VALOR'
      'SALDO=SALDO'
      'OBS=OBS'
      'TIPODOCUMENTO=TIPODOCUMENTO'
      'PARCELA=PARCELA'
      'JUROS=JUROS'
      'DESCONTO=DESCONTO'
      'USUARIO=USUARIO'
      'FORNECEDOR=FORNECEDOR'
      'NOMEFANTASIA=NOMEFANTASIA'
      'RAZAOSOCIAL=RAZAOSOCIAL')
    DataSource = dsPagarCab
    BCDToCurrency = False
    Left = 575
    Top = 120
  end
end
