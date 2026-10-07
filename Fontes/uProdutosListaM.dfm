object fProdutosListaM: TfProdutosListaM
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Produtos'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 314
    Height = 75
    Hint = ''
    Align = alTop
    object UnimLabel1: TUnimLabel
      Left = 0
      Top = 0
      Width = 314
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'Pesquisar Produtos'
      Align = alTop
    end
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 0
      Top = 23
      Width = 314
      Height = 52
      Hint = ''
      Align = alClient
      object eCliePesq: TUnimEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 246
        Height = 46
        Hint = ''
        Align = alClient
        Text = ''
        CharCase = ecUpperCase
        ParentFont = False
        TabOrder = 1
      end
      object UnimButton1: TUnimButton
        AlignWithMargins = True
        Left = 255
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
    Top = 84
    Width = 314
    Height = 79
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '100%'
    LayoutConfig.Margin = '0'
    object rCodigo: TUnimRadio
      Left = 0
      Top = 0
      Width = 314
      Height = 38
      Hint = ''
      FieldLabel = 'C'#243'digo'
      Align = alTop
      Checked = True
    end
    object rNome: TUnimRadio
      Left = 0
      Top = 38
      Width = 314
      Height = 40
      Hint = ''
      Margins.Left = 0
      FieldLabel = 'Nome'
      Align = alTop
    end
  end
  object UnimDBListGrid1: TUnimDBListGrid
    AlignWithMargins = True
    Left = 3
    Top = 169
    Width = 314
    Height = 308
    Hint = ''
    Align = alClient
    DataSource = dsProdutos
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.loadi' +
        'ngText='#39'Carregando...'#39';'#13#10' config.grouped=true; '#13#10' config.selecte' +
        'dCls='#39#39';'#13#10' config.itemTpl='#39'<table style="width:100%;white-space:' +
        ' nowrap;vertical-align:middle;">'#39'+'#13#10' '#13#10'                '#39'<tr>'#39'+'#13#10 +
        '                '#39'<td style="color:#3a6383;padding-left:10px;" co' +
        'lspan="2">{0} - {1}</td>'#39'+                '#13#10'                '#39'</t' +
        'r><tr>'#39'+'#13#10'               '#13#10'                '#39'</tr><tr>'#39'+'#13#10'       ' +
        '         '#39'<td></td>'#39'+                                           ' +
        ' '#13#10'                '#39'<td style="font-size:15px;padding-top:4px;pa' +
        'dding-left:8px;color:#535454;">Venda: {2}</td>'#39'+'#13#10'              ' +
        '  '#13#10'                '#39'</tr></table><img src="files/images/file5.p' +
        'ng" style="position:absolute;right:15px;top:55px;"/>'#39';          ' +
        '     '#13#10'}')
    Options = [dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    OnClick = UnimDBListGrid1Click
    Columns = <
      item
        Title.Caption = 'CODIGO'
        FieldName = 'CODIGO'
        Width = 114
      end
      item
        Title.Caption = 'NOME'
        FieldName = 'DESCRICAO'
        Width = 686
      end
      item
        Title.Caption = 'TELEFONE1'
        FieldName = 'PRECO'
        Width = 158
      end>
  end
  object dsProdutos: TDataSource
    DataSet = UniMainModule.qProdutos
    Left = 240
    Top = 65528
  end
end
