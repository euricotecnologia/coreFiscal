object fEnviarEmailM: TfEnviarEmailM
  Left = 0
  Top = 0
  ClientHeight = 129
  ClientWidth = 269
  Caption = 'Enviar'
  OnShow = UnimFormShow
  AutoHeight = False
  FullScreen = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimLabel1: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 263
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Email Destinat'#225'rio'
    Align = alTop
  end
  object eemail: TUnimEdit
    AlignWithMargins = True
    Left = 3
    Top = 32
    Width = 263
    Height = 47
    Hint = ''
    Align = alTop
    Text = ''
    ParentFont = False
    TabOrder = 1
  end
  object UnimContainerPanel10: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 85
    Width = 263
    Height = 39
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '50%'
    LayoutConfig.Margin = '4'
    object UnimContainerPanel11: TUnimContainerPanel
      AlignWithMargins = True
      Left = 128
      Top = 3
      Width = 132
      Height = 33
      Hint = ''
      Align = alRight
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '95%'
      LayoutConfig.Width = '100%'
      object UnimButton7: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 126
        Height = 27
        Hint = ''
        Align = alClient
        Caption = '<i class="fa fa-check-circle-o fa-1x "></i>  Enviar'
        ClientEvents.ExtEvents.Strings = (
          
            'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
            'aoVerde'#39');'#13#10'}')
        UI = 'plain'
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Enviando...'
        ScreenMask.Target = Owner
        LayoutConfig.Height = '80%'
        LayoutConfig.Width = '90%'
        OnClick = UnimButton7Click
      end
    end
    object UnimContainerPanel12: TUnimContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 121
      Height = 33
      Hint = ''
      Align = alLeft
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '95%'
      LayoutConfig.Width = '100%'
      object UnimButton8: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 115
        Height = 27
        Hint = ''
        Align = alClient
        Caption = '<i class="fa fa-times-circle-o fa-1x "></i>  Cancelar'
        ClientEvents.ExtEvents.Strings = (
          
            'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
            'aoVermelho'#39');'#13#10'}')
        UI = 'plain'
        LayoutConfig.Height = '80%'
        LayoutConfig.Width = '90%'
        OnClick = UnimButton8Click
      end
    end
  end
  object mmEmailMsg: TUnimMemo
    Left = 48
    Top = 192
    Width = 225
    Height = 123
    Hint = ''
    Lines.Strings = (
      'Segue em anexo Danfe e arquivo XML da nota fiscal')
    TabOrder = 3
  end
end
