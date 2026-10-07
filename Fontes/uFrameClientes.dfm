object frameClientes: TframeClientes
  Left = 0
  Top = 0
  Width = 802
  Height = 510
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 802
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
      Width = 336
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Cadastro de Clientes/Fornecedores'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 2
    end
  end
  object PG: TUniPageControl
    Left = 0
    Top = 49
    Width = 802
    Height = 461
    Hint = ''
    ActivePage = UniTabSheet1
    TabBarVisible = False
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 832
    ExplicitHeight = 382
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'CONSULTA'
      object UniPanel4: TUniPanel
        Left = 0
        Top = 0
        Width = 794
        Height = 62
        Hint = ''
        Align = alTop
        TabOrder = 0
        Caption = ''
        object rFiltro: TUniRadioGroup
          Left = 1
          Top = 1
          Width = 270
          Height = 60
          Hint = ''
          BodyRTL = False
          Items.Strings = (
            'Nome Fantasia'
            'CPF / CNPJ'
            'Raz'#227'o Social'
            'RG / IE')
          ItemIndex = 0
          Align = alLeft
          Caption = ''
          TabOrder = 1
          Columns = 2
        end
        object eCliePesq: TUniEdit
          Left = 277
          Top = 16
          Width = 338
          Height = 30
          Hint = ''
          CharCase = ecUpperCase
          Text = ''
          TabOrder = 2
          EmptyText = 'Digite a sua pesquisa'
        end
        object bPesq: TUniBitBtn
          AlignWithMargins = True
          Left = 621
          Top = 11
          Width = 149
          Height = 38
          Hint = ''
          Caption = 'Pesquisar'
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
        Top = 62
        Width = 794
        Height = 371
        Hint = ''
        DataSource = dsClientes
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
            FieldName = 'NRO'
            Title.Caption = 'Edit'
            Width = 30
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'UF'
            Title.Caption = 'Del'
            Width = 30
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'RAZAOSOCIAL'
            Title.Caption = 'Nome / Raz'#227'o Social'
            Width = 178
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'NOMEFANTASIA'
            Title.Caption = 'Apelido / Nome Fantasia'
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
            FieldName = 'RG_IE'
            Title.Caption = 'RG / IE'
            Width = 112
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'FONE'
            Title.Caption = 'Fone'
            Width = 110
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
        Width = 794
        Height = 433
        Hint = ''
        Align = alTop
        TabOrder = 0
        Caption = ''
        ExplicitWidth = 917
        object UniLabel1: TUniLabel
          Left = 22
          Top = 24
          Width = 33
          Height = 13
          Hint = ''
          Caption = 'C'#243'digo'
          TabOrder = 23
        end
        object UniDBEdit1: TUniDBEdit
          Left = 21
          Top = 40
          Width = 100
          Height = 22
          Hint = ''
          DataField = 'IDCLIENTE'
          DataSource = dsClientes
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
          ParentFont = False
          Font.Color = clRed
          TabOrder = 24
        end
        object eRazao: TUniDBEdit
          Left = 21
          Top = 88
          Width = 355
          Height = 22
          Hint = ''
          DataField = 'RAZAOSOCIAL'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 6
          OnExit = eRazaoExit
        end
        object Label1: TUniLabel
          Left = 383
          Top = 72
          Width = 35
          Height = 13
          Hint = ''
          Caption = 'Apelido'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 25
        end
        object eFantasia: TUniDBEdit
          Left = 383
          Top = 88
          Width = 358
          Height = 22
          Hint = ''
          DataField = 'NOMEFANTASIA'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 7
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  sender.type' +
              'Ahead = true;'#13#10'  sender.selectOnFocus = true; '#13#10'}')
        end
        object Label11: TUniLabel
          Left = 241
          Top = 23
          Width = 19
          Height = 13
          Hint = ''
          Caption = 'CPF'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 26
        end
        object EditCNPJ: TUniDBEdit
          Left = 242
          Top = 39
          Width = 119
          Height = 22
          Hint = ''
          DataField = 'CPF_CNPJ'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 2
          OnExit = EditCNPJExit
        end
        object Label12: TUniLabel
          Left = 413
          Top = 23
          Width = 14
          Height = 13
          Hint = ''
          Caption = 'RG'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 27
        end
        object dbedit8: TUniDBEdit
          Left = 413
          Top = 39
          Width = 100
          Height = 22
          Hint = ''
          DataField = 'RG_IE'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object UniLabel6: TUniLabel
          Left = 149
          Top = 120
          Width = 45
          Height = 13
          Hint = ''
          Caption = 'Endere'#231'o'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 28
        end
        object UniDBEdit6: TUniDBEdit
          Left = 149
          Top = 136
          Width = 505
          Height = 22
          Hint = ''
          DataField = 'ENDERECO'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 9
        end
        object UniLabel7: TUniLabel
          Left = 660
          Top = 120
          Width = 37
          Height = 13
          Hint = ''
          Caption = 'Numero'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 29
        end
        object eNumero: TUniDBEdit
          Left = 660
          Top = 136
          Width = 85
          Height = 22
          Hint = ''
          DataField = 'NRO'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 10
        end
        object UniLabel8: TUniLabel
          Left = 22
          Top = 168
          Width = 65
          Height = 13
          Hint = ''
          Caption = 'Complemento'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 30
        end
        object UniDBEdit8: TUniDBEdit
          Left = 22
          Top = 184
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'COMPLEMENTO'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 11
        end
        object UniLabel9: TUniLabel
          Left = 149
          Top = 168
          Width = 28
          Height = 13
          Hint = ''
          Caption = 'Bairro'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 31
        end
        object UniDBEdit9: TUniDBEdit
          Left = 149
          Top = 184
          Width = 188
          Height = 22
          Hint = ''
          DataField = 'BAIRRO'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 12
        end
        object UniLabel10: TUniLabel
          Left = 660
          Top = 168
          Width = 59
          Height = 13
          Hint = ''
          Caption = 'C'#243'digo IBGE'
          TabOrder = 32
        end
        object dbIbge: TUniDBEdit
          Left = 660
          Top = 184
          Width = 85
          Height = 22
          Hint = ''
          DataField = 'CODMUNICIPIO'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 15
        end
        object UniLabel11: TUniLabel
          Left = 22
          Top = 120
          Width = 19
          Height = 13
          Hint = ''
          Caption = 'CEP'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 33
        end
        object eCEP: TUniDBEdit
          Left = 22
          Top = 136
          Width = 99
          Height = 22
          Hint = ''
          DataField = 'CEP'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 8
        end
        object UniLabel12: TUniLabel
          Left = 21
          Top = 216
          Width = 24
          Height = 13
          Hint = ''
          Caption = 'Fone'
          TabOrder = 34
        end
        object UniDBEdit12: TUniDBEdit
          Left = 22
          Top = 232
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'FONE'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 16
        end
        object UniLabel13: TUniLabel
          Left = 148
          Top = 216
          Width = 18
          Height = 13
          Hint = ''
          Caption = 'Fax'
          TabOrder = 35
        end
        object UniDBEdit13: TUniDBEdit
          Left = 150
          Top = 232
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'FAX'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 17
        end
        object UniLabel14: TUniLabel
          Left = 279
          Top = 216
          Width = 58
          Height = 13
          Hint = ''
          Caption = 'Observa'#231#227'o'
          TabOrder = 36
        end
        object UniDBEdit14: TUniDBEdit
          Left = 277
          Top = 232
          Width = 468
          Height = 22
          Hint = ''
          DataField = 'OBSERVACAO'
          DataSource = dsClientes
          CharCase = ecUpperCase
          TabOrder = 18
        end
        object UniLabel15: TUniLabel
          Left = 128
          Top = 24
          Width = 65
          Height = 13
          Hint = ''
          Caption = 'Tipo (Pessoa)'
          TabOrder = 37
        end
        object UniLabel16: TUniLabel
          Left = 517
          Top = 23
          Width = 81
          Height = 13
          Hint = ''
          Caption = 'Consumidor Final'
          TabOrder = 38
        end
        object UniLabel17: TUniLabel
          Left = 341
          Top = 168
          Width = 13
          Height = 13
          Hint = ''
          Caption = 'UF'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 39
        end
        object UniLabel18: TUniLabel
          Left = 391
          Top = 168
          Width = 43
          Height = 13
          Hint = ''
          Caption = 'Munic'#237'pio'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 40
        end
        object dblTipo: TUniDBComboBox
          Left = 128
          Top = 40
          Width = 108
          Hint = ''
          DataField = 'TIPOPESSOA'
          DataSource = dsClientes
          Items.Strings = (
            'FISICA'
            'JURIDICA')
          TabOrder = 1
          IconItems = <>
        end
        object dbcCf: TUniDBComboBox
          Left = 517
          Top = 39
          Width = 81
          Hint = ''
          DataField = 'CONSUMIDORFINAL'
          DataSource = dsClientes
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 4
          IconItems = <>
        end
        object dblUf: TUniDBComboBox
          Left = 339
          Top = 184
          Width = 50
          Hint = ''
          DataField = 'UF'
          DataSource = dsClientes
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
          OnChange = dblUfChange
        end
        object dblMunicipio: TUniDBLookupComboBox
          Left = 391
          Top = 184
          Width = 240
          Hint = ''
          ListField = 'NOME'
          ListSource = dsIbge
          KeyField = 'NOME'
          ListFieldIndex = 0
          DataField = 'CIDADE'
          DataSource = dsClientes
          TabOrder = 14
          Color = clWindow
          Style = csDropDown
          OnChange = dblMunicipioChange
        end
        object btnVoltar: TUniBitBtn
          Left = 221
          Top = 365
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Voltar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 41
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzulEscuro'#39');'#13#10'}')
          OnClick = btnVoltarClick
        end
        object btnSalva: TUniBitBtn
          Left = 325
          Top = 365
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Salvar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 21
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVerde'#39');'#13#10'}')
          OnClick = btnSalvaClick
        end
        object btnCancela: TUniBitBtn
          Left = 429
          Top = 365
          Width = 98
          Height = 41
          Hint = ''
          Caption = 'Cancelar'
          ParentFont = False
          Font.Color = clWhite
          Font.Style = [fsBold]
          TabOrder = 42
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
          OnClick = btnCancelaClick
        end
        object bCep: TUniSpeedButton
          Left = 120
          Top = 136
          Width = 23
          Height = 22
          Hint = ''
          Caption = '<i class="fa fa-search "></i>'
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Aguarde... Consultando o CEP informado.'
          ScreenMask.Target = Owner
          TabOrder = 43
          OnClick = bCepClick
        end
        object bCnpj: TUniSpeedButton
          Left = 363
          Top = 38
          Width = 23
          Height = 22
          Hint = ''
          Caption = '<i class="fa fa-search "></i>'
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde... Carregando Captcha'
          ScreenMask.Target = Owner
          TabOrder = 44
          OnClick = bCnpjClick
        end
        object bCidade: TUniSpeedButton
          Left = 631
          Top = 182
          Width = 23
          Height = 22
          Hint = ''
          Caption = '<i class="fa fa-search "></i>'
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          TabOrder = 46
          OnClick = bCidadeClick
        end
        object UniLabel2: TUniLabel
          Left = 604
          Top = 22
          Width = 73
          Height = 13
          Hint = ''
          Caption = 'Tipo de Regime'
          TabOrder = 47
        end
        object UniDBComboBox1: TUniDBComboBox
          Left = 604
          Top = 38
          Width = 137
          Hint = ''
          DataField = 'REGIMECLIENTE'
          DataSource = dsClientes
          Items.Strings = (
            'NENHUM'
            'SIMPLES NACIONAL'
            'REGIME NORMAL')
          ItemIndex = 0
          TabOrder = 5
          IconItems = <>
        end
        object bCnpj2: TUniSpeedButton
          Left = 387
          Top = 38
          Width = 23
          Height = 22
          Hint = ''
          Caption = '<i class="fa fa-search "></i>'
          ParentColor = False
          Color = clWindow
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Aguarde... Carregando Captcha'
          ScreenMask.Target = Owner
          TabOrder = 48
          OnClick = bCnpj2Click
        end
        object dbTipo: TUniDBRadioGroup
          Left = 559
          Top = 260
          Width = 186
          Height = 93
          Hint = ''
          DataField = 'TIPO'
          DataSource = dsClientes
          Caption = 'tipo de cliente'
          TabOrder = 49
          Items.Strings = (
            'Cliente'
            'Fornecedor'
            'ambos')
          Columns = 2
          Values.Strings = (
            'C'
            'F'
            'A')
        end
        object pCNPJ: TUniPanel
          Left = 75
          Top = 66
          Width = 589
          Height = 178
          Hint = ''
          Visible = False
          TabOrder = 45
          Caption = ''
          Color = clWhite
          object UniPanel2: TUniPanel
            Left = 38
            Top = 31
            Width = 256
            Height = 119
            Hint = ''
            TabOrder = 3
            Caption = ''
            object Image1: TUniImage
              Left = 1
              Top = 1
              Width = 254
              Height = 94
              Hint = ''
              Stretch = True
              Align = alTop
            end
            object UniLabel3: TUniLabel
              Left = 1
              Top = 95
              Width = 254
              Height = 23
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'Atualizar Captcha'
              Align = alBottom
              ParentFont = False
              Font.Color = clBlue
              Font.Height = -16
              Font.Style = [fsBold, fsUnderline]
              TabOrder = 2
              ScreenMask.Enabled = True
              ScreenMask.WaitData = True
              ScreenMask.Message = 'Aguarde... Carregando Captcha'
              ScreenMask.Target = Owner
              OnClick = UniLabel3Click
            end
          end
          object UniLabel4: TUniLabel
            Left = 313
            Top = 40
            Width = 92
            Height = 13
            Hint = ''
            Caption = 'Digite o Captcha'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
          end
          object EditCaptcha: TUniEdit
            Left = 313
            Top = 60
            Width = 232
            Height = 40
            Hint = ''
            Text = ''
            ParentFont = False
            Font.Height = -21
            TabOrder = 0
          end
          object bEnviarEmal: TUniBitBtn
            Left = 315
            Top = 105
            Width = 111
            Height = 33
            Hint = ''
            Caption = 'Consultar'
            ParentFont = False
            Font.Color = clWhite
            Font.Style = [fsBold]
            TabOrder = 1
            ClientEvents.ExtEvents.Strings = (
              
                'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
                '.addCls('#39'BotaoVerde'#39');'#13#10'}')
            ScreenMask.Enabled = True
            ScreenMask.WaitData = True
            ScreenMask.Message = 'Aguarde... Realizando a consulta'
            ScreenMask.Target = Owner
            OnClick = bEnviarEmalClick
          end
          object bCancelarEmail: TUniBitBtn
            Left = 429
            Top = 105
            Width = 111
            Height = 33
            Hint = ''
            Caption = 'Cancelar'
            ParentFont = False
            Font.Color = clWhite
            Font.Style = [fsBold]
            TabOrder = 5
            ClientEvents.ExtEvents.Strings = (
              
                'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
                '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
            OnClick = bCancelarEmailClick
          end
        end
        object UniLabel19: TUniLabel
          Left = 24
          Top = 262
          Width = 28
          Height = 13
          Hint = ''
          Caption = 'E-mail'
          TabOrder = 50
        end
        object UniDBEdit2: TUniDBEdit
          Left = 22
          Top = 278
          Width = 401
          Height = 22
          Hint = ''
          DataField = 'EMAIL'
          DataSource = dsClientes
          CharCase = ecLowerCase
          TabOrder = 19
        end
        object cEnvioAutomatico: TUniDBCheckBox
          Left = 429
          Top = 278
          Width = 108
          Height = 17
          Hint = ''
          DataField = 'EMAILAUTOMATICO'
          DataSource = dsClientes
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          Caption = 'Enviar Automatico'
          TabOrder = 20
          ParentColor = False
          Color = clBtnFace
        end
        object UniLabel20: TUniLabel
          Left = 24
          Top = 304
          Width = 81
          Height = 13
          Hint = ''
          Caption = 'Data Nascimento'
          TabOrder = 51
        end
        object UniDBDateTimePicker1: TUniDBDateTimePicker
          Left = 24
          Top = 323
          Width = 120
          Hint = ''
          DataField = 'DATANASCIMENTO'
          DataSource = dsClientes
          DateTime = 43409.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 52
        end
        object UniLabel21: TUniLabel
          Left = 12
          Top = 392
          Width = 191
          Height = 13
          Hint = ''
          Caption = 'Campos em VERMELHO s'#227'o obrigat'#243'rios'
          ParentFont = False
          Font.Color = clRed
          TabOrder = 53
        end
      end
    end
  end
  object dsIbge: TDataSource
    DataSet = UniMainModule.qIbge
    Left = 516
    Top = 215
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.qClientes
    OnStateChange = dsClientesStateChange
    OnDataChange = dsClientesDataChange
    Left = 513
    Top = 161
  end
end
