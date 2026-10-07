object fVeiculos: TfVeiculos
  Left = 0
  Top = 0
  Width = 886
  Height = 507
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 886
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    object btnInclui: TUniBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 105
      Height = 41
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
      ScreenMask.Color = 4276545
      OnClick = btnIncluiClick
    end
    object UniLabel5: TUniLabel
      AlignWithMargins = True
      Left = 122
      Top = 6
      Width = 200
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Cadastro de Veiculos'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 2
      ExplicitHeight = 33
    end
  end
  object PG: TUniPageControl
    Left = 0
    Top = 49
    Width = 886
    Height = 458
    Hint = ''
    ActivePage = UniTabSheet2
    TabBarVisible = False
    Align = alClient
    TabOrder = 1
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'CONSULTA'
      object UniPanel4: TUniPanel
        Left = 0
        Top = 0
        Width = 878
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
            'Carro'
            'Placa')
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
          Caption = '<i class="fa fa-search fa-1x "></i> Pesquisar'
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
        Width = 878
        Height = 397
        Hint = ''
        DataSource = dsVeiculos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        LoadMask.Message = 'Carregando...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        OnCellClick = UniDBGrid1CellClick
        OnFieldImage = UniDBGrid1FieldImage
        Columns = <
          item
            FieldName = 'ID'
            Title.Caption = 'Edit'
            Width = 30
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'CODIGO'
            Title.Caption = 'Del'
            Width = 19
          end
          item
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 72
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'CARRO'
            Title.Caption = 'Carro'
            Width = 300
          end
          item
            FieldName = 'PLACA'
            Title.Caption = 'Placa'
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
        Width = 878
        Height = 417
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
          TabOrder = 7
        end
        object UniDBEdit1: TUniDBEdit
          Left = 21
          Top = 40
          Width = 121
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'CODIGO'
          DataSource = dsVeiculos
          CharCase = ecUpperCase
          TabOrder = 0
          ReadOnly = True
        end
        object Label9: TUniLabel
          Left = 20
          Top = 72
          Width = 27
          Height = 13
          Hint = ''
          Caption = 'Nome'
          TabOrder = 8
        end
        object dbCarro: TUniDBEdit
          Left = 22
          Top = 91
          Width = 355
          Height = 22
          Hint = ''
          DataField = 'CARRO'
          DataSource = dsVeiculos
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Label11: TUniLabel
          Left = 23
          Top = 120
          Width = 25
          Height = 13
          Hint = ''
          Caption = 'Placa'
          TabOrder = 9
        end
        object dbPlaca: TUniDBEdit
          Left = 22
          Top = 136
          Width = 139
          Height = 22
          Hint = ''
          DataField = 'PLACA'
          DataSource = dsVeiculos
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object btnVoltar: TUniBitBtn
          Left = 175
          Top = 331
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Voltar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 10
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzulEscuro'#39');'#13#10'}')
          OnClick = btnVoltarClick
        end
        object btnSalva: TUniBitBtn
          Left = 279
          Top = 331
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
          Top = 331
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Cancelar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 11
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
          OnClick = btnCancelaClick
        end
        object btnExcluir: TUniBitBtn
          Left = 487
          Top = 331
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Excluir'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 12
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        end
        object UniLabel2: TUniLabel
          Left = 24
          Top = 168
          Width = 13
          Height = 13
          Hint = ''
          Caption = 'UF'
          TabOrder = 13
        end
        object dbUF: TUniDBComboBox
          Left = 24
          Top = 187
          Width = 50
          Hint = ''
          DataField = 'UF'
          DataSource = dsVeiculos
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
          TabOrder = 3
          IconItems = <>
        end
        object UniLabel3: TUniLabel
          Left = 25
          Top = 224
          Width = 22
          Height = 13
          Hint = ''
          Caption = 'Tara'
          TabOrder = 14
        end
        object dbTara: TUniDBFormattedNumberEdit
          Left = 25
          Top = 243
          Width = 138
          Height = 22
          Hint = ''
          DataField = 'TARA'
          DataSource = dsVeiculos
          TabOrder = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
    end
  end
  object dsVeiculos: TDataSource
    DataSet = UniMainModule.qVeiculo
    OnStateChange = dsVeiculosStateChange
    Left = 409
    Top = 1
  end
end
