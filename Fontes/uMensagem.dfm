object fMensagem: TfMensagem
  Left = 0
  Top = 0
  ClientHeight = 272
  ClientWidth = 433
  Caption = 'Mensagem do Sistema'
  OnShow = UniFormShow
  Color = clWhite
  BorderStyle = bsNone
  OldCreateOrder = False
  OnClose = UniFormClose
  BorderIcons = []
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object lblMensagem: TUniPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 57
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Height = -21
    Font.Style = [fsBold]
    TabOrder = 2
    TabStop = False
    BorderStyle = ubsNone
    Caption = 'confirma'
    Color = clWhite
  end
  object btnIcone: TUniBitBtn
    Left = 159
    Top = 70
    Width = 105
    Height = 121
    Hint = ''
    Caption = '<i class="fa fa-check-square-o fa-30x"  style="color:green"></i>'
    ParentFont = False
    Font.Height = -96
    Font.Style = [fsBold]
    TabStop = False
    TabOrder = 3
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoBranco'#39');'#13#10'}')
  end
  object btnSim: TUniBitBtn
    Left = 12
    Top = 205
    Width = 194
    Height = 49
    Hint = ''
    Visible = False
    Caption = '<i class="fa fa-check fa-2x "></i>  Sim'
    ModalResult = 6
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 0
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVerde'#39');'#13#10'}')
    ScreenMask.WaitData = True
  end
  object BtnNao: TUniBitBtn
    Left = 212
    Top = 205
    Width = 193
    Height = 49
    Hint = ''
    Visible = False
    Caption = '<i class="fa fa-times fa-2x "></i>  N'#227'o'
    ModalResult = 7
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    Font.Style = [fsBold]
    TabStop = False
    TabOrder = 4
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
  end
  object BtnOK: TUniBitBtn
    Left = 108
    Top = 205
    Width = 194
    Height = 49
    Hint = ''
    Visible = False
    Caption = '<i class="fa fa-check fa-2x "></i>  OK'
    ModalResult = 1
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 1
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoAzulEscuro'#39');'#13#10'}')
    ScreenMask.WaitData = True
  end
end
