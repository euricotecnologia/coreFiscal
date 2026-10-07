object feRecibo: TfeRecibo
  Left = 0
  Top = 0
  ClientHeight = 339
  ClientWidth = 546
  Caption = 'Impress'#227'o de Recibos'
  Color = clWhite
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.style = '#39'border: 0px; padding: 0px; border-radius: 0px' +
      #39';'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 546
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 3
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    LayoutConfig.Width = '100'
    object UniLabel15: TUniLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 211
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Alignment = taCenter
      Caption = 'Impress'#227'o de Recibos'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object UniRadioGroup4: TUniRadioGroup
    Left = 12
    Top = 190
    Width = 513
    Height = 73
    Hint = ''
    Caption = 'Cliente'
    TabOrder = 4
  end
  object UniLabel5: TUniLabel
    Left = 21
    Top = 208
    Width = 137
    Height = 13
    Hint = ''
    Caption = 'Selecione o Cliente desejado'
    TabOrder = 5
  end
  object eCliente: TUniDBLookupComboBox
    Left = 21
    Top = 227
    Width = 492
    Hint = ''
    ListField = 'RAZAOSOCIAL'
    ListSource = dsClientes
    KeyField = 'IDCLIENTE'
    ListFieldIndex = 0
    TabOrder = 6
    Color = clWindow
    Style = csDropDown
  end
  object UniRadioGroup1: TUniRadioGroup
    Left = 12
    Top = 55
    Width = 513
    Height = 122
    Hint = ''
    Caption = 'Cliente'
    TabOrder = 7
  end
  object eNumero: TUniEdit
    Left = 25
    Top = 96
    Width = 121
    Hint = ''
    Text = ''
    TabOrder = 0
  end
  object eReferente: TUniEdit
    Left = 25
    Top = 144
    Width = 488
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 2
  end
  object UniLabel1: TUniLabel
    Left = 29
    Top = 76
    Width = 37
    Height = 13
    Hint = ''
    Caption = 'Numero'
    TabOrder = 8
  end
  object UniLabel2: TUniLabel
    Left = 29
    Top = 124
    Width = 49
    Height = 13
    Hint = ''
    Caption = 'Referente'
    TabOrder = 9
  end
  object UniLabel6: TUniLabel
    Left = 392
    Top = 76
    Width = 24
    Height = 13
    Hint = ''
    Caption = 'Valor'
    TabOrder = 10
  end
  object eValor: TUniFormattedNumberEdit
    Left = 392
    Top = 96
    Width = 121
    Hint = ''
    TabOrder = 1
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object UniButton2: TUniButton
    Left = 120
    Top = 269
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Visualizar'
    TabOrder = 11
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 279
    Top = 269
    Width = 153
    Height = 51
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 12
    OnClick = UniButton3Click
  end
  object frxRecibo: TfrxReport
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
      'procedure Picture1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   if <EmpresaRecibo."LOGO"> <> '#39#39' then                         ' +
        '            '
      '   Picture1.Picture.LoadFromFile(<EmpresaRecibo."LOGO">);      '
      'end;'
      ''
      'procedure ValorOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '     '
      'end;'
      ''
      'begin'
      '  '
      'end.          ')
    Left = 437
    Top = 283
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'EmpresaRecibo'
      end
      item
        DataSet = frxDB
        DataSetName = 'Recibo'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Numero'
        Value = ''
      end
      item
        Name = 'Valor'
        Value = ''
      end
      item
        Name = 'Referente'
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
        Height = 359.055350000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.779530000000001000
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          Fill.BackColor = clScrollBar
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 235.110390000000000000
          Top = 28.015770000000000000
          Width = 170.078850000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 492.338900000000000000
          Top = 4.779530000000001000
          Width = 222.992270000000000000
          Height = 37.795300000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 492.354670000000000000
          Top = 51.031540000000010000
          Width = 222.992270000000000000
          Height = 37.795300000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 5.338590000000000000
          Top = 226.889920000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 550.709030000000000000
          Top = 247.567100000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 434.984540000000000000
          Top = 227.110390000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Numero:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 550.709030000000000000
          Top = 227.110390000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 5.118120000000000000
          Top = 206.992270000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebi ( emos ) de ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 262.126160000000000000
          Top = 247.567100000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 5.338590000000000000
          Top = 247.567100000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object ReciboRAZAOSOCIAL: TfrxMemoView
          AllowVectorExport = True
          Left = 132.842610000000000000
          Top = 206.992270000000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAOSOCIAL'
          DataSet = frxDB
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Recibo."RAZAOSOCIAL"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object ReciboENDERECO: TfrxMemoView
          AllowVectorExport = True
          Left = 80.149660000000000000
          Top = 226.889920000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frxDB
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Recibo."ENDERECO"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object ReciboCEP: TfrxMemoView
          AllowVectorExport = True
          Left = 592.063390000000000000
          Top = 227.110390000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frxDB
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Recibo."CEP"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object ReciboNRO: TfrxMemoView
          AllowVectorExport = True
          Left = 495.236550000000000000
          Top = 226.889920000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'NRO'
          DataSet = frxDB
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Recibo."NRO"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object ReciboBAIRRO: TfrxMemoView
          AllowVectorExport = True
          Left = 61.031540000000000000
          Top = 246.787570000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frxDB
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Recibo."BAIRRO"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object ReciboCIDADE: TfrxMemoView
          AllowVectorExport = True
          Left = 317.598640000000000000
          Top = 247.567100000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frxDB
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Recibo."CIDADE"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object ReciboUF: TfrxMemoView
          AllowVectorExport = True
          Left = 609.961040000000000000
          Top = 247.567100000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frxDB
          DataSetName = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Recibo."UF"]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 267.582870000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Referente')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.118120000000000000
          Top = 6.338590000000000000
          Width = 128.504020000000000000
          Height = 90.708720000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
        object Valor: TfrxMemoView
          AllowVectorExport = True
          Left = 495.897960000000000000
          Top = 54.370130000000000000
          Width = 207.874150000000000000
          Height = 30.236240000000000000
          OnBeforePrint = 'ValorOnBeforePrint'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Valor]')
          ParentFont = False
        end
        object Numero: TfrxMemoView
          AllowVectorExport = True
          Left = 495.897960000000000000
          Top = 8.338590000000000000
          Width = 215.433210000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#176' [Numero]')
          ParentFont = False
        end
        object Referente: TfrxMemoView
          AllowVectorExport = True
          Left = 74.590600000000000000
          Top = 267.244280000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Referente]')
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 102.826840000000000000
          Width = 718.110700000000000000
          Height = 90.708720000000000000
          Frame.Typ = []
        end
        object EmpresaFANTASIA: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 109.606370000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EmpresaRecibo."FANTASIA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 307.937230000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Assinatura:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 307.937230000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          Underlines = True
          UnderlinesTextMode = ulmUnderlinesAll
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 170.078850000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[<EmpresaRecibo."CIDADE"> ]  - [<EmpresaRecibo."UF">] - [<Empres' +
              'aRecibo."ENDERECO">], [<EmpresaRecibo."NUMERO">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 139.842610000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Contato: [<EmpresaRecibo."FONE"> ] - [ <EmpresaRecibo."CELULAR">' +
              ']')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031849999999900000
          Top = 109.606370000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Emiss'#227'o: [(<Date>)]')
        end
      end
    end
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.qClientes
    Left = 496
    Top = 283
  end
  object frxDB: TfrxDBDataset
    UserName = 'Recibo'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-IDCLIENTE=IDCLIENTE'
      '-TIPOPESSOA=TIPOPESSOA'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'NOMEFANTASIA=NOMEFANTASIA'
      'RG_IE=RG_IE'
      'CPF_CNPJ=CPF_CNPJ'
      'FONE=FONE'
      'FAX=FAX'
      'ENDERECO=ENDERECO'
      'NRO=NRO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      '-CODMUNICIPIO=CODMUNICIPIO'
      'UF=UF'
      'CEP=CEP'
      '-OBSERVACAO=OBSERVACAO'
      '-CONSUMIDORFINAL=CONSUMIDORFINAL'
      '-IDEMITENTE=IDEMITENTE'
      '-REGIMECLIENTE=REGIMECLIENTE'
      '-TIPO=TIPO')
    DataSource = dsClientes
    BCDToCurrency = False
    Left = 31
    Top = 296
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
    Left = 65531
    Top = 296
  end
  object frxEmpresa: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'EmpresaRecibo'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-IDEMITENTE=IDEMITENTE'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'CODCIDADE=CODCIDADE'
      'UF=UF'
      'CNPJ=CNPJ'
      'IE=IE'
      'FONE=FONE'
      'CEP=CEP'
      '-CRT=CRT'
      '-ALIQUOTAICMS=ALIQUOTAICMS'
      '-CERT_CAMINHO=CERT_CAMINHO'
      '-CERT_SENHA=CERT_SENHA'
      '-CERT_NUMSERIE=CERT_NUMSERIE'
      '-GERAL_DANFE=GERAL_DANFE'
      '-GERAL_FORMAEMISSAO=GERAL_FORMAEMISSAO'
      '-GERAL_LOGOMARCA=GERAL_LOGOMARCA'
      '-GERAL_SALVAR=GERAL_SALVAR'
      '-GERAL_PATHSALVAR=GERAL_PATHSALVAR'
      '-GERAL_SERIE=GERAL_SERIE'
      '-GERAL_SERIEPRODUCAO=GERAL_SERIEPRODUCAO'
      '-GERAL_SERIEHOMOLOG=GERAL_SERIEHOMOLOG'
      '-GERAL_SERIESCAN=GERAL_SERIESCAN'
      '-GERAL_NNFEPRODUCAO=GERAL_NNFEPRODUCAO'
      '-GERAL_NNFEHOMOLOG=GERAL_NNFEHOMOLOG'
      '-GERAL_NNFESCAN=GERAL_NNFESCAN'
      '-GERAL_USARDESCCOMPLETA=GERAL_USARDESCCOMPLETA'
      '-WEBSERVICE_UF=WEBSERVICE_UF'
      '-WEBSERVICE_AMBIENTE=WEBSERVICE_AMBIENTE'
      '-WEBSERVICE_VISUALIZAR=WEBSERVICE_VISUALIZAR'
      '-PROXY_HOST=PROXY_HOST'
      '-PROXY_PORTA=PROXY_PORTA'
      '-PROXY_USER=PROXY_USER'
      '-PROXY_PASS=PROXY_PASS'
      '-EMAIL_HOST=EMAIL_HOST'
      '-EMAIL_PORT=EMAIL_PORT'
      '-EMAIL_USER=EMAIL_USER'
      '-EMAIL_PASS=EMAIL_PASS'
      '-EMAIL_ASSUNTO=EMAIL_ASSUNTO'
      '-EMAIL_SSL=EMAIL_SSL'
      '-EMAIL_MENSAGEM=EMAIL_MENSAGEM'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      '-CHAVELIGACAO=CHAVELIGACAO'
      '-FLAG_IBPT=FLAG_IBPT'
      '-IDTOKEN=IDTOKEN'
      '-TOKEN=TOKEN'
      '-DATAVENCIMENTOCERTIFICADO=DATAVENCIMENTOCERTIFICADO'
      '-GERAL_NNFCEPRODUCAO=GERAL_NNFCEPRODUCAO'
      '-GERAL_NNFCEHOMOLOG=GERAL_NNFCEHOMOLOG'
      '-IMPRESSORANFE=IMPRESSORANFE'
      '-IMPRESSORANFCE=IMPRESSORANFCE'
      '-PREVIEWNFE=PREVIEWNFE'
      '-PREVIEWNFCE=PREVIEWNFCE'
      '-LOGIN=LOGIN'
      '-SENHA=SENHA'
      '-TIPOCERTIFICADO=TIPOCERTIFICADO'
      '-MODULO_NFE=MODULO_NFE'
      '-MODULO_NFCE=MODULO_NFCE'
      '-MODULO_MDFE=MODULO_MDFE'
      '-ESCRITORIOCONTADOR=ESCRITORIOCONTADOR'
      '-CONTADOR=CONTADOR'
      '-FONECONTADOR=FONECONTADOR'
      '-EMAILCONTADOR=EMAILCONTADOR'
      '-USUARIOCONTADOR=USUARIOCONTADOR'
      '-SENHACONTADOR=SENHACONTADOR'
      '-MENSAGEMPROCOM=MENSAGEMPROCOM'
      '-TEF_PAYGO=TEF_PAYGO'
      '-TEF_PADRAO_PAYGO=TEF_PADRAO_PAYGO'
      '-TEF_PADRAO_PAYGO_ID=TEF_PADRAO_PAYGO_ID'
      '-TEF_PAYGO_KEY=TEF_PAYGO_KEY'
      '-TEF_PAYGO_URLVENDA=TEF_PAYGO_URLVENDA'
      '-TEF_PAYGO_URLCONSULTA=TEF_PAYGO_URLCONSULTA'
      '-TEF_PAYGO_URLCANCELAR=TEF_PAYGO_URLCANCELAR'
      '-TEF_PAYGO_SENHATECNICA=TEF_PAYGO_SENHATECNICA'
      '-CFOPPADRAO=CFOPPADRAO'
      '-MODULO_OSOTICA=MODULO_OSOTICA'
      '-DATACADASTRO=DATACADASTRO'
      'LOGO=LOGO')
    DataSet = UniMainModule.qEmitente
    BCDToCurrency = False
    Left = 79
    Top = 296
  end
end
