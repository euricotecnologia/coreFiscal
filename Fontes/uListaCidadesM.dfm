object fListaCidadesM: TfListaCidadesM
  Left = 0
  Top = 0
  ClientHeight = 468
  ClientWidth = 293
  Caption = 'fListaCidadesM'
  AutoHeight = False
  DisplayCaption = False
  ShowTitle = False
  FullScreen = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimContainerPanel3: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 293
    Height = 75
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    object UnimLabel1: TUnimLabel
      Left = 0
      Top = 0
      Width = 293
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'Pesquisar Cidade'
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
    end
    object UnimContainerPanel4: TUnimContainerPanel
      Left = 0
      Top = 23
      Width = 293
      Height = 52
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object eCidade: TUnimEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 225
        Height = 46
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Text = ''
        CharCase = ecUpperCase
      end
      object UnimButton1: TUnimButton
        AlignWithMargins = True
        Left = 234
        Top = 3
        Width = 56
        Height = 46
        Hint = ''
        Align = alRight
        Anchors = [akTop, akRight, akBottom]
        Caption = '<i class="fa fa-search fa-1x "></i>'
        ClientEvents.ExtEvents.Strings = (
          
            'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
            'aoAzul'#39');'#13#10'}')
        UI = 'plain'
        OnClick = UnimButton1Click
      end
    end
  end
  object UnimDBListGrid1: TUnimDBListGrid
    AlignWithMargins = True
    Left = 3
    Top = 78
    Width = 287
    Height = 331
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsCidades
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.loadi' +
        'ngText='#39'Carregando...'#39';'#13#10' config.grouped=true; '#13#10' config.selecte' +
        'dCls='#39#39';'#13#10' config.itemTpl='#39'<table style="width:100%;white-space:' +
        ' nowrap;vertical-align:middle;">'#39'+'#13#10'                '#39'<tr>'#39'+     ' +
        '                 '#13#10'                '#39'<td style="color:#3a6383;pad' +
        'ding-left:10px;" colspan="2">{0}</td>'#39'+                 '#13#10'      ' +
        '          '#39'</tr>'#13#10'                <tr>'#39'+                        ' +
        '                                  '#13#10'                '#39'<td style="' +
        'padding-top:5px;padding-left:5px;" width="16px">'#39'+'#13#10'            ' +
        '    '#39'<td style="font-size:15px;padding-top:4px;padding-left:5px;' +
        'color:#535454;">{1}</td>'#39'+'#13#10'                '#39'</tr><tr>'#39'+'#13#10'      ' +
        '                        '#13#10'                '#39'</tr></table><img src' +
        '="files/images/file5.png" style="position:absolute;right:15px;to' +
        'p:15px;"/>'#39';               '#13#10'}')
    Options = [dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    OnClick = UnimDBListGrid1Click
    Columns = <
      item
        Title.Caption = 'NOME'
        Title.Font.Height = -21
        FieldName = 'ID'
        Width = 686
      end
      item
        Title.Caption = 'NOME'
        Title.Font.Height = -21
        FieldName = 'NOME'
        Width = 389
      end>
  end
  object UnimContainerPanel10: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 415
    Width = 287
    Height = 50
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '50%'
    LayoutConfig.Margin = '4'
    object UnimContainerPanel12: TUnimContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 121
      Height = 44
      Hint = ''
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
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
        Height = 38
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
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
    object UnimContainerPanel11: TUnimContainerPanel
      AlignWithMargins = True
      Left = 152
      Top = 3
      Width = 132
      Height = 44
      Hint = ''
      Align = alRight
      Anchors = [akTop, akRight, akBottom]
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
        Height = 38
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '<i class="fa fa-check-circle-o fa-1x "></i>  Confirmar'
        ClientEvents.ExtEvents.Strings = (
          
            'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
            'aoVerde'#39');'#13#10'}')
        UI = 'plain'
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        LayoutConfig.Height = '80%'
        LayoutConfig.Width = '90%'
        OnClick = UnimButton7Click
      end
    end
  end
  object dsCidades: TDataSource
    DataSet = UniMainModule.qIbge
    Left = 136
    Top = 152
  end
end
