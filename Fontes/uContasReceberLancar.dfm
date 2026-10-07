object fContasReceberLancar: TfContasReceberLancar
  Left = 0
  Top = 0
  ClientHeight = 459
  ClientWidth = 656
  Caption = 'Lan'#231'amento de Contas a Receber'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'    config.style = '#39'border: 0px; padding: 0px; border-radius: 0' +
      'px'#39';'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object eCliente: TUniDBLookupComboBox
    Left = 16
    Top = 104
    Width = 617
    Hint = ''
    ListField = 'RAZAOSOCIAL'
    ListSource = dsClientes
    KeyField = 'IDCLIENTE'
    ListFieldIndex = 0
    TabOrder = 3
    Color = clWindow
    FieldLabel = 'Cliente'
    FieldLabelWidth = 600
    FieldLabelAlign = laTop
  end
  object UniDBGrid1: TUniDBGrid
    Left = 16
    Top = 200
    Width = 617
    Height = 209
    Hint = ''
    DataSource = dsReceberCab
    LoadMask.Message = 'Loading data...'
    TabOrder = 8
    Columns = <
      item
        FieldName = 'FATURA'
        Title.Caption = 'FATURA'
        Width = 82
      end
      item
        FieldName = 'PARCELA'
        Title.Caption = 'PARCELA'
        Width = 81
      end
      item
        FieldName = 'DATAVCTO'
        Title.Caption = 'VENCIMENTO'
        Width = 99
      end
      item
        FieldName = 'VALOR'
        Title.Caption = 'VALOR'
        Width = 104
      end
      item
        FieldName = 'OBS'
        Title.Caption = 'OBS'
        Width = 239
      end>
  end
  object UniEdit1: TUniEdit
    Left = 14
    Top = 56
    Width = 89
    Hint = ''
    Text = ''
    TabOrder = 0
    ReadOnly = True
    FieldLabel = 'C'#243'digo'
    FieldLabelAlign = laTop
  end
  object eData: TUniDateTimePicker
    Left = 109
    Top = 56
    Width = 120
    Hint = ''
    DateTime = 43355.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 1
    FieldLabel = 'Lan'#231'amento'
    FieldLabelAlign = laTop
  end
  object eDescricao: TUniEdit
    Left = 235
    Top = 56
    Width = 398
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 2
    FieldLabel = 'Descri'#231#227'o'
    FieldLabelAlign = laTop
  end
  object eVencimento: TUniDateTimePicker
    Left = 15
    Top = 152
    Width = 120
    Hint = ''
    DateTime = 43355.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 4
    FieldLabel = 'Primeiro Vencimento'
    FieldLabelAlign = laTop
  end
  object eParcelamento: TUniComboBox
    Left = 351
    Top = 152
    Width = 145
    Hint = ''
    Text = ''
    Items.Strings = (
      'Semanal'
      'Quinzenal'
      'Mensal'
      'Trimestral'
      'Semestral'
      'Anual')
    ItemIndex = 2
    TabOrder = 7
    FieldLabel = 'Parcelamento'
    FieldLabelAlign = laTop
    IconItems = <>
  end
  object eParcelas: TUniFormattedNumberEdit
    Left = 268
    Top = 152
    Width = 77
    Hint = ''
    TabOrder = 6
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'sender.typeAh' +
        'ead = true;'#13#10'sender.selectOnFocus = true; '#13#10'}')
    FieldLabel = 'Parcelas'
    FieldLabelAlign = laTop
    DecimalPrecision = 0
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object eValor: TUniFormattedNumberEdit
    Left = 141
    Top = 152
    Width = 121
    Hint = ''
    TabOrder = 5
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'sender.typeAh' +
        'ead = true;'#13#10'sender.selectOnFocus = true; '#13#10'}')
    EmptyText = '0,00'
    FieldLabel = 'Valor'
    FieldLabelAlign = laTop
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 9
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    LayoutConfig.Width = '100'
    object UniLabel15: TUniLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 317
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Alignment = taCenter
      Caption = 'Lan'#231'amento de Contas a Receber'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object bGerarParcelas: TUniBitBtn
    Left = 502
    Top = 169
    Width = 127
    Height = 25
    Hint = ''
    Caption = ' Gerar Parcelas'
    ParentFont = False
    Font.Color = clWhite
    Font.Style = [fsBold]
    TabOrder = 10
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVerde'#39');'#13#10'}')
    OnClick = bGerarParcelasClick
  end
  object btnCancela: TUniBitBtn
    Left = 502
    Top = 415
    Width = 127
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
    OnClick = btnCancelaClick
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.qClientes
    Left = 102
    Top = 416
  end
  object dsReceberCab: TDataSource
    DataSet = UniMainModule.qReceberCab
    Left = 32
    Top = 416
  end
end
