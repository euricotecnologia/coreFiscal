object fEnviarEmail: TfEnviarEmail
  Left = 0
  Top = 0
  ClientHeight = 201
  ClientWidth = 460
  Caption = 'Enviar Email'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel23: TUniLabel
    Left = 85
    Top = 12
    Width = 302
    Height = 25
    Hint = ''
    Caption = 'Enviar Nota Fiscal por E-mail'
    ParentFont = False
    Font.Height = -21
    Font.Style = [fsBold]
    TabOrder = 0
  end
  object UniLabel7: TUniLabel
    Left = 36
    Top = 50
    Width = 141
    Height = 13
    Hint = ''
    Caption = 'Entre com o E-mail de destino'
    TabOrder = 1
  end
  object eEmail: TUniEdit
    Left = 36
    Top = 66
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
    Top = 123
    Width = 194
    Height = 45
    Hint = ''
    Caption = 'Enviar'
    ParentFont = False
    Font.Color = clWhite
    TabOrder = 3
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'   sende' +
        'r.addCls('#39'BotaoVerde'#39');'#13#10'}')
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Enviando E-mail...'
    ScreenMask.Target = Owner
    OnClick = btnGravaNFeClick
  end
  object btnCancelaNF: TUniBitBtn
    Left = 236
    Top = 123
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
  object mmEmailMsg: TUniMemo
    Left = 112
    Top = 248
    Width = 185
    Height = 89
    Hint = ''
    Lines.Strings = (
      'Segue em anexo Danfe e arquivo XML da nota fiscal')
    TabOrder = 5
  end
end
