object fClientesListaM: TfClientesListaM
  Left = 0
  Top = 0
  ClientHeight = 485
  ClientWidth = 320
  Caption = 'Clientes'
  TitleButtons = <
    item
      ButtonId = 0
      Separator = True
    end
    item
      Caption = '<i class="fa fa-plus fa-1x "></i> Novo'
      ButtonId = 1
      UI = 'action'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 75
    Hint = ''
    Align = alTop
    object UnimLabel1: TUnimLabel
      Left = 0
      Top = 0
      Width = 320
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = '  Pesquisar Cliente'
      Align = alTop
    end
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 0
      Top = 23
      Width = 320
      Height = 52
      Hint = ''
      Align = alClient
      object eCliePesq: TUnimEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 252
        Height = 46
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'bordaCinzaEsquerda'#39';'#13#10'  config.inputCls='#39'bordaCinzaEsquerda'#39'; '#13 +
            #10'}')
        Text = ''
        CharCase = ecUpperCase
        ParentFont = False
        TabOrder = 1
      end
      object UnimButton1: TUnimButton
        AlignWithMargins = True
        Left = 261
        Top = 3
        Width = 56
        Height = 46
        Hint = ''
        Align = alRight
        Caption = '<i class="fa fa-search fa-1x "></i>'
        ClientEvents.ExtEvents.Strings = (
          
            'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
            'aoAzul'#39');'#13#10'}')
        UI = 'plain'
        OnClick = UnimButton1Click
      end
    end
  end
  object UnimContainerPanel18: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 78
    Width = 314
    Height = 79
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '100%'
    LayoutConfig.Margin = '0'
    object rFantasia: TUnimRadio
      Left = 0
      Top = 0
      Width = 314
      Height = 38
      Hint = ''
      FieldLabel = 'Fantasia'
      Align = alTop
      Checked = True
    end
    object rRazao: TUnimRadio
      Left = 0
      Top = 38
      Width = 314
      Height = 40
      Hint = ''
      Margins.Left = 0
      FieldLabel = 'Raz'#227'o'
      Align = alTop
    end
  end
  object UnimDBListGrid1: TUnimDBListGrid
    AlignWithMargins = True
    Left = 3
    Top = 163
    Width = 314
    Height = 319
    Hint = ''
    Align = alClient
    DataSource = dsClientes
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.loadi' +
        'ngText='#39'Carregando...'#39';'#13#10' config.grouped=true; '#13#10' config.selecte' +
        'dCls='#39#39';'#13#10' config.itemTpl='#39'<table style="width:100%;white-space:' +
        ' nowrap;vertical-align:middle;">'#39'+'#13#10'                '#39'<tr>'#39'+'#13#10'   ' +
        '             '#13#10'                '#39'<td width="30px"><image src="fil' +
        'es/images/avatar.png"/></td>'#39'+'#13#10'                '#39'<td style="colo' +
        'r:#3a6383;padding-left:10px;" colspan="2">{0} - {1}</td>'#39'+'#13#10'    ' +
        '            '#13#10'                '#39'</tr><tr>'#39'+'#13#10'                '#39'<td' +
        '></td>'#39'+                                            '#13#10'          ' +
        '      '#39'<td style="padding-top:5px;padding-left:10px;" width="16p' +
        'x">'#39'+'#13#10'                 '#39'<image src="files/images/avatar.png"/><' +
        '/td>'#39'+'#13#10'                '#39'<td style="font-size:15px;padding-top:4' +
        'px;padding-left:8px;color:#535454;">CPF/CNPJ:{2}</td>'#39'+ '#13#10#13#10'    ' +
        '            '#39'</tr><tr>'#39'+'#13#10'                '#39'<td></td>'#39'+          ' +
        '                                  '#13#10'                '#39'<td style="' +
        'padding-top:5px;padding-left:10px;" width="16px">'#39'+'#13#10'           ' +
        '      '#39'<image src="files/images/call.png"/></td>'#39'+'#13#10'            ' +
        '    '#39'<td style="font-size:15px;padding-top:4px;padding-left:8px;' +
        'color:#535454;">FONE: {3}</td>'#39'+                 '#13#10'             ' +
        '   '#39'</tr><tr>'#39'+'#13#10'              '#13#10'                '#39'</tr></table><' +
        'img src="files/images/file5.png" style="position:absolute;right:' +
        '15px;top:55px;"/>'#39';               '#13#10'}')
    Options = [dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    OnClick = UnimDBListGrid1Click
    Columns = <
      item
        Title.Caption = 'CODIGO'
        FieldName = 'IDCLIENTE'
        Width = 114
      end
      item
        Title.Caption = 'NOME'
        FieldName = 'RAZAOSOCIAL'
        Width = 686
      end
      item
        Title.Caption = 'TELEFONE1'
        FieldName = 'CPF_CNPJ'
        Width = 158
      end
      item
        Title.Caption = 'CELULAR1'
        FieldName = 'FONE'
        Width = 158
      end>
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.qClientes
    Left = 240
    Top = 65528
  end
end
