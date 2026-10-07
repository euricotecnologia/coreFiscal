object fWhatsApp: TfWhatsApp
  Left = 0
  Top = 0
  ClientHeight = 247
  ClientWidth = 474
  Caption = 'Enviar por WhatsApp'
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel23: TUniLabel
    Left = 64
    Top = 10
    Width = 339
    Height = 25
    Hint = ''
    Caption = 'Enviar Nota Fiscal via WhatsApp'
    ParentFont = False
    Font.Height = -21
    Font.Style = [fsBold]
    TabOrder = 0
  end
  object lNumero: TUniLabel
    Left = 36
    Top = 114
    Width = 163
    Height = 13
    Hint = ''
    Caption = 'DDD+N'#250'mero     Ex.44123451234'
    TabOrder = 1
  end
  object eNumero: TUniEdit
    Left = 36
    Top = 130
    Width = 393
    Height = 32
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Height = -21
    Font.Style = [fsBold]
    TabOrder = 2
  end
  object btnGravaNFe: TUniBitBtn
    Left = 36
    Top = 179
    Width = 194
    Height = 45
    Hint = ''
    Caption = 'Enviar'
    ParentFont = False
    Font.Color = clWhite
    TabOrder = 3
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVerde'#39');'#13#10'}')
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Enviando E-mail...'
    ScreenMask.Target = Owner
    OnClick = btnGravaNFeClick
  end
  object btnCancelaNF: TUniBitBtn
    Left = 236
    Top = 179
    Width = 193
    Height = 45
    Hint = ''
    Caption = 'Cancelar'
    ParentFont = False
    Font.Color = clWhite
    TabOrder = 4
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
    OnClick = btnCancelaNFClick
  end
  object rNumero: TUniRadioButton
    Left = 36
    Top = 56
    Width = 113
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Informa o N'#250'mero'
    TabOrder = 5
    OnClick = rNumeroClick
  end
  object rContato: TUniRadioButton
    Left = 36
    Top = 79
    Width = 113
    Height = 25
    Hint = ''
    Caption = 'Selecionar Contato'
    TabOrder = 6
    OnClick = rContatoClick
  end
end
