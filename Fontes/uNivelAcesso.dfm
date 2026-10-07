object fNivelAcesso: TfNivelAcesso
  Left = 0
  Top = 0
  ClientHeight = 581
  ClientWidth = 519
  Caption = 'Niveis de Acesso'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object UniLabel15: TUniLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 497
      Height = 33
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Alignment = taCenter
      AutoSize = False
      Caption = 'Niveis de Acesso'
      Align = alTop
      ParentFont = False
      Font.Height = -27
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 521
    Width = 519
    Height = 60
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 1
    object btnSalva: TUniBitBtn
      Left = 101
      Top = 10
      Width = 98
      Height = 41
      Hint = ''
      Caption = 'Salvar'
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVerde'#39');'#13#10'}')
    end
    object btnCancela: TUniBitBtn
      Left = 205
      Top = 10
      Width = 98
      Height = 41
      Hint = ''
      Caption = 'Cancelar'
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
    end
    object btnExcluir: TUniBitBtn
      Left = 309
      Top = 10
      Width = 98
      Height = 41
      Hint = ''
      Caption = 'Fechar'
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    end
  end
  object UniRadioGroup1: TUniRadioGroup
    Left = 0
    Top = 49
    Width = 519
    Height = 64
    Hint = ''
    Align = alTop
    Caption = 'Usuario'
    TabOrder = 2
  end
  object UniDBLookupComboBox1: TUniDBLookupComboBox
    Left = 8
    Top = 72
    Width = 399
    Hint = ''
    ListFieldIndex = 0
    TabOrder = 3
    Color = clWindow
  end
  object btnInclui: TUniBitBtn
    Left = 413
    Top = 64
    Width = 100
    Height = 37
    Hint = ''
    Caption = 'OK'
    ParentFont = False
    Font.Color = clWhite
    Font.Style = [fsBold]
    TabOrder = 4
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVerde'#39');'#13#10'}')
  end
  object UniDBCheckBox1: TUniDBCheckBox
    Left = 11
    Top = 128
    Width = 97
    Height = 17
    Hint = ''
    Caption = 'Cadastros'
    TabOrder = 5
    ParentColor = False
    Color = clBtnFace
  end
  object UniDBCheckBox2: TUniDBCheckBox
    Left = 11
    Top = 160
    Width = 97
    Height = 17
    Hint = ''
    Caption = 'Movimento'
    TabOrder = 6
    ParentColor = False
    Color = clBtnFace
  end
  object UniDBCheckBox3: TUniDBCheckBox
    Left = 11
    Top = 192
    Width = 97
    Height = 17
    Hint = ''
    Caption = 'Financeiro'
    TabOrder = 7
    ParentColor = False
    Color = clBtnFace
  end
  object UniDBCheckBox4: TUniDBCheckBox
    Left = 11
    Top = 224
    Width = 97
    Height = 17
    Hint = ''
    Caption = 'Relat'#243'rios'
    TabOrder = 8
    ParentColor = False
    Color = clBtnFace
  end
  object UniDBCheckBox5: TUniDBCheckBox
    Left = 11
    Top = 256
    Width = 97
    Height = 17
    Hint = ''
    Caption = 'Configura'#231#245'es'
    TabOrder = 9
    ParentColor = False
    Color = clBtnFace
  end
  object UniPanel2: TUniPanel
    Left = 136
    Top = 119
    Width = 375
    Height = 396
    Hint = ''
    TabOrder = 10
    Caption = 'UniPanel2'
  end
end
