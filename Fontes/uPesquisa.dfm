object fPesquisa: TfPesquisa
  Left = 0
  Top = 0
  ClientHeight = 430
  ClientWidth = 816
  Caption = 'Formulario para Consulta'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  OnClose = UniFormClose
  BorderIcons = []
  MonitoredKeys.Keys = <>
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.style = '#39'border: 0px; padding: 0px; border-radius: 0px' +
      #39';'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 38
    Width = 816
    Height = 82
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    LayoutConfig.Width = '100'
    object Filtro: TUniRadioGroup
      Left = 1
      Top = 1
      Width = 88
      Height = 80
      Hint = ''
      Items.Strings = (
        'Come'#231'a '
        'Contem')
      ItemIndex = 1
      Align = alLeft
      Caption = 'Filtro'
      TabOrder = 1
      OnClick = FiltroClick
    end
    object UniLabel1: TUniLabel
      Left = 193
      Top = 12
      Width = 92
      Height = 13
      Hint = ''
      Caption = 'Digite sua pesquisa'
      TabOrder = 2
    end
    object ePesq: TUniEdit
      Left = 193
      Top = 31
      Width = 493
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      TabOrder = 3
      OnKeyPress = ePesqKeyPress
    end
    object bPesq: TUniBitBtn
      Left = 692
      Top = 31
      Width = 110
      Height = 26
      Hint = ''
      Caption = 'Pesquisar'
      ParentFont = False
      Font.Color = clWhite
      TabOrder = 4
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = bPesqClick
    end
    object filtro2: TUniRadioGroup
      Left = 89
      Top = 1
      Width = 98
      Height = 80
      Hint = ''
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o')
      ItemIndex = 1
      Align = alLeft
      Caption = 'Filtro 2'
      TabOrder = 5
      OnClick = FiltroClick
    end
  end
  object DBGrid1: TUniDBGrid
    Left = 0
    Top = 120
    Width = 816
    Height = 256
    Hint = ''
    DataSource = dsGeral
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
    LoadMask.Message = 'Loading data...'
    LayoutConfig.Width = '100'
    Align = alTop
    TabOrder = 1
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Title.Caption = ' '
        Width = 95
      end
      item
        Title.Caption = ' '
        Width = 364
      end>
  end
  object UniBitBtn1: TUniBitBtn
    Left = 549
    Top = 380
    Width = 129
    Height = 48
    Hint = ''
    Caption = 'Confirmar'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 2
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVerde'#39');'#13#10'}')
    OnClick = UniBitBtn1Click
  end
  object UniBitBtn2: TUniBitBtn
    Left = 684
    Top = 380
    Width = 129
    Height = 48
    Hint = ''
    Caption = 'Cancelar'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 3
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    OnClick = UniBitBtn2Click
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 4
    Caption = ''
    Color = 4079166
    LayoutConfig.Width = '100'
    object lTitulo: TUniLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 252
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Alignment = taCenter
      Caption = 'Formulario para Consultas'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 1
      ExplicitWidth = 214
    end
  end
  object dsGeral: TDataSource
    DataSet = UniMainModule.qGeral
    Left = 464
    Top = 192
  end
end
