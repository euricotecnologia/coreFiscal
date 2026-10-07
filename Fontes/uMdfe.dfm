object fMdfe: TfMdfe
  Left = 0
  Top = 0
  Width = 984
  Height = 570
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 47
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    Color = 4079166
    object btnInclui: TUniBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 120
      Height = 39
      Hint = ''
      Caption = 'Novo'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVerde'#39');'#13#10'}')
      OnClick = btnIncluiClick
    end
    object bCancelar: TUniBitBtn
      AlignWithMargins = True
      Left = 130
      Top = 4
      Width = 120
      Height = 39
      Hint = ''
      Caption = 'Cancelar'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
      OnClick = bCancelarClick
    end
    object UniLabel15: TUniLabel
      AlignWithMargins = True
      Left = 263
      Top = 6
      Width = 167
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Emiss'#227'o de MDFe'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 3
      ExplicitHeight = 33
    end
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 47
    Width = 984
    Height = 52
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 1
    object UniLabel1: TUniLabel
      Left = 8
      Top = 6
      Width = 67
      Height = 13
      Hint = ''
      Caption = 'Numero MDFe'
      TabOrder = 10
    end
    object UniLabel2: TUniLabel
      Left = 83
      Top = 6
      Width = 84
      Height = 13
      Hint = ''
      Caption = 'C'#243'digo do Veiculo'
      TabOrder = 11
    end
    object UniLabel3: TUniLabel
      Left = 174
      Top = 6
      Width = 76
      Height = 13
      Hint = ''
      Caption = 'Placa do Veiculo'
      TabOrder = 12
    end
    object UniLabel4: TUniLabel
      Left = 256
      Top = 6
      Width = 78
      Height = 13
      Hint = ''
      Caption = 'Nome do Veiculo'
      TabOrder = 13
    end
    object UniLabel5: TUniLabel
      Left = 470
      Top = 6
      Width = 13
      Height = 13
      Hint = ''
      Caption = 'UF'
      TabOrder = 14
    end
    object UniLabel6: TUniLabel
      Left = 522
      Top = 6
      Width = 22
      Height = 13
      Hint = ''
      Caption = 'Tara'
      TabOrder = 15
    end
    object UniLabel7: TUniLabel
      Left = 699
      Top = 6
      Width = 100
      Height = 13
      Hint = ''
      Caption = 'UF de Carregamento'
      TabOrder = 16
    end
    object UniLabel8: TUniLabel
      Left = 819
      Top = 6
      Width = 86
      Height = 13
      Hint = ''
      Caption = 'Ultima UF Entrega'
      TabOrder = 17
    end
    object UniLabel9: TUniLabel
      Left = 609
      Top = 6
      Width = 52
      Height = 13
      Hint = ''
      Caption = 'Peso Bruto'
      TabOrder = 18
    end
    object eCodigoMDFE: TUniDBEdit
      Left = 7
      Top = 24
      Width = 70
      Height = 22
      Hint = ''
      DataField = 'COD_MDFE'
      DataSource = dsMdfe
      CharCase = ecUpperCase
      TabOrder = 0
      OnExit = eCodigoMDFEExit
    end
    object eCodVeiculo: TUniDBEdit
      Left = 83
      Top = 22
      Width = 63
      Height = 22
      Hint = ''
      DataField = 'COD_VEICULO'
      DataSource = dsMdfe
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object ePlacaVeiculo: TUniDBEdit
      Left = 173
      Top = 22
      Width = 77
      Height = 22
      Hint = ''
      DataField = 'PLACA_VEICULO'
      DataSource = dsMdfe
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object eNomeVeiculo: TUniDBEdit
      Left = 256
      Top = 22
      Width = 208
      Height = 22
      Hint = ''
      DataField = 'NOME_VEICULO'
      DataSource = dsMdfe
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object eUf: TUniDBComboBox
      Left = 470
      Top = 22
      Width = 48
      Hint = ''
      DataField = 'UF_VEICULO'
      DataSource = dsMdfe
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
      TabOrder = 4
      IconItems = <>
    end
    object eUfPrimeiraEntrega: TUniDBComboBox
      Left = 699
      Top = 22
      Width = 117
      Hint = ''
      DataField = 'PRIMEIRA_UF_ENTREGA'
      DataSource = dsMdfe
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
      TabOrder = 7
      IconItems = <>
    end
    object eUfUltimaEntrega: TUniDBComboBox
      Left = 818
      Top = 22
      Width = 115
      Hint = ''
      DataField = 'ULTIMA_UF_ENTREGA'
      DataSource = dsMdfe
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
      TabOrder = 8
      IconItems = <>
      OnExit = eUfUltimaEntregaExit
    end
    object bVeiculo: TUniSpeedButton
      Left = 147
      Top = 21
      Width = 23
      Height = 22
      Hint = ''
      Caption = '<i class="fa fa-search "></i>'
      ParentColor = False
      Color = clWindow
      ScreenMask.Enabled = True
      ScreenMask.Message = 'Aguarde...'
      ScreenMask.Target = Owner
      TabOrder = 19
      OnClick = bVeiculoClick
    end
    object ePesoBruto: TUniDBEdit
      Left = 609
      Top = 22
      Width = 89
      Height = 22
      Hint = ''
      DataField = 'PESOBRUTO_TOTAL'
      DataSource = dsMdfe
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object eTara: TUniDBEdit
      Left = 522
      Top = 22
      Width = 87
      Height = 22
      Hint = ''
      DataField = 'TARA_VEICULO'
      DataSource = dsMdfe
      CharCase = ecUpperCase
      TabOrder = 5
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 512
    Width = 984
    Height = 58
    Hint = ''
    ParentColor = False
    Color = 12024371
    Align = alBottom
    TabOrder = 2
    object bEnviar: TUniBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 120
      Height = 52
      Hint = ''
      Caption = 'Enviar'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVerde'#39');'#13#10'}')
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Aguarde, Gerando MDF-e...'
      ScreenMask.Target = Owner
      OnClick = bEnviarClick
    end
    object bSalvar: TUniBitBtn
      AlignWithMargins = True
      Left = 129
      Top = 3
      Width = 120
      Height = 52
      Hint = ''
      Visible = False
      Caption = 'Salvar'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVerde'#39');'#13#10'}')
      OnClick = bSalvarClick
    end
    object UniContainerPanel5: TUniContainerPanel
      Left = 580
      Top = 0
      Width = 404
      Height = 58
      Hint = ''
      ParentColor = False
      Color = 12024371
      Align = alRight
      TabOrder = 3
      object UniLabel10: TUniLabel
        Left = 11
        Top = 8
        Width = 93
        Height = 16
        Hint = ''
        Caption = 'Total de Notas'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object dbTotalNotas: TUniDBFormattedNumberEdit
        Left = 11
        Top = 27
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'TOTAL_NOTAS'
        DataSource = dsMdfe
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 2
        DecimalPrecision = 0
        DecimalSeparator = #0
        ThousandSeparator = '.'
      end
      object UniLabel11: TUniLabel
        Left = 143
        Top = 8
        Width = 67
        Height = 16
        Hint = ''
        Caption = 'Peso Total'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object dbPesoTotal: TUniDBFormattedNumberEdit
        Left = 143
        Top = 27
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'PESOBRUTO_TOTAL'
        DataSource = dsMdfe
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 4
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniLabel12: TUniLabel
        Left = 273
        Top = 8
        Width = 70
        Height = 16
        Hint = ''
        Caption = 'Valor Total'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 5
      end
      object dbValorTotal: TUniDBFormattedNumberEdit
        Left = 273
        Top = 27
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'VALOR_TOTAL'
        DataSource = dsMdfe
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 6
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
    end
  end
  object UniPanel5: TUniPanel
    AlignWithMargins = True
    Left = 4
    Top = 294
    Width = 976
    Height = 215
    Hint = ''
    Margins.Left = 4
    Margins.Right = 4
    Align = alClient
    TabOrder = 3
    TitleVisible = True
    Title = 'Conhecimento NFe'
    Caption = ''
    object UniDBGrid4: TUniDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 51
      Width = 968
      Height = 158
      Hint = ''
      Margins.Top = 5
      Margins.Bottom = 5
      DataSource = dsNfe
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'NR_NFE'
          Title.Caption = 'NFE'
          Width = 77
        end
        item
          FieldName = 'NOME_DESTINATARIO'
          Title.Caption = 'DESTINATARIO'
          Width = 256
        end
        item
          FieldName = 'CODIBGE'
          Title.Caption = 'IBGE'
          Width = 51
        end
        item
          FieldName = 'MUNICIPIO'
          Title.Caption = 'MUNICIPIO'
          Width = 162
        end
        item
          FieldName = 'PESO'
          Title.Caption = 'PESO'
          Width = 85
        end
        item
          FieldName = 'CHAVE'
          Title.Caption = 'CHAVE'
          Width = 178
        end
        item
          FieldName = 'VALOR'
          Title.Caption = 'VALOR'
          Width = 118
        end>
    end
    object UniContainerPanel3: TUniContainerPanel
      Left = 1
      Top = 1
      Width = 974
      Height = 45
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 2
      object bitbtn10: TUniBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 120
        Height = 39
        Hint = ''
        Caption = 'Importar Nfe'
        Align = alLeft
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoVerde'#39');'#13#10'}')
        OnClick = bitbtn10Click
      end
      object UniBitBtn2: TUniBitBtn
        AlignWithMargins = True
        Left = 129
        Top = 3
        Width = 120
        Height = 39
        Hint = ''
        Caption = 'Importar XML'
        Align = alLeft
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
        OnClick = UniBitBtn2Click
      end
      object UniBitBtn3: TUniBitBtn
        AlignWithMargins = True
        Left = 255
        Top = 3
        Width = 120
        Height = 39
        Hint = ''
        Caption = 'Excluir Nfe'
        Align = alLeft
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        OnClick = UniBitBtn3Click
      end
    end
  end
  object UniContainerPanel4: TUniContainerPanel
    Left = 0
    Top = 99
    Width = 984
    Height = 192
    Hint = ''
    ParentColor = False
    Align = alTop
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 4
    Layout = 'hbox'
    LayoutConfig.Width = '100%'
    object UniPanel2: TUniPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 251
      Height = 186
      Hint = ''
      Align = alLeft
      TabOrder = 1
      TitleVisible = True
      Title = 'Municipios de Carregamento'
      Caption = ''
      ParentAlignmentControl = False
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '25%'
      object UniDBGrid1: TUniDBGrid
        Left = 1
        Top = 26
        Width = 249
        Height = 159
        Hint = ''
        DataSource = dsCarregamento
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        LayoutConfig.Width = '100%'
        Align = alClient
        TabOrder = 1
        Columns = <
          item
            FieldName = 'CODIBGE'
            Title.Caption = 'IBGE'
            Width = 40
          end
          item
            FieldName = 'NOME'
            Title.Caption = 'NOME'
            Width = 172
          end
          item
            FieldName = 'UF'
            Title.Caption = 'UF'
            Width = 28
          end>
      end
      object UniContainerPanel6: TUniContainerPanel
        Left = 1
        Top = 1
        Width = 249
        Height = 25
        Hint = ''
        ParentColor = False
        Align = alTop
        TabOrder = 2
        object bitbtn3: TUniSpeedButton
          Left = 0
          Top = 0
          Width = 29
          Height = 25
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzul'#39');'#13#10'}')
          Caption = '<i class="fa fa-search "></i>'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 1
          OnClick = bitbtn3Click
        end
        object UniSpeedButton2: TUniSpeedButton
          Left = 29
          Top = 0
          Width = 31
          Height = 25
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
          Caption = '<i class="fa fa-times "></i>'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 2
          OnClick = UniSpeedButton2Click
        end
      end
    end
    object UniPanel6: TUniPanel
      AlignWithMargins = True
      Left = 260
      Top = 3
      Width = 258
      Height = 186
      Hint = ''
      Align = alLeft
      TabOrder = 4
      TitleVisible = True
      Title = 'Estados Percorridos'
      Caption = 'UniPanel3'
      ParentAlignmentControl = False
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '25%'
      object UniDBGrid5: TUniDBGrid
        Left = 1
        Top = 27
        Width = 256
        Height = 158
        Hint = ''
        DataSource = dsEstadosPercorridos
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        LayoutConfig.Width = '100%'
        Align = alClient
        TabOrder = 1
        Columns = <
          item
            FieldName = 'UF'
            Title.Caption = 'UF'
            Width = 198
          end>
      end
      object UniContainerPanel9: TUniContainerPanel
        Left = 1
        Top = 1
        Width = 256
        Height = 26
        Hint = ''
        ParentColor = False
        Align = alTop
        TabOrder = 2
        object UniSpeedButton1: TUniSpeedButton
          Left = 65
          Top = 0
          Width = 32
          Height = 26
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVerde'#39');'#13#10'}')
          Caption = '<i class="fa fa-plus "></i>'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 1
          OnClick = UniSpeedButton1Click
        end
        object UniSpeedButton3: TUniSpeedButton
          Left = 97
          Top = 0
          Width = 32
          Height = 26
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
          Caption = '<i class="fa fa-times "></i>'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 2
          OnClick = UniSpeedButton3Click
        end
        object eufPercorrido: TUniComboBox
          Left = 0
          Top = 0
          Width = 65
          Height = 26
          Hint = ''
          Text = 'eufPercorrido'
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
          ItemIndex = 0
          Align = alLeft
          TabOrder = 3
          IconItems = <>
        end
      end
    end
    object UniPanel3: TUniPanel
      AlignWithMargins = True
      Left = 524
      Top = 3
      Width = 227
      Height = 186
      Hint = ''
      Align = alLeft
      TabOrder = 2
      TitleVisible = True
      Title = 'Municipios de Descarregamento'
      Caption = 'UniPanel3'
      ParentAlignmentControl = False
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '25%'
      object UniDBGrid2: TUniDBGrid
        Left = 1
        Top = 27
        Width = 225
        Height = 158
        Hint = ''
        DataSource = dsMunicipioDescarregamento
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        LayoutConfig.Width = '100%'
        Align = alClient
        TabOrder = 1
        Columns = <
          item
            FieldName = 'CODIGOIBGE'
            Title.Caption = 'IBGE'
            Width = 48
          end
          item
            FieldName = 'NOMECIDADE'
            Title.Caption = 'CIDADE'
            Width = 166
          end
          item
            FieldName = 'UF'
            Title.Caption = 'UF'
            Width = 33
          end>
      end
      object UniContainerPanel7: TUniContainerPanel
        Left = 1
        Top = 1
        Width = 225
        Height = 26
        Hint = ''
        ParentColor = False
        Align = alTop
        TabOrder = 2
        object bitbtn7: TUniSpeedButton
          Left = 0
          Top = 0
          Width = 32
          Height = 26
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzul'#39');'#13#10'}')
          Caption = '<i class="fa fa-search "></i>'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 1
          OnClick = bitbtn7Click
        end
        object UniSpeedButton4: TUniSpeedButton
          Left = 32
          Top = 0
          Width = 32
          Height = 26
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
          Caption = '<i class="fa fa-times "></i>'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 2
          OnClick = UniSpeedButton4Click
        end
      end
    end
    object UniPanel4: TUniPanel
      AlignWithMargins = True
      Left = 757
      Top = 3
      Width = 218
      Height = 186
      Hint = ''
      Align = alLeft
      TabOrder = 3
      TitleVisible = True
      Title = 'Nome dos Condutores'
      Caption = ''
      ParentAlignmentControl = False
      Layout = 'fit'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '25%'
      object UniDBGrid3: TUniDBGrid
        Left = 1
        Top = 28
        Width = 216
        Height = 157
        Hint = ''
        DataSource = dsCondutores
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        LayoutConfig.Width = '100%'
        Align = alClient
        TabOrder = 1
        Columns = <
          item
            FieldName = 'CODIGO'
            Title.Caption = 'CODIGO'
            Width = 48
          end
          item
            FieldName = 'NOME'
            Title.Caption = 'NOME'
            Width = 182
          end>
      end
      object UniContainerPanel8: TUniContainerPanel
        Left = 1
        Top = 1
        Width = 216
        Height = 27
        Hint = ''
        ParentColor = False
        Align = alTop
        TabOrder = 2
        object bitbtn13: TUniSpeedButton
          Left = 0
          Top = 0
          Width = 31
          Height = 27
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzul'#39');'#13#10'}')
          Caption = '<i class="fa fa-search "></i>'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 1
          OnClick = bitbtn13Click
        end
        object UniSpeedButton6: TUniSpeedButton
          Left = 62
          Top = 0
          Width = 31
          Height = 27
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
          Caption = '<i class="fa fa-times "></i>'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 2
          OnClick = UniSpeedButton6Click
        end
        object UniSpeedButton5: TUniSpeedButton
          Left = 31
          Top = 0
          Width = 31
          Height = 27
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVerde'#39');'#13#10'}')
          Caption = '<i class="fa fa-plus "></i>'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 3
        end
      end
    end
  end
  object dsMdfe: TDataSource
    DataSet = UniMainModule.qMdfe
    Left = 608
  end
  object qCarregamento: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    SQL.Strings = (
      
        'Select * from municipioCarregamento where id_emitente = :id_emit' +
        'ente and MDFE = :mdfe')
    Left = 35
    Top = 152
    ParamData = <
      item
        Name = 'ID_EMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qCarregamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qCarregamentoID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qCarregamentoMDFE: TIntegerField
      FieldName = 'MDFE'
      Origin = 'MDFE'
    end
    object qCarregamentoCODIBGE: TStringField
      FieldName = 'CODIBGE'
      Origin = 'CODIBGE'
    end
    object qCarregamentoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object qCarregamentoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object dsCarregamento: TDataSource
    DataSet = qCarregamento
    Left = 35
    Top = 200
  end
  object qMunicipiosDescarregamento: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    SQL.Strings = (
      
        'Select * from MunicipiosDescarregamento where id_emitente = :id_' +
        'emitente and MDFE = :mdfe')
    Left = 635
    Top = 160
    ParamData = <
      item
        Name = 'ID_EMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qMunicipiosDescarregamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qMunicipiosDescarregamentoMDFE: TIntegerField
      FieldName = 'MDFE'
      Origin = 'MDFE'
    end
    object qMunicipiosDescarregamentoID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qMunicipiosDescarregamentoCODIGOIBGE: TStringField
      FieldName = 'CODIGOIBGE'
      Origin = 'CODIGOIBGE'
    end
    object qMunicipiosDescarregamentoNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Origin = 'NOMECIDADE'
      Size = 60
    end
    object qMunicipiosDescarregamentoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object dsMunicipioDescarregamento: TDataSource
    DataSet = qMunicipiosDescarregamento
    Left = 635
    Top = 208
  end
  object qCondutores: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    SQL.Strings = (
      
        'Select * from Condutores_mdfe where id_emitente = :id_emitente a' +
        'nd MDFE = :mdfe')
    Left = 899
    Top = 152
    ParamData = <
      item
        Name = 'ID_EMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MDFE'
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
    object qCondutoresMDFE: TIntegerField
      FieldName = 'MDFE'
      Origin = 'MDFE'
    end
    object qCondutoresCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
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
  object dsCondutores: TDataSource
    DataSet = qCondutores
    Left = 899
    Top = 200
  end
  object qNfe: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    SQL.Strings = (
      
        'Select * from nfe_mdfe where id_emitente = :id_emitente and mdfe' +
        ' = :mdfe')
    Left = 288
    Top = 400
    ParamData = <
      item
        Name = 'ID_EMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qNfeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qNfeID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qNfeMDFE: TIntegerField
      FieldName = 'MDFE'
      Origin = 'MDFE'
    end
    object qNfeNR_NFE: TIntegerField
      FieldName = 'NR_NFE'
      Origin = 'NR_NFE'
    end
    object qNfeNOME_DESTINATARIO: TStringField
      FieldName = 'NOME_DESTINATARIO'
      Origin = 'NOME_DESTINATARIO'
      Size = 100
    end
    object qNfeCODIBGE: TStringField
      FieldName = 'CODIBGE'
      Origin = 'CODIBGE'
    end
    object qNfeMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 60
    end
    object qNfeCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 80
    end
    object qNfePESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 3
    end
    object qNfeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dsNfe: TDataSource
    DataSet = qNfe
    Left = 328
    Top = 400
  end
  object UniFileUpload1: TUniFileUpload
    MaxAllowedSize = 10485760
    Title = 'Envio de Arquivo'
    Messages.Uploading = 'Enviando...'
    Messages.PleaseWait = 'Aguarde...'
    Messages.Cancel = 'Cancelar'
    Messages.Processing = 'Processando...'
    Messages.UploadError = 'Erro ao Enviar'
    Messages.Upload = 'Enviar'
    Messages.NoFileError = 'Por Favor, selecione o arquivo'
    Messages.BrowseText = 'Pesquisar'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    OnCompleted = UniFileUpload1Completed
    Left = 683
    Top = 1
  end
  object qEstadosPercorridos: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    SQL.Strings = (
      'Select * from estadosPercorridos '
      'where id_emitente = :id_emitente and MDFE = :mdfe')
    Left = 315
    Top = 152
    ParamData = <
      item
        Name = 'ID_EMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qEstadosPercorridosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qEstadosPercorridosID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qEstadosPercorridosMDFE: TIntegerField
      FieldName = 'MDFE'
      Origin = 'MDFE'
    end
    object qEstadosPercorridosUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qEstadosPercorridosNOMEUF: TStringField
      FieldName = 'NOMEUF'
      Origin = 'NOMEUF'
      Size = 30
    end
  end
  object dsEstadosPercorridos: TDataSource
    DataSet = qEstadosPercorridos
    Left = 315
    Top = 200
  end
end
