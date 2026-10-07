object frmTransp: TfrmTransp
  Left = 0
  Top = 0
  Width = 781
  Height = 518
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 781
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
      ScreenMask.Color = 4276545
      OnClick = btnIncluiClick
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 41
    end
    object UniLabel6: TUniLabel
      AlignWithMargins = True
      Left = 121
      Top = 5
      Width = 277
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Cadastro de Transportadoras'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 2
      ExplicitLeft = 122
      ExplicitTop = 6
      ExplicitHeight = 33
    end
  end
  object PG: TUniPageControl
    Left = 0
    Top = 49
    Width = 781
    Height = 469
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
        Width = 773
        Height = 36
        Hint = ''
        Align = alTop
        TabOrder = 0
        Caption = ''
        object rFiltro: TUniRadioGroup
          Left = 1
          Top = 1
          Width = 142
          Height = 34
          Hint = ''
          Items.Strings = (
            'Nome'
            'Cpf/Cnpj')
          ItemIndex = 0
          Align = alLeft
          Caption = ''
          TabOrder = 1
          Columns = 2
        end
        object eCliePesq: TUniEdit
          Left = 143
          Top = 1
          Width = 459
          Height = 34
          Hint = ''
          CharCase = ecUpperCase
          Text = ''
          Align = alLeft
          TabOrder = 2
          EmptyText = 'Digite a sua pesquisa'
        end
        object bPesq: TUniBitBtn
          AlignWithMargins = True
          Left = 605
          Top = 4
          Width = 149
          Height = 28
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
          ExplicitLeft = 651
        end
      end
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 36
        Width = 773
        Height = 405
        Hint = ''
        DataSource = dsTransp
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        LoadMask.Message = 'Carregando...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        OnCellClick = UniDBGrid1CellClick
        OnDblClick = UniDBGrid1DblClick
        OnFieldImage = UniDBGrid1FieldImage
        Columns = <
          item
            FieldName = 'NUMERO'
            Title.Caption = 'Editar'
            Width = 30
            Alignment = taCenter
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'UF'
            Title.Caption = 'Apagar'
            Width = 30
            Alignment = taCenter
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'NOME'
            Title.Caption = 'Nome / Nome Fantasia'
            Width = 178
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'TELEFONE'
            Title.Caption = 'Fone'
            Width = 195
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'CPF_CNPJ'
            Title.Caption = 'CPF / CNPJ'
            Width = 140
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'ENDERECO'
            Title.Caption = 'RG / IE'
            Width = 112
            Menu.MenuEnabled = False
          end>
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'CADASTRO'
      object UniPanel3: TUniPanel
        Left = 0
        Top = 0
        Width = 773
        Height = 425
        Hint = ''
        Align = alTop
        TabOrder = 0
        Caption = ''
        object btnVoltar: TUniBitBtn
          Left = 239
          Top = 299
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Voltar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 17
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzulEscuro'#39');'#13#10'}')
          OnClick = btnVoltarClick
        end
        object btnSalva: TUniBitBtn
          Left = 343
          Top = 299
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Salvar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 15
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVerde'#39');'#13#10'}')
          OnClick = btnSalvaClick
        end
        object btnCancela: TUniBitBtn
          Left = 447
          Top = 299
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Cancelar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 18
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
          OnClick = btnCancelaClick
        end
        object UniLabel15: TUniLabel
          Left = 149
          Top = 24
          Width = 65
          Height = 13
          Hint = ''
          Caption = 'Tipo (Pessoa)'
          TabOrder = 19
        end
        object dblTipo: TUniDBComboBox
          Left = 149
          Top = 40
          Width = 133
          Hint = ''
          DataField = 'TIPOPESSOA'
          DataSource = dsTransp
          Items.Strings = (
            'FISICA'
            'JURIDICA')
          TabOrder = 1
          IconItems = <>
        end
        object UniLabel1: TUniLabel
          Left = 22
          Top = 24
          Width = 33
          Height = 13
          Hint = ''
          Caption = 'C'#243'digo'
          TabOrder = 20
        end
        object UniDBEdit1: TUniDBEdit
          Left = 22
          Top = 40
          Width = 121
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'IDTRANSP'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 0
          ReadOnly = True
        end
        object EditCNPJ: TUniDBEdit
          Left = 290
          Top = 40
          Width = 139
          Height = 22
          Hint = ''
          DataField = 'CPF_CNPJ'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object Label12: TUniLabel
          Left = 432
          Top = 24
          Width = 10
          Height = 13
          Hint = ''
          Caption = 'IE'
          TabOrder = 21
        end
        object dbedit8: TUniDBEdit
          Left = 432
          Top = 40
          Width = 170
          Height = 22
          Hint = ''
          DataField = 'IE'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object Label11: TUniLabel
          Left = 289
          Top = 24
          Width = 25
          Height = 13
          Hint = ''
          Caption = 'CNPJ'
          TabOrder = 22
        end
        object Label9: TUniLabel
          Left = 22
          Top = 67
          Width = 27
          Height = 13
          Hint = ''
          Caption = 'Nome'
          TabOrder = 23
        end
        object dbeNome: TUniDBEdit
          Left = 22
          Top = 81
          Width = 355
          Height = 22
          Hint = ''
          DataField = 'NOME'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object UniLabel2: TUniLabel
          Left = 22
          Top = 107
          Width = 45
          Height = 13
          Hint = ''
          Caption = 'Endere'#231'o'
          TabOrder = 24
        end
        object UniDBEdit2: TUniDBEdit
          Left = 22
          Top = 123
          Width = 355
          Height = 22
          Hint = ''
          DataField = 'ENDERECO'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object UniLabel3: TUniLabel
          Left = 383
          Top = 107
          Width = 37
          Height = 13
          Hint = ''
          Caption = 'Numero'
          TabOrder = 25
        end
        object UniDBEdit3: TUniDBEdit
          Left = 383
          Top = 123
          Width = 59
          Height = 22
          Hint = ''
          DataField = 'NUMERO'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 6
        end
        object UniLabel4: TUniLabel
          Left = 22
          Top = 151
          Width = 28
          Height = 13
          Hint = ''
          Caption = 'Bairro'
          TabOrder = 26
        end
        object UniDBEdit4: TUniDBEdit
          Left = 22
          Top = 167
          Width = 355
          Height = 22
          Hint = ''
          DataField = 'BAIRRO'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 7
        end
        object UniLabel5: TUniLabel
          Left = 383
          Top = 151
          Width = 33
          Height = 13
          Hint = ''
          Caption = 'Cidade'
          TabOrder = 27
        end
        object UniDBEdit5: TUniDBEdit
          Left = 379
          Top = 167
          Width = 315
          Height = 22
          Hint = ''
          DataField = 'MUNICIPIO'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 8
        end
        object UniLabel7: TUniLabel
          Left = 697
          Top = 151
          Width = 13
          Height = 13
          Hint = ''
          Caption = 'UF'
          TabOrder = 28
        end
        object UniLabel8: TUniLabel
          Left = 22
          Top = 194
          Width = 24
          Height = 13
          Hint = ''
          Caption = 'Fone'
          TabOrder = 29
        end
        object UniDBEdit8: TUniDBEdit
          Left = 22
          Top = 210
          Width = 195
          Height = 22
          Hint = ''
          DataField = 'TELEFONE'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 10
        end
        object UniLabel9: TUniLabel
          Left = 220
          Top = 194
          Width = 28
          Height = 13
          Hint = ''
          Caption = 'e-Mail'
          TabOrder = 30
        end
        object UniDBEdit9: TUniDBEdit
          Left = 220
          Top = 210
          Width = 516
          Height = 22
          Hint = ''
          DataField = 'EMAIL'
          DataSource = dsTransp
          CharCase = ecLowerCase
          TabOrder = 11
        end
        object UniLabel10: TUniLabel
          Left = 22
          Top = 239
          Width = 103
          Height = 13
          Hint = ''
          Caption = 'Placa Veiculo Principal'
          TabOrder = 31
        end
        object UniDBEdit6: TUniDBEdit
          Left = 22
          Top = 258
          Width = 195
          Height = 22
          Hint = ''
          DataField = 'PLACA'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 12
        end
        object UniLabel11: TUniLabel
          Left = 290
          Top = 242
          Width = 26
          Height = 13
          Hint = ''
          Caption = 'ANTT'
          TabOrder = 32
        end
        object UniDBEdit10: TUniDBEdit
          Left = 290
          Top = 261
          Width = 195
          Height = 22
          Hint = ''
          DataField = 'ANTT'
          DataSource = dsTransp
          CharCase = ecUpperCase
          TabOrder = 14
        end
        object dblUf: TUniDBComboBox
          Left = 223
          Top = 258
          Width = 50
          Hint = ''
          DataField = 'PLACAUF'
          DataSource = dsTransp
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
          TabOrder = 13
          IconItems = <>
        end
        object UniLabel12: TUniLabel
          Left = 223
          Top = 239
          Width = 41
          Height = 13
          Hint = ''
          Caption = 'UF Placa'
          TabOrder = 33
        end
        object UniDBComboBox1: TUniDBComboBox
          Left = 697
          Top = 167
          Width = 50
          Hint = ''
          DataField = 'UF'
          DataSource = dsTransp
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
          TabOrder = 9
          IconItems = <>
        end
      end
    end
  end
  object dsTransp: TDataSource
    DataSet = UniMainModule.qTransp
    OnStateChange = dsTranspStateChange
    Left = 716
    Top = 81
  end
end
