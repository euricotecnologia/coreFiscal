object fContasReceberBaixar: TfContasReceberBaixar
  Left = 0
  Top = 0
  ClientHeight = 452
  ClientWidth = 648
  Caption = 'Baixa de Contas a Receber'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  OnClose = UniFormClose
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.style = '#39'border: 0px; padding: 0px; border-radius: 0px' +
      #39';'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 196
    Width = 626
    Height = 197
    Hint = ''
    DataSource = dsReceberCor
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    TabOrder = 8
    OnCellClick = UniDBGrid1CellClick
    OnFieldImage = UniDBGrid1FieldImage
    Columns = <
      item
        FieldName = 'CODIGO'
        Title.Caption = 'DEL'
        Width = 26
        ImageOptions.Visible = True
      end
      item
        FieldName = 'DATAPGTO'
        Title.Caption = 'DATA PAGAMENTO'
        Width = 110
      end
      item
        FieldName = 'PARCELA'
        Title.Caption = 'PARCELA'
        Width = 54
      end
      item
        FieldName = 'VALORPAGO'
        Title.Caption = 'VALOR PAGO'
        Width = 124
      end
      item
        FieldName = 'OBS'
        Title.Caption = 'OBS'
        Width = 3004
      end
      item
        FieldName = 'JUROS'
        Title.Caption = 'JUROS'
        Width = 118
      end
      item
        FieldName = 'DESCONTO'
        Title.Caption = 'DESCONTO'
        Width = 118
      end>
  end
  object UniLabel1: TUniLabel
    Left = 12
    Top = 64
    Width = 37
    Height = 13
    Hint = ''
    Caption = 'Fatura'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 9
  end
  object UniLabel2: TUniLabel
    Left = 143
    Top = 64
    Width = 42
    Height = 13
    Hint = ''
    Caption = 'Parcela'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 10
  end
  object UniDBEdit2: TUniDBEdit
    Left = 55
    Top = 62
    Width = 77
    Height = 22
    Hint = ''
    DataField = 'FATURA'
    DataSource = dsReceberCab
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 0
    ReadOnly = True
  end
  object UniDBEdit3: TUniDBEdit
    Left = 191
    Top = 62
    Width = 74
    Height = 22
    Hint = ''
    DataField = 'PARCELA'
    DataSource = dsReceberCab
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 1
    ReadOnly = True
  end
  object eData: TUniDateTimePicker
    Left = 12
    Top = 100
    Width = 120
    Hint = ''
    DateTime = 43354.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 3
    FieldLabel = 'Data Recebimento'
    FieldLabelAlign = laTop
  end
  object eJuros: TUniFormattedNumberEdit
    Left = 144
    Top = 100
    Width = 121
    Hint = ''
    TabOrder = 4
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'sender.typeAh' +
        'ead = true;'#13#10'sender.selectOnFocus = true; '#13#10'}')
    EmptyText = '0,00'
    FieldLabel = 'Juros Multa'
    FieldLabelAlign = laTop
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object eDesconto: TUniFormattedNumberEdit
    Left = 271
    Top = 100
    Width = 121
    Hint = ''
    TabOrder = 5
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'sender.typeAh' +
        'ead = true;'#13#10'sender.selectOnFocus = true; '#13#10'}')
    EmptyText = '0,00'
    FieldLabel = 'Desconto'
    FieldLabelAlign = laTop
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object eValorRecebido: TUniFormattedNumberEdit
    Left = 398
    Top = 100
    Width = 121
    Hint = ''
    TabOrder = 6
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'sender.typeAh' +
        'ead = true;'#13#10'sender.selectOnFocus = true; '#13#10'}')
    EmptyText = '0,00'
    FieldLabel = 'Valor a Pagar'
    FieldLabelAlign = laTop
    DecimalSeparator = ','
    ThousandSeparator = '.'
    OnExit = eValorRecebidoExit
  end
  object eObs: TUniEdit
    Left = 8
    Top = 146
    Width = 511
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 7
    FieldLabel = 'Observa'#231#245'es'
    FieldLabelAlign = laTop
  end
  object imCancelada: TUniImage
    Left = 535
    Top = 105
    Width = 18
    Height = 17
    Hint = ''
    Visible = False
    Picture.Data = {
      07544269746D617036040000424D360400000000000036000000280000001000
      0000100000000100200000000000000400000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000FF00000099000000990000009900FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000FF00000099000000990000009900FF00FF00FF00
      FF00FF00FF000000FF000000CC000000CC000000CC0000009900FF00FF00FF00
      FF00FF00FF000000FF000000CC000000CC000000CC0000009900FF00FF00FF00
      FF00FF00FF00FF00FF000000FF000000CC000000CC000000CC0000009900FF00
      FF000000FF000000CC000000CC000000CC0000009900FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF000000FF000000CC000000CC000000CC000000
      99000000CC000000CC000000CC0000009900FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000CC000000CC000000
      CC000000CC000000CC0000009900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000CC000000
      CC000000CC0000009900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000CC000000CC000000
      CC000000CC000000CC0000009900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF000000FF000000CC000000CC000000CC000000
      99000000CC000000CC000000CC0000009900FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000FF000000CC000000CC000000CC0000009900FF00
      FF000000FF000000CC000000CC000000CC0000009900FF00FF00FF00FF00FF00
      FF00FF00FF000000FF000000CC000000CC000000CC0000009900FF00FF00FF00
      FF00FF00FF000000FF000000CC000000CC000000CC0000009900FF00FF00FF00
      FF00FF00FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00}
    Transparent = True
  end
  object UniLabel3: TUniLabel
    Left = 272
    Top = 64
    Width = 39
    Height = 13
    Hint = ''
    Caption = 'Cliente'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 12
  end
  object UniDBEdit1: TUniDBEdit
    Left = 317
    Top = 62
    Width = 314
    Height = 22
    Hint = ''
    DataField = 'RAZAOSOCIAL'
    DataSource = dsReceberCab
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 2
    ReadOnly = True
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 13
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    LayoutConfig.Width = '100'
    object UniLabel15: TUniLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 253
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Alignment = taCenter
      Caption = 'Baixa de Contas a Receber'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object bGerarParcelas: TUniBitBtn
    Left = 525
    Top = 149
    Width = 106
    Height = 41
    Hint = ''
    Caption = 'Baixar'
    ParentFont = False
    Font.Color = clWhite
    Font.Style = [fsBold]
    TabOrder = 14
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVerde'#39');'#13#10'}')
    OnClick = bGerarParcelasClick
  end
  object btnCancela: TUniBitBtn
    Left = 504
    Top = 403
    Width = 127
    Height = 41
    Hint = ''
    Caption = 'Fechar'
    ParentFont = False
    Font.Color = clWhite
    Font.Style = [fsBold]
    TabOrder = 15
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
    OnClick = btnCancelaClick
  end
  object dsReceberCor: TDataSource
    DataSet = UniMainModule.qReceberCor
    Left = 280
    Top = 240
  end
  object dsReceberCab: TDataSource
    DataSet = UniMainModule.qReceberCab
    Left = 280
    Top = 296
  end
end
