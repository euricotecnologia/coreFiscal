object fServico: TfServico
  Left = 0
  Top = 0
  Width = 824
  Height = 450
  TabOrder = 0
  object PG: TUniPageControl
    Left = 0
    Top = 49
    Width = 824
    Height = 401
    Hint = ''
    ActivePage = UniTabSheet1
    TabBarVisible = False
    Align = alClient
    TabOrder = 0
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'CONSULTA'
      object UniPanel4: TUniPanel
        Left = 0
        Top = 0
        Width = 816
        Height = 33
        Hint = ''
        Align = alTop
        TabOrder = 0
        Caption = ''
        object rFiltro: TUniRadioGroup
          Left = 1
          Top = 1
          Width = 142
          Height = 31
          Hint = ''
          Visible = False
          Items.Strings = (
            'Nome'
            'Login')
          ItemIndex = 0
          Align = alLeft
          Caption = ''
          TabOrder = 1
          Columns = 2
        end
        object eCliePesq: TUniEdit
          Left = 143
          Top = 1
          Width = 505
          Height = 31
          Hint = ''
          CharCase = ecUpperCase
          Text = ''
          Align = alLeft
          TabOrder = 2
          EmptyText = 'Digite a sua pesquisa'
        end
        object bPesq: TUniBitBtn
          Left = 648
          Top = 1
          Width = 149
          Height = 31
          Hint = ''
          Caption = 'Pesquisar'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          TabOrder = 3
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzul'#39');'#13#10'}')
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          OnClick = bPesqClick
        end
      end
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 33
        Width = 816
        Height = 340
        Hint = ''
        DataSource = dsServicos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        LoadMask.Message = 'Carregando...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        OnDblClick = UniDBGrid1DblClick
        Columns = <
          item
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 72
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'NOME'
            Title.Caption = 'NOME'
            Width = 300
          end
          item
            FieldName = 'VALOR'
            Title.Caption = 'VALOR'
            Width = 229
          end>
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'CADASTRO'
      object UniPanel3: TUniPanel
        Left = 0
        Top = 0
        Width = 816
        Height = 355
        Hint = ''
        Align = alTop
        TabOrder = 0
        Caption = ''
        object UniLabel1: TUniLabel
          Left = 22
          Top = 24
          Width = 33
          Height = 13
          Hint = ''
          Caption = 'C'#243'digo'
          TabOrder = 6
        end
        object UniDBEdit1: TUniDBEdit
          Left = 21
          Top = 40
          Width = 121
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'CODIGO'
          DataSource = dsServicos
          CharCase = ecUpperCase
          TabOrder = 0
          ReadOnly = True
        end
        object Label9: TUniLabel
          Left = 20
          Top = 72
          Width = 80
          Height = 13
          Hint = ''
          Caption = 'Nome do Servi'#231'o'
          TabOrder = 7
        end
        object dbNome: TUniDBEdit
          Left = 21
          Top = 88
          Width = 284
          Height = 22
          Hint = ''
          DataField = 'NOME'
          DataSource = dsServicos
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Label11: TUniLabel
          Left = 22
          Top = 128
          Width = 77
          Height = 13
          Hint = ''
          Caption = 'Valor do Servi'#231'o'
          TabOrder = 8
        end
        object btnVoltar: TUniBitBtn
          Left = 175
          Top = 283
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Voltar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 9
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzulEscuro'#39');'#13#10'}')
          OnClick = btnVoltarClick
        end
        object btnSalva: TUniBitBtn
          Left = 279
          Top = 283
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Salvar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 4
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVerde'#39');'#13#10'}')
          OnClick = btnSalvaClick
        end
        object btnCancela: TUniBitBtn
          Left = 383
          Top = 283
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Cancelar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 10
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
          OnClick = btnCancelaClick
        end
        object btnExcluir: TUniBitBtn
          Left = 487
          Top = 283
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Excluir'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 11
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        end
        object evenda: TUniDBFormattedNumberEdit
          Left = 22
          Top = 147
          Width = 146
          Height = 22
          Hint = ''
          DataField = 'VALOR'
          DataSource = dsServicos
          TabOrder = 2
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniLabel2: TUniLabel
          Left = 174
          Top = 128
          Width = 45
          Height = 13
          Hint = ''
          Caption = 'Comiss'#227'o'
          TabOrder = 12
        end
        object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
          Left = 174
          Top = 147
          Width = 131
          Height = 22
          Hint = ''
          DataField = 'COMISSAO'
          DataSource = dsServicos
          TabOrder = 3
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    object btnInclui: TUniBitBtn
      Left = 1
      Top = 1
      Width = 105
      Height = 47
      Hint = ''
      Caption = 'Novo'
      Cancel = True
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVerde'#39');'#13#10'}')
      ScreenMask.Color = 4276545
      OnClick = btnIncluiClick
    end
    object UniLabel5: TUniLabel
      AlignWithMargins = True
      Left = 116
      Top = 6
      Width = 200
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Cadastro de Servi'#231'os'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 2
      ExplicitHeight = 33
    end
  end
  object qServico: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    Transaction = tServico
    SQL.Strings = (
      'select * from SERVICOS where 1=2 ')
    Left = 736
    Top = 136
    object qServicoIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qServicoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qServicoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object qServicoVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object qServicoCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
  end
  object tServico: TFDTransaction
    Connection = UniMainModule.Banco
    Left = 736
    Top = 232
  end
  object dsServicos: TDataSource
    DataSet = qServico
    OnStateChange = dsServicosStateChange
    Left = 737
    Top = 185
  end
end
