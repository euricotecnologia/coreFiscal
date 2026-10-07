object frameProduto: TframeProduto
  Left = 0
  Top = 0
  Width = 915
  Height = 499
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    object btnInclui: TUniBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 105
      Height = 43
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
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 41
    end
    object UniLabel15: TUniLabel
      AlignWithMargins = True
      Left = 121
      Top = 5
      Width = 206
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Cadastro de Produtos'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 2
      ExplicitTop = 6
    end
  end
  object PG: TUniPageControl
    Left = 0
    Top = 49
    Width = 915
    Height = 450
    Hint = ''
    ActivePage = UniTabSheet1
    TabBarVisible = False
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 756
    ExplicitHeight = 352
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Consultar'
      object UniPanel4: TUniPanel
        Left = 0
        Top = 0
        Width = 907
        Height = 41
        Hint = ''
        Align = alTop
        TabOrder = 0
        Caption = ''
        object rFiltro: TUniRadioGroup
          Left = 1
          Top = 1
          Width = 272
          Height = 39
          Hint = ''
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o'
            'C'#243'd. barras')
          ItemIndex = 1
          Align = alLeft
          Caption = ''
          TabOrder = 1
          Columns = 3
        end
        object eCliePesq: TUniEdit
          Left = 401
          Top = 1
          Width = 384
          Height = 39
          Hint = ''
          CharCase = ecUpperCase
          Text = ''
          Align = alLeft
          TabOrder = 2
          EmptyText = 'Digite sua Pesquisa'
        end
        object bPesq: TUniBitBtn
          AlignWithMargins = True
          Left = 788
          Top = 4
          Width = 110
          Height = 33
          Hint = ''
          Caption = 'Pesquisar'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          TabOrder = 3
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzul'#39');'#13#10'}')
          OnClick = bPesqClick
        end
        object rFiltro2: TUniRadioGroup
          Left = 273
          Top = 1
          Width = 128
          Height = 39
          Hint = ''
          Visible = False
          Items.Strings = (
            'Come'#231'a'
            'Contem')
          ItemIndex = 0
          Align = alLeft
          Caption = ''
          TabOrder = 4
          Columns = 2
        end
      end
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 41
        Width = 907
        Height = 381
        Hint = ''
        DataSource = dsProdutos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        LoadMask.Message = 'Carregando...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        OnCellClick = UniDBGrid1CellClick
        OnFieldImage = UniDBGrid1FieldImage
        OnDrawColumnCell = UniDBGrid1DrawColumnCell
        Columns = <
          item
            FieldName = 'CSTPIS'
            Title.Caption = 'Edita'
            Width = 28
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'CSTCOFINS'
            Title.Caption = 'Delete'
            Width = 35
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'CST'
            Title.Caption = 'CFG'
            Width = 35
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
          end
          item
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 73
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 376
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'PRECO'
            Title.Caption = 'Pre'#231'o'
            Width = 98
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'ESTOQUE'
            Title.Caption = 'Estoque'
            Width = 105
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'NCM'
            Title.Caption = 'NCM'
            Width = 99
            Menu.MenuEnabled = False
          end>
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados B'#225'sicos'
      object UniLabel1: TUniLabel
        Left = 10
        Top = 16
        Width = 72
        Height = 13
        Hint = ''
        Caption = 'C'#243'digo Interno'
        TabOrder = 3
      end
      object DBEdit2: TUniDBEdit
        Left = 12
        Top = 35
        Width = 79
        Height = 22
        Hint = ''
        Enabled = False
        DataField = 'CODIGO'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object UniLabel2: TUniLabel
        Left = 97
        Top = 16
        Width = 85
        Height = 13
        Hint = ''
        Caption = 'C'#243'digo de Barras '
        TabOrder = 4
      end
      object eCodigoBarra: TUniDBEdit
        Left = 97
        Top = 35
        Width = 108
        Height = 22
        Hint = ''
        DataField = 'EAN'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 1
        OnExit = eCodigoBarraExit
      end
      object UniLabel3: TUniLabel
        Left = 211
        Top = 16
        Width = 55
        Height = 13
        Hint = ''
        Caption = '* Descri'#231#227'o'
        ParentFont = False
        Font.Color = clRed
        TabOrder = 5
      end
      object dbeNome: TUniDBEdit
        Left = 211
        Top = 35
        Width = 487
        Height = 22
        Hint = ''
        DataField = 'DESCRICAO'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object UniLabel4: TUniLabel
        Left = 704
        Top = 16
        Width = 31
        Height = 13
        Hint = ''
        Caption = '* NCM'
        ParentFont = False
        Font.Color = clRed
        TabOrder = 6
      end
      object cbNCM: TUniDBLookupComboBox
        Left = 704
        Top = 35
        Width = 148
        Hint = ''
        ListField = 'CODIGO'
        ListSource = dsNCM
        KeyField = 'CODIGO'
        ListFieldIndex = 0
        DataField = 'NCM'
        DataSource = dsProdutos
        TabOrder = 7
        Color = clWindow
        Style = csDropDown
        OnExit = cbNCMExit
      end
      object UniLabel5: TUniLabel
        Left = 10
        Top = 65
        Width = 90
        Height = 13
        Hint = ''
        Caption = 'Origem do Produto'
        TabOrder = 8
      end
      object cbOrigem: TUniComboBox
        Left = 3
        Top = 84
        Width = 867
        Hint = ''
        Text = 'cbOrigem'
        Items.Strings = (
          '0 - NACIONAL, EXCETO AS INDICADAS NOS C'#211'DIGOS 3,4,5,8'
          
            '1 - ESTRANGEIRA - IMPORTA'#199#195'O DIRETA, EXCETO A INDICADA NO C'#211'DIGO' +
            ' 6'
          
            '2 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO, EXCETO A INDICAD' +
            'A NO C'#211'DIGO 7'
          
            '3 - NACIONAL, MERCADORIA OU BEM COM CONTE'#218'DO DE IMPORTA'#199#195'O SUPER' +
            'IOR A 40% E INFERIOR OU IGUAL A 70%'
          
            '4 - NACIONAL, CUJA PRODU'#199#195'O TENHA SIDO FEITA EM CONFORMIDADE COM' +
            ' OS PROCESSOS PRODUTIVOS B'#193'SICOS DE QUE TRATAM AS LEGISLA'#199#213'ES CI' +
            'TADAS NOS AJUSTES.'
          
            '5 - NACIONAL, MERCADORIA OU BEM COM CONTE'#218'DO DE IMPORTA'#199#195'O INFER' +
            'IOR OU IGUAL A 40%'
          
            '6 - ESTRANGEIRA - IMPORTA'#199#195'O DIRETA, SEM SIMILAR NACIONAL, CONST' +
            'ANTE EM LISTA DA CAMEX E G'#193'S NATURAL'
          
            '7 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO, SEM SIMILAR NACI' +
            'ONAL, CONSTANTE EM LISTA DA CAMEX E G'#193'S NATURAL'
          
            '8 - NACIONAL, MERCADORIA OU BEM COM CONTE'#218'DO DE IMPORTA'#199#195'O SUPER' +
            'IOR A 70%')
        TabOrder = 9
        IconItems = <>
        OnChange = cbOrigemChange
      end
      object UniLabel6: TUniLabel
        Left = 10
        Top = 113
        Width = 48
        Height = 13
        Hint = ''
        Caption = '* Unidade'
        ParentFont = False
        Font.Color = clRed
        TabOrder = 10
      end
      object eUn: TUniDBEdit
        Left = 10
        Top = 132
        Width = 79
        Height = 22
        Hint = ''
        DataField = 'UN'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 11
      end
      object UniLabel7: TUniLabel
        Left = 101
        Top = 113
        Width = 34
        Height = 13
        Hint = ''
        Caption = '* CEST'
        ParentFont = False
        Font.Color = clRed
        TabOrder = 12
      end
      object cbCEST: TUniDBLookupComboBox
        Left = 95
        Top = 132
        Width = 753
        Hint = ''
        ListField = 'CEST;DESCRICAO'
        ListSource = dsCEST
        KeyField = 'CEST'
        ListFieldIndex = 0
        DataField = 'CEST'
        DataSource = dsProdutos
        TabOrder = 13
        Color = clWindow
        Style = csDropDown
      end
      object UniLabel8: TUniLabel
        Left = 124
        Top = 162
        Width = 28
        Height = 13
        Hint = ''
        Caption = 'Custo'
        TabOrder = 17
      end
      object UniLabel9: TUniLabel
        Left = 125
        Top = 210
        Width = 69
        Height = 13
        Hint = ''
        Caption = '* Pre'#231'o Venda'
        ParentFont = False
        Font.Color = clRed
        TabOrder = 18
      end
      object btnSalva: TUniBitBtn
        Left = 229
        Top = 363
        Width = 98
        Height = 41
        Hint = ''
        Caption = 'Salvar'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 19
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoVerde'#39');'#13#10'}')
        OnClick = btnSalvaClick
      end
      object btnCancela: TUniBitBtn
        Left = 333
        Top = 363
        Width = 98
        Height = 41
        Hint = ''
        Caption = 'Cancelar'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 20
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
        OnClick = btnCancelaClick
      end
      object UniBitBtn1: TUniBitBtn
        Left = 125
        Top = 363
        Width = 98
        Height = 41
        Hint = ''
        Caption = ' Voltar'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 21
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoAzul'#39');'#13#10'}')
        OnClick = UniBitBtn1Click
      end
      object bNCM: TUniSpeedButton
        Left = 854
        Top = 35
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class="fa fa-search "></i>'
        ParentColor = False
        Color = clWindow
        ScreenMask.Enabled = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        TabOrder = 22
        OnClick = bNCMClick
      end
      object bCest: TUniSpeedButton
        Left = 854
        Top = 132
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class="fa fa-search "></i>'
        ParentColor = False
        Color = clWindow
        ScreenMask.Enabled = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        TabOrder = 23
        OnClick = bCestClick
      end
      object btnExcluir: TUniBitBtn
        Left = 437
        Top = 363
        Width = 98
        Height = 41
        Hint = ''
        Caption = 'Excluir'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 24
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        OnClick = btnExcluirClick
      end
      object UniBitBtn6: TUniBitBtn
        Left = 541
        Top = 363
        Width = 98
        Height = 41
        Hint = ''
        Caption = '* Impostos'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 25
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoEscuro'#39');'#13#10'}')
        OnClick = UniBitBtn6Click
      end
      object UniLabel13: TUniLabel
        Left = 10
        Top = 162
        Width = 39
        Height = 13
        Hint = ''
        Caption = 'Estoque'
        TabOrder = 26
      end
      object eCusto: TUniDBFormattedNumberEdit
        Left = 123
        Top = 181
        Width = 109
        Height = 22
        Hint = ''
        DataField = 'CUSTO'
        DataSource = dsProdutos
        TabOrder = 15
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eEstoque: TUniDBFormattedNumberEdit
        Left = 10
        Top = 181
        Width = 81
        Height = 22
        Hint = ''
        Enabled = False
        DataField = 'ESTOQUE'
        DataSource = dsProdutos
        TabOrder = 14
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object evenda: TUniDBFormattedNumberEdit
        Left = 123
        Top = 229
        Width = 109
        Height = 22
        Hint = ''
        DataField = 'PRECO'
        DataSource = dsProdutos
        TabOrder = 16
        DecimalSeparator = ','
        ThousandSeparator = '.'
        OnChange = evendaChange
      end
      object UniLabel14: TUniLabel
        Left = 9
        Top = 210
        Width = 52
        Height = 13
        Hint = ''
        Caption = 'Margem %'
        TabOrder = 27
      end
      object eMargem: TUniDBFormattedNumberEdit
        Left = 10
        Top = 229
        Width = 99
        Height = 22
        Hint = ''
        DataField = 'MARGEM'
        DataSource = dsProdutos
        TabOrder = 28
        DecimalSeparator = ','
        ThousandSeparator = '.'
        OnChange = eMargemChange
      end
      object bEstoque: TUniSpeedButton
        Left = 95
        Top = 181
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class="fa fa-search "></i>'
        ParentColor = False
        Color = clWindow
        ScreenMask.Enabled = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        TabOrder = 29
        OnClick = bEstoqueClick
      end
      object UniRadioGroup2: TUniRadioGroup
        Left = 238
        Top = 163
        Width = 639
        Height = 194
        Hint = ''
        Caption = 
          'ATEN'#199#195'O!!!!!    ->     Apenas para Produtos combustiveis    -   ' +
          ' N'#227'o informar sem conhecimento'
        TabOrder = 30
      end
      object UniLabel10: TUniLabel
        Left = 248
        Top = 185
        Width = 153
        Height = 13
        Hint = ''
        Caption = 'Codigo ANP (para combustiveis)'
        TabOrder = 31
      end
      object eCodigoAnp: TUniDBEdit
        Left = 248
        Top = 205
        Width = 153
        Height = 22
        Hint = ''
        DataField = 'CODIGO_ANP'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 32
      end
      object UniLabel16: TUniLabel
        Left = 407
        Top = 185
        Width = 173
        Height = 13
        Hint = ''
        Caption = 'Descri'#231#227'o do produto conforme ANP'
        TabOrder = 33
      end
      object eDESC_ANP: TUniDBEdit
        Left = 407
        Top = 205
        Width = 445
        Height = 22
        Hint = ''
        DataField = 'DESC_ANP'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 34
      end
      object UniLabel17: TUniLabel
        Left = 248
        Top = 233
        Width = 271
        Height = 13
        Hint = ''
        Caption = 'Percentual do GLP derivado do petr'#243'leo no produto GLP.'
        TabOrder = 35
      end
      object ePGPL_ANP: TUniDBEdit
        Left = 248
        Top = 248
        Width = 153
        Height = 22
        Hint = ''
        DataField = 'PGPL_ANP'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 36
      end
      object UniLabel18: TUniLabel
        Left = 541
        Top = 232
        Width = 311
        Height = 13
        Hint = ''
        Caption = 'Percentual de G'#225's Natural Nacional '#8211' GLGN n para o produto GLP'
        TabOrder = 37
      end
      object UniDBEdit3: TUniDBEdit
        Left = 541
        Top = 248
        Width = 132
        Height = 22
        Hint = ''
        DataField = 'PGNN_ANP'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 38
      end
      object UniLabel19: TUniLabel
        Left = 248
        Top = 273
        Width = 318
        Height = 13
        Hint = ''
        Caption = 'Percentual de G'#225's Natural Importado '#8211' GLGNi para o produto GLP.'
        TabOrder = 39
      end
      object ePGNI_ANP: TUniDBEdit
        Left = 248
        Top = 288
        Width = 153
        Height = 22
        Hint = ''
        DataField = 'PGNI_ANP'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 40
      end
      object UniLabel20: TUniLabel
        Left = 248
        Top = 313
        Width = 76
        Height = 13
        Hint = ''
        Caption = 'Valor de partida'
        TabOrder = 41
      end
      object eVPART_ANP: TUniDBEdit
        Left = 248
        Top = 328
        Width = 153
        Height = 22
        Hint = ''
        DataField = 'VPART_ANP'
        DataSource = dsProdutos
        CharCase = ecUpperCase
        TabOrder = 42
      end
      object UniLabel21: TUniLabel
        Left = 14
        Top = 337
        Width = 191
        Height = 13
        Hint = ''
        Caption = 'Campos em VERMELHO s'#227'o obrigat'#243'rios'
        ParentFont = False
        Font.Color = clRed
        TabOrder = 43
      end
    end
    object TabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Impostos'
      object UniRadioGroup1: TUniRadioGroup
        Left = 3
        Top = 3
        Width = 722
        Height = 105
        Hint = ''
        Caption = 'Opera'#231#227'o de Saida'
        TabOrder = 0
      end
      object UniLabel11: TUniLabel
        Left = 14
        Top = 21
        Width = 187
        Height = 13
        Hint = ''
        Caption = '* Opera'#231#227'o de Saida Dentro do Estado'
        ParentFont = False
        Font.Color = clRed
        TabOrder = 1
      end
      object UniLabel12: TUniLabel
        Left = 14
        Top = 60
        Width = 176
        Height = 13
        Hint = ''
        Caption = '* Opera'#231#227'o de Saida Fora do Estado'
        ParentFont = False
        Font.Color = clRed
        TabOrder = 2
      end
      object cbOpSaidaDentro: TUniDBLookupComboBox
        Left = 14
        Top = 35
        Width = 701
        Hint = ''
        ListField = 'DESCRICAO'
        ListSource = dsTES
        KeyField = 'ID'
        ListFieldIndex = 0
        DataField = 'OPER_SAIDA_DENTRO'
        DataSource = dsProdutos
        TabOrder = 3
        Color = clWindow
        Style = csDropDown
      end
      object cbOpSaidaFora: TUniDBLookupComboBox
        Left = 14
        Top = 77
        Width = 701
        Hint = ''
        ListField = 'DESCRICAO'
        ListSource = dsTES
        KeyField = 'ID'
        ListFieldIndex = 0
        DataField = 'OPER_SAIDA_FORA'
        DataSource = dsProdutos
        TabOrder = 4
        Color = clWindow
        Style = csDropDown
      end
      object UniBitBtn2: TUniBitBtn
        Left = 195
        Top = 127
        Width = 98
        Height = 41
        Hint = ''
        Caption = 'Voltar'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 5
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoEscuro'#39');'#13#10'}')
        OnClick = UniBitBtn2Click
      end
      object UniBitBtn3: TUniBitBtn
        Left = 299
        Top = 127
        Width = 98
        Height = 41
        Hint = ''
        Caption = 'Salvar'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 6
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoEscuro'#39');'#13#10'}')
        OnClick = btnSalvaClick
      end
      object UniBitBtn4: TUniBitBtn
        Left = 403
        Top = 127
        Width = 98
        Height = 41
        Hint = ''
        Caption = 'Cancelar'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 7
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoEscuro'#39');'#13#10'}')
        OnClick = btnCancelaClick
      end
    end
  end
  object dsCEST: TDataSource
    DataSet = UniMainModule.qCEST
    Left = 562
  end
  object dsNCM: TDataSource
    DataSet = UniMainModule.qNCM
    Left = 522
  end
  object dsTES: TDataSource
    DataSet = UniMainModule.qTES
    Left = 482
  end
  object dsProdutos: TDataSource
    DataSet = UniMainModule.qProdutos
    OnStateChange = dsProdutosStateChange
    OnDataChange = dsProdutosDataChange
    Left = 400
  end
end
