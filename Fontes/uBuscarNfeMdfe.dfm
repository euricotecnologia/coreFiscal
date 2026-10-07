object fBuscarNfeMdfe: TfBuscarNfeMdfe
  Left = 0
  Top = 0
  ClientHeight = 479
  ClientWidth = 1193
  Caption = 'Consultar NFe'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 1193
    Height = 76
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    Color = clWhite
    ParentAlignmentControl = False
    Layout = 'hbox'
    LayoutAttribs.Pack = 'start'
    LayoutAttribs.Columns = 5
    object UniGroupBox1: TUniGroupBox
      Left = 1
      Top = 1
      Width = 152
      Height = 74
      Hint = ''
      Caption = 'Periodo (Emiss'#227'o)'
      Align = alLeft
      TabOrder = 1
      object eInicio: TUniDateTimePicker
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 142
        Hint = ''
        DateTime = 43260.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Align = alTop
        TabOrder = 1
      end
      object eFinal: TUniDateTimePicker
        AlignWithMargins = True
        Left = 5
        Top = 46
        Width = 142
        Hint = ''
        DateTime = 43260.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Align = alTop
        TabOrder = 2
      end
    end
    object UniGroupBox2: TUniGroupBox
      Left = 153
      Top = 1
      Width = 190
      Height = 74
      Hint = ''
      Caption = 'Numero da Nota/Filtro'
      Align = alLeft
      TabOrder = 2
      object eNota: TUniEdit
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 180
        Hint = ''
        Text = ''
        Align = alTop
        TabOrder = 1
        EmptyText = 'Nro Nota'
      end
    end
    object UniGroupBox3: TUniGroupBox
      Left = 343
      Top = 1
      Width = 264
      Height = 74
      Hint = ''
      Caption = 'Cliente'
      Align = alLeft
      TabOrder = 3
      object rFantasia: TUniRadioButton
        Left = 6
        Top = 19
        Width = 91
        Height = 17
        Hint = ''
        Caption = 'Nome Fantasia'
        TabOrder = 1
      end
      object rRazao: TUniRadioButton
        Left = 113
        Top = 19
        Width = 82
        Height = 17
        Hint = ''
        Caption = 'Raz'#227'o Social'
        TabOrder = 2
      end
      object rGeral: TUniRadioButton
        Left = 211
        Top = 19
        Width = 48
        Height = 17
        Hint = ''
        Checked = True
        Caption = 'Geral'
        TabOrder = 3
      end
      object eCliente: TUniEdit
        AlignWithMargins = True
        Left = 5
        Top = 47
        Width = 254
        Hint = ''
        CharCase = ecUpperCase
        Text = ''
        Align = alBottom
        TabOrder = 4
      end
    end
    object UniBitBtn1: TUniBitBtn
      AlignWithMargins = True
      Left = 610
      Top = 4
      Width = 109
      Height = 68
      Hint = ''
      Caption = 'Pesquisar'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 4
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVerde'#39');'#13#10'}')
      OnClick = btnNovoProdClick
    end
    object UniBitBtn2: TUniBitBtn
      AlignWithMargins = True
      Left = 725
      Top = 4
      Width = 114
      Height = 68
      Hint = ''
      Caption = 'Baixar'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 5
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoEscuro'#39');'#13#10'}')
      OnClick = UniBitBtn2Click
    end
  end
  object DBGrid2: TUniDBGrid
    Left = 0
    Top = 76
    Width = 1193
    Height = 403
    Hint = ''
    DataSource = dsNotas
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
    ReadOnly = True
    LoadMask.Message = 'Carregando'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'ID'
        Title.Caption = 'Nro.Nota'
        Width = 64
      end
      item
        FieldName = 'SERIE'
        Title.Caption = 'Serie'
        Width = 64
      end
      item
        FieldName = 'MODELO'
        Title.Caption = 'Modelo'
        Width = 64
      end
      item
        FieldName = 'NATUREZA_OPER'
        Title.Caption = 'Natureza Opera'#231#227'o'
        Width = 304
        Expanded = True
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'DTEMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Width = 64
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'DTSAIDA'
        Title.Caption = 'Saida'
        Width = 64
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'TOTAL_PRODUTOS'
        Title.Caption = 'Total Produtos'
        Width = 118
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'TOTAL_NOTA'
        Title.Caption = 'Total Nota'
        Width = 118
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'STATUS_NOTA'
        Title.Caption = 'Status'
        Width = 35
        Expanded = True
        ImageOptions.Visible = True
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'AMBIENTE'
        Title.Caption = 'Ambiente'
        Width = 64
        ReadOnly = True
        Expanded = True
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'CHAVE_ACESSO'
        Title.Caption = 'Chave Acesso'
        Width = 304
        Expanded = True
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Destinatario'
        Width = 200
      end
      item
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Width = 200
      end
      item
        FieldName = 'CPF_CNPJ'
        Title.Caption = 'CPF_CNPJ'
        Width = 112
      end
      item
        FieldName = 'FONE'
        Title.Caption = 'FONE'
        Width = 82
      end>
  end
  object dsNotas: TDataSource
    DataSet = UniMainModule.qNotasCab
    Left = 48
    Top = 160
  end
end
