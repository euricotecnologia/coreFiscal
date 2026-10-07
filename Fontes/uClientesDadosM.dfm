object fClientesDadosM: TfClientesDadosM
  Left = 0
  Top = 0
  ClientHeight = 1258
  ClientWidth = 478
  Caption = ''
  AutoHeight = False
  Scrollable = True
  TitleButtons = <
    item
      Caption = '<i class="fa fa-plus fa-1x "></i> Novo'
      ButtonId = 0
      UI = 'action'
    end
    item
      ButtonId = 1
      Separator = True
    end
    item
      Caption = '<i class="fa fa-times fa-1x "></i> Cancelar'
      ButtonId = 2
      UI = 'decline'
    end
    item
      ButtonId = 3
      Separator = True
    end
    item
      Caption = '<i class="fa fa-floppy-o fa-1x "></i> Salvar'
      ButtonId = 4
      UI = 'confirm'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 1176
  PlatformData = {}
  object UnimContainerPanel8: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 472
    Height = 70
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '95%'
    LayoutConfig.Margin = '1,1,1,1'
    object UnimContainerPanel9: TUnimContainerPanel
      AlignWithMargins = True
      Left = 317
      Top = 3
      Width = 152
      Height = 64
      Hint = ''
      Align = alRight
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '48%'
      object UnimLabel7: TUnimLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 146
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'Tipo Pessoa'
        Align = alTop
      end
      object dblTipo: TUnimDBSelect
        Left = 0
        Top = 29
        Width = 152
        Height = 35
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        Items.Strings = (
          'FISICA'
          'JURIDICA')
        TabOrder = 2
        DataField = 'TIPOPESSOA'
        DataSource = dsClientes
      end
    end
    object UnimContainerPanel10: TUnimContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 155
      Height = 64
      Hint = ''
      Align = alLeft
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '48%'
      object UnimLabel8: TUnimLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 149
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'C'#243'digo'
        Align = alTop
      end
      object UnimDBEdit7: TUnimDBEdit
        Left = 0
        Top = 29
        Width = 155
        Height = 35
        Hint = ''
        Enabled = False
        DataField = 'IDCLIENTE'
        DataSource = dsClientes
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        LayoutConfig.Margin = '1.1.1.1'
        TabOrder = 2
      end
    end
  end
  object UnimContainerPanel2: TUnimContainerPanel
    Left = 0
    Top = 76
    Width = 478
    Height = 80
    Hint = ''
    Align = alTop
    object UnimLabel1: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 472
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'CPF/CNPJ'
      Align = alTop
    end
    object UnimContainerPanel24: TUnimContainerPanel
      Left = 0
      Top = 29
      Width = 478
      Height = 51
      Hint = ''
      Align = alClient
      object EditCNPJ: TUnimDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 415
        Height = 45
        Hint = ''
        DataField = 'CPF_CNPJ'
        DataSource = dsClientes
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        CharCase = ecUpperCase
        ClearButton = False
        TabOrder = 1
      end
      object UnimButton2: TUnimButton
        Left = 421
        Top = 0
        Width = 57
        Height = 51
        Hint = ''
        Align = alRight
        Caption = '<i class="fa fa-search fa-1x "></i>'
        ClientEvents.ExtEvents.Strings = (
          
            'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
            'aoAzul'#39');'#13#10'}')
        UI = 'plain'
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = UnimButton2Click
      end
    end
  end
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 156
    Width = 478
    Height = 80
    Hint = ''
    Align = alTop
    object UnimLabel2: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 472
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'RG/IE'
      Align = alTop
    end
    object dbedit8: TUnimDBEdit
      AlignWithMargins = True
      Left = 3
      Top = 32
      Width = 472
      Height = 45
      Hint = ''
      DataField = 'RG_IE'
      DataSource = dsClientes
      Align = alClient
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
          #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
          #10'}')
      CharCase = ecUpperCase
      ClearButton = False
      TabOrder = 2
    end
  end
  object UnimContainerPanel3: TUnimContainerPanel
    Left = 0
    Top = 236
    Width = 478
    Height = 80
    Hint = ''
    Align = alTop
    object UnimLabel3: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 472
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'NOME/RAZ'#195'O'
      Align = alTop
    end
    object dbeNome: TUnimDBEdit
      AlignWithMargins = True
      Left = 3
      Top = 32
      Width = 472
      Height = 45
      Hint = ''
      DataField = 'RAZAOSOCIAL'
      DataSource = dsClientes
      Align = alClient
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
          #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
          #10'}')
      CharCase = ecUpperCase
      ClearButton = False
      TabOrder = 2
    end
  end
  object UnimContainerPanel4: TUnimContainerPanel
    Left = 0
    Top = 316
    Width = 478
    Height = 80
    Hint = ''
    Align = alTop
    object UnimLabel4: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 472
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'APELIDO/FANTASIA'
      Align = alTop
    end
    object UnimDBEdit5: TUnimDBEdit
      AlignWithMargins = True
      Left = 3
      Top = 32
      Width = 472
      Height = 45
      Hint = ''
      DataField = 'NOMEFANTASIA'
      DataSource = dsClientes
      Align = alClient
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
          #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
          #10'}')
      CharCase = ecUpperCase
      ClearButton = False
      TabOrder = 2
    end
  end
  object UnimContainerPanel5: TUnimContainerPanel
    Left = 0
    Top = 396
    Width = 478
    Height = 80
    Hint = ''
    Align = alTop
    object UnimLabel5: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 472
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'CEP'
      Align = alTop
    end
    object UnimContainerPanel6: TUnimContainerPanel
      Left = 0
      Top = 29
      Width = 478
      Height = 51
      Hint = ''
      Align = alClient
      object eCEP: TUnimDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 415
        Height = 45
        Hint = ''
        DataField = 'CEP'
        DataSource = dsClientes
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        CharCase = ecUpperCase
        ClearButton = False
        TabOrder = 1
      end
      object UnimButton1: TUnimButton
        Left = 421
        Top = 0
        Width = 57
        Height = 51
        Hint = ''
        Align = alRight
        Caption = '<i class="fa fa-search fa-1x "></i>'
        ClientEvents.ExtEvents.Strings = (
          
            'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
            'aoAzul'#39');'#13#10'}')
        UI = 'plain'
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = UnimButton1Click
      end
    end
  end
  object UnimContainerPanel7: TUnimContainerPanel
    Left = 0
    Top = 476
    Width = 478
    Height = 80
    Hint = ''
    Align = alTop
    object UnimLabel6: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 465
      Height = 23
      Hint = ''
      Margins.Right = 10
      AutoSize = False
      Caption = 'ENDERE'#199'O'
      Align = alTop
    end
    object UnimDBEdit6: TUnimDBEdit
      AlignWithMargins = True
      Left = 3
      Top = 32
      Width = 472
      Height = 45
      Hint = ''
      DataField = 'ENDERECO'
      DataSource = dsClientes
      Align = alClient
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
          #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
          #10'}')
      CharCase = ecUpperCase
      ClearButton = False
      TabOrder = 2
    end
  end
  object UnimContainerPanel12: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 559
    Width = 472
    Height = 70
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    Layout = 'hbox'
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '100%'
    object UnimContainerPanel13: TUnimContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 155
      Height = 64
      Hint = ''
      Align = alLeft
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '45%'
      object UnimLabel11: TUnimLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 149
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'NUMERO'
        Align = alTop
      end
      object UnimDBEdit10: TUnimDBEdit
        Left = 0
        Top = 29
        Width = 155
        Height = 35
        Hint = ''
        DataField = 'NRO'
        DataSource = dsClientes
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        CharCase = ecUpperCase
        ClearButton = False
        TabOrder = 2
      end
    end
    object UnimContainerPanel14: TUnimContainerPanel
      AlignWithMargins = True
      Left = 317
      Top = 3
      Width = 152
      Height = 64
      Hint = ''
      Align = alRight
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '45%'
      object UnimLabel13: TUnimLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 146
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'COMPLEMENTO'
        Align = alTop
      end
      object UnimDBEdit11: TUnimDBEdit
        Left = 0
        Top = 29
        Width = 152
        Height = 35
        Hint = ''
        DataField = 'COMPLEMENTO'
        DataSource = dsClientes
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        CharCase = ecUpperCase
        ClearButton = False
        TabOrder = 2
      end
    end
  end
  object UnimContainerPanel11: TUnimContainerPanel
    Left = 0
    Top = 632
    Width = 478
    Height = 80
    Hint = ''
    Align = alTop
    object UnimLabel9: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 465
      Height = 23
      Hint = ''
      Margins.Right = 10
      AutoSize = False
      Caption = 'BAIRRO'
      Align = alTop
    end
    object UnimDBEdit9: TUnimDBEdit
      AlignWithMargins = True
      Left = 3
      Top = 32
      Width = 472
      Height = 45
      Hint = ''
      DataField = 'BAIRRO'
      DataSource = dsClientes
      Align = alClient
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
          #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
          #10'}')
      CharCase = ecUpperCase
      ClearButton = False
      TabOrder = 2
    end
  end
  object UnimContainerPanel18: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 715
    Width = 472
    Height = 70
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    Layout = 'hbox'
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '98%'
    LayoutConfig.Margin = '1'
    object UnimContainerPanel19: TUnimContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 135
      Height = 64
      Hint = ''
      Align = alLeft
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '35%'
      object UnimLabel10: TUnimLabel
        Left = 0
        Top = 0
        Width = 135
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'UF'
        Align = alTop
      end
      object dblUf: TUnimDBSelect
        Left = 0
        Top = 23
        Width = 135
        Height = 41
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'FN'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PR'
          'PI'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SP'
          'SE'
          'TO')
        TabOrder = 2
        OnChange = dblUfChange
        DataField = 'UF'
        DataSource = dsClientes
      end
    end
    object UnimContainerPanel20: TUnimContainerPanel
      AlignWithMargins = True
      Left = 297
      Top = 3
      Width = 172
      Height = 64
      Hint = ''
      Align = alRight
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '64%'
      object UnimLabel12: TUnimLabel
        Left = 0
        Top = 0
        Width = 172
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'COD. IBGE'
        Align = alTop
      end
      object UnimDBNumberEdit1: TUnimDBNumberEdit
        Left = 0
        Top = 23
        Width = 172
        Height = 41
        Hint = ''
        DataField = 'CODMUNICIPIO'
        DataSource = dsClientes
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object UnimContainerPanel16: TUnimContainerPanel
    Left = 0
    Top = 788
    Width = 478
    Height = 80
    Hint = ''
    Align = alTop
    object UnimLabel14: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 465
      Height = 23
      Hint = ''
      Margins.Right = 10
      AutoSize = False
      Caption = 'CIDADE'
      Align = alTop
    end
    object UnimContainerPanel17: TUnimContainerPanel
      Left = 0
      Top = 29
      Width = 478
      Height = 51
      Hint = ''
      Align = alClient
      object dblMunicipio: TUnimDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 415
        Height = 45
        Hint = ''
        DataField = 'CIDADE'
        DataSource = dsClientes
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        CharCase = ecUpperCase
        ClearButton = False
        TabOrder = 1
      end
      object bCidade: TUnimButton
        Left = 421
        Top = 0
        Width = 57
        Height = 51
        Hint = ''
        Align = alRight
        Caption = '<i class="fa fa-search fa-1x "></i>'
        ClientEvents.ExtEvents.Strings = (
          
            'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
            'aoAzul'#39');'#13#10'}')
        UI = 'plain'
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = bCidadeClick
      end
    end
  end
  object UnimContainerPanel15: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 871
    Width = 472
    Height = 70
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    Layout = 'hbox'
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '98%'
    LayoutConfig.Margin = '1'
    object UnimContainerPanel21: TUnimContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 155
      Height = 64
      Hint = ''
      Align = alLeft
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '48%'
      object UnimLabel15: TUnimLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 149
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'FONE'
        Align = alTop
      end
      object UnimDBEdit1: TUnimDBEdit
        Left = 0
        Top = 29
        Width = 155
        Height = 35
        Hint = ''
        DataField = 'FONE'
        DataSource = dsClientes
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        CharCase = ecUpperCase
        ClearButton = False
        TabOrder = 2
      end
    end
    object UnimContainerPanel22: TUnimContainerPanel
      AlignWithMargins = True
      Left = 317
      Top = 3
      Width = 152
      Height = 64
      Hint = ''
      Align = alRight
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '48%'
      object UnimLabel16: TUnimLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 146
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'FAX'
        Align = alTop
      end
      object UnimDBEdit8: TUnimDBEdit
        Left = 0
        Top = 29
        Width = 152
        Height = 35
        Hint = ''
        DataField = 'FAX'
        DataSource = dsClientes
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        CharCase = ecUpperCase
        ClearButton = False
        TabOrder = 2
      end
    end
  end
  object UnimContainerPanel23: TUnimContainerPanel
    Left = 0
    Top = 944
    Width = 478
    Height = 185
    Hint = ''
    Align = alTop
    object UnimLabel17: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 465
      Height = 23
      Hint = ''
      Margins.Right = 10
      AutoSize = False
      Caption = 'OBS.'
      Align = alTop
    end
    object UnimDBMemo1: TUnimDBMemo
      Left = 0
      Top = 29
      Width = 478
      Height = 156
      Hint = ''
      DataField = 'OBSERVACAO'
      DataSource = dsClientes
      Align = alClient
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
          #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
          #10'}')
      ClearButton = False
      TabOrder = 2
    end
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.qClientes
    Left = 336
    Top = 96
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsCorreios
    ChaveAcesso = '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.'
    PesquisarIBGE = True
    Left = 376
    Top = 88
  end
end
