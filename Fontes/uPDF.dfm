object fPDF: TfPDF
  Left = 0
  Top = 0
  ClientHeight = 471
  ClientWidth = 849
  Caption = 'Visualizar Impress'#227'o'
  Color = clWhite
  OnShow = UniFormShow
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniURLFrame1: TUniURLFrame
    Left = 0
    Top = 41
    Width = 849
    Height = 430
    Hint = ''
    Align = alClient
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 41
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 1
    object btnCancela: TUniBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 98
      Height = 35
      Hint = ''
      Caption = 'Fechar'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
      OnClick = btnCancelaClick
    end
    object bWhats: TUniBitBtn
      AlignWithMargins = True
      Left = 107
      Top = 3
      Width = 98
      Height = 35
      Hint = ''
      Caption = 'Whatsapp'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVerde'#39');'#13#10'}')
      OnClick = bWhatsClick
    end
    object bEmail: TUniBitBtn
      AlignWithMargins = True
      Left = 211
      Top = 3
      Width = 98
      Height = 35
      Hint = ''
      Caption = 'E-mail'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = bEmailClick
    end
  end
end
