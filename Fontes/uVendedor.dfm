object fVendedor: TfVendedor
  Left = 0
  Top = 0
  Width = 853
  Height = 445
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 853
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    object btnInclui: TUniBitBtn
      Left = 0
      Top = 0
      Width = 105
      Height = 49
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
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 47
    end
    object UniLabel5: TUniLabel
      AlignWithMargins = True
      Left = 115
      Top = 5
      Width = 232
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Cadastro de Vendedores'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 2
      ExplicitLeft = 116
      ExplicitTop = 6
      ExplicitHeight = 33
    end
  end
  object PG: TUniPageControl
    Left = 0
    Top = 49
    Width = 853
    Height = 396
    Hint = ''
    ActivePage = UniTabSheet1
    TabBarVisible = False
    Align = alClient
    TabOrder = 1
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'CONSULTA'
      object UniPanel4: TUniPanel
        Left = 0
        Top = 0
        Width = 845
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
        Width = 845
        Height = 335
        Hint = ''
        DataSource = dsVendedores
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        LoadMask.Message = 'Carregando...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        OnCellClick = UniDBGrid1CellClick
        OnFieldImage = UniDBGrid1FieldImage
        Columns = <
          item
            FieldName = 'LOGIN'
            Title.Caption = 'Edit'
            Width = 30
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
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
            FieldName = 'NOME_VENDA'
            Title.Caption = 'NOME VENDA'
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
        Width = 845
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
          TabOrder = 8
        end
        object UniDBEdit1: TUniDBEdit
          Left = 21
          Top = 40
          Width = 121
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'CODIGO'
          DataSource = dsVendedores
          CharCase = ecUpperCase
          TabOrder = 6
          ReadOnly = True
        end
        object Label9: TUniLabel
          Left = 20
          Top = 72
          Width = 75
          Height = 13
          Hint = ''
          Caption = 'Nome Completo'
          TabOrder = 9
        end
        object dbNome: TUniDBEdit
          Left = 21
          Top = 88
          Width = 284
          Height = 22
          Hint = ''
          DataField = 'NOME'
          DataSource = dsVendedores
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Label11: TUniLabel
          Left = 25
          Top = 216
          Width = 45
          Height = 13
          Hint = ''
          Caption = 'Comiss'#227'o'
          TabOrder = 10
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
          TabOrder = 11
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
          TabOrder = 5
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
          TabOrder = 12
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
          TabOrder = 13
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        end
        object UniLabel2: TUniLabel
          Left = 318
          Top = 72
          Width = 75
          Height = 13
          Hint = ''
          Caption = 'Nome na Venda'
          TabOrder = 14
        end
        object UniDBEdit2: TUniDBEdit
          Left = 319
          Top = 88
          Width = 284
          Height = 22
          Hint = ''
          DataField = 'NOME_VENDA'
          DataSource = dsVendedores
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object UniLabel3: TUniLabel
          Left = 23
          Top = 120
          Width = 25
          Height = 13
          Hint = ''
          Caption = 'Login'
          TabOrder = 15
        end
        object UniDBEdit3: TUniDBEdit
          Left = 25
          Top = 139
          Width = 284
          Height = 22
          Hint = ''
          DataField = 'LOGIN'
          DataSource = dsVendedores
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object UniLabel4: TUniLabel
          Left = 23
          Top = 168
          Width = 30
          Height = 13
          Hint = ''
          Caption = 'Senha'
          TabOrder = 16
        end
        object UniDBEdit4: TUniDBEdit
          Left = 24
          Top = 184
          Width = 284
          Height = 22
          Hint = ''
          DataField = 'SENHA'
          DataSource = dsVendedores
          PasswordChar = '*'
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object evenda: TUniDBFormattedNumberEdit
          Left = 25
          Top = 235
          Width = 99
          Height = 22
          Hint = ''
          DataField = 'COMISSAO'
          DataSource = dsVendedores
          TabOrder = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
    end
  end
  object dsVendedores: TDataSource
    DataSet = qVendedor
    OnStateChange = dsVendedoresStateChange
    Left = 737
    Top = 185
  end
  object qVendedor: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    Transaction = tVendedores
    SQL.Strings = (
      'select * from VENDEDORES where 1=2 ')
    Left = 736
    Top = 136
    object qVendedorIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
    object qVendedorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qVendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object qVendedorLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 60
    end
    object qVendedorSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 60
    end
    object qVendedorNOME_VENDA: TStringField
      FieldName = 'NOME_VENDA'
      Origin = 'NOME_VENDA'
      Size = 60
    end
    object qVendedorCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
  end
  object tVendedores: TFDTransaction
    Connection = UniMainModule.Banco
    Left = 736
    Top = 232
  end
end
