object fNfeOPm: TfNfeOPm
  Left = 0
  Top = 0
  ClientHeight = 436
  ClientWidth = 336
  Caption = 'NFs'
  OnShow = UnimFormShow
  TitleButtons = <>
  OnClose = UnimFormClose
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel7: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 330
    Height = 69
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Height = '14%'
    LayoutConfig.Width = '100%'
    LayoutConfig.Margin = '4'
    object UnimContainerPanel8: TUnimContainerPanel
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
      object UnimLabel1: TUnimLabel
        Left = 0
        Top = 0
        Width = 161
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'Data Inicial'
        Align = alTop
      end
      object eInicio: TUnimDatePicker
        Left = 0
        Top = 23
        Width = 161
        Height = 47
        Hint = ''
        Align = alTop
        ClientEvents.UniEvents.Strings = (
          
            'afterCreate=function afterCreate(sender)'#13#10'{'#13#10'  sender.getPicker(' +
            ').getDoneButton().setText("Confirmar");'#13#10'  sender.getPicker().ge' +
            'tCancelButton().setText("Cancelar")'#13#10'}')
        DateFormat = 'dd/MM/yyyy'
        LayoutConfig.Width = '95%'
        Date = 43107.000000000000000000
      end
    end
    object UnimContainerPanel6: TUnimContainerPanel
      AlignWithMargins = True
      Left = 166
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
      object UnimLabel3: TUnimLabel
        Left = 0
        Top = 0
        Width = 161
        Height = 22
        Hint = ''
        AutoSize = False
        Caption = 'Filtro'
        Align = alTop
      end
      object cbFiltro: TUnimSelect
        Left = 0
        Top = 22
        Width = 161
        Height = 47
        Hint = ''
        Align = alTop
        Items.Strings = (
          'Todas'
          'Validadas'
          'Autorizadas'
          'Rejeitadas'
          'Canceladas'
          'Pendentes')
        ItemIndex = 0
        LayoutConfig.Width = '95%'
        TabOrder = 2
      end
    end
  end
  object UnimContainerPanel5: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 78
    Width = 330
    Height = 69
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Height = '14%'
    LayoutConfig.Width = '100%'
    LayoutConfig.Margin = '4'
    object UnimContainerPanel10: TUnimContainerPanel
      AlignWithMargins = True
      Left = 166
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
      object UnimLabel4: TUnimLabel
        Left = 0
        Top = 0
        Width = 161
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'Numero da Nota'
        Align = alTop
      end
      object UnimContainerPanel4: TUnimContainerPanel
        Left = 0
        Top = 23
        Width = 101
        Height = 40
        Hint = ''
        Align = alClient
        LayoutConfig.Width = '80%'
        object edNumero: TUnimNumberEdit
          Left = 0
          Top = 0
          Width = 101
          Height = 40
          Hint = ''
          Align = alTop
          LayoutConfig.Width = '80%'
          TabOrder = 1
        end
      end
      object UnimContainerPanel3: TUnimContainerPanel
        AlignWithMargins = True
        Left = 104
        Top = 26
        Width = 54
        Height = 34
        Hint = ''
        Align = alRight
        LayoutConfig.Width = '20%'
        object UnimButton1: TUnimButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 48
          Height = 28
          Hint = ''
          Align = alTop
          Caption = ''
          IconCls = 'search'
          OnClick = UnimButton1Click
        end
      end
    end
    object UnimContainerPanel9: TUnimContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 159
      Height = 63
      Hint = ''
      Align = alLeft
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Height = '95%'
      LayoutConfig.Width = '50%'
      object UnimLabel2: TUnimLabel
        Left = 0
        Top = 0
        Width = 159
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'Data Final'
        Align = alTop
      end
      object eFinal: TUnimDatePicker
        Left = 0
        Top = 23
        Width = 159
        Height = 47
        Hint = ''
        Align = alTop
        ClientEvents.UniEvents.Strings = (
          
            'afterCreate=function afterCreate(sender)'#13#10'{'#13#10'  sender.getPicker(' +
            ').getDoneButton().setText("Confirmar");'#13#10'  sender.getPicker().ge' +
            'tCancelButton().setText("Cancelar")'#13#10'}')
        DateFormat = 'dd/MM/yyyy'
        LayoutConfig.Width = '95%'
        Date = 43107.000000000000000000
      end
    end
  end
  object UnimDBListGrid1: TUnimDBListGrid
    AlignWithMargins = True
    Left = 3
    Top = 155
    Width = 330
    Height = 230
    Hint = ''
    Margins.Top = 5
    Align = alClient
    DataSource = dsNotas
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.loadi' +
        'ngText='#39'Carregando...'#39';'#13#10' config.grouped=true; '#13#10' config.selecte' +
        'dCls='#39'_x-item-selected'#39';'#13#10' config.itemTpl='#39'<table style="width:1' +
        '00%;white-space: nowrap;vertical-align:middle;">'#39'+'#13#10' '#13#10'         ' +
        '       '#39'<tr>'#39'+'#13#10'                '#39'<td style="color:#3a6383;paddin' +
        'g-left:10px;" colspan="2">NF {0} Serie {1} Emiss'#227'o {3}</td>'#39'+   ' +
        '             '#13#10'                '#39'</tr><tr>'#39'+                     ' +
        '                                                    '#13#10'          ' +
        '                     '#13#10'                '#39'<td></td>'#39'+             ' +
        '                               '#13#10'                '#39'<td style="fon' +
        't-size:15px;padding-top:4px;padding-left:8px;color:#535454;">Tot' +
        'al: {4}</td>'#39'+'#13#10'                '#13#10'                '#39'<tr>'#39'+'#13#10'     ' +
        '           '#39'<td style="color:#3a6383;padding-left:10px;" colspan' +
        '="2">Nome/Raz'#227'o: {5} </td>'#39'+                '#13#10'                '#39'<' +
        '/tr><tr>'#39'+ '#13#10'                '#13#10'                '#39'<tr>'#39'+'#13#10'        ' +
        '        '#39'<td style="color:#3a6383;padding-left:10px;" colspan="2' +
        '">CPF/CNPJ: {6} </td>'#39'+                '#13#10'                '#39'</tr><' +
        'tr>'#39'+ '#13#10'                '#13#10'                '#39'</tr></table><img src' +
        '="files/images/file5.png" style="position:absolute;right:15px;to' +
        'p:55px;"/>'#39';               '#13#10'}')
    Options = [dgColLines, dgRowLines, dgConfirmDelete, dgMultiSelect]
    WebOptions.Paged = False
    ScrollToSelected = True
    OnClick = UnimButton2Click
    Columns = <
      item
        Title.Caption = 'CODIGO'
        FieldName = 'ID'
        Width = 114
      end
      item
        Title.Caption = 'NOME'
        FieldName = 'SERIE'
        Width = 686
      end
      item
        Title.Caption = 'TELEFONE1'
        FieldName = 'MODELO'
        Width = 158
      end
      item
        Title.Caption = 'DTEMISSAO'
        FieldName = 'DTEMISSAO'
        Width = 114
      end
      item
        Title.Caption = 'TOTAL_NOTA'
        FieldName = 'TOTAL_NOTA'
        Width = 213
      end
      item
        Title.Caption = 'RAZAOSOCIAL'
        FieldName = 'RAZAOSOCIAL'
        Width = 554
      end
      item
        Title.Caption = 'CPF_CNPJ'
        FieldName = 'CPF_CNPJ'
        Width = 202
      end>
  end
  object UnimToolBar1: TUnimToolBar
    Left = 0
    Top = 388
    Width = 336
    Height = 48
    Hint = ''
    Align = alBottom
    Caption = ''
    object UnimButton2: TUnimButton
      Left = 0
      Top = 0
      Width = 336
      Height = 48
      Hint = ''
      Align = alClient
      Caption = '<i class="fa fa-file-pdf-o fa-1x "></i> Visualizar'
      ClientEvents.ExtEvents.Strings = (
        
          'painted=function painted(sender, eOpts)'#13#10'{'#13#10'  sender.addCls('#39'Bot' +
          'aoEscuro'#39');'#13#10'}')
      UI = 'plain'
      OnClick = UnimButton2Click
    end
  end
  object dsNotas: TDataSource
    DataSet = UniMainModule.qNotasCab
    Left = 136
    Top = 160
  end
end
