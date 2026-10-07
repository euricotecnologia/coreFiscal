object fOsDados: TfOsDados
  Left = 0
  Top = 0
  ClientHeight = 638
  ClientWidth = 1075
  Caption = 'Ordem de Servi'#231'o'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    Color = 12024371
    LayoutConfig.Width = '100'
    object lTitulo: TUniLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 320
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Alignment = taCenter
      Caption = 'Lan'#231'amento da Ordem de Servi'#231'o'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 592
    Width = 1075
    Height = 46
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 1
    LayoutConfig.Width = '100'
    object UniButton1: TUniButton
      AlignWithMargins = True
      Left = 821
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Sair'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoLaranja'#39');'#13#10'}')
      OnClick = UniButton1Click
    end
    object bFaturar: TUniButton
      AlignWithMargins = True
      Left = 90
      Top = 3
      Width = 120
      Height = 38
      Hint = ''
      Caption = 'Faturar'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = bFaturarClick
    end
    object bSalvar: TUniButton
      AlignWithMargins = True
      Left = 210
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Salvar'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVerde'#39');'#13#10'}')
      OnClick = bSalvarClick
    end
    object UniButton4: TUniButton
      AlignWithMargins = True
      Left = 332
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Imprimir A4'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 4
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoEscuro'#39');'#13#10'}')
      OnClick = UniButton4Click
    end
    object UniButton5: TUniButton
      AlignWithMargins = True
      Left = 453
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Imprimir Termica'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 5
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = UniButton5Click
    end
    object UniButton6: TUniButton
      AlignWithMargins = True
      Left = 574
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Excluir'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 6
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
      OnClick = UniButton6Click
    end
    object bCancelar: TUniButton
      AlignWithMargins = True
      Left = 697
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Cancelar'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 7
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = bCancelarClick
    end
  end
  object PG: TUniPageControl
    Left = 0
    Top = 38
    Width = 1075
    Height = 554
    Hint = ''
    ActivePage = tabItens
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 152
    ExplicitTop = 136
    ExplicitWidth = 289
    ExplicitHeight = 193
    object tabItens: TUniTabSheet
      Hint = ''
      Caption = 'Informa'#231#245'es e Itens da OS'
      object UniLabel6: TUniLabel
        Left = 7
        Top = 8
        Width = 33
        Height = 13
        Hint = ''
        Caption = 'C'#243'digo'
        TabOrder = 7
      end
      object eCodigo: TUniDBEdit
        Left = 6
        Top = 27
        Width = 116
        Height = 22
        Hint = ''
        DataField = 'CODIGO'
        DataSource = dsOsCab
        TabOrder = 0
        ReadOnly = True
      end
      object UniLabel7: TUniLabel
        Left = 128
        Top = 9
        Width = 64
        Height = 13
        Hint = ''
        Caption = 'Data Entrada'
        TabOrder = 8
      end
      object eData: TUniDBDateTimePicker
        Left = 128
        Top = 26
        Width = 198
        Hint = ''
        DataField = 'DATAHORAENTRADA'
        DataSource = dsOsCab
        DateTime = 43310.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 2
      end
      object eVendedor: TUniDBLookupComboBox
        Left = 332
        Top = 26
        Width = 328
        Hint = ''
        ListField = 'NOME'
        ListSource = dsVendedores
        KeyField = 'CODIGO'
        ListFieldIndex = 0
        DataField = 'VENDEDOR'
        DataSource = dsOsCab
        TabOrder = 3
        Color = clWindow
        Style = csDropDown
      end
      object UniLabel9: TUniLabel
        Left = 332
        Top = 9
        Width = 46
        Height = 13
        Hint = ''
        Caption = 'Vendedor'
        TabOrder = 9
      end
      object eSitaucao: TUniDBComboBox
        Left = 666
        Top = 25
        Width = 197
        Hint = ''
        DataField = 'SITUACAO'
        DataSource = dsOsCab
        Items.Strings = (
          'Or'#231'amento'
          'Em Andamento'
          'Aguardando Cliente'
          'Aguadando Pe'#231'as'
          'Faturado')
        TabOrder = 4
        IconItems = <>
      end
      object UniLabel10: TUniLabel
        Left = 666
        Top = 6
        Width = 41
        Height = 13
        Hint = ''
        Caption = 'Situa'#231#227'o'
        TabOrder = 10
      end
      object UniLabel11: TUniLabel
        Left = 7
        Top = 52
        Width = 33
        Height = 13
        Hint = ''
        Caption = 'Cliente'
        TabOrder = 11
      end
      object eCliente: TUniDBLookupComboBox
        Left = 60
        Top = 70
        Width = 320
        Hint = ''
        ListField = 'RAZAOSOCIAL'
        ListSource = dsClientes
        KeyField = 'IDCLIENTE'
        ListFieldIndex = 0
        DataField = 'CLIENTE'
        DataSource = dsOsCab
        TabOrder = 6
        Color = clWindow
        Style = csDropDown
      end
      object eCodCliente: TUniEdit
        Left = 6
        Top = 70
        Width = 51
        Hint = ''
        Text = ''
        TabOrder = 5
        OnExit = eCodClienteExit
      end
      object UniLabel21: TUniLabel
        Left = 86
        Top = 8
        Width = 26
        Height = 13
        Hint = ''
        Visible = False
        Caption = 'NFCe'
        TabOrder = 12
      end
      object UniDBEdit1: TUniDBEdit
        Left = 86
        Top = 27
        Width = 38
        Height = 22
        Hint = ''
        Visible = False
        DataField = 'CODIGO'
        DataSource = dsOsCab
        TabOrder = 1
        ReadOnly = True
      end
      object PG2: TUniPageControl
        Left = 6
        Top = 98
        Width = 1059
        Height = 343
        Hint = ''
        ActivePage = UniTabSheet8
        TabOrder = 13
        object UniTabSheet8: TUniTabSheet
          Hint = ''
          Caption = 'Dados da Ordem de Servi'#231'o'
          object UniLabel24: TUniLabel
            Left = 17
            Top = 58
            Width = 87
            Height = 13
            Hint = ''
            Caption = 'Defeito reclamado'
            TabOrder = 6
          end
          object UniDBMemo1: TUniDBMemo
            Left = 17
            Top = 77
            Width = 506
            Height = 68
            Hint = ''
            DataField = 'DEFEITORECLAMADO'
            DataSource = dsOsCab
            TabOrder = 3
          end
          object UniLabel25: TUniLabel
            Left = 17
            Top = 170
            Width = 160
            Height = 13
            Hint = ''
            Caption = 'Defeito encontrado / Solucionado'
            TabOrder = 7
          end
          object UniDBMemo2: TUniDBMemo
            Left = 17
            Top = 189
            Width = 512
            Height = 68
            Hint = ''
            DataField = 'DEFEITOENCONTRADO_SOLUCAO'
            DataSource = dsOsCab
            TabOrder = 4
          end
          object UniDBEdit2: TUniDBEdit
            Left = 17
            Top = 28
            Width = 315
            Height = 22
            Hint = ''
            DataField = 'EQUIPAMENTO_VEICULO'
            DataSource = dsOsCab
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object UniLabel26: TUniLabel
            Left = 17
            Top = 9
            Width = 105
            Height = 13
            Hint = ''
            Caption = 'Equipamento / Veiculo'
            TabOrder = 8
          end
          object UniLabel27: TUniLabel
            Left = 338
            Top = 9
            Width = 73
            Height = 13
            Hint = ''
            Caption = 'Nr Serie / Placa'
            TabOrder = 9
          end
          object UniDBEdit3: TUniDBEdit
            Left = 338
            Top = 28
            Width = 315
            Height = 22
            Hint = ''
            DataField = 'NRSERIE_PLACA'
            DataSource = dsOsCab
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object UniLabel28: TUniLabel
            Left = 665
            Top = 9
            Width = 82
            Height = 13
            Hint = ''
            Caption = 'informa'#231#245'es / KM'
            TabOrder = 10
          end
          object UniDBEdit4: TUniDBEdit
            Left = 665
            Top = 28
            Width = 376
            Height = 22
            Hint = ''
            DataField = 'INFORMACOES_KM'
            DataSource = dsOsCab
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object UniDBDateTimePicker1: TUniDBDateTimePicker
            Left = 535
            Top = 189
            Width = 120
            Hint = ''
            DataField = 'DATAHORASAIDA'
            DataSource = dsOsCab
            DateTime = 43310.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 5
          end
          object UniLabel29: TUniLabel
            Left = 535
            Top = 172
            Width = 52
            Height = 13
            Hint = ''
            Caption = 'Data Saida'
            TabOrder = 11
          end
        end
        object UniTabSheet3: TUniTabSheet
          Hint = ''
          Caption = 'Produtos'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 894
          ExplicitHeight = 391
          object UniLabel12: TUniLabel
            Left = 3
            Top = 5
            Width = 74
            Height = 13
            Hint = ''
            Caption = 'C'#243'digo Produto'
            TabOrder = 0
          end
          object eCodProduto: TUniEdit
            Left = 3
            Top = 24
            Width = 110
            Hint = ''
            Text = ''
            TabOrder = 1
            OnExit = eCodProdutoExit
          end
          object enProduto: TUniDBLookupComboBox
            Left = 152
            Top = 24
            Width = 606
            Hint = ''
            ListField = 'DESCRICAO'
            ListSource = UniMainModule.dsProduto
            KeyField = 'IDPRODUTO'
            ListFieldIndex = 0
            TabOrder = 2
            Color = clWindow
            Style = csDropDown
            OnExit = enProdutoExit
          end
          object UniLabel13: TUniLabel
            Left = 152
            Top = 5
            Width = 38
            Height = 13
            Hint = ''
            Caption = 'Produto'
            TabOrder = 3
          end
          object eQuantidadeProduto: TUniFormattedNumberEdit
            Left = 764
            Top = 22
            Width = 68
            Hint = ''
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  sender.type' +
                'Ahead = true;'#13#10'  sender.selectOnFocus = true; '#13#10'}')
            DecimalSeparator = ','
            ThousandSeparator = '.'
            OnChange = eQuantidadeProdutoChange
          end
          object eValorProduto: TUniFormattedNumberEdit
            Left = 838
            Top = 22
            Width = 68
            Hint = ''
            TabOrder = 5
            DecimalSeparator = ','
            ThousandSeparator = '.'
            OnChange = eValorProdutoChange
          end
          object eTotalProduto: TUniFormattedNumberEdit
            Left = 912
            Top = 22
            Width = 68
            Hint = ''
            TabOrder = 6
            TabStop = False
            ReadOnly = True
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object UniLabel14: TUniLabel
            Left = 764
            Top = 3
            Width = 56
            Height = 13
            Hint = ''
            Caption = 'Quantidade'
            TabOrder = 7
          end
          object UniLabel15: TUniLabel
            Left = 838
            Top = 3
            Width = 24
            Height = 13
            Hint = ''
            Caption = 'Valor'
            TabOrder = 8
          end
          object UniLabel16: TUniLabel
            Left = 912
            Top = 3
            Width = 24
            Height = 13
            Hint = ''
            Caption = 'Total'
            TabOrder = 9
          end
          object UniDBGrid1: TUniDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 56
            Width = 1045
            Height = 256
            Hint = ''
            DataSource = UniMainModule.dsOsCor
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
            LoadMask.Message = 'Loading data...'
            ForceFit = True
            Align = alBottom
            TabOrder = 10
            Columns = <
              item
                FieldName = 'GARANTIA'
                Title.Caption = 'GARANTIA'
                Width = 57
                Visible = False
              end
              item
                FieldName = 'PRODUTO'
                Title.Caption = 'PRODUTO'
                Width = 64
              end
              item
                FieldName = 'NPRODUTO'
                Title.Caption = 'NPRODUTO'
                Width = 397
              end
              item
                FieldName = 'QUANTIDADE'
                Title.Caption = 'QUANTIDADE'
                Width = 100
              end
              item
                FieldName = 'VALOR'
                Title.Caption = 'VALOR'
                Width = 99
              end
              item
                FieldName = 'TOTAL'
                Title.Caption = 'TOTAL'
                Width = 99
              end>
          end
          object UniButton3: TUniButton
            AlignWithMargins = True
            Left = 115
            Top = 22
            Width = 31
            Height = 25
            Hint = ''
            Caption = ''
            ParentFont = False
            Font.Color = clWhite
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 11
            ClientEvents.ExtEvents.Strings = (
              
                'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
                '.addCls('#39'BotaoAzul'#39');'#13#10'}')
            OnClick = UniButton3Click
          end
          object bAdcProduto: TUniButton
            AlignWithMargins = True
            Left = 982
            Top = 20
            Width = 31
            Height = 25
            Hint = ''
            Caption = ''
            ParentFont = False
            Font.Color = clWhite
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 12
            ClientEvents.ExtEvents.Strings = (
              
                'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
                '.addCls('#39'BotaoVerde'#39');'#13#10'}')
            OnClick = bAdcProdutoClick
          end
          object bDelProduto: TUniButton
            AlignWithMargins = True
            Left = 1014
            Top = 20
            Width = 31
            Height = 25
            Hint = ''
            Caption = ''
            ParentFont = False
            Font.Color = clWhite
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 13
            ClientEvents.ExtEvents.Strings = (
              
                'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
                '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
            OnClick = bDelProdutoClick
          end
        end
        object UniTabSheet4: TUniTabSheet
          Hint = ''
          Caption = 'Servi'#231'os'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 894
          ExplicitHeight = 391
          object UniLabel1: TUniLabel
            Left = 2
            Top = 5
            Width = 71
            Height = 13
            Hint = ''
            Caption = 'C'#243'digo Servi'#231'o'
            TabOrder = 6
          end
          object eCodServico: TUniEdit
            Left = 2
            Top = 24
            Width = 107
            Hint = ''
            Text = ''
            TabOrder = 0
            OnExit = eCodServicoExit
          end
          object enServico: TUniDBLookupComboBox
            Left = 113
            Top = 24
            Width = 307
            Hint = ''
            ListField = 'NOME'
            ListSource = UniMainModule.dsServico
            KeyField = 'ID'
            ListFieldIndex = 0
            TabOrder = 1
            Color = clWindow
            Style = csDropDown
            OnExit = enServicoExit
          end
          object UniLabel2: TUniLabel
            Left = 113
            Top = 5
            Width = 35
            Height = 13
            Hint = ''
            Caption = 'Servi'#231'o'
            TabOrder = 7
          end
          object eQtdSerivo: TUniFormattedNumberEdit
            Left = 774
            Top = 24
            Width = 58
            Hint = ''
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  sender.type' +
                'Ahead = true;'#13#10'  sender.selectOnFocus = true; '#13#10'}')
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object eValorServico: TUniFormattedNumberEdit
            Left = 836
            Top = 24
            Width = 68
            Hint = ''
            TabOrder = 4
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object eTotalServico: TUniFormattedNumberEdit
            Left = 908
            Top = 24
            Width = 68
            Hint = ''
            TabOrder = 5
            TabStop = False
            ReadOnly = True
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object UniLabel3: TUniLabel
            Left = 776
            Top = 7
            Width = 56
            Height = 13
            Hint = ''
            Caption = 'Quantidade'
            TabOrder = 8
          end
          object UniLabel4: TUniLabel
            Left = 838
            Top = 7
            Width = 24
            Height = 13
            Hint = ''
            Caption = 'Valor'
            TabOrder = 9
          end
          object UniLabel5: TUniLabel
            Left = 910
            Top = 7
            Width = 24
            Height = 13
            Hint = ''
            Caption = 'Total'
            TabOrder = 10
          end
          object UniDBGrid2: TUniDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 56
            Width = 1045
            Height = 256
            Hint = ''
            DataSource = UniMainModule.dsOsCorSer
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
            LoadMask.Message = 'Loading data...'
            ForceFit = True
            Align = alBottom
            TabOrder = 11
            Columns = <
              item
                FieldName = 'GARANTIA'
                Title.Caption = 'GARANTIA'
                Width = 57
                Visible = False
              end
              item
                FieldName = 'SERVICO'
                Title.Caption = 'CODIGO'
                Width = 110
              end
              item
                FieldName = 'NSERVICO'
                Title.Caption = 'SERVICO'
                Width = 252
              end
              item
                FieldName = 'QUANTIDADE'
                Title.Caption = 'QUANTIDADE'
                Width = 110
              end
              item
                FieldName = 'VALOR'
                Title.Caption = 'VALOR'
                Width = 99
              end
              item
                FieldName = 'TOTAL'
                Title.Caption = 'TOTAL'
                Width = 99
              end
              item
                FieldName = 'NTECNICO'
                Title.Caption = 'TECNICO'
                Width = 265
              end>
          end
          object UniLabel8: TUniLabel
            Left = 424
            Top = 7
            Width = 46
            Height = 13
            Hint = ''
            Caption = 'Vendedor'
            TabOrder = 12
          end
          object eNtecnico: TUniDBLookupComboBox
            Left = 424
            Top = 24
            Width = 346
            Hint = ''
            ListField = 'NOME'
            ListSource = dsVendedores
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            TabOrder = 2
            Color = clWindow
            Style = csDropDown
          end
          object bAdcServico: TUniButton
            AlignWithMargins = True
            Left = 978
            Top = 22
            Width = 31
            Height = 25
            Hint = ''
            Caption = ''
            ParentFont = False
            Font.Color = clWhite
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 13
            ClientEvents.ExtEvents.Strings = (
              
                'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
                '.addCls('#39'BotaoVerde'#39');'#13#10'}')
            OnClick = bAdcServicoClick
          end
          object bDelServico: TUniButton
            AlignWithMargins = True
            Left = 1009
            Top = 22
            Width = 31
            Height = 25
            Hint = ''
            Caption = ''
            ParentFont = False
            Font.Color = clWhite
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 14
            ClientEvents.ExtEvents.Strings = (
              
                'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
                '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
            OnClick = bDelServicoClick
          end
        end
      end
      object eSubTotal: TUniDBFormattedNumberEdit
        Left = 372
        Top = 476
        Width = 153
        Height = 38
        Hint = ''
        DataField = 'SUBTOTAL'
        DataSource = dsOsCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 14
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniLabel17: TUniLabel
        Left = 372
        Top = 450
        Width = 99
        Height = 25
        Hint = ''
        Caption = 'Sub Total'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 15
      end
      object UniLabel18: TUniLabel
        Left = 904
        Top = 450
        Width = 54
        Height = 25
        Hint = ''
        Caption = 'Total'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 16
      end
      object UniLabel19: TUniLabel
        Left = 547
        Top = 450
        Width = 129
        Height = 25
        Hint = ''
        Visible = False
        Caption = 'Desconto %'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 17
      end
      object UniLabel20: TUniLabel
        Left = 725
        Top = 450
        Width = 132
        Height = 25
        Hint = ''
        Caption = 'Desconto R$'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 18
      end
      object ePercDesconto: TUniDBFormattedNumberEdit
        Left = 546
        Top = 476
        Width = 153
        Height = 38
        Hint = ''
        Visible = False
        DataField = 'PERCDESCONTO'
        DataSource = dsOsCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 19
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eValorDesconto: TUniDBFormattedNumberEdit
        Left = 725
        Top = 476
        Width = 153
        Height = 38
        Hint = ''
        DataField = 'DESCONTO'
        DataSource = dsOsCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 20
        DecimalSeparator = ','
        ThousandSeparator = '.'
        OnExit = eValorDescontoExit
      end
      object eTotal: TUniDBFormattedNumberEdit
        Left = 903
        Top = 476
        Width = 153
        Height = 38
        Hint = ''
        DataField = 'TOTAL'
        DataSource = dsOsCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 21
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniLabel22: TUniLabel
        Left = 15
        Top = 450
        Width = 155
        Height = 25
        Hint = ''
        Caption = 'Total Produtos'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 22
      end
      object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
        Left = 15
        Top = 476
        Width = 153
        Height = 38
        Hint = ''
        DataField = 'TOTALPRODUTOS'
        DataSource = dsOsCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 23
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniLabel23: TUniLabel
        Left = 195
        Top = 450
        Width = 147
        Height = 25
        Hint = ''
        Caption = 'Total Servi'#231'os'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 24
      end
      object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
        Left = 195
        Top = 476
        Width = 153
        Height = 38
        Hint = ''
        DataField = 'TOTALSERVICOS'
        DataSource = dsOsCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 25
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object bPesqCliente: TUniButton
        AlignWithMargins = True
        Left = 383
        Top = 67
        Width = 31
        Height = 25
        Hint = ''
        Caption = ''
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 26
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoAzul'#39');'#13#10'}')
        OnClick = bPesqClienteClick
      end
      object bCadCliente: TUniButton
        AlignWithMargins = True
        Left = 416
        Top = 67
        Width = 31
        Height = 25
        Hint = ''
        Caption = ''
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 27
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoVerde'#39');'#13#10'}')
        OnClick = bCadClienteClick
      end
    end
    object pFaturar: TUniTabSheet
      Hint = ''
      Caption = 'Finalizar'
      object navPanel: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 1067
        Height = 526
        Hint = ''
        ParentRTL = False
        ParentColor = False
        Align = alClient
        ParentAlignmentControl = False
        AutoScroll = True
        TabOrder = 0
        ScrollHeight = 526
        ScrollWidth = 1067
      end
    end
  end
  object dsOsCab: TDataSource
    DataSet = UniMainModule.qOScab
    Left = 892
    Top = 48
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.qClientes
    Left = 945
    Top = 49
  end
  object qVendedor: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    SQL.Strings = (
      'select codigo,nome from VENDEDORES where 1=2 ')
    Left = 893
    Top = 104
    object qVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qVendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
  object dsVendedores: TDataSource
    DataSet = qVendedor
    Left = 946
    Top = 104
  end
  object frxEmpresa: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'Empresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-IDEMITENTE=IDEMITENTE'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'CODCIDADE=CODCIDADE'
      'UF=UF'
      'CNPJ=CNPJ'
      'IE=IE'
      'FONE=FONE'
      'CEP=CEP'
      '-CRT=CRT'
      '-ALIQUOTAICMS=ALIQUOTAICMS'
      '-CERT_CAMINHO=CERT_CAMINHO'
      '-CERT_SENHA=CERT_SENHA'
      '-CERT_NUMSERIE=CERT_NUMSERIE'
      '-GERAL_DANFE=GERAL_DANFE'
      '-GERAL_FORMAEMISSAO=GERAL_FORMAEMISSAO'
      '-GERAL_LOGOMARCA=GERAL_LOGOMARCA'
      '-GERAL_SALVAR=GERAL_SALVAR'
      '-GERAL_PATHSALVAR=GERAL_PATHSALVAR'
      '-GERAL_SERIE=GERAL_SERIE'
      '-GERAL_SERIEPRODUCAO=GERAL_SERIEPRODUCAO'
      '-GERAL_SERIEHOMOLOG=GERAL_SERIEHOMOLOG'
      '-GERAL_SERIESCAN=GERAL_SERIESCAN'
      '-GERAL_NNFEPRODUCAO=GERAL_NNFEPRODUCAO'
      '-GERAL_NNFEHOMOLOG=GERAL_NNFEHOMOLOG'
      '-GERAL_NNFESCAN=GERAL_NNFESCAN'
      '-GERAL_USARDESCCOMPLETA=GERAL_USARDESCCOMPLETA'
      '-WEBSERVICE_UF=WEBSERVICE_UF'
      '-WEBSERVICE_AMBIENTE=WEBSERVICE_AMBIENTE'
      '-WEBSERVICE_VISUALIZAR=WEBSERVICE_VISUALIZAR'
      '-PROXY_HOST=PROXY_HOST'
      '-PROXY_PORTA=PROXY_PORTA'
      '-PROXY_USER=PROXY_USER'
      '-PROXY_PASS=PROXY_PASS'
      '-EMAIL_HOST=EMAIL_HOST'
      '-EMAIL_PORT=EMAIL_PORT'
      '-EMAIL_USER=EMAIL_USER'
      '-EMAIL_PASS=EMAIL_PASS'
      '-EMAIL_ASSUNTO=EMAIL_ASSUNTO'
      '-EMAIL_SSL=EMAIL_SSL'
      '-EMAIL_MENSAGEM=EMAIL_MENSAGEM'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      '-CHAVELIGACAO=CHAVELIGACAO'
      '-FLAG_IBPT=FLAG_IBPT'
      '-IDTOKEN=IDTOKEN'
      '-TOKEN=TOKEN'
      '-DATAVENCIMENTOCERTIFICADO=DATAVENCIMENTOCERTIFICADO'
      '-GERAL_NNFCEPRODUCAO=GERAL_NNFCEPRODUCAO'
      '-GERAL_NNFCEHOMOLOG=GERAL_NNFCEHOMOLOG'
      '-IMPRESSORANFE=IMPRESSORANFE'
      '-IMPRESSORANFCE=IMPRESSORANFCE'
      '-PREVIEWNFE=PREVIEWNFE'
      '-PREVIEWNFCE=PREVIEWNFCE'
      '-LOGIN=LOGIN'
      '-SENHA=SENHA'
      '-TIPOCERTIFICADO=TIPOCERTIFICADO'
      '-MODULO_NFE=MODULO_NFE'
      '-MODULO_NFCE=MODULO_NFCE'
      '-MODULO_MDFE=MODULO_MDFE'
      '-ESCRITORIOCONTADOR=ESCRITORIOCONTADOR'
      '-CONTADOR=CONTADOR'
      '-FONECONTADOR=FONECONTADOR'
      '-EMAILCONTADOR=EMAILCONTADOR'
      '-USUARIOCONTADOR=USUARIOCONTADOR'
      '-SENHACONTADOR=SENHACONTADOR'
      '-MENSAGEMPROCOM=MENSAGEMPROCOM'
      '-TEF_PAYGO=TEF_PAYGO'
      '-TEF_PADRAO_PAYGO=TEF_PADRAO_PAYGO'
      '-TEF_PADRAO_PAYGO_ID=TEF_PADRAO_PAYGO_ID'
      '-TEF_PAYGO_KEY=TEF_PAYGO_KEY'
      '-TEF_PAYGO_URLVENDA=TEF_PAYGO_URLVENDA'
      '-TEF_PAYGO_URLCONSULTA=TEF_PAYGO_URLCONSULTA'
      '-TEF_PAYGO_URLCANCELAR=TEF_PAYGO_URLCANCELAR'
      '-TEF_PAYGO_SENHATECNICA=TEF_PAYGO_SENHATECNICA'
      '-CFOPPADRAO=CFOPPADRAO'
      '-MODULO_OSOTICA=MODULO_OSOTICA'
      '-DATACADASTRO=DATACADASTRO'
      'LOGO=LOGO')
    DataSet = UniMainModule.qEmitente
    BCDToCurrency = False
    Left = 905
    Top = 288
  end
  object frxOsCab: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'OsCab'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'COD_EMITENTE=COD_EMITENTE'
      'CODIGO=CODIGO'
      'DATAHORAENTRADA=DATAHORAENTRADA'
      'DATAHORASAIDA=DATAHORASAIDA'
      'VENDEDOR=VENDEDOR'
      'SITUACAO=SITUACAO'
      'CLIENTE=CLIENTE'
      'TOTALPRODUTOS=TOTALPRODUTOS'
      'TOTALSERVICOS=TOTALSERVICOS'
      'SUBTOTAL=SUBTOTAL'
      'PERCDESCONTO=PERCDESCONTO'
      'DESCONTO=DESCONTO'
      'TOTAL=TOTAL'
      'EQUIPAMENTO_VEICULO=EQUIPAMENTO_VEICULO'
      'NRSERIE_PLACA=NRSERIE_PLACA'
      'INFORMACOES_KM=INFORMACOES_KM'
      'DEFEITORECLAMADO=DEFEITORECLAMADO'
      'DEFEITOENCONTRADO_SOLUCAO=DEFEITOENCONTRADO_SOLUCAO'
      'NOMEFANTASIA=NOMEFANTASIA'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FONE=FONE'
      'FAX=FAX'
      'ATIVO=ATIVO')
    DataSet = UniMainModule.qOScab
    BCDToCurrency = False
    Left = 905
    Top = 336
  end
  object frxOsCor: TfrxDBDataset
    UserName = 'OsCor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'COD_EMITENTE=COD_EMITENTE'
      'CODIGO=CODIGO'
      'IDOS=IDOS'
      'PRODUTO=PRODUTO'
      'TECNICO=TECNICO'
      'NTECNICO=NTECNICO'
      'QUANTIDADE=QUANTIDADE'
      'VALOR=VALOR'
      'TOTAL=TOTAL'
      'NPRODUTO=NPRODUTO'
      'GARANTIA=GARANTIA')
    DataSet = UniMainModule.qOsCor
    BCDToCurrency = False
    Left = 905
    Top = 384
  end
  object frxPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 905
    Top = 240
  end
  object FrxOrcamento: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42749.812137673600000000
    ReportOptions.LastChange = 42749.816015740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure Picture1OnBeforePrint(Sender: TfrxComponent);         ' +
        '                           '
      'begin                        '
      
        '   if <Empresa."LOGO"> <> '#39#39' then                               ' +
        '      '
      '   Picture1.Picture.LoadFromFile(<Empresa."LOGO">);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 993
    Top = 288
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'Empresa'
      end
      item
        DataSet = frxOsCab
        DataSetName = 'OsCab'
      end
      item
        DataSet = frxOsCor
        DataSetName = 'OsCor'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 75.000000000000000000
      PaperHeight = 5000.000000000000000000
      PaperSize = 256
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      EndlessHeight = True
      EndlessWidth = True
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 196.535560000000000000
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 298.582870000000000000
          Height = 83.149660000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.370130000000000000
          Top = 4.000000000000000000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Empresa."FANTASIA"]')
          ParentFont = False
        end
        object OticaCabCODIGO: TfrxMemoView
          AllowVectorExport = True
          Left = 118.385900000000000000
          Top = 60.472479999999990000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."CODIGO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 77.370130000000000000
          Top = 59.692950000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Orc N'#176' ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 84.149660000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object OticaCabNOMEFANTASIA: TfrxMemoView
          AllowVectorExport = True
          Left = 50.133890000000000000
          Top = 85.149660000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEFANTASIA'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."NOMEFANTASIA"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 176.078850000000000000
          Top = 59.913420000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object OticaCabDATA: TfrxMemoView
          AllowVectorExport = True
          Left = 210.094620000000000000
          Top = 59.913420000000000000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."DATA"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 7.559059999999999000
          Width = 64.252010000000000000
          Height = 64.252010000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object EmpresaCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 23.236239999999990000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frxEmpresa
          DataSetName = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ: [Empresa."CNPJ"]')
          ParentFont = False
        end
        object EmpresaFONE: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 39.354360000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frxEmpresa
          DataSetName = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fone: [Empresa."FONE"] Cel: [<Empresa."CELULAR">]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 131.283550000000000000
          Width = 283.464750000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 134.283550000000000000
          Width = 283.464750000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OR'#199'AMENTO')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Top = 162.519790000000000000
          Width = 283.464750000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 2.559060000000000000
          Top = 165.078850000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 165.299320000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 179.417440000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 181.417440000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VL. UNIT.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 221.992270000000000000
          Top = 178.417440000000000000
          Width = 56.692950000000010000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VL TOTAL')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 100.047310000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fone:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 115.385900000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cel:')
          ParentFont = False
        end
        object OticaCabFONE: TfrxMemoView
          AllowVectorExport = True
          Left = 51.913420000000000000
          Top = 100.267780000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'FONE'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."FONE"]')
        end
        object OticaCabFAX: TfrxMemoView
          AllowVectorExport = True
          Left = 51.913420000000000000
          Top = 114.385900000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'FAX'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."FAX"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 275.905690000000000000
        Width = 283.464750000000000000
        DataSet = frxOsCor
        DataSetName = 'OsCor'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OticaCor."PRODUTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000010000
          Width = 222.992270000000000000
          Height = 11.338590000000000000
          DataField = 'NPRODUTO'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCor."NPRODUTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OticaCor."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OticaCor."VALOR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OticaCor."TOTAL"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 58.252010000000000000
        Top = 336.378170000000000000
        Width = 283.464750000000000000
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Top = 44.574830000000000000
          Width = 283.464750000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 47.795300000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OR'#199'AMENTO - SEM VALOR FISCAL')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 283.464750000000000000
          Height = 41.574830000000000000
          Frame.Typ = []
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 188.315090000000000000
          Top = 7.000000000000000000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total: [OticaCab."TOTAL"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 110.606370000000000000
          Top = 6.559060000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desc: [OticaCab."DESCONTO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 1.559060000000000000
          Top = 6.779530000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal: [OticaCab."SUBTOTAL"]')
          ParentFont = False
        end
      end
    end
  end
  object frxOrdemServicoA4: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42749.812137673600000000
    ReportOptions.LastChange = 42749.816015740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure Picture1OnBeforePrint(Sender: TfrxComponent);         ' +
        '                           '
      'begin                        '
      
        '   if <Empresa."LOGO"> <> '#39#39' then                               ' +
        '      '
      '   Picture1.Picture.LoadFromFile(<Empresa."LOGO">);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 993
    Top = 240
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'Empresa'
      end
      item
        DataSet = frxOsCab
        DataSetName = 'OsCab'
      end
      item
        DataSet = frxOsCor
        DataSetName = 'OsCor'
      end
      item
        DataSet = frxOsCorSer
        DataSetName = 'OsCorSer'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 222.992270000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 83.149660000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.338590000000000000
          Top = 4.000000000000000000
          Width = 706.772110000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Empresa."FANTASIA"]')
          ParentFont = False
        end
        object OticaCabCODIGO: TfrxMemoView
          AllowVectorExport = True
          Left = 299.803340000000000000
          Top = 60.472480000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."CODIGO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 236.110390000000000000
          Top = 59.692950000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'OS N'#176' ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 84.149660000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object OticaCabNOMEFANTASIA: TfrxMemoView
          AllowVectorExport = True
          Left = 50.133890000000000000
          Top = 85.149660000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."NOMEFANTASIA"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 361.275820000000000000
          Top = 59.913420000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object OticaCabDATA: TfrxMemoView
          AllowVectorExport = True
          Left = 414.189240000000000000
          Top = 59.913420000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."DATAHORAENTRADA"]')
          ParentFont = False
        end
        object EmpresaCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 23.236240000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          DataSet = frxEmpresa
          DataSetName = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ: [Empresa."CNPJ"]')
          ParentFont = False
        end
        object EmpresaFONE: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 39.354360000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          DataSet = frxEmpresa
          DataSetName = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fone: [Empresa."FONE"] Cel: [<Empresa."CELULAR">]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 191.960730000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 194.756030000000000000
          Width = 710.551640000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE SERVI'#199'OS')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 100.047310000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fone:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 115.385900000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cel:')
          ParentFont = False
        end
        object OticaCabFONE: TfrxMemoView
          AllowVectorExport = True
          Left = 51.913420000000000000
          Top = 100.267780000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          DataField = 'FONE'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."FONE"]')
        end
        object OticaCabFAX: TfrxMemoView
          AllowVectorExport = True
          Left = 51.913420000000000000
          Top = 114.385900000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          DataField = 'FAX'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."FAX"]')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 4.559060000000000000
          Width = 102.047310000000000000
          Height = 75.590600000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Top = 133.283550000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Equip:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 51.913420000000000000
          Top = 132.283550000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."EQUIPAMENTO_VEICULO"]')
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 133.283550000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nr. Serie:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 531.913730000000000000
          Top = 132.283550000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."NRSERIE_PLACA"]')
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Top = 152.181200000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Inf:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 51.913420000000000000
          Top = 151.181200000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."INFORMACOES_KM"]')
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Top = 171.078850000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Defeito:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 51.913420000000000000
          Top = 170.078850000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."DEFEITORECLAMADO"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        DataSet = frxOsCor
        DataSetName = 'OsCor'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 1.000000000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OsCor."PRODUTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 1.000000000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          DataField = 'NPRODUTO'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCor."NPRODUTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 404.630180000000000000
          Top = 2.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OsCor."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 2.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OsCor."VALOR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 2.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OsCor."TOTAL"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 476.220780000000000000
        Width = 718.110700000000000000
        DataSet = frxOsCorSer
        DataSetName = 'OsCorSer'
        RowCount = 0
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'SERVICO'
          DataSet = frxOsCorSer
          DataSetName = 'OsCorSer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OsCorSer."SERVICO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          DataField = 'NSERVICO'
          DataSet = frxOsCorSer
          DataSetName = 'OsCorSer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCorSer."NSERVICO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 402.409710000000000000
          Top = 2.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxOsCorSer
          DataSetName = 'OsCorSer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OsCorSer."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 486.338900000000000000
          Top = 2.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OsCor."VALOR"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 592.165740000000000000
          Top = 2.779530000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = frxOsCorSer
          DataSetName = 'OsCorSer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OsCorSer."TOTAL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = -0.220470000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.559060000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 69.252010000000000000
          Top = 2.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 420.748300000000000000
          Top = 2.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 503.897960000000000000
          Top = 3.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VL. UNIT.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 609.283860000000000000
          Top = 2.779530000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VL TOTAL')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<OsCor."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DE PRODUTOS: ')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 430.866420000000000000
        Width = 718.110700000000000000
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 69.252010000000000000
          Top = 4.000000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SERVI'#199'O')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 420.748300000000000000
          Top = 4.000000000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 503.897960000000000000
          Top = 4.220470000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VL. UNIT.')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 609.283860000000000000
          Top = 4.000000000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VL TOTAL')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 521.575140000000000000
        Width = 718.110700000000000000
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<OsCorSer."TOTAL">,MasterData2)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DE SERVI'#199'OS: ')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 114.944960000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Top = 92.267780000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 94.488250000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OR'#199'AMENTO DE ORDEM DE SERIV'#199'O - SEM VALOR FISCAL')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 90.708720000000000000
          Frame.Typ = []
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 598.945270000000000000
          Top = 66.472480000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."TOTAL"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 599.165740000000000000
          Top = 45.354360000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 66.472480000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."DESCONTO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 480.220780000000000000
          Top = 45.354360000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 66.472480000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[OsCab."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 359.275820000000000000
          Top = 45.354360000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sub total')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<OsCor."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DE PRODUTOS: ')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<OsCorSer."TOTAL">,MasterData2)]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DE SERVI'#199'OS: ')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 68.252010000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Style = fsSquare
          HAlign = haCenter
          Memo.UTF8W = (
            '[OsCab."NOMEFANTASIA"]')
          ParentFont = False
        end
      end
    end
  end
  object frxVisualizar: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42749.812137673600000000
    ReportOptions.LastChange = 42749.816015740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure Picture1OnBeforePrint(Sender: TfrxComponent);         ' +
        '                           '
      'begin                        '
      
        '   if <Empresa."LOGO"> <> '#39#39' then                               ' +
        '      '
      '   Picture1.Picture.LoadFromFile(<Empresa."LOGO">);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 993
    Top = 336
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'Empresa'
      end
      item
        DataSet = frxOsCab
        DataSetName = 'OsCab'
      end
      item
        DataSet = frxOsCor
        DataSetName = 'OsCor'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 75.000000000000000000
      PaperHeight = 200.000000000000000000
      PaperSize = 256
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 491.338900000000000000
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 298.582870000000000000
          Height = 136.063080000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 84.370130000000000000
          Width = 283.464750000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Empresa."FANTASIA"]')
          ParentFont = False
        end
        object OticaCabCODIGO: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 113.385900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."CODIGO"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 112.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Os N'#176' ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 79.811070000000000000
          Top = 193.653680000000000000
          Height = 192.756030000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 117.149660000000000000
          Top = 194.653680000000000000
          Height = 192.756030000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 154.944960000000000000
          Top = 194.653680000000000000
          Height = 192.756030000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 192.299320000000000000
          Top = 194.653680000000000000
          Height = 192.756030000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 12.559060000000000000
          Top = 289.362400000000000000
          Width = 257.008040000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 199.212740000000000000
          Width = 15.118120000000000000
          Height = 83.149660000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Longe')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 8.779530000000000000
          Top = 296.921460000000000000
          Width = 11.338590000000000000
          Height = 83.149660000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Perto')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 35.236240000000000000
          Top = 217.551330000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DIR')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 35.236240000000000000
          Top = 259.126160000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ESQ')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 35.236240000000000000
          Top = 315.819110000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DIR')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 35.236240000000000000
          Top = 357.393940000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ESQ')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 84.370130000000000000
          Top = 191.094620000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ESF')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 122.165430000000000000
          Top = 191.094620000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CIL')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 159.960730000000000000
          Top = 191.094620000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'EIXO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 197.756030000000000000
          Top = 191.094620000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DNP.')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 84.370130000000000000
          Top = 293.141930000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ESF')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 122.165430000000000000
          Top = 293.141930000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CIL')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 159.960730000000000000
          Top = 293.141930000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'EIXO')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 197.756030000000000000
          Top = 293.141930000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DNP.')
          ParentFont = False
        end
        object OticaCabESFLONGEDIREITO: TfrxMemoView
          AllowVectorExport = True
          Left = 82.149660000000000000
          Top = 213.771800000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'ESFLONGEDIREITO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."ESFLONGEDIREITO"]')
          ParentFont = False
        end
        object OticaCabESFLONGEESQUERDO: TfrxMemoView
          AllowVectorExport = True
          Left = 82.149660000000000000
          Top = 259.126160000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'ESFLONGEESQUERDO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."ESFLONGEESQUERDO"]')
          ParentFont = False
        end
        object OticaCabESFPERTODIREITO: TfrxMemoView
          AllowVectorExport = True
          Left = 82.149660000000000000
          Top = 315.819110000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'ESFPERTODIREITO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."ESFPERTODIREITO"]')
          ParentFont = False
        end
        object OticaCabESFPERTOESQUERDO: TfrxMemoView
          AllowVectorExport = True
          Left = 82.149660000000000000
          Top = 357.393940000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'ESFPERTOESQUERDO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."ESFPERTOESQUERDO"]')
          ParentFont = False
        end
        object OticaCabCILLONGEDIREITO: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 213.771800000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'CILLONGEDIREITO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."CILLONGEDIREITO"]')
          ParentFont = False
        end
        object OticaCabCILLONGEESQUERDO: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 259.126160000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'CILLONGEESQUERDO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."CILLONGEESQUERDO"]')
          ParentFont = False
        end
        object OticaCabCILPERTODIREITO: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 315.819110000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'CILPERTODIREITO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."CILPERTODIREITO"]')
          ParentFont = False
        end
        object OticaCabCILPERTOESQUERDO: TfrxMemoView
          AllowVectorExport = True
          Left = 121.165430000000000000
          Top = 357.393940000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'CILPERTOESQUERDO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."CILPERTOESQUERDO"]')
          ParentFont = False
        end
        object OticaCabEIXOLONGEDIREITO: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 213.771800000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'EIXOLONGEDIREITO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."EIXOLONGEDIREITO"]')
          ParentFont = False
        end
        object OticaCabEIXOLONGEESQUERDO: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 259.126160000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'EIXOLONGEESQUERDO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."EIXOLONGEESQUERDO"]')
          ParentFont = False
        end
        object OticaCabEIXOPERTODIREITO: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 315.819110000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'EIXOPERTODIREITO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."EIXOPERTODIREITO"]')
          ParentFont = False
        end
        object OticaCabEIXOPERTOESQUERDO: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 357.393940000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'EIXOPERTOESQUERDO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."EIXOPERTOESQUERDO"]')
          ParentFont = False
        end
        object OticaCabDNPLONGEDIREITO: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 213.771800000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'DNPLONGEDIREITO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."DNPLONGEDIREITO"]')
          ParentFont = False
        end
        object OticaCabDNPLONGEESQUERDO: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 259.126160000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'DNPLONGEESQUERDO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."DNPLONGEESQUERDO"]')
          ParentFont = False
        end
        object OticaCabDNPPERTODIREITO: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 315.819110000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'DNPPERTODIREITO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."DNPPERTODIREITO"]')
          ParentFont = False
        end
        object OticaCabDNPPERTOESQUERDO: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 357.393940000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'DNPPERTOESQUERDO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."DNPPERTOESQUERDO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 8.559060000000000000
          Top = 149.622140000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object OticaCabNOMEFANTASIA: TfrxMemoView
          AllowVectorExport = True
          Left = 53.913420000000000000
          Top = 149.622140000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEFANTASIA'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."NOMEFANTASIA"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 8.559060000000000000
          Top = 168.519790000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object OticaCabDATA: TfrxMemoView
          AllowVectorExport = True
          Left = 57.692950000000000000
          Top = 168.519790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."DATA"]')
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 230.874150000000000000
          Top = 193.653680000000000000
          Height = 192.756030000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 233.551330000000000000
          Top = 191.094620000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ADI'#199#195'O')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 233.551330000000000000
          Top = 293.141930000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ALTURA')
          ParentFont = False
        end
        object OticaCabADCAO: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 232.669450000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'ADCAO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."ADCAO"]')
          ParentFont = False
        end
        object OticaCabALTURAPERTODIREITO: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 315.819110000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'ALTURAPERTODIREITO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."ALTURAPERTODIREITO"]')
          ParentFont = False
        end
        object OticaCabALTURAPERTOESQUERDO: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 357.393940000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'ALTURAPERTOESQUERDO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."ALTURAPERTOESQUERDO"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 270.346630000000000000
          Top = 191.606370000000000000
          Height = 192.756030000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 395.291590000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 417.968770000000000000
          Width = 264.567100000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
        end
        object OticaCabOBSRECEITA: TfrxMemoView
          AllowVectorExport = True
          Left = 9.897650000000000000
          Top = 419.527830000000000000
          Width = 260.787570000000000000
          Height = 64.252010000000000000
          DataField = 'OBSRECEITA'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."OBSRECEITA"]')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 3.779530000000001000
          Width = 117.165430000000000000
          Height = 75.590600000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 570.709030000000000000
        Width = 283.464750000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 608.504330000000000000
        Width = 283.464750000000000000
        DataSet = frxOsCor
        DataSetName = 'OsCor'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataField = 'NPRODUTO'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCor."NPRODUTO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 653.858690000000000000
        Width = 283.464750000000000000
      end
    end
  end
  object frxGarantia: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42749.812137673600000000
    ReportOptions.LastChange = 42749.816015740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure Picture1OnBeforePrint(Sender: TfrxComponent);         ' +
        '                           '
      'begin                        '
      
        '   if <Empresa."LOGO"> <> '#39#39' then                               ' +
        '      '
      '   Picture1.Picture.LoadFromFile(<Empresa."LOGO">);'
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 993
    Top = 384
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'Empresa'
      end
      item
        DataSet = frxOsCab
        DataSetName = 'OsCab'
      end
      item
        DataSet = frxOsCor
        DataSetName = 'OsCor'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Cliente'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 75.000000000000000000
      PaperHeight = 230.000000000000000000
      PaperSize = 256
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 600.945270000000000000
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 298.582870000000000000
          Height = 136.063080000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 84.370130000000000000
          Width = 283.464750000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Empresa."FANTASIA"]')
          ParentFont = False
        end
        object OticaCabCODIGO: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 113.385900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."CODIGO"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 112.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Os N'#176' ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 8.559060000000000000
          Top = 149.622140000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 8.559060000000000000
          Top = 168.519790000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object OticaCabDATA: TfrxMemoView
          AllowVectorExport = True
          Left = 57.692950000000000000
          Top = 168.519790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = frxOsCab
          DataSetName = 'OsCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."DATA"]')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 3.779530000000001000
          Width = 117.165430000000000000
          Height = 75.590600000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 1.559060000000000000
          Top = 218.771800000000000000
          Width = 275.905690000000000000
          Height = 287.244280000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Declaro que fui esclarecido(a) quanto ao manuseio dos '#243'culos, li' +
              'mpeza das lentes e arma'#231#227'o, assim como guardar devidamente os '#243'c' +
              'ulos e principalmente quanto ao tempo de uso. Condi'#231#245'es estas qu' +
              'e ser'#227'o essenciais para maior tempo de vida da mercadoria adquir' +
              'ida.'
            ''
            
              'Garantimos arma'#231#245'es contra oxida'#231#227'o e quebra nas soldas por um p' +
              'er'#237'odo de __ meses a partir da data de aquisi'#231#227'o da mercadoria.'
            ''
            
              'N'#227'o garantimos mal uso de lentes e arma'#231#245'es, do mesmo jeito que ' +
              'arranh'#245'es ou riscos nas lentes, quebra e descama'#231#227'o do antirrefl' +
              'exo, t'#227'o pouco arranh'#245'es e quebra das arma'#231#245'es por motivos que n' +
              #227'o estejam dentro desta garantia.'
            ''
            
              'A '#243'ptica oferece o servi'#231'o de manuten'#231#227'o sendo estes: ajuste de ' +
              'arma'#231#227'o, troca de plaquetas, parafuso e limpeza em ultrassom se ' +
              'necess'#225'rio.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 192.756030000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Termo de Garantia')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 548.031849999999900000
          Width = 257.008040000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 40.574830000000000000
          Top = 579.047620000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produtos')
          ParentFont = False
        end
        object Cliente: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 147.401670000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Cliente]')
        end
        object Cliente1: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 551.811380000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Cliente]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 579.268090000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 680.315400000000000000
        Width = 283.464750000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 710.551640000000000000
        Width = 283.464750000000000000
        DataSet = frxOsCor
        DataSetName = 'OsCor'
        Filter = '<OticaCor."GARANTIA"> = '#39'SIM'#39
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          DataField = 'NPRODUTO'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCor."NPRODUTO"]')
          ParentFont = False
        end
        object OticaCorQUANTIDADE: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 0.779530000000022500
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxOsCor
          DataSetName = 'OsCor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCor."QUANTIDADE"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 755.906000000000000000
        Width = 283.464750000000000000
      end
    end
  end
  object frxOsCorSer: TfrxDBDataset
    UserName = 'OsCorSer'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'COD_EMITENTE=COD_EMITENTE'
      'CODIGO=CODIGO'
      'IDOS=IDOS'
      'SERVICO=SERVICO'
      'TECNICO=TECNICO'
      'NTECNICO=NTECNICO'
      'QUANTIDADE=QUANTIDADE'
      'VALOR=VALOR'
      'TOTAL=TOTAL'
      'NSERVICO=NSERVICO'
      'GARANTIA=GARANTIA')
    DataSet = UniMainModule.qOsCorSer
    BCDToCurrency = False
    Left = 905
    Top = 432
  end
end
