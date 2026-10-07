object fXmlEscritorio: TfXmlEscritorio
  Left = 0
  Top = 0
  ClientHeight = 305
  ClientWidth = 619
  Caption = 'Enviar XML via E-Mail'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.style = '#39'border: 0px; padding: 0px; border-radius: 0px' +
      #39';'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 16
    Top = 56
    Width = 19
    Height = 13
    Hint = ''
    Caption = 'Ano'
    TabOrder = 0
  end
  object UniLabel2: TUniLabel
    Left = 16
    Top = 104
    Width = 19
    Height = 13
    Hint = ''
    Caption = 'M'#234's'
    TabOrder = 1
  end
  object UniLabel3: TUniLabel
    Left = 16
    Top = 152
    Width = 28
    Height = 13
    Hint = ''
    Caption = 'E-Mail'
    TabOrder = 2
  end
  object UniLabel4: TUniLabel
    Left = 265
    Top = 56
    Width = 87
    Height = 13
    Hint = ''
    Caption = 'Hist'#243'rico de E-mail'
    TabOrder = 3
  end
  object UniDBGrid1: TUniDBGrid
    Left = 265
    Top = 75
    Width = 320
    Height = 118
    Hint = ''
    DataSource = dsEmail
    LoadMask.Message = 'Loading data...'
    TabOrder = 4
    OnCellClick = UniDBGrid1CellClick
    Columns = <
      item
        FieldName = 'EMAIL'
        Title.Caption = 'EMAIL'
        Width = 290
      end>
  end
  object eAno: TUniComboBox
    Left = 16
    Top = 75
    Width = 243
    Hint = ''
    Text = 'eAno'
    Items.Strings = (
      'SELECIONE O ANO DESEJADO'
      '2018'
      '2019'
      '2020'
      '2021'
      '2022'
      '2023'
      '2024'
      '2025'
      '2026'
      '2027')
    ItemIndex = 0
    TabOrder = 5
    IconItems = <>
  end
  object eMes: TUniComboBox
    Left = 16
    Top = 124
    Width = 243
    Hint = ''
    Text = 'UniComboBox1'
    Items.Strings = (
      'SELECIONE O M'#202'S DESEJADO'
      '01 JANEIRO'
      '02 FEVEREIRO'
      '03 MAR'#199'O'
      '04 ABRIL'
      '05 MAIO'
      '06 JUNHO'
      '07 JULHO'
      '08 AGOSTO'
      '09 SETEMBRO'
      '10 OUTUBRO'
      '11 NOVEMBRO'
      '12 DEZEMBRO')
    ItemIndex = 0
    TabOrder = 6
    IconItems = <>
  end
  object eEmail: TUniEdit
    Left = 16
    Top = 171
    Width = 243
    Hint = ''
    Text = ''
    TabOrder = 7
  end
  object lInfo: TUniLabel
    Left = 265
    Top = 199
    Width = 12
    Height = 13
    Hint = ''
    Caption = '...'
    TabOrder = 8
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 9
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    LayoutConfig.Width = '100'
    object lTitulo: TUniLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 271
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Alignment = taCenter
      Caption = 'Enviar XML para o Escrit'#243'rio'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object mAltBody: TUniMemo
    Left = 624
    Top = 75
    Width = 185
    Height = 89
    Hint = ''
    TabOrder = 10
  end
  object UniButton1: TUniButton
    Left = 112
    Top = 239
    Width = 119
    Height = 50
    Hint = ''
    Caption = 'Enviar Email'
    TabOrder = 11
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 237
    Top = 239
    Width = 119
    Height = 50
    Hint = ''
    Caption = 'Baixar'
    TabOrder = 12
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 362
    Top = 239
    Width = 119
    Height = 50
    Hint = ''
    Caption = 'Fechar'
    TabOrder = 13
    OnClick = UniButton3Click
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 416
    Top = 88
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 480
    Top = 88
  end
  object qEmail: TFDQuery
    Connection = UniMainModule.Banco
    SQL.Strings = (
      'Select * from EmailEscritorio where emitente = :e')
    Left = 416
    Top = 144
    ParamData = <
      item
        Name = 'E'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qEmailCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qEmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
    object qEmailEMITENTE: TIntegerField
      FieldName = 'EMITENTE'
      Origin = 'EMITENTE'
    end
  end
  object dsEmail: TDataSource
    DataSet = qEmail
    Left = 480
    Top = 144
  end
end
