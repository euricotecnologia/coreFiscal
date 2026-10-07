object fWhatsappM: TfWhatsappM
  Left = 0
  Top = 0
  ClientHeight = 489
  ClientWidth = 366
  Caption = 'Enviar WhatsApp'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 0
    Width = 366
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Selecione a forma de Envio'
    Align = alTop
  end
  object rNumero: TUnimRadio
    Left = 0
    Top = 23
    Width = 366
    Height = 47
    Hint = ''
    FieldLabel = 'Informar Numero'
    Align = alTop
    Checked = True
    OnCheck = rNumeroCheck
  end
  object rSelecionar: TUnimRadio
    Left = 0
    Top = 70
    Width = 366
    Height = 47
    Hint = ''
    FieldLabel = 'Selecionar '
    Align = alTop
    OnCheck = rSelecionarCheck
  end
  object pNumero: TUnimContainerPanel
    Left = 0
    Top = 117
    Width = 366
    Height = 100
    Hint = ''
    Align = alTop
    object UnimLabel2: TUnimLabel
      Left = 0
      Top = 0
      Width = 366
      Height = 49
      Hint = ''
      AutoSize = False
      Caption = 'Numero DDD+NUMERO '#13#10'ex. 82123451234'
      Align = alTop
    end
    object eNumero: TUnimEdit
      Left = 0
      Top = 49
      Width = 366
      Height = 47
      Hint = ''
      Align = alTop
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.com' +
          'ponent = {'#13#10'     xtype: '#39'input'#39','#13#10'     type: '#39'tel'#39#13#10'     };'#13#10'}')
      Text = ''
      ParentFont = False
      TabOrder = 2
    end
  end
  object UnimButton1: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 220
    Width = 360
    Height = 53
    Hint = ''
    Align = alTop
    Caption = '<i class="fab fa-whatsapp fa-2x "></i> Enviar WhatsApp'
    ClientEvents.ExtEvents.Strings = (
      
        'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
        'aoVerde'#39');'#13#10'}')
    UI = 'plain'
    LayoutConfig.Cls = 'BotaoVerde'
    OnClick = UnimButton1Click
  end
  object bSms: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 279
    Width = 360
    Height = 53
    Hint = ''
    Align = alTop
    Caption = '<i class="far fa-envelope fa-2x "></i> Enviar SMS'
    ClientEvents.ExtEvents.Strings = (
      
        'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
        'aoVerde'#39');'#13#10'}')
    UI = 'plain'
    LayoutConfig.Cls = 'BotaoVerde'
    OnClick = bSmsClick
  end
end
