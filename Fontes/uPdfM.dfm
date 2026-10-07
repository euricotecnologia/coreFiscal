object fPdfM: TfPdfM
  Left = 0
  Top = 0
  ClientHeight = 437
  ClientWidth = 320
  Caption = 'PDF'
  OnShow = UnimFormShow
  AutoHeight = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimToolBar1: TUnimToolBar
    Left = 0
    Top = 0
    Width = 320
    Height = 48
    Hint = ''
    ShowCaptions = True
    Caption = ''
    object UnimToolButton1: TUnimToolButton
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'voltar'
      UI = 'back'
      OnClick = UnimToolButton1Click
    end
    object bEmail: TUnimButton
      AlignWithMargins = True
      Left = 200
      Top = 3
      Width = 117
      Height = 42
      Hint = ''
      Align = alRight
      Caption = '<i class="fa fa-envelope-o fa-1x "></i> <br> E-mail'
      ClientEvents.ExtEvents.Strings = (
        
          'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
          'aoAzul'#39');'#13#10'}')
      UI = 'plain'
      OnClick = bEmailClick
    end
    object UnimButton1: TUnimButton
      AlignWithMargins = True
      Left = 64
      Top = 3
      Width = 130
      Height = 42
      Hint = ''
      Align = alRight
      Caption = '<i class="fa fa-whatsapp fa-1x "></i> <br>Whatsapp'
      ClientEvents.ExtEvents.Strings = (
        
          'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
          'aoVerde'#39');'#13#10'}')
      UI = 'plain'
      OnClick = UnimButton1Click
    end
  end
  object UnimScrollBox1: TUnimScrollBox
    Left = 0
    Top = 48
    Width = 320
    Height = 389
    Hint = ''
    Align = alClient
    ScrollHeight = 0
    ScrollWidth = 0
    object UnimPDFFrame1: TUnimPDFFrame
      Left = 0
      Top = 0
      Width = 318
      Height = 387
      Hint = ''
      Align = alClient
      TabOrder = 0
    end
  end
end
