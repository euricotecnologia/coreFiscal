object fCondutores: TfCondutores
  Left = 0
  Top = 0
  Width = 800
  Height = 443
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 0
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
      Width = 230
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Cadastro de Condutores'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 2
      ExplicitTop = 14
    end
  end
  object PG: TUniPageControl
    Left = 0
    Top = 49
    Width = 800
    Height = 394
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
        Width = 792
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
        Width = 792
        Height = 333
        Hint = ''
        DataSource = dsCondutores
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        LoadMask.Message = 'Carregando...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        OnCellClick = UniDBGrid1CellClick
        OnFieldImage = UniDBGrid1FieldImage
        Columns = <
          item
            FieldName = 'ID_EMITENTE'
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
            FieldName = 'CPF'
            Title.Caption = 'CPF'
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
        Width = 792
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
          TabOrder = 5
        end
        object UniDBEdit1: TUniDBEdit
          Left = 21
          Top = 40
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'CODIGO'
          DataSource = dsCondutores
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
          TabOrder = 6
        end
        object dbNome: TUniDBEdit
          Left = 21
          Top = 88
          Width = 355
          Height = 22
          Hint = ''
          DataField = 'NOME'
          DataSource = dsCondutores
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Label11: TUniLabel
          Left = 23
          Top = 120
          Width = 48
          Height = 13
          Hint = ''
          Caption = 'CPF/CNPJ'
          TabOrder = 7
        end
        object dbCpf: TUniDBEdit
          Left = 22
          Top = 136
          Width = 139
          Height = 22
          Hint = ''
          DataField = 'CPF'
          DataSource = dsCondutores
          CharCase = ecUpperCase
          TabOrder = 2
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
          TabOrder = 8
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
          TabOrder = 3
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
          TabOrder = 9
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
          TabOrder = 10
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
              '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        end
      end
    end
  end
  object dsCondutores: TDataSource
    DataSet = UniMainModule.qCondutores
    OnStateChange = dsCondutoresStateChange
    Left = 409
    Top = 1
  end
end
