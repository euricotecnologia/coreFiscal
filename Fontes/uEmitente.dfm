object fEmitente: TfEmitente
  Left = 0
  Top = 0
  Width = 969
  Height = 559
  OnCreate = UniFormCreate
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 18
    Caption = ''
    object btnSalva: TUniBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 102
      Height = 41
      Hint = ''
      Caption = 'Salvar'
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
      ScreenMask.Message = 'Aguarde...'
      ScreenMask.Target = Owner
      OnClick = btnSalvaClick
    end
    object btnCancela: TUniBitBtn
      AlignWithMargins = True
      Left = 112
      Top = 4
      Width = 102
      Height = 41
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
      OnClick = btnCancelaClick
    end
    object btnExcluir: TUniBitBtn
      AlignWithMargins = True
      Left = 220
      Top = 4
      Width = 102
      Height = 41
      Hint = ''
      Visible = False
      Caption = 'Excluir'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
      OnClick = btnExcluirClick
    end
    object UniButton1: TUniButton
      AlignWithMargins = True
      Left = 909
      Top = 4
      Width = 56
      Height = 41
      Hint = ''
      Caption = '<i class="fa fa-lock fa-2x "></i>'
      Align = alRight
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 4
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
      OnClick = UniButton1Click
    end
    object pCodData: TUniContainerPanel
      Left = 325
      Top = 1
      Width = 372
      Height = 47
      Hint = ''
      Visible = False
      ParentColor = False
      Align = alLeft
      TabOrder = 5
      object UniLabel65: TUniLabel
        Left = 6
        Top = 3
        Width = 84
        Height = 13
        Hint = ''
        Caption = 'C'#243'digo do Cliente'
        TabOrder = 1
      end
      object eCodigo: TUniDBEdit
        Left = 4
        Top = 18
        Width = 93
        Height = 22
        Hint = ''
        DataField = 'IDEMITENTE'
        DataSource = DSEMIT
        TabOrder = 2
        ReadOnly = True
      end
      object UniLabel66: TUniLabel
        Left = 118
        Top = 3
        Width = 70
        Height = 13
        Hint = ''
        Caption = 'Data Cadastro'
        TabOrder = 3
      end
      object UniDBDateTimePicker1: TUniDBDateTimePicker
        Left = 118
        Top = 18
        Width = 120
        Hint = ''
        DataField = 'DATACADASTRO'
        DataSource = DSEMIT
        DateTime = 43338.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        ReadOnly = True
        TabOrder = 4
      end
      object btnInclui: TUniBitBtn
        Left = 259
        Top = 3
        Width = 102
        Height = 41
        Hint = ''
        Caption = 'Novo'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 5
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoVerde'#39');'#13#10'}')
        OnClick = btnIncluiClick
      end
    end
    object UniButton2: TUniButton
      AlignWithMargins = True
      Left = 847
      Top = 4
      Width = 56
      Height = 41
      Hint = ''
      Caption = '<i class="fa fa-lock fa-2x "></i>'
      Align = alRight
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 6
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = UniButton2Click
      ExplicitTop = 5
    end
  end
  object UniLabel1: TUniLabel
    Left = 12
    Top = 58
    Width = 60
    Height = 13
    Hint = ''
    Caption = 'Raz'#227'o Social'
    TabOrder = 19
  end
  object dbeRazao: TUniDBEdit
    Left = 12
    Top = 77
    Width = 377
    Height = 22
    Hint = ''
    DataField = 'RAZAOSOCIAL'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object UniLabel2: TUniLabel
    Left = 395
    Top = 58
    Width = 71
    Height = 13
    Hint = ''
    Caption = 'Nome Fantasia'
    TabOrder = 20
  end
  object dbeFantasia: TUniDBEdit
    Left = 395
    Top = 77
    Width = 377
    Height = 22
    Hint = ''
    DataField = 'FANTASIA'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object UniLabel3: TUniLabel
    Left = 12
    Top = 107
    Width = 45
    Height = 13
    Hint = ''
    Caption = 'Endere'#231'o'
    TabOrder = 21
  end
  object dbeEndereco: TUniDBEdit
    Left = 12
    Top = 126
    Width = 377
    Height = 22
    Hint = ''
    DataField = 'ENDERECO'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object UniLabel44: TUniLabel
    Left = 395
    Top = 107
    Width = 37
    Height = 13
    Hint = ''
    Caption = 'Numero'
    TabOrder = 22
  end
  object dbeNumero: TUniDBEdit
    Left = 395
    Top = 126
    Width = 46
    Height = 22
    Hint = ''
    DataField = 'NUMERO'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object UniLabel5: TUniLabel
    Left = 447
    Top = 107
    Width = 65
    Height = 13
    Hint = ''
    Caption = 'Complemento'
    TabOrder = 23
  end
  object dbeComplemento: TUniDBEdit
    Left = 447
    Top = 126
    Width = 121
    Height = 22
    Hint = ''
    DataField = 'COMPLEMENTO'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object UniLabel6: TUniLabel
    Left = 574
    Top = 107
    Width = 28
    Height = 13
    Hint = ''
    Caption = 'Bairro'
    TabOrder = 24
  end
  object dbeBairro: TUniDBEdit
    Left = 574
    Top = 126
    Width = 199
    Height = 22
    Hint = ''
    DataField = 'BAIRRO'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object UniLabel7: TUniLabel
    Left = 12
    Top = 155
    Width = 13
    Height = 13
    Hint = ''
    Caption = 'UF'
    TabOrder = 25
  end
  object UniLabel8: TUniLabel
    Left = 95
    Top = 155
    Width = 43
    Height = 13
    Hint = ''
    Caption = 'Munic'#237'pio'
    TabOrder = 26
  end
  object UniLabel9: TUniLabel
    Left = 395
    Top = 155
    Width = 49
    Height = 13
    Hint = ''
    Caption = 'Cod. IBGE'
    TabOrder = 27
  end
  object dbeCodIbge: TUniDBEdit
    Left = 395
    Top = 174
    Width = 71
    Height = 22
    Hint = ''
    DataField = 'CODCIDADE'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object UniLabel10: TUniLabel
    Left = 472
    Top = 155
    Width = 19
    Height = 13
    Hint = ''
    Caption = 'CEP'
    TabOrder = 28
  end
  object dbeCEP: TUniDBEdit
    Left = 472
    Top = 174
    Width = 96
    Height = 22
    Hint = ''
    DataField = 'CEP'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 9
  end
  object UniLabel11: TUniLabel
    Left = 574
    Top = 155
    Width = 42
    Height = 13
    Hint = ''
    Caption = 'Telefone'
    TabOrder = 29
  end
  object dbeTelefone: TUniDBEdit
    Left = 574
    Top = 174
    Width = 96
    Height = 22
    Hint = ''
    DataField = 'FONE'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 10
  end
  object UniLabel12: TUniLabel
    Left = 674
    Top = 155
    Width = 33
    Height = 13
    Hint = ''
    Caption = 'Celular'
    TabOrder = 30
  end
  object dbeCelular: TUniDBEdit
    Left = 674
    Top = 174
    Width = 99
    Height = 22
    Hint = ''
    DataField = 'CELULAR'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 11
  end
  object UniLabel13: TUniLabel
    Left = 12
    Top = 203
    Width = 25
    Height = 13
    Hint = ''
    Caption = 'CNPJ'
    TabOrder = 31
  end
  object UniLabel14: TUniLabel
    Left = 215
    Top = 203
    Width = 46
    Height = 13
    Hint = ''
    Caption = 'Insc. Est.'
    TabOrder = 32
  end
  object dbeInscEst: TUniDBEdit
    Left = 215
    Top = 222
    Width = 174
    Height = 22
    Hint = ''
    DataField = 'IE'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 13
  end
  object UniLabel17: TUniLabel
    Left = 12
    Top = 251
    Width = 77
    Height = 13
    Hint = ''
    Caption = 'Aliq. S. Nacional'
    TabOrder = 33
  end
  object dbeAliqSN: TUniDBEdit
    Left = 12
    Top = 270
    Width = 188
    Height = 22
    Hint = ''
    DataField = 'ALIQUOTAICMS'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 14
  end
  object CBUF: TUniDBComboBox
    Left = 12
    Top = 175
    Width = 76
    Hint = ''
    DataField = 'UF'
    DataSource = DSEMIT
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
    TabOrder = 6
    IconItems = <>
    OnChange = CBUFChange
  end
  object cbmunicipio: TUniDBComboBox
    Left = 94
    Top = 175
    Width = 295
    Hint = ''
    DataField = 'CIDADE'
    DataSource = DSEMIT
    TabOrder = 7
    IconItems = <>
    OnChange = cbmunicipioChange
    OnEnter = cbmunicipioEnter
  end
  object pagecontrol1: TUniPageControl
    Left = 0
    Top = 351
    Width = 969
    Height = 208
    Hint = ''
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 34
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Geral'
      DesignSize = (
        961
        180)
      object UniLabel18: TUniLabel
        Left = 13
        Top = 8
        Width = 65
        Height = 13
        Hint = ''
        Caption = 'S'#233'rie da NF-e'
        TabOrder = 11
      end
      object UniLabel19: TUniLabel
        Left = 10
        Top = 62
        Width = 78
        Height = 13
        Hint = ''
        Caption = 'N'#250'mero da NF-e'
        TabOrder = 12
      end
      object UniLabel20: TUniLabel
        Left = 97
        Top = 62
        Width = 85
        Height = 13
        Hint = ''
        Caption = 'N'#250'mero da NFC-e'
        TabOrder = 13
      end
      object UniLabel21: TUniLabel
        Left = 99
        Top = 8
        Width = 54
        Height = 13
        Hint = ''
        Caption = 'S'#233'rie SCAN'
        TabOrder = 14
      end
      object rDanfe: TUniDBRadioGroup
        Left = 407
        Top = 3
        Width = 170
        Height = 63
        Hint = ''
        DataField = 'GERAL_DANFE'
        DataSource = DSEMIT
        Caption = 'DANFE NFE'
        TabOrder = 0
        Items.Strings = (
          'Retrato'
          'Paisagem')
        Columns = 2
        Values.Strings = (
          '0'
          '1')
      end
      object rFormaEmissao: TUniDBRadioGroup
        Left = 584
        Top = 3
        Width = 170
        Height = 64
        Hint = ''
        DataField = 'GERAL_FORMAEMISSAO'
        DataSource = DSEMIT
        Caption = 'Forma de Emiss'#227'o'
        TabOrder = 1
        Items.Strings = (
          'Normal'
          'Conting'#234'ncia')
        Columns = 2
        Values.Strings = (
          '0'
          '1')
      end
      object UniDBNumberEdit1: TUniDBNumberEdit
        Left = 12
        Top = 27
        Width = 73
        Height = 22
        Hint = ''
        DataField = 'GERAL_SERIE'
        DataSource = DSEMIT
        TabOrder = 2
        DecimalSeparator = ','
      end
      object UniDBNumberEdit2: TUniDBNumberEdit
        Left = 10
        Top = 81
        Width = 78
        Height = 22
        Hint = ''
        DataField = 'GERAL_NNFEPRODUCAO'
        DataSource = DSEMIT
        TabOrder = 4
        DecimalSeparator = ','
      end
      object UniDBNumberEdit3: TUniDBNumberEdit
        Left = 97
        Top = 81
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'GERAL_NNFCEPRODUCAO'
        DataSource = DSEMIT
        TabOrder = 5
        DecimalSeparator = ','
      end
      object UniDBNumberEdit4: TUniDBNumberEdit
        Left = 99
        Top = 27
        Width = 83
        Height = 22
        Hint = ''
        DataField = 'GERAL_SERIESCAN'
        DataSource = DSEMIT
        TabOrder = 3
        DecimalSeparator = ','
      end
      object UniRadioGroup3: TUniRadioGroup
        Left = 745
        Top = 3
        Width = 178
        Height = 158
        Hint = ''
        Caption = 'Dados da Conta'
        TabOrder = 15
      end
      object UniLabel15: TUniLabel
        Left = 760
        Top = 20
        Width = 36
        Height = 13
        Hint = ''
        Caption = 'Usuario'
        TabOrder = 16
      end
      object UniDBEdit4: TUniDBEdit
        Left = 760
        Top = 36
        Width = 154
        Height = 22
        Hint = ''
        DataField = 'LOGIN'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 8
      end
      object UniLabel27: TUniLabel
        Left = 760
        Top = 61
        Width = 30
        Height = 13
        Hint = ''
        Caption = 'Senha'
        TabOrder = 17
      end
      object UniDBEdit5: TUniDBEdit
        Left = 760
        Top = 77
        Width = 154
        Height = 22
        Hint = ''
        DataField = 'SENHA'
        DataSource = DSEMIT
        PasswordChar = '*'
        CharCase = ecUpperCase
        TabOrder = 9
      end
      object UniLabel34: TUniLabel
        Left = 760
        Top = 103
        Width = 24
        Height = 13
        Hint = ''
        Caption = 'Email'
        TabOrder = 18
      end
      object UniDBEdit11: TUniDBEdit
        Left = 760
        Top = 119
        Width = 154
        Height = 22
        Hint = ''
        DataField = 'EMAIL'
        DataSource = DSEMIT
        CharCase = ecLowerCase
        TabOrder = 10
      end
      object UniLabel46: TUniLabel
        Left = 97
        Top = 118
        Width = 86
        Height = 13
        Hint = ''
        Caption = 'N'#250'mero da MDF-e'
        TabOrder = 19
      end
      object UniDBNumberEdit5: TUniDBNumberEdit
        Left = 99
        Top = 137
        Width = 85
        Height = 22
        Hint = ''
        Enabled = False
        DataSource = DSEMIT
        TabOrder = 7
        DecimalSeparator = ','
      end
      object UniLabel57: TUniLabel
        Left = 12
        Top = 118
        Width = 73
        Height = 13
        Hint = ''
        Caption = 'S'#233'rie da MDF-e'
        TabOrder = 20
      end
      object UniDBNumberEdit6: TUniDBNumberEdit
        Left = 19
        Top = 137
        Width = 74
        Height = 22
        Hint = ''
        Enabled = False
        DataField = 'GERAL_SERIE'
        DataSource = DSEMIT
        TabOrder = 6
        DecimalSeparator = ','
      end
      object UniLabel67: TUniLabel
        Left = 231
        Top = 10
        Width = 23
        Height = 13
        Hint = ''
        Caption = 'Logo'
        TabOrder = 21
      end
      object eLogo: TUniDBEdit
        Left = 231
        Top = 144
        Width = 317
        Height = 22
        Hint = ''
        DataField = 'LOGO'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 22
        OnChange = eLogoChange
      end
      object UniBitBtn1: TUniBitBtn
        Left = 550
        Top = 142
        Width = 25
        Height = 25
        Hint = ''
        Caption = '<i class="fa fa-share-square-o fa-1x "></i> '
        Anchors = [akLeft, akBottom]
        ParentFont = False
        TabOrder = 23
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoAzul'#39');'#13#10'}')
        OnClick = UniBitBtn1Click
      end
      object UniImage1: TUniImage
        Left = 231
        Top = 29
        Width = 132
        Height = 109
        Hint = ''
        Stretch = True
        Transparent = True
      end
      object UniDBRadioGroup1: TUniDBRadioGroup
        Left = 408
        Top = 77
        Width = 170
        Height = 59
        Hint = ''
        DataField = 'GERAL_DANFE'
        DataSource = DSEMIT
        Caption = 'DANFE NFCE'
        TabOrder = 25
        Items.Strings = (
          'Normal'
          'Resumida')
        Columns = 2
        Values.Strings = (
          '0'
          '1')
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Certificado'
      DesignSize = (
        961
        180)
      object UniRadioGroup1: TUniRadioGroup
        Left = 8
        Top = 4
        Width = 743
        Height = 155
        Hint = ''
        Caption = 'Certificado'
        TabOrder = 0
      end
      object UniBitBtn6: TUniBitBtn
        Left = 714
        Top = 35
        Width = 25
        Height = 25
        Hint = ''
        Caption = '<i class="fa fa-share-square-o fa-1x "></i> '
        Anchors = [akLeft, akBottom]
        ParentFont = False
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoAzul'#39');'#13#10'}')
        OnClick = UniBitBtn6Click
      end
      object UniLabel22: TUniLabel
        Left = 203
        Top = 18
        Width = 136
        Height = 13
        Hint = ''
        Caption = 'Selecionar Certificado Digital'
        TabOrder = 2
      end
      object UniLabel4: TUniLabel
        Left = 383
        Top = 81
        Width = 82
        Height = 13
        Hint = ''
        Caption = 'Nome Arquivo:'
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object dbeSenha: TUniDBEdit
        Left = 17
        Top = 38
        Width = 184
        Height = 22
        Hint = ''
        DataField = 'CERT_SENHA'
        DataSource = DSEMIT
        PasswordChar = '*'
        TabOrder = 4
      end
      object UniLabel23: TUniLabel
        Left = 17
        Top = 21
        Width = 30
        Height = 13
        Hint = ''
        Caption = 'Senha'
        TabOrder = 5
      end
      object UniLabel24: TUniLabel
        Left = 17
        Top = 66
        Width = 56
        Height = 13
        Hint = ''
        Caption = 'C'#243'digo CSC'
        TabOrder = 6
      end
      object UniDBEdit1: TUniDBEdit
        Left = 17
        Top = 82
        Width = 361
        Height = 22
        Hint = ''
        DataField = 'IDTOKEN'
        DataSource = DSEMIT
        TabOrder = 7
      end
      object UniLabel25: TUniLabel
        Left = 17
        Top = 113
        Width = 52
        Height = 13
        Hint = ''
        Caption = 'Token CSC'
        TabOrder = 8
      end
      object UniDBEdit2: TUniDBEdit
        Left = 17
        Top = 128
        Width = 361
        Height = 22
        Hint = ''
        DataField = 'TOKEN'
        DataSource = DSEMIT
        TabOrder = 9
      end
      object UniDBEdit3: TUniDBEdit
        Left = 203
        Top = 38
        Width = 510
        Height = 22
        Hint = ''
        DataField = 'CERT_CAMINHO'
        DataSource = DSEMIT
        TabOrder = 10
      end
      object UniLabel37: TUniLabel
        Left = 395
        Top = 113
        Width = 90
        Height = 13
        Hint = ''
        Caption = 'Tipo de Certificado'
        TabOrder = 11
      end
      object UniDBComboBox1: TUniDBComboBox
        Left = 395
        Top = 128
        Width = 145
        Hint = ''
        DataField = 'TIPOCERTIFICADO'
        DataSource = DSEMIT
        Items.Strings = (
          'A1'
          'A3')
        ItemIndex = 0
        TabOrder = 12
        IconItems = <>
      end
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Email'
      object UniRadioGroup4: TUniRadioGroup
        Left = 3
        Top = 3
        Width = 749
        Height = 161
        Hint = ''
        Caption = 'Dados da Conta de email para envio dos dados fiscais por email'
        TabOrder = 0
      end
      object UniLabel28: TUniLabel
        Left = 17
        Top = 21
        Width = 69
        Height = 13
        Hint = ''
        Caption = 'Servidor SMTP'
        TabOrder = 1
      end
      object UniLabel29: TUniLabel
        Left = 270
        Top = 21
        Width = 26
        Height = 13
        Hint = ''
        Caption = 'Porta'
        TabOrder = 2
      end
      object UniLabel30: TUniLabel
        Left = 352
        Top = 21
        Width = 36
        Height = 13
        Hint = ''
        Caption = 'Usu'#225'rio'
        TabOrder = 3
      end
      object UniLabel31: TUniLabel
        Left = 632
        Top = 21
        Width = 30
        Height = 13
        Hint = ''
        Caption = 'Senha'
        TabOrder = 4
      end
      object UniLabel32: TUniLabel
        Left = 17
        Top = 58
        Width = 122
        Height = 13
        Hint = ''
        Caption = 'Assunto do Email enviado'
        TabOrder = 5
      end
      object UniLabel33: TUniLabel
        Left = 16
        Top = 98
        Width = 93
        Height = 13
        Hint = ''
        Caption = 'Mensagem do Email'
        TabOrder = 6
      end
      object UniDBEdit6: TUniDBEdit
        Left = 16
        Top = 35
        Width = 248
        Height = 22
        Hint = ''
        DataField = 'EMAIL_HOST'
        DataSource = DSEMIT
        CharCase = ecLowerCase
        TabOrder = 7
      end
      object UniDBEdit7: TUniDBEdit
        Left = 270
        Top = 35
        Width = 76
        Height = 22
        Hint = ''
        DataField = 'EMAIL_PORT'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 8
      end
      object UniDBEdit8: TUniDBEdit
        Left = 352
        Top = 35
        Width = 274
        Height = 22
        Hint = ''
        DataField = 'EMAIL_USER'
        DataSource = DSEMIT
        CharCase = ecLowerCase
        TabOrder = 9
      end
      object UniDBEdit9: TUniDBEdit
        Left = 632
        Top = 35
        Width = 95
        Height = 22
        Hint = ''
        DataField = 'EMAIL_PASS'
        DataSource = DSEMIT
        PasswordChar = '*'
        TabOrder = 10
      end
      object UniDBEdit10: TUniDBEdit
        Left = 16
        Top = 72
        Width = 711
        Height = 22
        Hint = ''
        DataField = 'EMAIL_ASSUNTO'
        DataSource = DSEMIT
        TabOrder = 11
      end
      object UniDBMemo1: TUniDBMemo
        Left = 13
        Top = 112
        Width = 714
        Height = 46
        Hint = ''
        DataField = 'EMAIL_MENSAGEM'
        DataSource = DSEMIT
        TabOrder = 12
      end
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'WebServices RFB'
      object UniRadioGroup2: TUniRadioGroup
        Left = 3
        Top = 2
        Width = 326
        Height = 160
        Hint = ''
        Caption = 'WebService'
        TabOrder = 0
      end
      object UniLabel26: TUniLabel
        Left = 13
        Top = 23
        Width = 128
        Height = 13
        Hint = ''
        Caption = 'Selecione a UF de Destino:'
        TabOrder = 1
      end
      object cbWebServiceUF: TUniDBComboBox
        Left = 13
        Top = 40
        Width = 308
        Hint = ''
        DataField = 'WEBSERVICE_UF'
        DataSource = DSEMIT
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
        TabOrder = 2
        IconItems = <>
      end
      object UniDBRadioGroup3: TUniDBRadioGroup
        Left = 13
        Top = 68
        Width = 308
        Height = 61
        Hint = ''
        DataField = 'WEBSERVICE_AMBIENTE'
        DataSource = DSEMIT
        Caption = 'Selecione o Ambiente de Destino'
        TabOrder = 3
        Items.Strings = (
          'Produ'#231#227'o'
          'Homologa'#231#227'o')
        Columns = 2
        Values.Strings = (
          '0'
          '1')
      end
      object UniDBCheckBox1: TUniDBCheckBox
        Left = 13
        Top = 140
        Width = 308
        Height = 17
        Hint = ''
        Visible = False
        DataField = 'WEBSERVICE_VISUALIZAR'
        DataSource = DSEMIT
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption = 'Visualizar Mensagem de Retorno'
        TabOrder = 4
        ParentColor = False
        Color = clBtnFace
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Contador - Escrit'#243'rio'
      object UniLabel16: TUniLabel
        Left = 369
        Top = 6
        Width = 36
        Height = 13
        Hint = ''
        Caption = 'Usu'#225'rio'
        TabOrder = 0
      end
      object UniDBEdit15: TUniDBEdit
        Left = 369
        Top = 20
        Width = 186
        Height = 22
        Hint = ''
        DataField = 'USUARIOCONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object UniLabel39: TUniLabel
        Left = 561
        Top = 3
        Width = 30
        Height = 13
        Hint = ''
        Caption = 'Senha'
        TabOrder = 2
      end
      object UniDBEdit16: TUniDBEdit
        Left = 561
        Top = 21
        Width = 193
        Height = 22
        Hint = ''
        DataField = 'SENHACONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object UniLabel40: TUniLabel
        Left = 369
        Top = 132
        Width = 24
        Height = 13
        Hint = ''
        Caption = 'Fone'
        TabOrder = 4
      end
      object UniDBEdit17: TUniDBEdit
        Left = 369
        Top = 147
        Width = 149
        Height = 22
        Hint = ''
        DataField = 'FONECONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 5
      end
      object UniLabel41: TUniLabel
        Left = 3
        Top = 5
        Width = 44
        Height = 13
        Hint = ''
        Caption = 'Escrit'#243'rio'
        TabOrder = 6
      end
      object UniDBEdit18: TUniDBEdit
        Left = 2
        Top = 21
        Width = 178
        Height = 22
        Hint = ''
        DataField = 'ESCRITORIOCONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 7
      end
      object UniLabel42: TUniLabel
        Left = 189
        Top = 3
        Width = 75
        Height = 13
        Hint = ''
        Caption = 'Nome Contador'
        TabOrder = 8
      end
      object UniDBEdit19: TUniDBEdit
        Left = 186
        Top = 20
        Width = 175
        Height = 22
        Hint = ''
        DataField = 'CONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 9
      end
      object UniLabel43: TUniLabel
        Left = 524
        Top = 132
        Width = 24
        Height = 13
        Hint = ''
        Caption = 'Email'
        TabOrder = 10
      end
      object UniDBEdit20: TUniDBEdit
        Left = 524
        Top = 147
        Width = 230
        Height = 22
        Hint = ''
        DataField = 'EMAILCONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 11
      end
      object UniLabel47: TUniLabel
        Left = 370
        Top = 48
        Width = 19
        Height = 13
        Hint = ''
        Caption = 'CPF'
        TabOrder = 12
      end
      object UniDBEdit22: TUniDBEdit
        Left = 370
        Top = 63
        Width = 188
        Height = 22
        Hint = ''
        DataField = 'FONECONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 13
      end
      object UniLabel48: TUniLabel
        Left = 564
        Top = 48
        Width = 21
        Height = 13
        Hint = ''
        Caption = 'CRC'
        TabOrder = 14
      end
      object UniDBEdit23: TUniDBEdit
        Left = 564
        Top = 63
        Width = 190
        Height = 22
        Hint = ''
        DataField = 'FONECONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 15
      end
      object UniLabel49: TUniLabel
        Left = 4
        Top = 89
        Width = 25
        Height = 13
        Hint = ''
        Caption = 'CNPJ'
        TabOrder = 16
      end
      object UniDBEdit25: TUniDBEdit
        Left = 4
        Top = 104
        Width = 149
        Height = 22
        Hint = ''
        DataField = 'FONECONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 17
      end
      object UniLabel50: TUniLabel
        Left = 166
        Top = 89
        Width = 19
        Height = 13
        Hint = ''
        Caption = 'CEP'
        TabOrder = 18
      end
      object UniDBEdit26: TUniDBEdit
        Left = 166
        Top = 104
        Width = 197
        Height = 22
        Hint = ''
        DataField = 'FONECONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 19
      end
      object UniLabel51: TUniLabel
        Left = 369
        Top = 85
        Width = 45
        Height = 13
        Hint = ''
        Caption = 'Endere'#231'o'
        TabOrder = 20
      end
      object UniDBEdit27: TUniDBEdit
        Left = 369
        Top = 100
        Width = 293
        Height = 22
        Hint = ''
        DataField = 'FONECONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 21
      end
      object UniLabel52: TUniLabel
        Left = 668
        Top = 85
        Width = 37
        Height = 13
        Hint = ''
        Caption = 'Numero'
        TabOrder = 22
      end
      object UniDBEdit28: TUniDBEdit
        Left = 668
        Top = 100
        Width = 86
        Height = 22
        Hint = ''
        DataField = 'FONECONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 23
      end
      object UniLabel53: TUniLabel
        Left = 3
        Top = 129
        Width = 65
        Height = 13
        Hint = ''
        Caption = 'Complemento'
        TabOrder = 24
      end
      object UniDBEdit29: TUniDBEdit
        Left = 3
        Top = 144
        Width = 149
        Height = 22
        Hint = ''
        DataField = 'FONECONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 25
      end
      object UniLabel54: TUniLabel
        Left = 166
        Top = 129
        Width = 28
        Height = 13
        Hint = ''
        Caption = 'Bairro'
        TabOrder = 26
      end
      object UniDBEdit30: TUniDBEdit
        Left = 166
        Top = 144
        Width = 197
        Height = 22
        Hint = ''
        DataField = 'FONECONTADOR'
        DataSource = DSEMIT
        CharCase = ecUpperCase
        TabOrder = 27
      end
      object UniLabel55: TUniLabel
        Left = 5
        Top = 45
        Width = 13
        Height = 13
        Hint = ''
        Caption = 'UF'
        TabOrder = 28
      end
      object UniDBComboBox2: TUniDBComboBox
        Left = 3
        Top = 64
        Width = 76
        Hint = ''
        DataField = 'UF'
        DataSource = DSEMIT
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
        TabOrder = 29
        IconItems = <>
        OnChange = CBUFChange
      end
      object UniLabel56: TUniLabel
        Left = 90
        Top = 49
        Width = 43
        Height = 13
        Hint = ''
        Caption = 'Munic'#237'pio'
        TabOrder = 30
      end
      object UniDBComboBox3: TUniDBComboBox
        Left = 85
        Top = 64
        Width = 278
        Hint = ''
        DataField = 'CIDADE'
        DataSource = DSEMIT
        TabOrder = 31
        IconItems = <>
        OnChange = cbmunicipioChange
        OnEnter = cbmunicipioEnter
      end
    end
    object UniTabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'TEF Pay Go'
      object UniLabel58: TUniLabel
        Left = 5
        Top = 54
        Width = 69
        Height = 13
        Hint = ''
        Caption = 'Key do Pay go'
        TabOrder = 0
      end
      object UniDBEdit31: TUniDBEdit
        Left = 3
        Top = 70
        Width = 767
        Height = 22
        Hint = ''
        DataField = 'TEF_PAYGO_KEY'
        DataSource = DSEMIT
        TabOrder = 1
      end
      object UniLabel59: TUniLabel
        Left = 10
        Top = 93
        Width = 52
        Height = 13
        Hint = ''
        Caption = 'URL Venda'
        TabOrder = 2
      end
      object UniDBEdit32: TUniDBEdit
        Left = 3
        Top = 109
        Width = 374
        Height = 22
        Hint = ''
        DataField = 'TEF_PAYGO_URLVENDA'
        DataSource = DSEMIT
        TabOrder = 3
      end
      object UniLabel60: TUniLabel
        Left = 391
        Top = 93
        Width = 68
        Height = 13
        Hint = ''
        Caption = 'URL Consultar'
        TabOrder = 4
      end
      object UniDBEdit33: TUniDBEdit
        Left = 384
        Top = 109
        Width = 386
        Height = 22
        Hint = ''
        DataField = 'TEF_PAYGO_URLCONSULTA'
        DataSource = DSEMIT
        TabOrder = 5
      end
      object UniLabel61: TUniLabel
        Left = 10
        Top = 135
        Width = 64
        Height = 13
        Hint = ''
        Caption = 'URL Cancelar'
        TabOrder = 6
      end
      object UniDBEdit34: TUniDBEdit
        Left = 3
        Top = 151
        Width = 374
        Height = 22
        Hint = ''
        DataField = 'TEF_PAYGO_URLCANCELAR'
        DataSource = DSEMIT
        TabOrder = 7
      end
      object UniLabel62: TUniLabel
        Left = 390
        Top = 134
        Width = 69
        Height = 13
        Hint = ''
        Caption = 'Senha Tecnica'
        TabOrder = 8
      end
      object UniDBEdit35: TUniDBEdit
        Left = 383
        Top = 150
        Width = 387
        Height = 22
        Hint = ''
        DataField = 'TEF_PAYGO_SENHATECNICA'
        DataSource = DSEMIT
        TabOrder = 9
      end
      object UniDBCheckBox10: TUniDBCheckBox
        Left = 5
        Top = 7
        Width = 175
        Height = 17
        Hint = ''
        DataField = 'TEF_PAYGO'
        DataSource = DSEMIT
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Caption = 'Ativar Pagamento TEF Pay Go'
        TabOrder = 10
        ParentColor = False
        Color = clBtnFace
      end
      object UniLabel63: TUniLabel
        Left = 382
        Top = 16
        Width = 98
        Height = 13
        Hint = ''
        Caption = 'Terminal TEF Padr'#227'o'
        TabOrder = 11
      end
      object UniDBCheckBox11: TUniDBCheckBox
        Left = 5
        Top = 31
        Width = 175
        Height = 17
        Hint = ''
        DataField = 'TEF_PADRAO_PAYGO'
        DataSource = DSEMIT
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Caption = 'Usar Tarminal TEF padr'#227'o'
        TabOrder = 12
        ParentColor = False
        Color = clBtnFace
      end
      object UniDBEdit36: TUniDBEdit
        Left = 384
        Top = 32
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'TEF_PADRAO_PAYGO_ID'
        DataSource = DSEMIT
        TabOrder = 13
      end
      object UniLabel68: TUniLabel
        Left = 509
        Top = 16
        Width = 243
        Height = 13
        Hint = ''
        Caption = 'CNPJ Operadora (Para Venda TEF n'#227'o Integrado))'
        TabOrder = 14
      end
      object UniDBEdit37: TUniDBEdit
        Left = 511
        Top = 32
        Width = 240
        Height = 22
        Hint = ''
        DataField = 'CNPJOPERADORA'
        DataSource = DSEMIT
        TabOrder = 15
      end
    end
    object UniTabSheet6: TUniTabSheet
      Hint = ''
      Caption = 'TEF SiTef'
      object UniDBCheckBox13: TUniDBCheckBox
        Left = 8
        Top = 4
        Width = 175
        Height = 17
        Hint = ''
        DataField = 'TEF_SITEF'
        DataSource = DSEMIT
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Caption = 'Ativar Pagamento TEF SiTef'
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
      end
      object UniLabel69: TUniLabel
        Left = 6
        Top = 28
        Width = 37
        Height = 13
        Hint = ''
        Caption = 'IP SiTef'
        TabOrder = 1
      end
      object UniDBEdit38: TUniDBEdit
        Left = 8
        Top = 44
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'TEF_IPSITEF'
        DataSource = DSEMIT
        TabOrder = 2
      end
      object UniLabel70: TUniLabel
        Left = 8
        Top = 73
        Width = 41
        Height = 13
        Hint = ''
        Caption = 'Empresa'
        TabOrder = 3
      end
      object UniDBEdit39: TUniDBEdit
        Left = 8
        Top = 89
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'TEF_EMPRESA'
        DataSource = DSEMIT
        TabOrder = 4
      end
      object UniLabel71: TUniLabel
        Left = 8
        Top = 121
        Width = 40
        Height = 13
        Hint = ''
        Caption = 'Terminal'
        TabOrder = 5
      end
      object UniDBEdit40: TUniDBEdit
        Left = 8
        Top = 137
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'TEF_TERMINAL'
        DataSource = DSEMIT
        TabOrder = 6
      end
    end
    object tabConfig: TUniTabSheet
      Hint = ''
      Caption = 'Configura'#231#245'es'
      object UniDBCheckBox14: TUniDBCheckBox
        Left = 9
        Top = 7
        Width = 287
        Height = 17
        Hint = ''
        DataField = 'EDITARORCAMENTO'
        DataSource = DSEMIT
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Caption = 'Permitir Editar Ordem de Servi'#231'o depois de Faturar'
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
      end
    end
  end
  object dbeCNPJ: TUniDBEdit
    Left = 12
    Top = 222
    Width = 165
    Height = 22
    Hint = ''
    DataField = 'CNPJ'
    DataSource = DSEMIT
    TabOrder = 12
  end
  object UniDBRadioGroup4: TUniDBRadioGroup
    Left = 395
    Top = 201
    Width = 377
    Height = 95
    Hint = ''
    DataField = 'CRT'
    DataSource = DSEMIT
    Caption = 'C'#243'digo de Regime Tributario'
    TabOrder = 17
    Items.Strings = (
      '1 - SIMPLES NACIONAL'
      '2 - SIMPLES NACIONAL - EXCESSO DE SUBLIMITE DA RECEITA BRUTA'
      '3 - REGIME NORMAL')
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object bCnpj: TUniSpeedButton
    Left = 177
    Top = 222
    Width = 23
    Height = 22
    Hint = ''
    Caption = '<i class="fa fa-search "></i>'
    ParentColor = False
    Color = clWindow
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Aguarde... Carregando Captcha'
    ScreenMask.Target = Owner
    TabOrder = 35
    OnClick = bCnpjClick
  end
  object rOlhoNoImposto: TUniDBRadioGroup
    Left = 215
    Top = 250
    Width = 174
    Height = 45
    Hint = ''
    DataField = 'FLAG_IBPT'
    Caption = 'De olho no imposto'
    TabOrder = 16
    Items.Strings = (
      'Sim'
      'N'#227'o')
    Columns = 2
    Values.Strings = (
      '0'
      '1')
  end
  object UniDBEdit21: TUniDBEdit
    Left = 12
    Top = 323
    Width = 658
    Height = 22
    Hint = ''
    DataField = 'MENSAGEMPROCOM'
    DataSource = DSEMIT
    CharCase = ecUpperCase
    TabOrder = 15
  end
  object UniLabel45: TUniLabel
    Left = 12
    Top = 304
    Width = 89
    Height = 13
    Hint = ''
    Caption = 'Mensagem Procom'
    TabOrder = 38
  end
  object UniDBLookupComboBox2: TUniDBLookupComboBox
    Left = 676
    Top = 323
    Width = 97
    Hint = ''
    ListField = 'CFOP'
    KeyField = 'CFOP'
    ListFieldIndex = 0
    DataField = 'CFOPPADRAO'
    DataSource = DSEMIT
    TabOrder = 39
    Color = clWindow
    Style = csDropDown
  end
  object UniLabel64: TUniLabel
    Left = 676
    Top = 304
    Width = 86
    Height = 13
    Hint = ''
    Caption = 'CFOP Padr'#227'o NFe'
    TabOrder = 40
  end
  object pCNPJ: TUniPanel
    Left = 94
    Top = 105
    Width = 589
    Height = 178
    Hint = ''
    Visible = False
    TabOrder = 36
    Caption = ''
    Color = clWhite
    object UniPanel2: TUniPanel
      Left = 38
      Top = 31
      Width = 256
      Height = 119
      Hint = ''
      TabOrder = 1
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
      object UniLabel35: TUniLabel
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
        OnClick = UniLabel35Click
      end
    end
    object UniLabel36: TUniLabel
      Left = 313
      Top = 40
      Width = 92
      Height = 13
      Hint = ''
      Caption = 'Digite o Captcha'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 2
    end
    object EditCaptcha: TUniEdit
      Left = 313
      Top = 59
      Width = 232
      Height = 40
      Hint = ''
      Text = ''
      ParentFont = False
      Font.Height = -21
      TabOrder = 3
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
      TabOrder = 4
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
  object pConfigurações: TUniPanel
    Left = 193
    Top = 77
    Width = 391
    Height = 247
    Hint = ''
    Visible = False
    TabOrder = 37
    BorderStyle = ubsFrameLowered
    Caption = ''
    object UniLabel38: TUniLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 381
      Height = 30
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'CONFIGURA'#199#195'O DE MODULOS'
      Align = alTop
      ParentFont = False
      Font.Height = -21
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object UniDBEdit12: TUniDBEdit
      Left = 240
      Top = 56
      Width = 121
      Height = 22
      Hint = ''
      Visible = False
      TabOrder = 2
    end
    object UniDBEdit13: TUniDBEdit
      Left = 240
      Top = 79
      Width = 121
      Height = 22
      Hint = ''
      Visible = False
      TabOrder = 3
    end
    object UniDBEdit14: TUniDBEdit
      Left = 240
      Top = 125
      Width = 121
      Height = 22
      Hint = ''
      Visible = False
      TabOrder = 4
    end
    object UniDBCheckBox2: TUniDBCheckBox
      Left = 25
      Top = 56
      Width = 97
      Height = 17
      Hint = ''
      DataField = 'MODULO_NFE'
      DataSource = DSEMIT
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Caption = 'NFe'
      TabOrder = 5
      ParentColor = False
      Color = clBtnFace
    end
    object UniDBCheckBox3: TUniDBCheckBox
      Left = 25
      Top = 79
      Width = 97
      Height = 17
      Hint = ''
      DataField = 'MODULO_NFCE'
      DataSource = DSEMIT
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Caption = 'NFCe'
      TabOrder = 6
      ParentColor = False
      Color = clBtnFace
    end
    object UniDBCheckBox4: TUniDBCheckBox
      Left = 25
      Top = 126
      Width = 97
      Height = 17
      Hint = ''
      DataField = 'MODULO_MDFE'
      DataSource = DSEMIT
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Caption = 'MDFe'
      TabOrder = 7
      ParentColor = False
      Color = clBtnFace
    end
    object UniDBCheckBox5: TUniDBCheckBox
      Left = 123
      Top = 56
      Width = 111
      Height = 17
      Hint = ''
      Visible = False
      Caption = 'Numero de Notas?'
      TabOrder = 8
      ParentColor = False
      Color = clBtnFace
    end
    object UniDBCheckBox6: TUniDBCheckBox
      Left = 123
      Top = 79
      Width = 111
      Height = 17
      Hint = ''
      Visible = False
      Caption = 'Numero de Notas?'
      TabOrder = 9
      ParentColor = False
      Color = clBtnFace
    end
    object UniDBCheckBox7: TUniDBCheckBox
      Left = 123
      Top = 127
      Width = 111
      Height = 17
      Hint = ''
      Visible = False
      Caption = 'Numero de Notas?'
      TabOrder = 10
      ParentColor = False
      Color = clBtnFace
    end
    object UniBitBtn2: TUniBitBtn
      Left = 129
      Top = 200
      Width = 136
      Height = 41
      Hint = ''
      Caption = 'Fechar'
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 11
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
      OnClick = UniBitBtn2Click
    end
    object UniDBCheckBox8: TUniDBCheckBox
      Left = 25
      Top = 103
      Width = 97
      Height = 17
      Hint = ''
      DataField = 'MODULO_MDFE'
      DataSource = DSEMIT
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Caption = 'NFSe'
      TabOrder = 12
      ParentColor = False
      Color = clBtnFace
    end
    object UniDBCheckBox9: TUniDBCheckBox
      Left = 123
      Top = 104
      Width = 111
      Height = 17
      Hint = ''
      Visible = False
      Caption = 'Numero de Notas?'
      TabOrder = 13
      ParentColor = False
      Color = clBtnFace
    end
    object UniDBEdit24: TUniDBEdit
      Left = 240
      Top = 102
      Width = 121
      Height = 22
      Hint = ''
      Visible = False
      TabOrder = 14
    end
    object UniDBCheckBox12: TUniDBCheckBox
      Left = 25
      Top = 153
      Width = 97
      Height = 17
      Hint = ''
      DataField = 'MODULO_OSOTICA'
      DataSource = DSEMIT
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Caption = 'Os '#211'tica'
      TabOrder = 15
      ParentColor = False
      Color = clBtnFace
    end
  end
  object docValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 829
    Top = 145
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'PA'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 826
    Top = 97
  end
  object UniFileUpload1: TUniFileUpload
    MaxAllowedSize = 10485760
    Filter = '.pfx'
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
    Left = 827
    Top = 49
  end
  object DSEMIT: TDataSource
    DataSet = UniMainModule.qEmitente
    OnStateChange = DSEMITStateChange
    Left = 824
    Top = 241
  end
  object UniFileUpload2: TUniFileUpload
    MaxAllowedSize = 10485760
    Filter = '.jpg'
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
    OnCompleted = UniFileUpload2Completed
    Left = 779
    Top = 49
  end
end
