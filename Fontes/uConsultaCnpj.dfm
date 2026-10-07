object fConsultaCNPJ: TfConsultaCNPJ
  Left = 0
  Top = 0
  ClientHeight = 209
  ClientWidth = 301
  Caption = 'Consultar Cnpj'
  OnShow = UnimFormShow
  AutoHeight = False
  FullScreen = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 301
    Height = 116
    Hint = ''
    Align = alTop
    object Image1: TUnimImage
      Left = 0
      Top = 29
      Width = 301
      Height = 95
      Hint = ''
      Align = alTop
      Stretch = True
    end
    object bAtualizar: TUnimButton
      Left = 0
      Top = 0
      Width = 301
      Height = 29
      Hint = ''
      Align = alTop
      Caption = 'Atualizar Captcha'
      UI = 'confirm'
      OnClick = bAtualizarClick
    end
  end
  object UnimContainerPanel2: TUnimContainerPanel
    Left = 0
    Top = 116
    Width = 301
    Height = 48
    Hint = ''
    Align = alTop
    object EditCaptcha: TUnimEdit
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 295
      Height = 42
      Hint = ''
      Align = alClient
      Text = ''
      ParentFont = False
      TabOrder = 1
    end
  end
  object UnimContainerPanel10: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 167
    Width = 295
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
      Left = 160
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
        Caption = '<i class="fa fa-check-circle-o fa-1x "></i>  Confirmar'
        ClientEvents.ExtEvents.Strings = (
          
            'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
            'aoVerde'#39');'#13#10'}')
        UI = 'plain'
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Consultando dados...'
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
  object ACBrConsultaCNPJ1: TACBrConsultaCNPJ
    ProxyPort = '8080'
    PesquisarIBGE = False
    Left = 222
    Top = 50
  end
end
