object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 680
  ClientWidth = 344
  Caption = 'MainmForm'
  OnShow = UnimFormShow
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimScrollBox1: TUnimScrollBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 338
    Height = 674
    Hint = ''
    Align = alClient
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Padding = '0'
    LayoutConfig.Height = '98%'
    LayoutConfig.Width = '98%'
    LayoutConfig.Margin = '0'
    ExplicitHeight = 551
    ScrollHeight = 432
    ScrollWidth = 0
    object UnimContainerPanel4: TUnimContainerPanel
      AlignWithMargins = True
      Left = 0
      Top = 10
      Width = 336
      Height = 111
      Hint = ''
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'start'
      LayoutAttribs.Pack = 'start'
      LayoutConfig.Padding = '0'
      LayoutConfig.Height = '33%'
      LayoutConfig.Width = '100%'
      LayoutConfig.Margin = '4'
      object UnimContainerPanel5: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 10
        Width = 161
        Height = 98
        Hint = ''
        Margins.Top = 10
        Align = alLeft
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bClientes: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 92
          Hint = ''
          BadgeText = '128'
          Align = alClient
          Caption = '<i class="fas fa-users fa-3x "></i> <br>    Clientes'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoAzulEscuro'#39');'#13#10'}')
          UI = 'plain'
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          LayoutConfig.Cls = 'BotaoAzulEscuro'
          LayoutConfig.Height = '80%'
          LayoutConfig.Width = '90%'
          OnClick = bClientesClick
        end
      end
      object UnimContainerPanel6: TUnimContainerPanel
        AlignWithMargins = True
        Left = 172
        Top = 10
        Width = 161
        Height = 98
        Hint = ''
        Margins.Top = 10
        Align = alRight
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bProdutos: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 92
          Hint = ''
          BadgeText = '68'
          Align = alClient
          Caption = '<i class="fa fa-barcode fa-3x "></i><br> Produtos'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoBranco'#39');'#13#10'}')
          UI = 'confirm'
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          LayoutConfig.Height = '80%'
          LayoutConfig.Width = '90%'
          OnClick = bProdutosClick
        end
      end
    end
    object UnimContainerPanel1: TUnimContainerPanel
      Left = 0
      Top = 121
      Width = 336
      Height = 104
      Hint = ''
      Align = alTop
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '33%'
      LayoutConfig.Width = '100%'
      LayoutConfig.Margin = '4'
      object UnimContainerPanel3: TUnimContainerPanel
        AlignWithMargins = True
        Left = 172
        Top = 3
        Width = 161
        Height = 98
        Hint = ''
        Align = alRight
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bNfce: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 92
          Hint = ''
          Align = alClient
          Caption = '<i class="fa fa-cart-plus fa-3x "></i><br> NFCe'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoAzulEscuro'#39');'#13#10'}')
          UI = 'plain'
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          LayoutConfig.Cls = 'BotaoAzulEscuro'
          LayoutConfig.Height = '80%'
          LayoutConfig.Width = '90%'
          OnClick = bNfceClick
        end
      end
      object UnimContainerPanel2: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 161
        Height = 98
        Hint = ''
        Align = alLeft
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bNfe: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 92
          Hint = ''
          Align = alClient
          Caption = '<i class="fa fa-cart-plus fa-3x "></i><br> NFe'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoBranco'#39');'#13#10'}')
          UI = 'confirm'
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Aguarde...'
          ScreenMask.Target = Owner
          LayoutConfig.Height = '80%'
          LayoutConfig.Width = '90%'
          OnClick = bNfeClick
        end
      end
    end
    object UnimContainerPanel7: TUnimContainerPanel
      Left = 0
      Top = 225
      Width = 336
      Height = 69
      Hint = ''
      Align = alTop
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '14%'
      LayoutConfig.Width = '100%'
      LayoutConfig.Margin = '4'
      object UnimContainerPanel8: TUnimContainerPanel
        AlignWithMargins = True
        Left = 172
        Top = 3
        Width = 161
        Height = 63
        Hint = ''
        Align = alRight
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bAceitasNFCe: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 57
          Hint = ''
          Align = alClient
          Caption = '<i class="fa fa-check-circle fa-2x "></i><br>NFCe'#39's Aceitas'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoVermelho'#39');'#13#10'}')
          UI = 'plain'
          LayoutConfig.Cls = 'BotaoVermelho'
          LayoutConfig.Height = '90%'
          LayoutConfig.Width = '90%'
          OnClick = bAceitasNFCeClick
        end
      end
      object UnimContainerPanel9: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 161
        Height = 63
        Hint = ''
        Align = alLeft
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bAceitasNFe: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 57
          Hint = ''
          Align = alClient
          Caption = '<i class="fa fa-check-circle fa-2x "></i><br> NFe'#39's Aceitas'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoLaranja'#39');'#13#10'}')
          UI = 'plain'
          LayoutConfig.Cls = 'BotaoAzulEscuro'
          LayoutConfig.Height = '90%'
          LayoutConfig.Width = '90%'
          OnClick = bAceitasNFeClick
        end
      end
    end
    object UnimContainerPanel14: TUnimContainerPanel
      Left = 0
      Top = 294
      Width = 336
      Height = 69
      Hint = ''
      Align = alTop
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '14%'
      LayoutConfig.Width = '100%'
      LayoutConfig.Margin = '4'
      ExplicitTop = 225
      object UnimContainerPanel16: TUnimContainerPanel
        AlignWithMargins = True
        Left = 172
        Top = 3
        Width = 161
        Height = 63
        Hint = ''
        Align = alRight
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bPendentesNFCe: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 57
          Hint = ''
          Align = alClient
          Caption = '<i class="fa fa-times-circle-o fa-2x "></i><br> NFCe'#39's Pendentes'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoVermelho'#39');'#13#10'}')
          UI = 'plain'
          LayoutConfig.Cls = 'BotaoLaranja'
          LayoutConfig.Height = '90%'
          LayoutConfig.Width = '90%'
        end
      end
      object UnimContainerPanel15: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 161
        Height = 63
        Hint = ''
        Align = alLeft
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bPendentesNfe: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 57
          Hint = ''
          Align = alClient
          Caption = '<i class="fa fa-calendar-o fa-2x "></i><br>NFe'#39's Pendentes'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoLaranja'#39');'#13#10'}')
          UI = 'plain'
          LayoutConfig.Cls = 'BotaoLaranja'
          LayoutConfig.Height = '90%'
          LayoutConfig.Width = '90%'
        end
      end
    end
    object UnimContainerPanel17: TUnimContainerPanel
      Left = 0
      Top = 363
      Width = 336
      Height = 69
      Hint = ''
      Align = alTop
      ParentAlignmentControl = False
      AlignmentControl = uniAlignmentClient
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '14%'
      LayoutConfig.Width = '100%'
      LayoutConfig.Margin = '4'
      ExplicitTop = 294
      object UnimContainerPanel19: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 161
        Height = 63
        Hint = ''
        Align = alLeft
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bCanceladasNFe: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 57
          Hint = ''
          Align = alClient
          Caption = '<i class="fa fa-check-circle-o fa-2x "></i><br> NFe'#39's Canceladas'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoAzulEscuro'#39');'#13#10'}')
          UI = 'plain'
          LayoutConfig.Cls = 'BotaoVerde'
          LayoutConfig.Height = '80%'
          LayoutConfig.Width = '90%'
        end
      end
      object UnimContainerPanel18: TUnimContainerPanel
        AlignWithMargins = True
        Left = 172
        Top = 3
        Width = 161
        Height = 63
        Hint = ''
        Align = alRight
        ParentAlignmentControl = False
        AlignmentControl = uniAlignmentClient
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '95%'
        LayoutConfig.Width = '50%'
        object bCanceladasNFCe: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 155
          Height = 57
          Hint = ''
          Align = alClient
          Caption = '<i class="fa fa-check-circle fa-2x "></i><br>NFCe'#39's Canceladas'
          ClientEvents.ExtEvents.Strings = (
            
              'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
              'aoVerde'#39');'#13#10'}')
          UI = 'plain'
          LayoutConfig.Cls = 'BotaoVerde'
          LayoutConfig.Height = '80%'
          LayoutConfig.Width = '90%'
        end
      end
    end
  end
end
