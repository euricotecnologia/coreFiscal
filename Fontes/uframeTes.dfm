object frameTes: TframeTes
  Left = 0
  Top = 0
  Width = 942
  Height = 521
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 942
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
    object UniLabel18: TUniLabel
      AlignWithMargins = True
      Left = 121
      Top = 5
      Width = 314
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Cadastro de Tipo de Movimentos'
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
    Width = 942
    Height = 472
    Hint = ''
    ActivePage = Consulta
    TabBarVisible = False
    Align = alClient
    TabOrder = 1
    object Consulta: TUniTabSheet
      Hint = ''
      Caption = 'Consulta'
      object UniPanel4: TUniPanel
        Left = 0
        Top = 0
        Width = 934
        Height = 31
        Hint = ''
        Align = alTop
        TabOrder = 0
        Caption = ''
        object eCliePesq: TUniEdit
          Left = 1
          Top = 1
          Width = 641
          Height = 29
          Hint = ''
          CharCase = ecUpperCase
          Text = ''
          Align = alLeft
          TabOrder = 1
          EmptyText = 'Digite sua Pesquisa'
        end
        object bPesq: TUniBitBtn
          Left = 642
          Top = 1
          Width = 110
          Height = 29
          Hint = ''
          Caption = 'Pesquisar'
          Align = alLeft
          ParentFont = False
          Font.Color = clWhite
          TabOrder = 2
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoAzul'#39');'#13#10'}')
          OnClick = bPesqClick
        end
      end
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 31
        Width = 934
        Height = 413
        Hint = ''
        DataSource = dsTes
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        LoadMask.Message = 'Carregando...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        OnCellClick = UniDBGrid1CellClick
        OnFieldImage = UniDBGrid1FieldImage
        Columns = <
          item
            FieldName = 'CSOSN'
            Title.Caption = 'Editar'
            Width = 35
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'CFOP'
            Title.Caption = 'Deletar'
            Width = 35
            ImageOptions.Visible = True
            ImageOptions.Width = 24
            ImageOptions.Height = 24
            Menu.MenuEnabled = False
          end
          item
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 450
            Menu.MenuEnabled = False
          end>
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Cadastro'
      object UniRadioGroup4: TUniRadioGroup
        Left = 579
        Top = 122
        Width = 207
        Height = 61
        Hint = ''
        Caption = 'IPI'
        TabOrder = 24
      end
      object UniRadioGroup3: TUniRadioGroup
        Left = 291
        Top = 122
        Width = 282
        Height = 61
        Hint = ''
        Caption = 'COFINS'
        TabOrder = 31
      end
      object UniRadioGroup2: TUniRadioGroup
        Left = 18
        Top = 122
        Width = 272
        Height = 61
        Hint = ''
        Caption = 'PIS'
        TabOrder = 38
      end
      object UniLabel1: TUniLabel
        Left = 17
        Top = 8
        Width = 46
        Height = 13
        Hint = ''
        Caption = 'Descri'#231#227'o'
        TabOrder = 0
      end
      object eId: TUniDBEdit
        Left = 112
        Top = 3
        Width = 121
        Height = 22
        Hint = ''
        Enabled = False
        DataField = 'ID'
        DataSource = dsTes
        TabOrder = 1
      end
      object DBEdit2: TUniDBEdit
        Left = 18
        Top = 27
        Width = 664
        Height = 22
        Hint = ''
        DataField = 'DESCRICAO'
        DataSource = dsTes
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object UniLabel2: TUniLabel
        Left = 688
        Top = 8
        Width = 27
        Height = 13
        Hint = ''
        Caption = 'CFOP'
        TabOrder = 3
      end
      object cbCFOP: TUniDBLookupComboBox
        Left = 688
        Top = 27
        Width = 74
        Hint = ''
        ListField = 'CFOP'
        ListSource = dsCFOP
        KeyField = 'CFOP'
        ListFieldIndex = 0
        DataField = 'CFOP'
        DataSource = dsTes
        TabOrder = 4
        Color = clWindow
        Style = csDropDown
      end
      object UniRadioGroup1: TUniRadioGroup
        Left = 17
        Top = 55
        Width = 769
        Height = 61
        Hint = ''
        Caption = 'ICMS'
        TabOrder = 5
      end
      object UniLabel3: TUniLabel
        Left = 33
        Top = 72
        Width = 42
        Height = 13
        Hint = ''
        Caption = 'C'#243'd. ST.'
        TabOrder = 6
      end
      object cbST: TUniDBComboBox
        Left = 33
        Top = 88
        Width = 82
        Hint = ''
        DataField = 'CST'
        DataSource = dsTes
        Items.Strings = (
          '00'
          '10'
          '20'
          '30'
          '40'
          '41'
          '50'
          '51'
          '60'
          '70'
          '90')
        TabOrder = 7
        IconItems = <>
      end
      object UniLabel4: TUniLabel
        Left = 121
        Top = 72
        Width = 34
        Height = 13
        Hint = ''
        Caption = 'CSOSN'
        TabOrder = 8
      end
      object cbCSOSN: TUniDBComboBox
        Left = 121
        Top = 88
        Width = 82
        Hint = ''
        DataField = 'CSOSN'
        DataSource = dsTes
        Items.Strings = (
          '101'
          '102'
          '103'
          '201'
          '203'
          '203'
          '300'
          '400'
          '500'
          '900')
        TabOrder = 9
        IconItems = <>
      end
      object UniLabel13: TUniLabel
        Left = 209
        Top = 72
        Width = 49
        Height = 13
        Hint = ''
        Caption = 'Aliq. ICMS'
        TabOrder = 10
      end
      object DBEdit1: TUniDBEdit
        Left = 209
        Top = 88
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'ALIQICMS'
        DataSource = dsTes
        TabOrder = 11
      end
      object UniLabel14: TUniLabel
        Left = 300
        Top = 72
        Width = 67
        Height = 13
        Hint = ''
        Caption = 'Red. BC ICMS'
        TabOrder = 12
      end
      object DBEdit5: TUniDBEdit
        Left = 300
        Top = 88
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'REDBCICMS'
        DataSource = dsTes
        TabOrder = 13
      end
      object UniLabel15: TUniLabel
        Left = 391
        Top = 72
        Width = 64
        Height = 13
        Hint = ''
        Caption = 'Aliq. ICMS ST'
        TabOrder = 14
      end
      object DBEdit4: TUniDBEdit
        Left = 391
        Top = 88
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'ALIQICMSST'
        DataSource = dsTes
        TabOrder = 15
      end
      object UniLabel16: TUniLabel
        Left = 488
        Top = 72
        Width = 79
        Height = 13
        Hint = ''
        Caption = 'Red. BC ICMSST'
        TabOrder = 16
      end
      object DBEdit6: TUniDBEdit
        Left = 488
        Top = 88
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'REDBCICMSST'
        DataSource = dsTes
        TabOrder = 17
      end
      object UniLabel17: TUniLabel
        Left = 579
        Top = 72
        Width = 61
        Height = 13
        Hint = ''
        Caption = 'MVA ICMSST'
        TabOrder = 18
      end
      object DBEdit8: TUniDBEdit
        Left = 579
        Top = 88
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'MVAICMSST'
        DataSource = dsTes
        TabOrder = 19
      end
      object UniLabel8: TUniLabel
        Left = 676
        Top = 136
        Width = 36
        Height = 13
        Hint = ''
        Caption = 'CST IPI'
        TabOrder = 20
      end
      object dbEDIT3: TUniDBEdit
        Left = 676
        Top = 152
        Width = 99
        Height = 22
        Hint = ''
        DataField = 'ALIQIPI'
        DataSource = dsTes
        TabOrder = 21
      end
      object cbCSTIPI: TUniDBComboBox
        Left = 585
        Top = 152
        Width = 82
        Hint = ''
        DataField = 'CSTIPI'
        DataSource = dsTes
        Items.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '49'
          '50'
          '51'
          '52'
          '53'
          '54'
          '55'
          '56'
          '60'
          '61'
          '62'
          '63'
          '64'
          '65'
          '66'
          '67'
          '70'
          '71'
          '72'
          '73'
          '74'
          '75'
          '98'
          '99')
        TabOrder = 22
        IconItems = <>
      end
      object UniLabel7: TUniLabel
        Left = 585
        Top = 136
        Width = 36
        Height = 13
        Hint = ''
        Caption = 'CST IPI'
        TabOrder = 23
      end
      object UniLabel10: TUniLabel
        Left = 484
        Top = 136
        Width = 74
        Height = 13
        Hint = ''
        Caption = 'Aliq. COFINSST'
        TabOrder = 25
      end
      object DBEdit11: TUniDBEdit
        Left = 484
        Top = 152
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'ALIQCOFINSST'
        DataSource = dsTes
        TabOrder = 26
      end
      object dbEdit10: TUniDBEdit
        Left = 393
        Top = 152
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'ALIQCOFINS'
        DataSource = dsTes
        TabOrder = 27
      end
      object UniLabel9: TUniLabel
        Left = 393
        Top = 136
        Width = 62
        Height = 13
        Hint = ''
        Caption = 'Aliq. COFINS'
        TabOrder = 28
      end
      object UniLabel6: TUniLabel
        Left = 305
        Top = 136
        Width = 60
        Height = 13
        Hint = ''
        Caption = 'CST COFINS'
        TabOrder = 29
      end
      object cbCOFINS: TUniDBComboBox
        Left = 305
        Top = 152
        Width = 82
        Hint = ''
        DataField = 'CSTCOFINS'
        DataSource = dsTes
        Items.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '49'
          '50'
          '51'
          '52'
          '52'
          '54'
          '55'
          '56'
          '60'
          '61'
          '62'
          '63'
          '64'
          '65'
          '66'
          '67'
          '70'
          '71'
          '72'
          '73'
          '74'
          '75'
          '98'
          '99')
        TabOrder = 30
        IconItems = <>
      end
      object UniLabel12: TUniLabel
        Left = 201
        Top = 136
        Width = 52
        Height = 13
        Hint = ''
        Caption = 'Aliq. PISST'
        TabOrder = 32
      end
      object DBEdit9: TUniDBEdit
        Left = 201
        Top = 152
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'ALIQPISST'
        DataSource = dsTes
        TabOrder = 33
      end
      object DBEdit7: TUniDBEdit
        Left = 112
        Top = 152
        Width = 85
        Height = 22
        Hint = ''
        DataField = 'ALIQPIS'
        DataSource = dsTes
        TabOrder = 34
      end
      object UniLabel11: TUniLabel
        Left = 112
        Top = 136
        Width = 40
        Height = 13
        Hint = ''
        Caption = 'Aliq. PIS'
        TabOrder = 35
      end
      object cbCSTPIS: TUniDBComboBox
        Left = 26
        Top = 152
        Width = 82
        Hint = ''
        DataField = 'CSTPIS'
        DataSource = dsTes
        Items.Strings = (
          ''
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '49'
          '50'
          '51'
          '52'
          '52'
          '53'
          '54'
          '55'
          '56'
          '60'
          '61'
          '62'
          '63'
          '64'
          '65'
          '66'
          '67'
          '70'
          '71'
          '72'
          '73'
          '74'
          '75'
          '98'
          '99')
        TabOrder = 36
        IconItems = <>
      end
      object UniLabel5: TUniLabel
        Left = 26
        Top = 136
        Width = 38
        Height = 13
        Hint = ''
        Caption = 'CST PIS'
        TabOrder = 37
      end
      object btnSalva: TUniBitBtn
        Left = 303
        Top = 189
        Width = 98
        Height = 41
        Hint = ''
        Caption = 'Salvar'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 39
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoVerde'#39');'#13#10'}')
        OnClick = btnSalvaClick
      end
      object btnCancela: TUniBitBtn
        Left = 407
        Top = 189
        Width = 98
        Height = 41
        Hint = ''
        Caption = 'Cancelar'
        ParentFont = False
        Font.Color = clWhite
        Font.Style = [fsBold]
        TabOrder = 40
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
        OnClick = btnCancelaClick
      end
      object UniBitBtn1: TUniBitBtn
        Left = 199
        Top = 189
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
            '.addCls('#39'BotaoAzul'#39');'#13#10'}')
        OnClick = UniBitBtn1Click
      end
      object bCFOP: TUniSpeedButton
        Left = 763
        Top = 27
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class="fa fa-search "></i>'
        ParentColor = False
        Color = clWindow
        ScreenMask.Enabled = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        TabOrder = 42
        OnClick = bCFOPClick
      end
    end
  end
  object qCFOP: TFDQuery
    Connection = UniMainModule.Banco
    SQL.Strings = (
      'select * from CFOP order by CFOP')
    Left = 568
    object qCFOPID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCFOPCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'CFOP'
    end
    object qCFOPNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 100
    end
    object qCFOPTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qCFOPOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 100
    end
    object qCFOPOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 100
    end
  end
  object qTES: TFDQuery
    Connection = UniMainModule.Banco
    SQL.Strings = (
      'SELECT * FROM TBTES where idemitente = :idemitente AND ID = :id')
    Left = 640
    ParamData = <
      item
        Name = 'IDEMITENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qTESID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTESDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qTESCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qTESALIQICMS: TCurrencyField
      FieldName = 'ALIQICMS'
      Origin = 'ALIQICMS'
    end
    object qTESREDBCICMS: TCurrencyField
      FieldName = 'REDBCICMS'
      Origin = 'REDBCICMS'
    end
    object qTESALIQICMSST: TCurrencyField
      FieldName = 'ALIQICMSST'
      Origin = 'ALIQICMSST'
    end
    object qTESREDBCICMSST: TCurrencyField
      FieldName = 'REDBCICMSST'
      Origin = 'REDBCICMSST'
    end
    object qTESMVAICMSST: TCurrencyField
      FieldName = 'MVAICMSST'
      Origin = 'MVAICMSST'
    end
    object qTESCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object qTESALIQIPI: TCurrencyField
      FieldName = 'ALIQIPI'
      Origin = 'ALIQIPI'
    end
    object qTESCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object qTESALIQPIS: TCurrencyField
      FieldName = 'ALIQPIS'
      Origin = 'ALIQPIS'
    end
    object qTESALIQPISST: TCurrencyField
      FieldName = 'ALIQPISST'
      Origin = 'ALIQPISST'
    end
    object qTESCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object qTESALIQCOFINS: TCurrencyField
      FieldName = 'ALIQCOFINS'
      Origin = 'ALIQCOFINS'
    end
    object qTESALIQCOFINSST: TCurrencyField
      FieldName = 'ALIQCOFINSST'
      Origin = 'ALIQCOFINSST'
    end
    object qTESDESTACA_ICMS: TIntegerField
      FieldName = 'DESTACA_ICMS'
      Origin = 'DESTACA_ICMS'
    end
    object qTESDESTACA_IPI: TIntegerField
      FieldName = 'DESTACA_IPI'
      Origin = 'DESTACA_IPI'
    end
    object qTESDESTACA_PIS: TIntegerField
      FieldName = 'DESTACA_PIS'
      Origin = 'DESTACA_PIS'
    end
    object qTESDESTACA_COFINS: TIntegerField
      FieldName = 'DESTACA_COFINS'
      Origin = 'DESTACA_COFINS'
    end
    object qTESCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      FixedChar = True
      Size = 2
    end
    object qTESCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      FixedChar = True
      Size = 3
    end
    object qTESIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
      Origin = 'IDEMITENTE'
    end
  end
  object dsCFOP: TDataSource
    DataSet = UniMainModule.qCFOP
    Left = 568
    Top = 49
  end
  object dsTes: TDataSource
    DataSet = UniMainModule.qTES
    OnStateChange = dsTesStateChange
    Left = 640
    Top = 49
  end
end
