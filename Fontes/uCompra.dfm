object fCompra: TfCompra
  Left = 0
  Top = 0
  ClientHeight = 704
  ClientWidth = 1167
  Caption = 'Lan'#231'amento de Compras'
  Color = clWhite
  OnShow = UniFormShow
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.style = '#39'border: 0px; padding: 0px; border-radius: 0px' +
      #39';'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object PG: TUniPageControl
    Left = 0
    Top = 70
    Width = 1167
    Height = 634
    Hint = ''
    ActivePage = tabInicio
    Align = alClient
    TabOrder = 0
    object tabInicio: TUniTabSheet
      Hint = ''
      Caption = 'Selecionar'
      object UniLabel1: TUniLabel
        Left = 10
        Top = 21
        Width = 845
        Height = 23
        Hint = ''
        Caption = 
          'Seja bem vindo a tela de importa'#231#227'o de compras, clique em import' +
          'ar XML para come'#231'ar.'
        ParentFont = False
        Font.Height = -19
        Font.Style = [fsBold]
        TabOrder = 0
      end
      object UniLabel22: TUniLabel
        Left = 10
        Top = 61
        Width = 295
        Height = 13
        Hint = ''
        Caption = 'Selecione o arquivo de Nota Fiscal Eletr'#244'nica (*.XML)'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object bImportar: TUniBitBtn
        Left = 10
        Top = 88
        Width = 235
        Height = 55
        Hint = ''
        Caption = 'Importar XML'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVerde'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = bImportarClick
      end
      object bLocalizarCompra: TUniBitBtn
        Left = 246
        Top = 88
        Width = 235
        Height = 55
        Hint = ''
        Caption = 'Localizar'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoLaranja'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = bLocalizarCompraClick
      end
      object UniLabel19: TUniLabel
        Left = 90
        Top = 173
        Width = 330
        Height = 25
        Hint = ''
        Visible = False
        Caption = 'BLOQUEAR XML DE OUTRO CPF'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 4
      end
      object cXML: TUniCheckBox
        Left = 353
        Top = 60
        Width = 230
        Height = 17
        Hint = ''
        Enabled = False
        Caption = 'Modo Avan'#231'ado (desenvolvimento)'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 5
      end
      object UniButton2: TUniButton
        AlignWithMargins = True
        Left = 324
        Top = 57
        Width = 26
        Height = 23
        Hint = ''
        Caption = '<i class="fa fa-lock fa-1x "></i>'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 6
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoAzul'#39');'#13#10'}')
        OnClick = UniButton2Click
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Baixar XML'
      object UniLabel2: TUniLabel
        Left = 24
        Top = 33
        Width = 381
        Height = 13
        Hint = ''
        Caption = 
          'Informe a Chave da Nota Fiscal Eletr'#244'nica ou passa o leitor de c' +
          #243'digo de barras'
        TabOrder = 0
      end
      object UniEdit1: TUniEdit
        Left = 24
        Top = 52
        Width = 537
        Hint = ''
        Text = ''
        TabOrder = 1
      end
      object UniImage1: TUniImage
        Left = 24
        Top = 88
        Width = 277
        Height = 81
        Hint = ''
      end
      object UniLabel3: TUniLabel
        Left = 24
        Top = 185
        Width = 40
        Height = 13
        Hint = ''
        Caption = 'Captcha'
        TabOrder = 3
      end
      object UniEdit2: TUniEdit
        Left = 24
        Top = 204
        Width = 277
        Hint = ''
        Text = ''
        TabOrder = 4
      end
      object UniBitBtn5: TUniBitBtn
        Left = 864
        Top = 398
        Width = 136
        Height = 56
        Hint = ''
        Caption = 'Avan'#231'ar ->'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 5
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVerde'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
      end
    end
    object TabDadosIniciais: TUniTabSheet
      Hint = ''
      Caption = 'Dados Iniciais'
      object UniPanel1: TUniPanel
        Left = 0
        Top = 0
        Width = 1159
        Height = 240
        Hint = ''
        Align = alTop
        TabOrder = 0
        TitleVisible = True
        Title = 'Dados do Fornecedor'
        Caption = ''
        object UniLabel4: TUniLabel
          Left = 16
          Top = 48
          Width = 59
          Height = 13
          Hint = ''
          Caption = 'Fornecedor:'
          TabOrder = 1
        end
        object UniLabel5: TUniLabel
          Left = 16
          Top = 82
          Width = 61
          Height = 13
          Hint = ''
          Caption = 'Cidade......:'
          TabOrder = 2
        end
        object UniLabel6: TUniLabel
          Left = 16
          Top = 123
          Width = 94
          Height = 13
          Hint = ''
          Caption = 'Valor dos Produtos:'
          TabOrder = 3
        end
        object UniLabel7: TUniLabel
          Left = 176
          Top = 124
          Width = 37
          Height = 13
          Hint = ''
          Caption = 'Outros:'
          TabOrder = 4
        end
        object UniLabel8: TUniLabel
          Left = 264
          Top = 124
          Width = 18
          Height = 13
          Hint = ''
          Caption = 'IPI:'
          TabOrder = 5
        end
        object UniLabel9: TUniLabel
          Left = 345
          Top = 124
          Width = 49
          Height = 13
          Hint = ''
          Caption = 'Desconto:'
          TabOrder = 6
        end
        object UniLabel10: TUniLabel
          Left = 455
          Top = 124
          Width = 98
          Height = 13
          Hint = ''
          Caption = 'Total da Nota Fiscal:'
          TabOrder = 7
        end
        object UniLabel11: TUniLabel
          Left = 368
          Top = 83
          Width = 37
          Height = 13
          Hint = ''
          Caption = 'Estado:'
          TabOrder = 8
        end
        object UniLabel12: TUniLabel
          Left = 482
          Top = 48
          Width = 29
          Height = 13
          Hint = ''
          Caption = 'CNPJ:'
          TabOrder = 9
        end
        object eFornecedorRAZAO2: TUniLabel
          Left = 81
          Top = 48
          Width = 9
          Height = 13
          Hint = ''
          Caption = '...'
          ParentFont = False
          Font.Color = clBlue
          Font.Style = [fsBold]
          TabOrder = 10
        end
        object eFornecedorCIDADE2: TUniLabel
          Left = 83
          Top = 82
          Width = 9
          Height = 13
          Hint = ''
          Caption = '...'
          ParentFont = False
          Font.Color = clBlue
          Font.Style = [fsBold]
          TabOrder = 11
        end
        object eFornecedorUF2: TUniLabel
          Left = 411
          Top = 83
          Width = 9
          Height = 13
          Hint = ''
          Caption = '...'
          ParentFont = False
          Font.Color = clBlue
          Font.Style = [fsBold]
          TabOrder = 12
        end
        object eFornecedorCNPJ2: TUniLabel
          Left = 517
          Top = 48
          Width = 9
          Height = 13
          Hint = ''
          Caption = '...'
          ParentFont = False
          Font.Color = clBlue
          Font.Style = [fsBold]
          TabOrder = 13
        end
        object eNotaTOTAL_PRODUTOS2: TUniLabel
          Left = 116
          Top = 124
          Width = 28
          Height = 16
          Hint = ''
          Caption = '0,00'
          ParentFont = False
          Font.Color = clBlue
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 14
        end
        object eNotaOUTRASDESP2: TUniLabel
          Left = 227
          Top = 124
          Width = 24
          Height = 13
          Hint = ''
          Caption = '0,00'
          ParentFont = False
          Font.Color = clBlue
          Font.Style = [fsBold]
          TabOrder = 15
        end
        object eNotaV_IPI2: TUniLabel
          Left = 301
          Top = 124
          Width = 24
          Height = 13
          Hint = ''
          Caption = '0,00'
          ParentFont = False
          Font.Color = clBlue
          Font.Style = [fsBold]
          TabOrder = 16
        end
        object eNotaDESC_ENT2: TUniLabel
          Left = 419
          Top = 123
          Width = 24
          Height = 13
          Hint = ''
          Caption = '0,00'
          ParentFont = False
          Font.Color = clBlue
          Font.Style = [fsBold]
          TabOrder = 17
        end
        object eNotaTOTAL_ENT2: TUniLabel
          Left = 583
          Top = 123
          Width = 36
          Height = 16
          Hint = ''
          Caption = '15,00'
          ParentFont = False
          Font.Color = clBlue
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 18
        end
      end
      object bAvancar1: TUniBitBtn
        Left = 497
        Top = 246
        Width = 168
        Height = 56
        Hint = ''
        Caption = 'Avan'#231'ar ->'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVerde'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = bAvancar1Click
      end
      object UniBitBtn6: TUniBitBtn
        Left = 324
        Top = 246
        Width = 167
        Height = 56
        Hint = ''
        Caption = '<- Voltar'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = UniBitBtn6Click
      end
    end
    object tabCadForn: TUniTabSheet
      Hint = ''
      Caption = 'Fornecedor'
      object UniLabel23: TUniLabel
        Left = 16
        Top = 13
        Width = 35
        Height = 13
        Hint = ''
        Caption = 'Status:'
        TabOrder = 0
      end
      object lblStatusForn: TUniLabel
        Left = 57
        Top = 14
        Width = 160
        Height = 13
        Hint = ''
        Caption = 'Fornecedor N'#195'O cadastrado!'
        ParentFont = False
        Font.Color = clRed
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object eFornecedorRAZAO: TUniEdit
        Left = 16
        Top = 60
        Width = 345
        Hint = ''
        Text = ''
        TabOrder = 2
        ReadOnly = True
      end
      object eFornecedorFANTASIA: TUniEdit
        Left = 367
        Top = 60
        Width = 345
        Hint = ''
        Text = ''
        TabOrder = 3
        ReadOnly = True
      end
      object UniLabel25: TUniLabel
        Left = 16
        Top = 41
        Width = 71
        Height = 13
        Hint = ''
        Caption = 'Raz'#227'o Social'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 4
      end
      object UniLabel26: TUniLabel
        Left = 367
        Top = 41
        Width = 83
        Height = 13
        Hint = ''
        Caption = 'Nome Fantasia'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 5
      end
      object UniLabel27: TUniLabel
        Left = 16
        Top = 89
        Width = 27
        Height = 13
        Hint = ''
        Caption = 'CNPJ'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 6
      end
      object eFornecedorCNPJ: TUniEdit
        Left = 16
        Top = 108
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 7
        ReadOnly = True
      end
      object UniLabel28: TUniLabel
        Left = 143
        Top = 89
        Width = 103
        Height = 13
        Hint = ''
        Caption = 'Inscri'#231#227'o Estadual'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 8
      end
      object eFornecedorINSC: TUniEdit
        Left = 143
        Top = 108
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 9
        ReadOnly = True
      end
      object UniLabel29: TUniLabel
        Left = 270
        Top = 89
        Width = 28
        Height = 13
        Hint = ''
        Caption = 'CNAE'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 10
      end
      object eFornecedorCNAE: TUniEdit
        Left = 270
        Top = 108
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 11
        ReadOnly = True
      end
      object UniLabel30: TUniLabel
        Left = 397
        Top = 89
        Width = 22
        Height = 13
        Hint = ''
        Caption = 'CRT'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 12
      end
      object eFornecedorCRT: TUniEdit
        Left = 397
        Top = 108
        Width = 315
        Hint = ''
        Text = ''
        TabOrder = 13
        ReadOnly = True
      end
      object UniLabel31: TUniLabel
        Left = 16
        Top = 166
        Width = 52
        Height = 13
        Hint = ''
        Caption = 'Endere'#231'o'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 14
      end
      object eFornecedorEND: TUniEdit
        Left = 16
        Top = 185
        Width = 375
        Hint = ''
        Text = ''
        TabOrder = 15
        ReadOnly = True
      end
      object UniLabel32: TUniLabel
        Left = 397
        Top = 166
        Width = 44
        Height = 13
        Hint = ''
        Caption = 'N'#250'mero'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 16
      end
      object eFornecedorNUMERO: TUniEdit
        Left = 397
        Top = 185
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 17
        ReadOnly = True
      end
      object UniLabel33: TUniLabel
        Left = 524
        Top = 166
        Width = 34
        Height = 13
        Hint = ''
        Caption = 'Bairro'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 18
      end
      object eFornecedorBAIRRO: TUniEdit
        Left = 524
        Top = 185
        Width = 188
        Hint = ''
        Text = ''
        TabOrder = 19
        ReadOnly = True
      end
      object UniLabel34: TUniLabel
        Left = 16
        Top = 213
        Width = 79
        Height = 13
        Hint = ''
        Caption = 'Complemento'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 20
      end
      object eFornecedorCOMPLEMENTO: TUniEdit
        Left = 16
        Top = 232
        Width = 285
        Hint = ''
        Text = ''
        TabOrder = 21
        ReadOnly = True
      end
      object UniLabel35: TUniLabel
        Left = 307
        Top = 213
        Width = 20
        Height = 13
        Hint = ''
        Caption = 'CEP'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 22
      end
      object eFornecedorCEP: TUniEdit
        Left = 307
        Top = 232
        Width = 84
        Hint = ''
        Text = ''
        TabOrder = 23
        ReadOnly = True
      end
      object UniLabel36: TUniLabel
        Left = 397
        Top = 213
        Width = 38
        Height = 13
        Hint = ''
        Caption = 'Cidade'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 24
      end
      object eFornecedorCIDADE: TUniEdit
        Left = 397
        Top = 232
        Width = 268
        Hint = ''
        Text = ''
        TabOrder = 25
        ReadOnly = True
      end
      object UniLabel37: TUniLabel
        Left = 671
        Top = 213
        Width = 14
        Height = 13
        Hint = ''
        Caption = 'UF'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 26
      end
      object eFornecedorUF: TUniEdit
        Left = 671
        Top = 232
        Width = 41
        Hint = ''
        Text = ''
        TabOrder = 27
        ReadOnly = True
      end
      object UniLabel38: TUniLabel
        Left = 16
        Top = 265
        Width = 27
        Height = 13
        Hint = ''
        Caption = 'Fone'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 28
      end
      object eFornecedorTEL: TUniEdit
        Left = 16
        Top = 284
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 29
        ReadOnly = True
      end
      object UniLabel77: TUniLabel
        Left = 307
        Top = 265
        Width = 26
        Height = 13
        Hint = ''
        Caption = 'IBGE'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 30
      end
      object eFornecedorIBGE: TUniEdit
        Left = 307
        Top = 284
        Width = 84
        Hint = ''
        Text = ''
        TabOrder = 31
        ReadOnly = True
      end
      object FornecedorFJ: TUniEdit
        Left = 143
        Top = 284
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 32
        ReadOnly = True
      end
      object UniLabel13: TUniLabel
        Left = 143
        Top = 265
        Width = 108
        Height = 13
        Hint = ''
        Caption = 'Tipo de Fornecedor'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 33
      end
      object bAvancar2: TUniBitBtn
        Left = 573
        Top = 313
        Width = 136
        Height = 56
        Hint = ''
        Caption = 'Avan'#231'ar ->'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 34
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVerde'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = bAvancar2Click
      end
      object UniBitBtn8: TUniBitBtn
        Left = 431
        Top = 313
        Width = 136
        Height = 56
        Hint = ''
        Visible = False
        Caption = '<- Voltar'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 35
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = UniBitBtn8Click
      end
      object bCadForn: TUniBitBtn
        Left = 431
        Top = 259
        Width = 278
        Height = 48
        Hint = ''
        Caption = 'Cadastrar'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 36
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVerde'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = bCadFornClick
      end
    end
    object tabprodutos: TUniTabSheet
      Hint = ''
      Caption = 'Produtos'
      object UniLabel39: TUniLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1153
        Height = 20
        Hint = ''
        AutoSize = False
        Caption = 'Produtos'
        Align = alTop
        ParentFont = False
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 0
      end
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 26
        Width = 1159
        Height = 281
        Hint = ''
        DataSource = DsEntradaCor
        WebOptions.PageSize = 100
        LoadMask.Message = 'Loading data...'
        Align = alTop
        TabOrder = 1
        OnCellClick = UniDBGrid1CellClick
        OnFieldImage = UniDBGrid1FieldImage
        Columns = <
          item
            FieldName = 'SEQ_PRODUTO'
            Title.Caption = 'SEQ'
            Width = 64
          end
          item
            FieldName = 'COD_PROD'
            Title.Caption = 'STATUS'
            Width = 53
            ImageOptions.Visible = True
          end
          item
            FieldName = 'COD_PROD_FORN'
            Title.Caption = 'COD FORN.'
            Width = 99
          end
          item
            FieldName = 'EAN'
            Title.Caption = 'EAN'
            Width = 94
          end
          item
            FieldName = 'DESCRICAO'
            Title.Caption = 'DESCRICAO'
            Width = 367
          end
          item
            FieldName = 'UN'
            Title.Caption = 'UN'
            Width = 40
          end
          item
            FieldName = 'VLUNIT'
            Title.Caption = 'VLR. UNIT'
            Width = 118
          end
          item
            FieldName = 'QUANT'
            Title.Caption = 'QUANT.'
            Width = 67
          end
          item
            FieldName = 'VLTOTAL'
            Title.Caption = 'VLR. TOTAL'
            Width = 82
          end
          item
            FieldName = 'NCM'
            Title.Caption = 'NCM'
            Width = 94
          end>
      end
      object UniLabel40: TUniLabel
        Left = 8
        Top = 318
        Width = 161
        Height = 13
        Hint = ''
        Visible = False
        Caption = 'Qtde. de produtos...................:'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 2
      end
      object UniLabel41: TUniLabel
        Left = 8
        Top = 346
        Width = 160
        Height = 13
        Hint = ''
        Visible = False
        Caption = 'Produtos n'#227'o cadastrados...:'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object UniLabel42: TUniLabel
        Left = 174
        Top = 318
        Width = 8
        Height = 16
        Hint = ''
        Visible = False
        Caption = '3'
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 4
      end
      object UniLabel43: TUniLabel
        Left = 174
        Top = 346
        Width = 8
        Height = 16
        Hint = ''
        Visible = False
        Caption = '2'
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 5
      end
      object UniLabel44: TUniLabel
        Left = 338
        Top = 321
        Width = 416
        Height = 13
        Hint = ''
        Caption = 
          'Produto n'#227'o cadastrado, clique para cadastrar ou associar '#224' um c' +
          'adastro.'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 6
      end
      object UniLabel45: TUniLabel
        Left = 338
        Top = 353
        Width = 331
        Height = 13
        Hint = ''
        Caption = 'Produto j'#225' cadastrado, clique se deseja atualizar os dados.'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 7
      end
      object UniLabel46: TUniLabel
        Left = 338
        Top = 386
        Width = 345
        Height = 13
        Hint = ''
        Caption = 'Produto com cadastro vinculado '#224' um produto ja cadastrado.'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 8
      end
      object UniLabel48: TUniLabel
        Left = 230
        Top = 313
        Width = 52
        Height = 16
        Hint = ''
        Caption = 'Legenda.'
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -13
        TabOrder = 9
      end
      object UniBitBtn1: TUniBitBtn
        Left = 100
        Top = 372
        Width = 75
        Height = 25
        Hint = ''
        Visible = False
        Caption = 'Vincular'
        TabOrder = 10
        OnClick = UniBitBtn1Click
      end
      object imgEdit: TUniImage
        Left = 308
        Top = 383
        Width = 24
        Height = 24
        Hint = ''
        Visible = False
        Center = True
        Stretch = True
        Picture.Data = {
          07544269746D6170F6060000424DF60600000000000036000000280000001800
          0000180000000100180000000000C00600000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF019901019901019901019901019901019901
          019901FFFFFFFEFEFDFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFF019901019A01019A0101
          9A01009900019A01019901FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF735404735404
          735404735404735404735404735404735404735404735404735404735504029A
          020EA70E43E04352F25251F1511DB81D01990172540373540473540474550573
          55058A702C735403745504755403755403745403755504755403745404745503
          745402695A0201990109A8082AE92934FD3433FC3312BB11029A015965037455
          037455048F7535745505896F2C806113AF924EB59854B59854B59855B59956B5
          9855B59955B49855B49753A4984C01990109A90829E92933FD3332FC3212BB11
          029A018A9840B3985485681B8E7534745505896E2A8C6B1AF0C878FBD382FBD3
          83FCD483FCD584FBD483FBD583FBD483F9D382E3CE7601990008A80728E92833
          FD3332FD3211BB11019900C0C664F9D4829878268E7533745505896E2A8D6A15
          F1C15FFECC68FCCA66F7C562F5C664ECC660E3C75EE2C65EE1C65DCEC354029A
          0109AA0829EA2934FE3433FE3312BC11029B01ADBC48E0C65C887A1C80792E73
          5404896D2A8C6914F1C05CFCCA64E8B956A47E25A17E24677F131F9608149C08
          129B07109C06059A0207A80728E92833FE3332FD3210BB100099000E9C06129D
          08019901189A10705303886D2A8D6914F1C05DFCCA64DEB04F7958067B5A0874
          5A05417C0609980401980005A10409AB090FB80F2AEC2A35FE3533FD3317C817
          09AC0909A709039A02059702419B2B735404886E2A8D6914F1C05EFDCA65F7C5
          60E3B351E3B453E0B351D0B54E5CA62307980209AA092DE02C41F4414DFB4D52
          FE5249FE4937F7372AEF2A16C115029A011A8A02896713745505896E2A8D6914
          F1C05DFCCA65E8B956A37D25A47E26A27C24A27D2586791A248904049A0327B8
          278FF48FAAFDAAB0FEB0A2FDA284FB843CD93C07A2061C9F0D57720989671374
          5505896E2A8D6A16F1C773FCDEA2E1CC9E876A22876B23866A22876B22866B22
          6E7620269714089C074BC44B9CF69CA7FEA7A6FDA683E7831BA91A119E0C8BBB
          4A91761F896713745505886E2A8D6E23F1DFBCFDF2DDF9EED7EBDDC0EBDEC0EB
          DEBFEBDEC1EADDBFE6DCBDB1D29527A6220B9F0A48CB4885F9857CF27C29B529
          049B0364BC56F3ECC8997E388967137152018A6F2B8E712AF1E1BEFEEFD1EBDA
          B7AF975EAE975EC0AB78EDDDBAC6B281AD965CA895585E86230E95040DA20C48
          D54838C8380A9E0841AE34D3E0AEFCEFD199803E896713745506896E2B8D6F27
          F1DCB2FCE9C3E3CE9F8F7129907229A78C4BE6D1A4B096588E70288D70278771
          24548B1F0F9C0A079D06069D061F9E13AFC67EFBEAC2FEEBC49A7F3A8F753474
          5506896E2A8E7025F1D9A7FEE6B8F8E0AFE1C792E1C792E7CE99F4DDACE8D09B
          E1C892E1C892DEC78FD5C98D69B7490C9C070D9B0889BC5EEFDBA8FDE6B8FEE7
          B99A7E378F7534745505896E2A8D6D22F1D49AFCE0A9EACD93AA8D48AB8D48AA
          8C48AB8E49AB8D49A98C47AA8D47AA8D47BBA05DDACF8C4A9E253C850D9C8D41
          DCC183FDE1AAFEE2AA9A7C338F7534745505896E2A8E6D20F1D08EFDDC9CDEBE
          7A775706775706765605765607775706765605765605775606947428E9CB8790
          8531695F067D5E0DCAAA63FEDD9DFEDD9D9C7B308F7534745505886E2A8C6C1C
          F1CC83FDD88FF8D389E6C276E6C278E6C176E6C278E6C278E6C175E6C176E6C1
          76EBC77CFAD58CECC97FE5C175E7C377F5D086FED990FED9909A7A2B8E743374
          5505896E2A8C6B19F1C875FCD381FCD381FCD381FCD481FCD381FCD481FCD482
          FCD281FCD381FCD381FDD381FDD482FDD482FCD380FCD381FDD481FDD482FDD4
          829A79278F75347455058A6F2B8A6815E3B861EFC369EEC369EFC36AEEC36BEF
          C36AEEC26BEEC36BEFC26AEFC36AEFC36AEFC46AF0C46AEEC46AEFC36AEFC369
          EFC36AEFC36AEFC36A9774218F7534745505886D2A7555048866138A67138A67
          138A68148B69158A68148B68148B68148A67148A68148A68148A68148A67148B
          69148A68148A67148A67148967138967138967138F7434745505735403725302
          7253027253027253027253027253027253027253027253027253027253027253
          0272530272530272530272530272530272530272530272530272530272540374
          5505}
      end
      object imgImposto: TUniImage
        Left = 308
        Top = 313
        Width = 24
        Height = 24
        Hint = ''
        Center = True
        Picture.Data = {
          07544269746D6170F6060000424DF60600000000000036000000280000001800
          0000180000000100180000000000C00600000000000000000000000000000000
          0000FFFFFF03689A01679903689A03689A016799016799016799016799016799
          01679901679901679903689A03689A03689A03689A03689A03689A03689A0368
          9A03689A04699BFFFFFFFFFFFF00669900669900669901679A00669900669900
          669900669901679900669801679801679801669801679900659801679A006698
          00669900659901679A006699016799FFFFFFFFFFFF01679A1679A54BA6C459B1
          CB58B1CB59B1CB59B1CB58B0CB59B0CA58B0CA59AFC959B0C959B0C959AFCA58
          B0CA59B0CA59B1CB58B1CB58B0CB4CA6C41679A5016799FFFFFFFFFFFF006699
          2189B075E1EB8BF7FA8AF7F98AF7FA8AF5F882E7ED80E0E87FE0E780E0E880E0
          E87FE0E780E0E87FE0E785EBF08AF7FA8AF7F98AF6F976E2EC2189B0016799FF
          FFFFFFFFFF01679A1B8BB25CE7EF6CFDFE6CFEFE6CFDFD64EDF13390A81C6486
          1C64861B64851C64861C63851C64861C658640AABD6BFBFC6CFDFE6CFDFE5CE7
          EF1B8BB2016799FFFFFFFFFFFF01679A1A8BB257E7EF66FDFE66FEFE66FDFD5C
          EBEF207A9604456D04446C04446B04446C03436B04446C04466D309AAF64FBFB
          66FDFE66FDFE57E7EF1A8BB2016799FFFFFFFFFFFF006799198BB256E7EF66FD
          FE65FEFE65FDFD5BEBEF24839D0B527704456D04446B04446C03436B0649700A
          527634A1B463FBFB65FDFE65FDFE57E7F0198BB2016799FFFFFFFFFFFF006698
          198BB256E6EE66FEFF65FDFD65FEFE63F9FA55E0E750D5DD0E597C05456D0546
          6D05466D217B964FD5DE5AE8EC65FEFE65FDFD64FDFD58E8EF198BB2016799FF
          FFFFFFFFFF006799198BB256E7EF67FEFF65FDFD66FEFE65FDFD64FDFD65FCFC
          125F8105466D05466E05466E2988A164FDFD67FDFD66FEFE65FDFD65FDFD58E8
          F0198BB2016799FFFFFFFFFFFF006799198BB256E6EF66FEFF65FEFE67FEFE68
          FDFD71FDFD7AFBFC3879963669893267882D6384469CB16EFDFD69FDFE67FEFE
          65FDFE65FDFE57E8F0198BB2016799FFFFFFFFFFFF01679A1A8CB357E8F06BFD
          FE77FFFF8AFFFF9DFEFEA1FBFBA1F7F974A1B56E93A96D92A96C91A980BAC8A2
          FFFF9DFEFE8CFFFF7AFFFF6DFEFF58E8EF1A8CB3016799FFFFFFFFFFFF006799
          198BB163E7EF8CFEFFA1FEFEA4FEFEA1F8F98ED4DC85C0CE6F98AC6C91A86C91
          A86C91A881BAC8A4FEFEA5FEFEA4FFFFA3FEFE92FDFE6CE8F01C8BB1016799FF
          FFFFFFFFFF006799218BB27FE7EF9FFEFFA0FEFEA0FEFE9AF2F475ADBE668EA6
          658CA4658DA5668DA5668DA57CB7C7A0FDFDA1FEFEA0FEFEA0FDFD9FFCFD86E7
          EF248AB1016799FFFFFFFFFFFF016799268CB284E7EF9BFDFE9DFEFE9DFFFF97
          F2F571ABBD6189A25F87A15F87A06087A16087A177B4C49CFEFE9BFDFE9CFEFF
          9BFDFE9AFCFE83E6EF268BB2016799FFFFFFFFFFFF006798248AB17FE7EF97FE
          FF97FEFE97FEFE93F6F87AC5D16DAABD6BA9BC6CAABC6CAABC6CABBD7DCBD78F
          F5F88BF2F68BF1F68AF0F58BF1F677DCE82288B0016799FFFFFFFFFFFF006699
          238BB27CE7EF93FDFE93FEFE93FEFE93FEFE93FEFE94FEFE81DBE271BBC970BA
          C972BFCC80DFE755BCD2389EBF379EBE389EBE379DBE3095B90E74A2016799FF
          FFFFFFFFFF006799228BB279E7EF8EFEFF8EFEFE8FFEFE8EFDFD8EFDFD8FFDFD
          6AB8C74979954978954D819C6BC4D32E96B903689B0A6D9D0B6D9E06699C0369
          9A03689B02689AFFFFFFFFFFFF006799218BB275E7EF8AFDFE8AFEFE8BFFFF8A
          FEFE8AFEFE8BFEFE65B6C5437592437592477E9A66C3D22E97B91472A197C2D6
          ADCEDE5498BA096C9C227BA7FFFFFFFFFFFFFFFFFF01689A218BB372E8F086FE
          FE87FFFF87FFFF87FFFF87FFFF87FEFE6CCCD7549DB2539DB256A3B769D0DC2D
          97BA1975A2C3DBE797C0D51976A3267DA8FFFFFFFFFFFFFFFFFFFFFFFF006699
          1F8AB16DE6EE80FDFE80FDFD81FEFE81FDFE81FDFE82FEFE7DF6F87AF0F37AF0
          F379EFF373EBF12A97BA1574A181B3CD297FA9106F9FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF01679A1F8BB26AE6EF7DFCFE7DFDFE7DFEFF7EFEFF7EFEFF7FFDFE
          7DFEFE7DFCFD7DFCFD7CFBFD72EFF42897B9046A9B1472A11271A1FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF01679A1682AB4CC6D85AD6E45AD6E45BD7E45B
          D7E55BD7E55CD7E45BD7E45CD6E35BD6E35BD5E353CCDD1E8BB104699B1572A1
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0066990067990067990168
          9A00679900679900679900679901689A00679901689A01689A01689A01689A06
          6D9D096B9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF026899
          0268990268990268990268990268990268990167990167990268990268990268
          99026899016799026899FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      object UniBitBtn2: TUniBitBtn
        Left = 100
        Top = 400
        Width = 75
        Height = 25
        Hint = ''
        Visible = False
        Caption = 'Cadastrar'
        TabOrder = 13
        OnClick = UniBitBtn2Click
      end
      object UniBitBtn3: TUniBitBtn
        Left = 100
        Top = 431
        Width = 75
        Height = 25
        Hint = ''
        Visible = False
        Caption = 'Cadastrar'
        TabOrder = 14
      end
      object UnimImage1: TUniImage
        Left = 308
        Top = 345
        Width = 24
        Height = 24
        Hint = ''
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF80000048C4944415478DA9D557D4C5B5514BFF7BDBE
          D7D796DA16EA90D16D420B81013A07D161604E9739A28B7FB8E83F7693A198B1
          441D02B2C5CC892364D36D646EC94C4888448C6C46CD0C4623CC4492B94CD89C
          B26ED022EE0319E19B52DAD7BED7773DAF9697425B209E34BDBF73CFE9F9DD7B
          3E6E315A428E5EB6507A33B389C2AAAD1C9394CD527AA384C4A05F9CFA271074
          5F4504FDB02F637068A91838D6E647DD6B29BD49BDC7A4597F805399AD121131
          2F8E43E83984314D58DA88D52A030109CEF0CEEF7DE2D8A10A9BB3774504679C
          364B029BFAA581B3168D7BAF23AF3042C02DC28F84754230A2B159FB08E218B3
          30E6B95637EB9E6DA8DE789BC42538DD9F9199A8CDBC189484D4499F03AD5468
          CCA294078AD094AFBF657A6AFCB59AFC41298AA0F186D5949860ED090467D33D
          817B24C2168923F5289F147D2190B88E56645C3F1845F0A9ABE07386D6DBA77D
          0328D68F574200829213F2A5F1B99B4FBF9DDDDFA5109C74D80A4C5AEB9589B9
          5B318BBE9418D9B5682630040CFF6585A5F548C324F594DBBA1E57084EDF7AAC
          8520B28B17A770F83C042CD138528735CBB8033F6769448EA9AFC94FC307B16C
          92F70D9A87D1AC7FB8A83AD7F52BAEFCC6A2B2AEB78C7AFC23C638698999A23C
          D34E52623986294C23B95F3B860FE1DF27BE08D9358C098B52E07855AEA3061F
          F92D3D47A735F4F2C2F482AB6B5589A1B85E71222A2D1BCD76F46CEA070AEF28
          DF87DAFEDABDC057C3265DAACCE929C6F557ADCFAB68AE5D0CFA94936A9924F2
          6AC639CCD209E8DBBFDF24773DDDCA0D3625BF4E9E595D0B3A26725587E7FE84
          E07B884F9C5E706386D60ED56EB8B106D775DB5EA230750E8652617F25B305A5
          E99F0C619862D431D480BAC75A5171CA3EF454CA7EC5EF9EE71A6A1B2847FEA0
          3BBAFA989A78BFC0F5203E7CC5B61DB41F23736D336C262FA67F8CB58C29945F
          F9A493FC1D94C8AD53F441F765D2E6DA8B03415FBC9ADDAE7BC29586DFEDB4A6
          AB75F4C0A2B92006F56AFCB2AD1159121E0D05542A0CE29AEEC26DAEB78828F1
          719B02BE3AEB0B9DDBF0AEB36BF19A3CED5DD84C5DEC44530C2A5957430A53EC
          0A8763A2839C7756419708F13A2D8CC9E186A2FE0F439BB55DD92760A98C374C
          79E6ED6867C611D437F90B3AEF3C007509A265441E889C639BFBFA4204D53F67
          A7218A92C7583D6FC5E113CD6335AD83627AE5390AE9B17CE6317CDA8F6FB9F9
          4264CED13B1773EB61796FA583B6840F549D6C38B9D5E15C40F0C657D98CC6C8
          74022C5EEEFECB64A7ECD4B6DECF946E8D34557C9767A258AA1DB60BFFC70D24
          78A06ACE94FCD1181933EAF5DC7F610B27D2FC0911FBF7824AAD8400236A8421
          5CF9273B2EB52F8E1772686A6AC21CC7B10059281FE7C7B32AB7EA7EF128D357
          35A9BA934FB044C54A062BE9DCC942D6854421ED944E32DF57114E045A1E4C01
          4110026565652444D0DADA6A83F9D90DBD9E05EA438035800D806901F1DC8C6A
          D8E0A5266901F318131AA9898EE883AB027A69153C409428FFF983BFFC5E7801
          8F00EE07DC62B7DB074204CDCDCD14C3303A30E840D581131BC6F2E47280B54A
          7EE03F5F1EBAF0CA8783CAD80BD80F784EC6A2287A4A4B4BA57F01CA420F37D8
          3A2C100000000049454E44AE426082}
      end
      object UniBitBtn7: TUniBitBtn
        Left = 767
        Top = 321
        Width = 167
        Height = 56
        Hint = ''
        Caption = '<- Voltar'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 16
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = UniBitBtn7Click
      end
      object UniBitBtn9: TUniBitBtn
        Left = 940
        Top = 321
        Width = 168
        Height = 56
        Hint = ''
        Caption = 'Avan'#231'ar ->'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 17
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVerde'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = UniBitBtn9Click
      end
    end
    object UniTabSheet6: TUniTabSheet
      Hint = ''
      Caption = 'Capa da nota (totais)'
      object UniLabel49: TUniLabel
        Left = 16
        Top = 11
        Width = 74
        Height = 13
        Hint = ''
        Caption = 'Capa da Nota'
        ParentFont = False
        Font.Color = clBlue
        Font.Style = [fsBold]
        TabOrder = 0
      end
      object UniLabel50: TUniLabel
        Left = 16
        Top = 33
        Width = 44
        Height = 13
        Hint = ''
        Caption = 'N'#250'mero'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object eNotaNUMNF_ENT: TUniEdit
        Left = 16
        Top = 52
        Width = 86
        Hint = ''
        Text = ''
        TabOrder = 2
        ReadOnly = True
      end
      object UniLabel51: TUniLabel
        Left = 103
        Top = 33
        Width = 29
        Height = 13
        Hint = ''
        Caption = 'S'#233'rie'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object eNotaSERIE_ENT: TUniEdit
        Left = 103
        Top = 52
        Width = 56
        Hint = ''
        Text = ''
        TabOrder = 4
        ReadOnly = True
      end
      object UniLabel52: TUniLabel
        Left = 221
        Top = 33
        Width = 54
        Height = 13
        Hint = ''
        Caption = 'Opera'#231#227'o'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 5
      end
      object eNotaTPOP: TUniEdit
        Left = 221
        Top = 52
        Width = 54
        Hint = ''
        Text = ''
        TabOrder = 6
        ReadOnly = True
      end
      object UniLabel53: TUniLabel
        Left = 281
        Top = 33
        Width = 55
        Height = 13
        Hint = ''
        Caption = 'Descri'#231#227'o'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 7
      end
      object eNotaNatOp: TUniEdit
        Left = 281
        Top = 52
        Width = 353
        Hint = ''
        Text = ''
        TabOrder = 8
        ReadOnly = True
      end
      object UniLabel54: TUniLabel
        Left = 16
        Top = 80
        Width = 64
        Height = 13
        Hint = ''
        Caption = 'Fornecedor'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 9
      end
      object eCodForn: TUniEdit
        Left = 16
        Top = 99
        Width = 64
        Hint = ''
        Text = ''
        TabOrder = 10
        ReadOnly = True
      end
      object UniLabel55: TUniLabel
        Left = 87
        Top = 80
        Width = 32
        Height = 13
        Hint = ''
        Caption = 'Nome'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 11
      end
      object eFornecedorRAZAO3: TUniEdit
        Left = 87
        Top = 99
        Width = 371
        Hint = ''
        Text = ''
        TabOrder = 12
        ReadOnly = True
      end
      object UniLabel56: TUniLabel
        Left = 464
        Top = 80
        Width = 27
        Height = 13
        Hint = ''
        Caption = 'CNPJ'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 13
      end
      object eFornecedorCNPJ3: TUniEdit
        Left = 464
        Top = 99
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 14
        ReadOnly = True
      end
      object UniLabel57: TUniLabel
        Left = 589
        Top = 80
        Width = 44
        Height = 13
        Hint = ''
        Caption = 'ESTADO'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 15
      end
      object eFornecedorUF3: TUniEdit
        Left = 589
        Top = 99
        Width = 45
        Hint = ''
        Text = ''
        TabOrder = 16
        ReadOnly = True
      end
      object UniLabel58: TUniLabel
        Left = 640
        Top = 33
        Width = 76
        Height = 13
        Hint = ''
        Caption = 'Data Emiss'#227'o'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 17
      end
      object UniLabel59: TUniLabel
        Left = 642
        Top = 80
        Width = 74
        Height = 13
        Hint = ''
        Caption = 'Data Entrada'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 18
      end
      object UniDBGrid2: TUniDBGrid
        Left = 3
        Top = 127
        Width = 1004
        Height = 250
        Hint = ''
        DataSource = DsEntradaCor
        LoadMask.Message = 'Loading data...'
        TabOrder = 19
      end
      object UniLabel60: TUniLabel
        Left = 8
        Top = 381
        Width = 30
        Height = 13
        Hint = ''
        Caption = 'Frete'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 20
      end
      object UniLabel61: TUniLabel
        Left = 105
        Top = 381
        Width = 40
        Height = 13
        Hint = ''
        Caption = 'Seguro'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 21
      end
      object UniLabel62: TUniLabel
        Left = 198
        Top = 381
        Width = 95
        Height = 13
        Hint = ''
        Caption = 'Outras Despesas'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 22
      end
      object UniLabel63: TUniLabel
        Left = 412
        Top = 381
        Width = 47
        Height = 13
        Hint = ''
        Caption = 'Valor Ipi'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 23
      end
      object UniLabel64: TUniLabel
        Left = 518
        Top = 381
        Width = 59
        Height = 13
        Hint = ''
        Caption = 'Descontos'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 24
      end
      object UniLabel65: TUniLabel
        Left = 627
        Top = 381
        Width = 106
        Height = 13
        Hint = ''
        Caption = 'Total dos Produtos'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 25
      end
      object UniLabel66: TUniLabel
        Left = 6
        Top = 427
        Width = 88
        Height = 13
        Hint = ''
        Caption = 'Base Calc. ICMS'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 26
      end
      object UniLabel67: TUniLabel
        Left = 103
        Top = 427
        Width = 61
        Height = 13
        Hint = ''
        Caption = 'Valor ICMS'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 27
      end
      object UniLabel68: TUniLabel
        Left = 197
        Top = 427
        Width = 97
        Height = 13
        Hint = ''
        Caption = 'Base ICMS Subst.'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 28
      end
      object UniLabel69: TUniLabel
        Left = 411
        Top = 427
        Width = 99
        Height = 13
        Hint = ''
        Caption = 'Valor ICMS Subst.'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 29
      end
      object UniLabel71: TUniLabel
        Left = 628
        Top = 427
        Width = 107
        Height = 13
        Hint = ''
        Caption = 'Valor Total da Nota'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 30
      end
      object eNotaTOTAL_PRODUTOS: TUniFormattedNumberEdit
        Left = 627
        Top = 400
        Width = 109
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 31
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaTOTAL_ENT: TUniFormattedNumberEdit
        Left = 627
        Top = 446
        Width = 109
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 32
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaFRETE_ENT: TUniFormattedNumberEdit
        Left = 6
        Top = 399
        Width = 88
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 33
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaBCICMS: TUniFormattedNumberEdit
        Left = 6
        Top = 446
        Width = 88
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 34
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaV_SEG: TUniFormattedNumberEdit
        Left = 103
        Top = 399
        Width = 85
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 35
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaVALOR_ICMS: TUniFormattedNumberEdit
        Left = 103
        Top = 446
        Width = 85
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 36
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaOUTRASDESP: TUniFormattedNumberEdit
        Left = 197
        Top = 399
        Width = 97
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 37
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaBASE_SUB_TRIB: TUniFormattedNumberEdit
        Left = 197
        Top = 446
        Width = 97
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 38
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaV_IPI: TUniFormattedNumberEdit
        Left = 411
        Top = 400
        Width = 97
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 39
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaVALOR_ICMS_SUB: TUniFormattedNumberEdit
        Left = 411
        Top = 446
        Width = 97
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 40
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaDESC_ENT: TUniFormattedNumberEdit
        Left = 518
        Top = 400
        Width = 97
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 41
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eNotaDATAEMI_ENT: TUniDateTimePicker
        Left = 640
        Top = 52
        Width = 120
        Hint = ''
        DateTime = 43221.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        ReadOnly = True
        TabOrder = 42
      end
      object eNotaDATAENT_ENT: TUniDateTimePicker
        Left = 640
        Top = 99
        Width = 120
        Hint = ''
        DateTime = 43221.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 43
      end
      object UniLabel14: TUniLabel
        Left = 766
        Top = 32
        Width = 95
        Height = 13
        Hint = ''
        Caption = 'Chave de Acesso'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 44
      end
      object eNotaCHAVE_NFE: TUniEdit
        Left = 766
        Top = 51
        Width = 244
        Hint = ''
        Text = ''
        TabOrder = 45
        ReadOnly = True
      end
      object UniLabel15: TUniLabel
        Left = 766
        Top = 80
        Width = 79
        Height = 13
        Hint = ''
        Caption = 'C'#243'digo Estado'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 46
      end
      object eNotaCODIGO_ES: TUniEdit
        Left = 766
        Top = 99
        Width = 79
        Hint = ''
        Text = ''
        TabOrder = 47
        ReadOnly = True
      end
      object UniLabel16: TUniLabel
        Left = 163
        Top = 33
        Width = 41
        Height = 13
        Hint = ''
        Caption = 'Modelo'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 48
      end
      object eNotaCODIFICACAO_FISCAL: TUniEdit
        Left = 163
        Top = 52
        Width = 56
        Hint = ''
        Text = ''
        TabOrder = 49
        ReadOnly = True
      end
      object UniLabel17: TUniLabel
        Left = 305
        Top = 381
        Width = 48
        Height = 13
        Hint = ''
        Caption = 'Valor Pis'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 50
      end
      object eNotaV_PIS: TUniFormattedNumberEdit
        Left = 304
        Top = 400
        Width = 97
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 51
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniLabel18: TUniLabel
        Left = 304
        Top = 427
        Width = 66
        Height = 13
        Hint = ''
        Caption = 'Valor Cofins'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 52
      end
      object eNotaV_COFINS: TUniFormattedNumberEdit
        Left = 304
        Top = 446
        Width = 97
        Hint = ''
        Alignment = taRightJustify
        TabOrder = 53
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniBitBtn10: TUniBitBtn
        Left = 749
        Top = 383
        Width = 125
        Height = 56
        Hint = ''
        Caption = '<- Voltar'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 54
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = UniBitBtn10Click
      end
      object UniBitBtn11: TUniBitBtn
        Left = 880
        Top = 383
        Width = 128
        Height = 56
        Hint = ''
        Caption = 'Avan'#231'ar ->'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 55
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVerde'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = UniBitBtn11Click
      end
    end
    object UniTabSheet7: TUniTabSheet
      Hint = ''
      Caption = 'Forma de Pagamento'
      object UniPanel2: TUniPanel
        Left = 16
        Top = 80
        Width = 670
        Height = 297
        Hint = ''
        Visible = False
        TabOrder = 0
        TitleVisible = True
        Title = 'Gerar Contas a Pagar'
        Caption = ''
        object UniLabel72: TUniLabel
          Left = 24
          Top = 14
          Width = 78
          Height = 13
          Hint = ''
          Caption = 'N. Documento'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 1
        end
        object eNrDoc: TUniEdit
          Left = 24
          Top = 33
          Width = 90
          Hint = ''
          Text = ''
          TabOrder = 2
        end
        object UniLabel73: TUniLabel
          Left = 116
          Top = 14
          Width = 76
          Height = 13
          Hint = ''
          Caption = 'Data Emiss'#227'o'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 3
        end
        object UniLabel74: TUniLabel
          Left = 238
          Top = 14
          Width = 61
          Height = 13
          Hint = ''
          Caption = 'Valor Total'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 4
        end
        object UniLabel75: TUniLabel
          Left = 347
          Top = 14
          Width = 66
          Height = 13
          Hint = ''
          Caption = 'Nr. Parcelas'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 5
        end
        object UniLabel76: TUniLabel
          Left = 455
          Top = 13
          Width = 103
          Height = 13
          Hint = ''
          Caption = 'Vencto. 1'#176' parcela'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 6
        end
        object UniDBGrid3: TUniDBGrid
          Left = 21
          Top = 61
          Width = 628
          Height = 225
          Hint = ''
          DataSource = dsPagarCab
          WebOptions.Paged = False
          WebOptions.PageSize = 100
          LoadMask.Message = 'Loading data...'
          TabOrder = 7
          Columns = <
            item
              FieldName = 'ID'
              Title.Caption = 'ID'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'IDEMITENTE'
              Title.Caption = 'IDEMITENTE'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'CODIGO'
              Title.Caption = 'CODIGO'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'FATURA'
              Title.Caption = 'FATURA'
              Width = 124
            end
            item
              FieldName = 'REFPEDIDO'
              Title.Caption = 'REFPEDIDO'
              Width = 64
            end
            item
              FieldName = 'DATA'
              Title.Caption = 'DATA'
              Width = 64
            end
            item
              FieldName = 'DATAVCTO'
              Title.Caption = 'DATAVCTO'
              Width = 64
            end
            item
              FieldName = 'VALOR'
              Title.Caption = 'VALOR'
              Width = 118
            end
            item
              FieldName = 'SALDO'
              Title.Caption = 'SALDO'
              Width = 118
            end
            item
              FieldName = 'OBS'
              Title.Caption = 'OBS'
              Width = 6004
            end
            item
              FieldName = 'TIPODOCUMENTO'
              Title.Caption = 'TIPODOCUMENTO'
              Width = 92
              Visible = False
            end
            item
              FieldName = 'PARCELA'
              Title.Caption = 'PARCELA'
              Width = 64
            end
            item
              FieldName = 'JUROS'
              Title.Caption = 'JUROS'
              Width = 0
              Visible = False
            end
            item
              FieldName = 'DESCONTO'
              Title.Caption = 'DESCONTO'
              Width = 0
              Visible = False
            end
            item
              FieldName = 'USUARIO'
              Title.Caption = 'USUARIO'
              Width = 0
              Visible = False
            end
            item
              FieldName = 'FORNECEDOR'
              Title.Caption = 'FORNECEDOR'
              Width = 0
              Visible = False
            end
            item
              FieldName = 'NOMEFANTASIA'
              Title.Caption = 'NOMEFANTASIA'
              Width = 0
              Visible = False
              ReadOnly = True
            end
            item
              FieldName = 'RAZAOSOCIAL'
              Title.Caption = 'RAZAOSOCIAL'
              Width = 304
              ReadOnly = True
            end>
        end
        object eValorTotal: TUniFormattedNumberEdit
          Left = 238
          Top = 33
          Width = 103
          Hint = ''
          Alignment = taRightJustify
          TabOrder = 8
          ReadOnly = True
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object eNrParcelas: TUniFormattedNumberEdit
          Left = 347
          Top = 33
          Width = 103
          Hint = ''
          Alignment = taRightJustify
          TabOrder = 9
          ReadOnly = True
          Value = 1.000000000000000000
          DecimalPrecision = 0
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object eVctoPrimeiraParc: TUniDateTimePicker
          Left = 454
          Top = 32
          Width = 120
          Hint = ''
          DateTime = 43221.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 10
        end
        object eDataEmissao: TUniDateTimePicker
          Left = 115
          Top = 33
          Width = 120
          Hint = ''
          DateTime = 43221.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 11
        end
      end
      object rFormaPgto2: TUniRadioGroup
        Left = 120
        Top = 12
        Width = 566
        Height = 62
        Hint = ''
        Visible = False
        Items.Strings = (
          'Fatura (contas a pagar)'
          'Dinheiro (caixa/Banco)'
          'N'#227'o Informar')
        Caption = 'Forma de Pagamento'
        TabOrder = 1
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        Columns = 3
      end
      object rFormaPgto: TUniRadioGroup
        Left = 16
        Top = 14
        Width = 103
        Height = 60
        Hint = ''
        Visible = False
        Items.Strings = (
          'Avista'
          'Aprazo')
        Caption = 'Forma Pgto'
        TabOrder = 2
        ParentFont = False
        Font.Style = [fsBold]
      end
      object UniButton1: TUniButton
        AlignWithMargins = True
        Left = 3
        Top = 398
        Width = 26
        Height = 23
        Hint = ''
        Caption = '<i class="fa fa-lock fa-1x "></i>'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'BotaoAzul'#39');'#13#10'}')
        OnClick = UniButton1Click
      end
      object UniBitBtn12: TUniBitBtn
        Left = 410
        Top = 384
        Width = 136
        Height = 56
        Hint = ''
        Caption = '<- Voltar'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 4
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = UniBitBtn12Click
      end
      object bEncerrar: TUniBitBtn
        Left = 549
        Top = 384
        Width = 136
        Height = 56
        Hint = ''
        Caption = 'Finalizar'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 5
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
            'er.addCls('#39'BotaoVerde'#39');'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = bEncerrarClick
      end
    end
  end
  object UniPanel3: TUniPanel
    Left = 0
    Top = 0
    Width = 1167
    Height = 70
    Hint = ''
    Align = alTop
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Color = 4079166
    object UniLabel20: TUniLabel
      AlignWithMargins = True
      Left = 86
      Top = 21
      Width = 167
      Height = 29
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Caption = 'Importar XML'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -24
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object UniImage2: TUniImage
      Left = 1
      Top = 1
      Width = 74
      Height = 68
      Hint = ''
      Stretch = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000002000000
        02000806000000F478D4FA0000001974455874536F6674776172650041646F62
        6520496D616765526561647971C9653C0000F8834944415478DAEC7D07A06445
        95F6E9EEF726C1CC3C0646323C04C9C8284914650806581130A22EC2981382BB
        EAAFEBBA625A7583B8BBB8669915444177015151514072949CC3E4FC72EEFCDF
        5375EBDEAABA55754377BFD76FFA7CF0A6BBEFAD5BE976DFF3D539A7CEC9D5EB
        75201008040281D059C811012010080402A1F340048040201008840E04110002
        814020103A1044000804028140E84010012010080402A1034104804020100884
        0E04110002814020103A1044000804028140E84010012010080402A103410480
        40201008840E04110002814020103A1044000804028140E84010012010080402
        A10341048040201008840E04110002814020103A1044000804028140E8401001
        2010080402A10341048040201008840E04110002814020103A10440008040281
        40E84010012010080402A10341048040201008840E04110002814020103A1044
        000804028140E84010012010080402A10341048040201008840E041100028140
        20103A1044000804028140E84010012010080402A10341048040201008840E04
        110002814020103A1044000804028140E84010012010080402A1034104804020
        1008840E04110002814020103A1044000804028140E84010012010080402A103
        41048040201008840E04110002814020103A1044000804028140E84010012010
        080402A10341048040201008840E04110002814020103A1044000804028140E8
        4010012010080402A10341048040201008840E04110002814020103A10440008
        04028140E84010012010080402A10341048040201008840E0411000281402010
        3A1044000804028140E84010012010080402A10341048040201008840E041100
        02814020103A1044000804028140E84010012010080402A10341048040201008
        840E04110002814020103A1044000804028140E84010012010080402A1034104
        8040201008840E04110002814020103A1044000804028140E840100120100804
        02A10341048040201008840E04110002814020103A1044000804028140E84010
        012010080402A10341048040201008840E04110002814020103A104400080402
        8140E84010012010080402A10341048040201008840E04110002814020103A10
        44000804028140E84010012010080402A10341048040201008840E0411000281
        4020103A1044000804028140E84010012010080402A10341048040201008840E
        04110002814020103A104400080442C7E196A72FEDF55EBCBFDC32EFB5A7522B
        3DD4959F3BB4FCA08FDE32D37D2310A60B440008044247E0A6A7FE63590EF2CB
        73B9DC79DE736F99F7EA1DCDF9677350AB97A16F7C357EB8D6FBBB0E5FDF7ED4
        254333DD6F02A1552002402010B65BFCE9C94B70857F9E27ECCFCA41AED72300
        C1399500008C16B7C1647958BE1C85FF973C12F0ED991E0781D00A1001201008
        DB15FEF0F8BF9DE509F713F3B9FC59C0D4FC5CD8E77C612F480027001CD57A05
        FAC7D7D8AABCC5FB3B9BB40184ED0D44000804C2AC070A7DEFE54CEF0F5F7B64
        E1EE1101230160EFFD72A3C53E98280F46CE4B78C8FB3B894800617B02110002
        8130EBF0FBC7BFD9E3097414F6270213FAF91EF9BC8B00B0F39216A0589982A1
        A975CAB93AD494723E880410B62B1001201008B302BF7BECEB42E89FE9DBF43D
        415DF705BBBA6A371180E01CFB2F2C3F34B5114AD509639B066D009100C27603
        22000402A16DF1DB47BFDA9BE3B6FC33BDC7D5723CC604B826D0D31200FE9AF7
        04FF240C4EAE0FCEE3F3502E2BCA69201240D82E4004804020B415AE7FE44B4C
        E87B82FA3CEF237AF17B42590861C9969FCB054738A2B67B2C93CFE52DE5BDD5
        FFE4464602F46BC473919B0EF8F5681690C8C043DEE793DE71D47F100920CC5A
        1001201008338EEB1FB9D813F44CE033CFFD50E08B157F4800C263D155BD4913
        A0130051BE549DF256FFEBFCCF46C73FAB36C02703A40920CC6A100120100833
        825F3FFC4FFE1EFD70BB5E20E01310005ECEAD0510E74D668081890D50AE4DF8
        9F8DABFC483DCA315E8E340184590B2200040261DA70ED439FF79DF8988A9F79
        EECBC25E0ECC238EE71452A039F365F4052831CFFFF5C63EDA08806C16D0C034
        01440208B30D4400080442CB70CD439F4321BF1C50E8035BE907423F6758ED73
        A8C79B4900C4310CFA53A9150D6DCBBDB09B057432E07D6624E09CA3FF934800
        61D68008008140682A7EF5D7CFF4E473B960A52F9F0BF7DF87C2DD4600ECE5A2
        CE7CFA3E7F3004FB110460B23C02A3C52D917E8BFAEBF59A4F50DC660151B7F4
        0C4512B0C223010FCDF43D20109280080081406818BFFAEBA77A813BF09D087C
        A5EF09DCA87057A3F0B9B400BCB48B0088E3FC7ABB2F804E00FA275643B55676
        8EC7D66F1719F0CFA306E0A4771E7D29910042DB8308008140C884AB1FF864AF
        F77296272CD9763D5DF8E67376E18E42542600E6723987A6204E0B1025008862
        65CCB8FA37C1661EB09101113D10781221220184B607110002819018573D7021
        A6D44581BF1C227BF4553B7C3E6717EE490980381E2D17A70530FB020C4CAC81
        5ABDE41FB5AFE4E5FE089380B18C44066478D73012F0AE63FE9B4800A16D4104
        80402038F1F3FB3F2E843E66D9EBC563664FF9BCB2024F4200F8FB78674039EC
        6F160280285571F5BF593A124F0050F8CB7D73910101710DF89A002201847605
        1100028110C195F77D5464D75BEE09BC5E530ADD5C6495DD6C02E09FB5C60408
        8E48ED98CD008881C9D59E70AE68F5BB85B909363220097E194402086D0B2200
        040281E167F77D08F7E69F09D2763D84EC111F4700F8717505EE72064CA20588
        2300EAF5E6DD0013E57EEF6F20D024A8FDAC2965F9E764C44026030E7824A0E6
        9180EF110920B415880010081D8ACBEF7D5F0FEECDF78418AEF499E7BED9894E
        08693DA6BE8B0084759834013602201F037126250188F6A1C63CFFEB5055FBAB
        1085B0AC3EFEC6C1EAF43501440208ED032200044207C113FABDE007E601B4E9
        5B05B149BDAF7AD6C713005E4F1202205F174700D4BAE2030389D5BFCD7E1F25
        0262FCC9350176289A81A13AD44F7AF731DF271240680B10012010B6735C76F7
        7B7AFD95FE799E305EA69F97EDF1FCB3C98B3EB91620090150EB72990172D6BA
        9324084275FFC0C42AA8D5AB86BAD572721FE4FE73642103DACE00DE06D30410
        0920B40388001008DB212EBBEB5C14F4CB3D89E7EFD10F857CDE92E1CE66C357
        CF45F7D7DB82FB702477060CDB369380A4CE80B21960A23C08E3A5BEC8FCD8B7
        F535C34720EA0F20EAF43154AFD74EFADB637F48248030A3200240206C27F8C9
        5DEFF2043DF829750BBDECA024A465A16722012E02C0ABCA272200611D00CD71
        06341300B5CD2801C067DBC024AEFE2BAC1D39708F698B5F64BC897C04743260
        5CF5ABC7EAA14F009100C24C82080081308BF1E3BBCE61E177FD443BBD782C14
        5B05FEE2DBEBE308002F9A07971F805A36A93320AFABD9BB01D4F6A2CE8013A5
        01182F1B56FF86FEDAC880D93F40CC8D890C84D085BF61A7C010A6123EF7D81F
        130920CC0888001008B30C3FBCF36D3CD18EBF5D4F17C4AAC82A0404809D4B60
        06B025D509CFA7D502F07A4C04405CEB56EFABA34A12191057FD4353EBD8AB09
        F6E43E2A1970FB07C873944EF8EB618389041066024400088436C70FEE78330A
        F920308F2770784A5DCBDEFC240400613303C4110053DB490980DE07B5AEE419
        02E30800C6FB2F5647AC739A2CD35F541B104F0652097F012201841901110002
        A10DF1BDDBCFF4843C17FAF91C7AF05B52DD32A11D4F00C439F6EAD00224D90E
        A8D6D5F86E00BD6F4942038747A2590271D5DF3FB12A323E1BE2C840D29D030E
        7B7FF819AC0183880410A61D4400088436C1776F3FA3D757EBFB2B7D442E4863
        1B0AFAE6100056937E6D0C0110D7278D0910D6E5CE10988600C8E74C0400E3FD
        4F554683B66ADE332E2D19D0C712E730A8C31419D021FC453F190938EFB89F10
        09204C0B880010083388EFDCF6464FE8B3243B6CBB1E1E53855098CBDE460082
        F79A20E6A55547C0B0AC214A9F654B5E739C019B9722583EA792851C546B25B6
        FAC7CFD856CD7FBEA52503497D044C48B1EA0F500B9FC3440208D306220004C2
        34E3D2DB4E4741CFB3EB0126DA89DAF141FA8450B500B6D5B34913101200B5AC
        990004EF53F802642100F279A5CFC6CC7F6A295B1FF133DAFE27CBC391EB4C64
        C005B16DD0342EB93D53B640192985BFA8839180F35FB1924800A1A52002D001
        38FAB417CF74173A1EE77FEEC0E5E087DF855CBE571C9755F666411A0AAB382D
        401202109C3398015A4B00C23A5C668064BB01EA20B605CA7DE4B6FFD5C63E98
        90C62C90860C082450F9478EE9A9842FFDD2AD4E1270FF0D2F241A0381600211
        800E00118099C1799FDBDFB7E7FBDBF584B0D2C2E1EA04401C17EF046C0420A8
        C7EA0B905E0B90C61930798A605E4F63A181C3D27AB9E1A98D50AA4E58EF8749
        2B8048EB23104706106985BF853C3012F09D2FDD6E25014400088D8008400780
        08C0F4E03D9FDD0FB7E72DF7248D9F6827E7A7D4D584A98500B0CF0E2D40B309
        003F94CF44004499F40982921300715D120250AE4EC2E0D43AC3DC45FB2CD088
        8F80684727031955FEEA672D819057E0A4EF7CF90E2309200240680444003A00
        44005A87777FBAB7279F07E1B91F6ED753F2D29BF6C5032302BAD39E4B0B90C4
        0F409C57830215A48239270190EBCA922130DA97E46600D775AE2D81580683FE
        943C1220EA310966D9C460CB0C28F72D0DE4365D4829FCB100FECB3501061240
        0480D0088800740088003417EFFCFBDE5E60C21E4EF4FE50F843DE97256602C0
        4A2422004A1DA09200D77640B96C1C0150CBDA0980386FF30568342AA05E466E
        3F6964403C5EAE4EC0D0E47A657C725D3219B039EE99C840162260438CBD9F7F
        360B7F018F04543D1270B742028800101A0111800E001180C671CEDFEDDB0BFA
        76BD5C286F4C0480BD482B5F1301E065D410BE39A3404E660610D7BBC202CBE5
        9310007D1CD173697303647306540575D8E791E246285526E4068DF730490E00
        B98DB43B076C885BF5B3636EE1EF81A533F635012109200240680444003A0044
        00B2C113FA62BBDE720884BEBC7255650D920045782B24A01504801D8994B5E7
        0688FA02A44B11ACB6A7ABEF6DCE80CDCA10A8B789672AB5297FF55F0DC788FD
        10CF3583E0CE12EC272B19C8A8F2D750D5AE8115FFFDE5BB57E27B2200844640
        04A00340042039DE7EE13ECBBCE7FB79B97C2EC8AE67025B656BB2DEAD053010
        0076324A025A4E00FCBE252100BC68FA044169B400710440BE4E2700C353EBA1
        5C1D978E1540AD2C4A06E23CF9A3DA061549C940E3C2BF1AA9532AC148001100
        42232002D0012002E08627F4E5F0BBBD6C659FCF41BD5667AF26642100E17BB9
        229500F0F7F17E00613BF1660051A78B00209AE90CD80C0260BA4E2E5BAC4CC0
        4871BD815615C0889895BBADCF69C94013ECFD6058F547EB84DA8AF71DFF8B95
        4020640411800E00118028DE7AC1DEE8C4772666D9F37E033DBA6A3F789F8200
        204C6600A71F006F84BF584C016E02C0EB85B044D8BF040480BF4DA605E0C70C
        A423010108CB25CB1028DA773903F64DBCE0C9CD0A98EF108EB50A4632E02002
        FA98933A0C8AF96BA2BD5F2AEFBC7EC577BF7CEF4A984520AD45FB8008400780
        0800C05B3EB617EEC93FCB13E83C1A1F6882DE642BCEB909805C87CB1930C976
        407EDCEE0BA09B01D4F3F6A8802E67C03802A0D6E72600AEB6A3E5E2630288EB
        6575BC4C0030DCEF58698B56DE8678B300FB2CCD899E19302D1910E795CFA66D
        828D097FF09FDF2BBEF795FB56C22C011180F60111800E40A71280B33FBA17AA
        F397E744085E300B74EECC6713F4FEAB765D9C336050260301E0EFED0480D594
        7237002857AB1902D39B01CC823DACCF4D00E47A92A40816E764338058FDCB82
        5A040956C72A8DD976832532E08A2120F7258E0C34D9DE6FAC437B76CF1A1240
        04A07D4004A003D0490400853E7061CFB6EB29AB7CF11A11E6F27BC7392379C8
        B9B500867800BC2F598202D90840586F58D6A505B0A7084EEE0CE88E0CE83203
        84E3CF460030D5EF686993B19C3C7F2A191004C06216906FA0546F1C19308DAD
        45F67EAD8ABAE9FC8AEF7FE58195D0E62002D03E2002D001D8DE09C0991FDAD3
        13F4B9E52084BEF47C361100F63EA126402C106DE680240480B79DDE0CE0CA10
        98C50C10CE41341E002F1FBF2530E96E80A40420A829853320A6FBADD64B96DD
        125198B501D2B6C16827C185246440A0C9F67EBF8ABAAB4CDB93002200ED0322
        001D80ED9100BCE9837BB2ED7AC057FBBDE238133C1602101C033B0190EBD1CF
        D9084070DE14132029016007F34D2500C17CD89C01136A014499B404C0DC77B3
        2621A93360B132C602FF18EF914330BBFD03343210134720499B2DB4F73BCBF8
        686B124004A07D4004A003B0BD10004FE8A3B03F1124A1AF3F9F15C113ACC4B5
        32F27B8B39C0660AB0F90298B400AEB0C0BC1F762D807D27403882A47E00CA67
        F66FF214C1FAF9A42982ED7D771300B91E7D2C28EC0627D740AD5E95CABAA3FE
        25F71190E645ED6C2632A02059701FED732295BF0B6D4B028800B40F88007400
        66330138E3037BC889767A4C658CABFC184D40567F80A4CE803A01E06D263703
        98084028CC92EF0608E6C2E10710B499800098C611B69377B62D97CB420026CA
        83DE5F3F7B1F26F7E1D7E1732C8E0CA8C71A77184C84D6D9FB93A02D49001180
        F60111800EC06C2200A7BF7777BE5D2F1704E6E9C9E765E1E056DD9BCAE5F276
        534058C620EC1BD002C485050EFB607606346D05E4E593ED06B025E9510880D2
        2FD5DEDEEAA040264D822B37000ABD81C9554C18BAA3F8E5AC64A0693E02D146
        CDC75B6FEF4F809A47021E5C99F2A296820840FB8008408BF0BE6F1ED1E33D18
        96E514E105433FFCFB871F6AA0DA4C68770270FA8ADD98D0075CE9E758085E86
        7035ED26007A79BD5CB33401690980D28F940440F44D08345197890084EDC49B
        014CF100A2E50DAB72477CFEB80C8149B60386E33165FEC37DFF8330EEAFFEF5
        3ED960224F36F290CA47C0DD287F9D3E7BBF0341F9B622014400DA0744009A88
        F77EE3F0657EB6386EA3666A685545EC61C87BC8DDE2BD5EF7FDBF7B68E574F4
        AB1D09C069E7EFD60B42E87B2BFD5CB8E40DCAA84E7542C8A62700EC73067F00
        513E290108CB378F00E8EDC85101D9BC242000FAB5715A009329200D0150CBDB
        49845A8FDB14D08FFBFE2D02D0E9FCE7300B286982FDE375484B061CDB0A03B4
        DCDE6F40A4CE153FF8EAF43C6FE24004A07D4004A041ACF8FAE1B210EB35AA7D
        3512203DE4567B7F677B44A0A55A81762100AF7FCF6E189827D8A32F4D912A98
        0DAAF7245A80D8C87E1612C08E01387706B84840223F00FF64AC33A0252AA068
        270D0150EA49400044791701E0C5D3F902E452D461220013E501F667836BBF7E
        161F81E691818683FB344BF88BB76D41028800B40F8800A4C4B95F3DCCB751B3
        90B2CB0B79081CD32276E3780220F0258F045CDCAA3ECF2401F084FE32EF0974
        9EAFDAEF8D7AED1BDE3B82F1201170690144799B2D38AD26200901D0CFBBC202
        F3B61CCE803104403E27938034BB01E2CC003667C0347E006A3FA3A680B814C1
        A20C06D5E99F4C2E309C6A7EBF5EDC4590CF158CD7468F71642303215AECECE7
        23DE87A056AFADF8D1D71E5999B2E2A6820840FB800840029CFB95C37A01D5D5
        B9600B1A033E500A9A7D39679468A1C05084992A856EF13E9EFDBD4F3E34D4EC
        FE4F370178DDBB775DEE3DBB45F8DD5EE37C1856FE362D80C914C08FA7D704A4
        0D12A4D7658B0C181B0F401F93CD1490800084E7B31100B5DEE4CE804905789A
        DD00A63A64023056DA0A539521FF5C2DD2960BFABEFCBABF7DD01382DEEFB600
        3C39931ABAD8E96018D495940C84E5D5CF2DB5F75BEBAC85110A679404100168
        1F1001B0E0DC2F1F862A6ADF318DABAB0368AB4244216F103C5218399350C947
        57BAF8A44312704B33C7321D04C013FAC1763DEFAF079FEDF8BC89F873E5A244
        C8A815B0100081384D806D3F7F703E6F270061995C6202A09F376A01921000BF
        73A618FEC9080080890424490EA4D69D9D0088F38D3A0356EB15189A5AAD5C53
        AD5503E19D0442E857EB6526146B92802FE40A5E5D5D5E5BDD91EB929001774C
        01BFFDC8E76955F9F3B375539D758F043CBA3243630D830840FB80088084775F
        7CC8725FB58F2AFEDEE044C41BCB7F892300E1874404403AFF498F047CBB59E3
        6A050138E59D4B7BBCFEE33C09AD88798FBE8500C86F5D6601D084AE409A9D01
        2E7F80A08CB1EFBA77BF66EB6F2101E0C7929901A22982339801A44EDB08807E
        CE3616F97CBAD0C002BCDDD1D23628558799402BD5A6827E33CD9B27B47339B3
        F31D0A7D147A756F251E087D210435668A24A02B3FC7ABB72BB1C360F4BC990C
        B4A7F0571308CD04092002D03EE8680270CE170E4621B6DC7B7BA6F73C088418
        7F903B96871908007B89F70508CE797FD702E6FABEA8719340B308C0C9EF58DA
        E3CF132349AAC3967DA51D195CF46D4B4C01D17A65938CA54CA4FFB26A3F9E00
        8465E5BE1A34429AC0731100B95FCD2200EA58EDCE808DA6080EEB8A9A18A275
        84F351F356EC43536BD8A76275D43B2B097BEC1723095DBEF603CFD598760085
        7E4DC40AA89B05EAFCEE1E982C0F454880D004C4390CBAC8800D6D28FC830442
        3FFEDAE32B33349E194400DA071D4700DEF18F07057BCEBD1F7920C454811043
        00FC632D260088D5DEDFD91E09686897402304E0A4B7EF823B1B8210BCA6F4E7
        F95C2E33010812ED384C02E2A08D0044E6DBDC9C9500C8E5D21000F9BC5CBFD3
        0F408CC54500A40EC66B014C0480D7A95407AA99208D3360234181F4B6E3CD00
        BC9ED1D2662857C760AA321CB951480658592D7262AD5E011B50E8EFB5E868D8
        6DD181CCB1F0A18DD7C298D7864E0274BF8046C9408B82FB38EB632592097F81
        6925014400DA071D4100DEF6B9037B8109AFDC7939C99E2F7ED83A09501FF439
        2B0190CB2471063411005CAD187C019457E09A809559C79F96009CF8969D7BBD
        BEB2ED7AA6F9D285A74B1320CA2AFE000E2F7F5D789A0AE9DB026D6D47EB0E77
        0698888C89F3652500F2AB6D37006F87AF9EE30880DC2F9D00F07B600F0B2CCA
        1AF7E40747A26680465304A7D90E18CE05F7D2C7A87F38A6B1A921A8D542218C
        73898F2C3C267F070A053CD7ADD4D3959F0BBBEE7828ECBBD331D0B3604FEF9A
        0AF30528578B50A94E721250DECA2B608E81DD0A09D0EF6B5A32D01EAB7EDE92
        AB5DBF8E153FF9E7275666E8506A1001681F6CB704E0AD9F3D1005170AB03071
        8CC1A94B40260159088080D519507C8EDF0D605E0DE7722BBD7F3FF9DD0B1F4C
        6D124842003CA1CFE60B78F8DD65725F453F6C2BE83802209B5F4D836C9629C0
        D8BEE1DE0902607252346902D23803BAB60306E72DBE00AEA04061793301E0F7
        C1EE0C186F0640845A80247E00E27CD20C81C1DC597C01443DA3A5AD50AC8CC0
        D8E4B0778FD4E753B55A67C7C451BCFFECAFE09170FCEBCAC3CEF3F7873D171D
        09FB2C398A09F53985F981BF0066132C96C7A0E4110024014F6CF9BD47365607
        F3CD1C037DFF0257A861792E2365243220D00E2A7F53BB5A1DD342028800B40F
        B62B02E009FD20280F48DBCFCCABB5140480BDD1670EA265C0610A70908004A6
        0071004D012B3C1290CA24602300AF79F3CE1192A4B4EFDA0E979000A8F56983
        33D66D360BD8B406494C015127C37853007B6F9987A40440BC364200F871B32F
        802D4570D80F3B0110C72204C0EF742B52049BFB0D4A3BD51ADAFED7B2F7C3A3
        83EC15BF0F28F4AB552EB02A955AB00B84CDAF27F8172F5E00FBF6BC027A971C
        0D8BE6EFC156F25D8579DEEB3CE8EE9ACB843AAEFE8BE551982C8DC054798491
        80BA77ECE9ADB7C2E6B147C211E4BAA0BB3057BA2F66F57E1232C0FB3FF3C23F
        99298261C5652D26014400DA07B39A00BCE5D307707BBE1F9407D8F63387306D
        3302200EA72000F82F6A005013B032E93CC904E084B39628DBF5F279B397BDA9
        9FA6F1E27C252500F2358A439C7195AE920197D9206D6C00B9AC89000404C432
        0F49A2023A09805440569FA735036421004A1F1D6600939ABE191902E37C0146
        8A1BA0EC0966C4E0D020134A4CE55FE5821F5FE5847C07EE7708ECBFF309B0DB
        A24399CA7F4ED70226BCBBF0CF13FEF97C17CC29CC01115468AA3C0113A5018F
        088C3312806D556A534612807FA84170851A96E7D44406A629B88F5EC2D9A645
        F0CBF8B647023E99B2A3894104A07D30EB08C0599F3AA017B8F03AB190F383F2
        5884AB32D0940420B01537CB19B0790440F4F3DBFF7DC183897EA4177EEF6891
        5D2FB25D2F6F11F2A67E46C60451534062022055AC087A637B60F920046C3602
        20973711814608405856CCB3A17F8A33602B0800AF57BD36B933609C16C04C00
        D436D3100014C6C3C575EC5CD913CA23C39350ADF0E713FE1ECB258F00F89F17
        F674C39B8FFA12CC9BB398A9F851E0A3F0474F7E8CF2D7DD35C7F7ECEF52DAA9
        D64A8C044C9587BD3FD4060C4B24E0168F043CA6CC7F576E0E2301F298597F12
        920119CD76F66BC0DE6F29AD945FB9F29F9F5A91B2C3894004A07D302B08C019
        17BD1893EC2C47273EEFE332F93954D05687690840F85E3852E939E4730A1968
        A533A0ADCF4A5FA382174D01677B4460B57CDD27BE7B54985D8FC734B00AC038
        0280AA5797EF442B4D01A6B948A20948BA2DD0351659F1E3F485C845BF732E67
        40578A601B01E0655433802B2CB03AAE0CCE80190840380E439B0983020D4FAD
        F704FF44706EEB361EFFBF5AADB1EF61A5E491807235D0001C79F81170FAA15F
        0A54FC28F40BB92EDF6F4115FC32421230E6FD0D2924E0F9BEBB60FDC803CA3D
        E8F2EA2E30E740EDF6242003E27C7AB4DCDE1F9F8EB85E5BB9F2EBCF349D0410
        01681FB42D0178E385FB2D174179BCBF5EAEAE551FAC883404402E6323006119
        832920030190EB6F923360D03F1F985D107FA44806968B95BE6B552AC345004C
        73EA720694C79098004815272200FA3C36680A70ED0CD06FB9CB19B091DD0069
        3204F2F36010E2B2364B2601D96302B8C202CBD78AF38D6408ACD470F5BF2138
        86C268DBB62126FC51ED5FF36453AD52636600D40AD47CE7C0635E7E149C73D4
        7FC50A7D1D3A092856C6997F0092804D234FC3337D372AE5D19CE08A40682303
        6D6EEFB75F539734014D26014400DA076D4500FEE6825EAEAAE6FBCE7B74016C
        5AC11734C1D05202C0DEE815ABF5380980D611BD1F2602E0728833ADBE93A8A5
        65642100EA3D89968FD304D80880FCD6AEB28F968DB49F306190FA39BA3340BF
        E54909807E4ED4D54C0220D7633305342328509214C1E27C5A6740B98EE1E27A
        267C65F4F70F43A958E1CE7F1E09A87A2CA0524212E0892BD40AF8BF8D571C7B
        0CBCFB98EF435AC824A054198549740CAC8C41B95AF248C013111220FB05C4C1
        B413201EADB7F747AF700A7F81A692002200ED831925009EC05754D5AC43D24A
        B7D309807C89C31720DAF788B9235EC8277506B48D6BDA4D01FE071B01886B3F
        892920090130CDB738671A878904242100FCB82AAC1B2100411F23C4C21C1590
        1F524D01CD4A118C6AFF91E246A313DD86F5FDCCEE2FBCFFB933A06F0A901C02
        5FF5AAA3E0DC637F0C69214800920FDC1D30511A8C9000DC7428C6958604A443
        D383FB2471F64B22FC059A46028800B40FA69D009CF6B17D7B0155D4E0DBF36D
        DBB074E1AFD9CF1B2500F231170168B53360B308807C7D94EC242300B6323602
        208FCB460094B1EBE3B21000F5DE80F178641E2C9A8D34FE00A2BC8B00A87D73
        1300D3389A490082FE6A0480DF83E4098282CFC127B716A01929826502305C5C
        CB82F398EEC5F8E4180C6C99F255FFB5200850A954856AB9CE0269091C75DC7E
        F0AEA37F088BE62D8534C00882C5CA1413FC2612F074DF1F83712119283047C3
        669280B6B0F7C7F6D21BFBCAFFF9FAB30D93002200ED83692100AFFFF0BE3DDE
        6FF97CEF19C0847ED03898EDAEEA1B33011045921200F91A57BE7784CD19303C
        60AA384A0094364DCE5FCD73060CFA1DB926AFCFA37D6EF206BF04BD0EBD7E79
        EE4CDA087D6E8DE3CB03D80880EBBD7CD0A50948BB3550F449BFE5AEDD00E639
        8A2607E2FD321180E06CEA7800EAB9E92500A6F3699C014BD5316FF5BF451993
        7E2F366F1E80C9B10A2300180888BD625C80729DBDD62A61FADDFD0EDE092E7C
        C3FF3595048C15B7C1439B7E09955A29181FD704148CCE81E9D056F67E2BC2D0
        4BD030092002D03E683901F0843F0AFC6BBCDF726FD0A85805652000FCFAF0C1
        AB1300F9BC71C033440094362C6391DB37CE89617EE20880DA46BCEDDC753ECD
        B6C034B101926802C47B1B01B0F53BEBCE80345A00170150CB8A3E49E7153F00
        7636BC5EB12F254D11ECBF4B4000943E2ADA0539F14E23CE80662D80B806DB1E
        9C5C0D553F652F5E2567D593B7D36DDE3C08E3C3A5C0FECF5FB959A08EBE0121
        0780FD0FE9814F9E7E4DC32460B23CECBD1FF7FE26151280E34381885B0E0B81
        26A0063607414B6B91236D62EFD7CA9BE443CD2301CF6726014400DA072D2500
        AFFBD03E28FC6FF67EC83DAA40F25FC1EC441675F4B21300017937402B08805E
        C6E40B909800689D6FA533A03E1F39C379198DC60590FB93890464D50458C695
        D51FC04600C43CE804C03447FA791701E06D384C013E01105EE6BA1980976F0D
        0190AF69840088F3E29AA9CA088C97FBCCF724725D0E366DEC87E181122700E5
        1ADF1980BE01A5AA4700EA5CA6FA17BED823017FFFC66B1B2601183A98450DF4
        49C0831BAF661105C37E15FC6D825D909C00B4BDBDDF2FAFD7A294CF4C028800
        B40F5A4D006E06B6354D7F48FAAF2E02207DD00570A304C054473308805CBE5D
        9C01F5F968961620090190FB131736B5A13C018E6B92A60D56E6CB6006D00940
        783FE209405856EE577A02101E4F4600D4F3C99C016D6680A0DD065204ABE7F3
        3038B52A4CDDABF5499F7381CD9B0660A8BFC8830255B90F006E0F2C956B4C3E
        C9CF3324019F7AD3759948408539078EB3180148006412109A03F8AA5F250100
        6E2230A3C17DA4830D097F717EE54FBFFE426A124004A07DD03202F0DA0FEE8D
        1EFE838AFD3E1048FE6B4602C0EBC8590980386F1CB051350E4AFDCDD80D10F4
        AB8D9C012373988100B8E6CDD517751C0E82A6F90398EDF46E53808D00C4B56F
        2200CA71C3F81B260072BFB595B38B0084EF4D6600F13D8EEEBB77F90218FD00
        94FE352F4530AEAC834C7C867189B1C926010124017D5B26D9EE00EE0350638E
        81C1F64029F914FA047CFCB495B0DBE203210D5C2460B23C048F6FBEDEEBFFB6
        F05E25D204CC1A673F77BFD5F3A949001180F6412B09C072E0EA7FA3DA990956
        88AAB0F572A908807471160220DA68360190DB68176740E35C8BEB2DCE80FABC
        45FB65BE9F7A9F22F3A0D4AD566C2300C6FE5BCC07491206C9D7A42500B67956
        E6C46006B0130056C24A007859D796C0EC0440AED3952298D76F270171310186
        A6D6B0C43FA62F8B2BAA9EA8B5AF6F1836AF1F531C01CB156E06A8D578C02031
        F6C53BCD83FF77EEF7E1C54B8F8334B09100914EF8C10D57FB24C0BF5F010930
        390636D7D96F1AEDFDEE32755F13F08D558949001180F641CB08C0350F7DEEFC
        9FFDE27F2F1B199C6A1A01E01F43A1E92200A24C64C0190880D26E830440AD23
        DAD7385F00D3FCE873389DCE80B6B1D922049AE648ADDB5C71D44E6F9F0BD3C7
        A42440B1ED5B42038B399009802893D419D01D1488F558FD1C4300823EA74811
        ACD493CB41D4C9D0EC0C98440BE02200C5CA288C0BC16921007166017C6AF57B
        2460D39A51E60BC0630470E7400C1B5CF3030789B12DEC990B9F7BCF0F329380
        627992E50F98280D594880AC0990F3076C17F67E7399BAA6094848028800B40F
        5A4600AE7EE093173FB9E6BE2FDEF187B5B104407C8E744E52EB9BFC00B21000
        B948160210BC3711803A7F4D4C000CFD4D420094F719CC00EA7C9AEF5FA37101
        6CFD89DE0BBBF9406EC0A50930CD855E2EA929202D0130CD65122D406A026098
        20932F803B2C7058AF5C877AAD3CCE6CBB01DC04A0060398EE57174839F3AA5F
        2703BA59A0CF440230405055250188453BCD6B0A0990D3098724A05F9A73B13B
        A0A0D433CBEDFDDA455A3F7C4DC0E5DF5C1D4B028800B40F5A4600AEBCEFA3D7
        14AB6367FDEF95B742A95833FA01642100E27D230440ED87FE70961F9ED97703
        880042DB8333A0A98C6B478029B67EA304C0DC96A19843A89BC795CC9CA1DFF2
        B46181E5FA6502109C4F6206D026C84E00442F21D61930A8C7480010D952048B
        AD72BA33E0646580D9D0A39DF0CBC8B1980DFD543F7301D8B76D0836AF1B9752
        069B3501884648809C4E5827014F6EFD13F44D3C1BDEC3208910770CDC4EECFD
        36C12F2396041001681FB48C005C7EEFFB6EAED5EBCB1F7BE23178F8EECD0655
        A9FFDE620610E55C04402907C9FD00E46BE2520437BA1B40A0D9CE80A639D2E7
        B159CE80B6323987AF801E5B5FF405BDB6936C0F6C469860D3B924A600130948
        4200C4B5490800EF8B76DEA005489B21309E00F07A952A131200B9CD2C19023D
        510C8353EBE20593F8E268E3D5C72CA3DFE113C00307A9E6804FBCE31B70C45E
        A7415A88D0C13209C063184AF8A9AD372BE984854F00060C92D10EC17D1AB0F7
        5BFB24F1AC953FFB573B092002D03E681901B8ECAE73BDAF60D963C8E370CDE5
        0FC71200F6DEE40B60B2FFC71100FF60330880DCAF460980D2AE4192A57506D4
        DF8363D51DA70588D405D9760498EA160440846D6D8400A873689F17972620CE
        1C10A7051004C05876860940783C9D19C014504821011602C0EB8F5E2BCAC8FD
        9F280FC254655889AD1F0B878F804E0606FA8761CBFA7126F051F8D7ABE295E7
        12C0FC01621E0ADEC3E203EFBC00961FF4D164FD901026110ACD01229D708404
        045103BBD87DD84EECFD2EE12F8AAFBCF2DFCC24800840FBA06504E08777BECD
        ABBACA82663C70F75A58F75CA8F6930900FBEC72066C230210B4DD0402A09CB7
        1000BD1FA673710440ACB8E3B40091BAA0F14C816119AD5EA55F6E4190264CB0
        722C863CE56384B47C3C2D01D0E745A9CB400094F673B92611007134B91F40D0
        474782A03833808D00A040199C5C130896C404C0306EBDEF321918191E814DEB
        C679EE00591BE0BDC7A6AB959A52653348C0547994ED125049C02352E9BCEF17
        5000F58131ABEDFD610D356B7123092002D03E681901F8EEED67D459908F7A05
        C6C727E1A6EB56878DA62100CA9B5000374A00E4EB9AEE0C08D1B2499C019B41
        004CF3280840104D3043A640D7793187490980695CD3A509B0F903242100E25C
        F0B54C490262A3024A27B2A408B68505E6736D2701693304BA9C016D0460BCDC
        CF22FFC9E349AD09B09805F4B691046CD930C1843D460CACF80E816108618904
        E45013F00938F1C00F27EB8704399DF05479482101CFF5DD01EB47EE67E5C438
        F3B9B93E09886236D8FB4DFD72087FF179E5CFFF5D25014400DA072D230097DE
        FA86CBBC9FDBF92C4E7705E0E17BB6C2E6B523E12AA84102107C6EC26E00533D
        8909403808ADF2D61100B94C5202A05CE3B5830E52CDC814689A635D93E22200
        49340169C3042B9F0DD70822944F600ED1C7D17202E09F4C9A21909F0B9D0193
        6B0120A8BFD929828370C5FE39749E1B9A5A675C5DCA1A82669001D1AF618F04
        F46F9E0C520763D020BE3B809B056A2CB36098E9F3FDE75CD0141250AC8C43B1
        3CCA48C0A691A7E1A9BE1B94B1E67C4D80E8E70C24F3F1D1347BBFED12451320
        93002200ED839611804B6E3AB9D7FB92AC42B68D51BA06B64DC183776C521F82
        1A09888B07C05FD2E50590CB44061F430010363F00FD7D124D409A9800490980
        F2DE2274E3E20284F36A6CA6615380EC0C68ACDFBFA7E2811CADDB3268E990D5
        1460B94E1000FC6EE61D26912C0420B8360101E0F39B8100489D4A4200F83C9B
        B5003A01908F491456E9781A67C0D1E21628D7C6FDF6EC49738456C0395EC3F8
        F57685801C1D1E63CF1D1636D8BBCF227C30CF245865E440DE53F8FE77344E02
        4A955198641103C374C20109F099671EBABC97AEC89C4D4F709F96D8FBA37546
        AAACAFFCC5B7D630124004A07DD0D25C00DFBCE1C49BABD5FAF25A95E7F07EE4
        9E2D303A54D48490FFDAE60440F4B51904406E7BA69C01A3EDD885BCD9694EFB
        9CC21740270349930699FC015CF310296A19635A02C0DE6BE38E94B51080B0AC
        DCBE3676CD0F80B7E72600A24FB6B0C07C9ED33B03C611007EC81E130033FD8D
        14D7699D16D7BAC94062384C02E3E363D0BF7512AAA80128739300330D543909
        28CB24C0C3F2538F80F71DFF8BE46DFB10240057FE7A3A614602B6FD4EED5B0E
        49402130096C07F67EE367AD0E46028800B40F5A4A00BE7ADD6B967B82DF2301
        9C790F0F14E1E987FB121300765C53E5B69A008459F7E4076754B59EC519D044
        00E4F33602A0F7C35C87F984BC05CF34E6481FF4BAA03102A0CC974573DBCC28
        81334900E43A4C6680E920004A3B296302B81304650B0A3456DAC656FFEACA5E
        6802005C64203509B0A899CAE529E8DB3CC934008C0054B959009D04D159B05C
        AE2982EEA4538E84F71E7F65F2B6C508B44C823209D838FC383CED6B02445BF9
        7C372301796DDCEDA0F297FB19D49052F85B64CBCA4FBDF6E61540680BB49400
        20BE70D52B1FF4BE38CBEA7E408EE71E1B80F1D152D881A404C0FF902A1E80B8
        2681336096DD00CAFB661000437F9B4100E4EBB31080E0FA84A6001B0150CBB9
        C6959D00C89F8D04C0677826929373CEAFBA1B40996E476E00D33CEBF72D3E28
        503A6740790EDDBE00D909805CDE460070F53F5C5CAB1DD76F8A890CA86553F9
        07F873A2334D2401680E40A18FC21FC900D30454EAFE8E014C290C8119EAA493
        5F0A2B9A4C02468B5BE1AF1BAFF208C85438FA3CFA0314D836413E5615ED60EF
        67353447F80B5C5BAFD5577CFAF5B70C016146D17202F00F571C7FBEF703BB0C
        4D00E87836325C82B5CF0E45FC000401D0497C1C01E075A80FDDB62000C149B5
        EC743A03EA7D76C505689533A0718C4AF98C04409E2F23E170F433A76A7BE4B1
        D90203252500A28E38A2E5F405484900F8F1645A00565B901F200D011028A8DF
        2F4786C0F1521F94AA63919B6017E6162711E99A46C840B95282A181225470E5
        8F02BFC4B501A5127712444D80BC43E035CB9B430226CBC3DEFB719649509000
        2424025D5D9C04E4725D4A3D6D16DCC776495AE1CFE4808787BCBF938804CC2C
        5A4E00107FF7C363567904A097A7ECACC19A6706994D2EE884232C701A0220CA
        378300C8F5236C510183F70E02A0978F0B0AA47AE987A766DA1930A8271F5FC6
        B52D502D67EB5FCE59D63490549A00ED6D5A02C05E8DF3978C008465E579B511
        0076D6702C9C141B0108CFC51300A51E7D951F94B0670894EF5FB526D9FE0D04
        C0EDEC672702721DA9E1F5B3549A82B19132944B55451BC09C048B557F874035
        B8E4D52736870460FA63914E9891800D3F678404818FE0AEEE7CE01CC88ECD02
        67BF187BBFB99F35E5FC435EF1933EF30622013385692100177CE7E5E7576BF5
        CB90656373C3835330D4371976A2C504402F1399049F0098846E6267C00C0440
        1E9F6B3740B06D2D290190E7AB89CE80413D0D6E0B8C9635F52FBEBCDE091B01
        B0F65312D4490880685B77FDB08DD5E507109695E735FA3D48E40B9028268089
        0084F52AD52549112CE6CF620640CFFF4A6D52ABD830B7B182BC493E02124AE5
        124C4E54A0E4097C933640F806D47D0978D8D12F820F9C70152C9AB734553BB6
        74C23209C0BE08081210F98237DBD96FFAECFDDA30EAA63A98268048C0CC605A
        0800E203FF7EE460AD5AEF11D9BA06B68C075A803404207C3BB3BB016CFDB0F9
        02C41100A58C85D808CC943360D07E934D01697704D80880AD3F1113895698DB
        E1EDEDC6110079BC2633403309807A4C9D10778AE0F06A971F80528F762DAF37
        3E453006C3192B6D31CFB778DE58CC0242C51F082DF9F9943347494C6D16F031
        3636C91295A136009D949110E033093FE3712401A2FD7D0FEC818B4EFBBFA692
        80C9D2203CBCF91A189D0C33097675E558D440C58FC1815960EFE765CCC25FE0
        21AF8E93FEDF697F211230CD983602B0E2EB875FEC09FE2FE2F7B3E67DC3A6C6
        CB303E56E69D701080E0982ECC8387B72A2CDB9500C875B5B333A03A2EE374A5
        4A14A49711FBFDF5F1A6D502E863921B49A50948A00550847A0A02A07C8E49C5
        CC4988745E59C1C768011A220061BD5209E3B52E02C03F722DC0F0D406B62DCE
        790FF5E3F53ADF97EF9FAAD542873CF919257FF70AC21A91CF731B7A8AE882AC
        5CAE0013E3134CD8E34E2526F47D6D00F6A53455E15104FDA041FB1DBC135CF8
        86E6918072B5E8FD4DC0FDEBAF8C9000B64DD0318E5966EF4F5207D304100998
        5E4C1B0138F72B87F554CBB555D55AADA7EA3BDC2009E0EA77A943AEDD000E02
        C0DE9BA202662000F2B186098074BC5D9D016D04C0D436BB3EE5B640D3F9481B
        CEE8858D6B025CFE006909803277DA98F5FB692200FA395157A304809FCB3795
        00289F9552052301A8D426606472AB3F9F76C287C0E3553F468800AEC41D8A82
        601E85B94E00EF9D2004C2B33E960CB0E43C25DF14500BB4016802405300FA06
        B07315BE8D19D17BE0E2864840B13CC9F2074C9486AC2400C78E73D7D5D56DEC
        7F1B05F7718E3966D56FBA9EF9047CF6742201D385692300AFFDE0DE3D73E777
        5DE67D29CEAAFABE00AC030602C05E4D4181B2100008AFCB4200441BCD20007A
        7F67CA1950AE67BA4C01F685A0F97E67F20748600A88BC379801E2C202BB7603
        98089D8964C51200E984EE0CD82C02A0B6154F024C04402D9B87D1E2C6C0B92D
        1FF90DE7782C7E4DE0BB10A304527E23FADC22211064C0510160D2B272B91CA8
        FE717152F14D0048000419C06716B6D52C1220320996AA93010918990835019C
        04A8FD6F87E03E4D50F947031F851F99268048C0F4A0A504E0D40FECD9E3BD9C
        E5FD9DE93D1CCE320AEDB40420D8C76D200336021054602701615FA242A4D5BB
        018C6D19884DB39C01E5B1D8C7DE5C02602B13973320719E004B03B639311100
        794CCD0E0AE48A0AA8B6AFCD8BC11720495020D12F9B3360562D4038DE280140
        A7BFD1A96DEAFDF32F132B7D140CF8EABAA7DD73F2B068FE8BD8FBC573F782EE
        C2FCE05CDFC4B3ECB55C9D82D171554698C880D00C588980646B47B305128092
        58F9FB0E82E522FFCC760BD47962212401E79E7009F4EE7234A4019200CC8D80
        5103274A031112F0F8E6DFC19691E759597C3663FFBBBB438D86569BF26996D8
        FB5DC25F5CCF48C0E7DE782B918016A3E904E094F7EED1EBFDBA51E89FE7FDB6
        96050D499EC7990980F461260940703E4368E0663803CA49746C7394C5141096
        695E9220B9FFCE3289484A0C1148410082CFDA38A79B0084758B39D5CE474C01
        6E02C0CBB97C019A4F00C4F9D1D2266FD55C8E740B1F31152DDA9EDCAF9E854B
        60C9FC0360B7450742CFFCBD3D813F576953DE1287AB75663A60AF35182B6E83
        91A9CDD03FB11A06265F80C9C929E55EC8ED9856D4FAFCD56A45284E55B916A0
        CC1D022B3E21E07F9C04E05076D8B11B2E7AEB7761BF5D8E81B410A183651280
        C73094F0639B7F0F1B061F57FA8EA448EDF7ACB6F7DBCF877510099806348500
        30A1CF57FAE7797F5CE84756CAFA032754D5652100C6BA9A4000E432AD200072
        B9A4CE80617B6E53804BD899EE4933E30258DB8CD4679BFB2424259B26C066FF
        371100753CBA90361300F6D932CE383F00BD7FB6A880BC8DE61300759CAA2921
        7A2D48F5AACE806CF52F39B26195C291AF5AA929419710DD730AD0BBE418D87F
        9757C1C279BBF21AF3DDFC35D7ED9BDD781B355FE8B357A8F99F71EF7EC52302
        65460A2A35BEB2C6ED751B861F812D638FC354B1189D22AFDEAE2EB769C013FD
        DCFE3FE5BDFA2400FD028A539540138009850409F8E45BBF975A138008930885
        E600914ED84402BAD80EC1E8FD9F0DF67E531D0EE1EF8F8B93807F2012D03264
        2600279EB73B0A7A6F959F3BCB13B4BDD19A931300F65E8A08287F96AA8B7C88
        0B0BDC280110C79A4200A463699D01C3F6E2094098CBC03140BFEFCDDA16C8FA
        9264952FF55F1708490840646E8C6D983B61220169CC00363F00714EF9AA49E3
        741180C8F98404207C6F1ABC28EBF205684C0B602200A3C50D81173F82AFFAF9
        F63A79DC73E616E0C83DDF04FBED7C3C13F85DF939DE2BFE753181DFE5AFFE79
        B522514E1898A752AD78FF561909A8D6D04BBFC84840B55666EF6BDE7B4106B6
        8D3D031B463C32301C4D3E139A06EC8E76E81720043ED704701280DA81D25495
        8D1189C08E0BBBE1A2B7344E02A6CAA36C978020018F6EFA1D6C1C7A52295FF0
        1E6A85AEBCBA5552E9F88C07F749BDEA37D611BE2512D042A42200AF79CF6ECB
        BD87C199C057FBBDAC02FFC75DD07F431909007B6FD80990850044FA1543024C
        42501752260220E7159706616840AD4B20CE1950EE938B0018C791D014602300
        727F9210005739D7CE005B7C00FB182DC7536802B21000713C8E0004C713CCAD
        899CC4A5086E8C00F012AC1D0709D00940B45E2EA031D9CFE86418DE1B6DFC55
        C9735E8CF9B0BD4E82835E7432EC30778927E8E779C27F1E7477CD652B7E3EE6
        2EEFB7C0DB2C686171ABF50A7FF52518AEFE91043081EF09FE0A230053CCC90E
        C9000A512C83C771BFFDF303772A2B6A312E6116B06956D0A191EF06A8F94182
        6ACC44C08881F787DD691E09C06881430A09786AEBCDB0A6FFAF8180CC31E2C2
        FF942F4C7B05F7B1D611B7EA67C722E3E024E0F36710096836121180579FBBDB
        F9DE77ED8BDEDBDE6852173B01E0E7C547370150CAC605056A9000C8FD06F369
        2B0110303903CA64200B0190DB733903CA7D30C1AA0948E80BE0DA16D8883F80
        8B78A50910A4CF9FF5BA1813899954AAE331EFD9CF19BF97C1D733250130F5C7
        4E00D8D9C46600D12F5B6E80240400B4EB750230C256FF42EDAF0A7FC49C795D
        F0EAFD3F00FB2C398AADF4E7742D60C21F05FE9CC21C088308A942DF05E14C87
        C400490117F6538C0CE0D63A7C2D55272244E0B12DBF8181B14D917BE0F20F10
        CE81C52995040833010A56F40B4073C087CEF8061CB2C7A989C721B721938062
        651C8AE55136A60DC38FC3A3EB6F50CAA31600E305043F7609B3D0DECF3F9BDA
        D176071009682E9C04E0D5EFDE15BDF8AFF17E99CB5961C3833A8E00F032E250
        BE3904C0FFD06C022017C942004CEF9BE20C28C66B70067421273D1F22F6EE26
        8708D60980AEE24F32E791314BFDCC640AB0745616B6CD3003C41100A54C9308
        006F2F5E0B20FA154700C2BEA4DB0E58F484ECF8D448300674F6C3ED73A2CC4E
        3D4BE0A4032E82253BEC0373BB17B2D57E77D71CA6FA4F23F0E3200841A95A0A
        4C01A5CA04FB43612A1381818935F0E8965FC3D4941AAA1857D5712420D82110
        38068624A0EAEF7238FFEC8FC3AB5FF2C1D463904940A9320A932C6220CF2488
        7E0D4802D4EDD39236C0C72CB6F7C7D759E324E01FCF2412D02CC411809BBD97
        E56078A00515344800E4A28D1200B94F72593D1E80DCEFC8846802B05504402E
        D76C6740735DA04866F7EA3A3A4769770598CA254ACA6421007A3FE3088072AD
        617C7104408CA7D97E00A679089C6153120076382626007F95DA898D09602600
        FAF5A2CE91E266B6FA17CF1124006C9B9FF7BE7B6E01CE7CE957E0458B0E602B
        FE79DD0B80470B6C9EE0D7216B06507D8F2B6814A8E5CA64A011400D41DD2308
        CFF7DD05CF6DBB53B9DEE51BC04845293401E02E8112730CE464A0C6529E3787
        0460BFF574C248021E59A76A02F2859004B4A3BDDF5826A5F0D72222B3B0C15F
        38EB3622014D80950078C27FB9F77233FBE02000ECB88904642000A2AC2B2CB0
        FEC016F5E40CC23DA205484000E46271CE8099088074AC116740F970A3BE00CE
        DD0429D205B3797198024CFBB4EDFD8D7E073213007DCC92F08F924A752C6982
        02B15769AC91B20E2D804E486CCE80B21F40F8D93E7079C59ECC0C903C3740A9
        3AEEADFE4783873EAAFE31A18ED0FE9C72E807E1903D5ECFF6F1CFED9AD752C1
        6F8208BC8344809180EA04CBCA876400052C0AD5518FC0FC75E32F23DA80EEEE
        1CDB29A09B5B708780D81218F8064CF15D03480C9A4102F44C824948801C0991
        D5317BEDFDDA35C6369826804840E3701180CBBC97F3D9878404006176BA131F
        F38A9DDCB8BA6A010108FAD5200190DB6BC66E00BD6C1A674053BF5A191740EE
        4F5602A0D7178DE0669E175B94C0C466007DCC39F3AB5E260B0160EFC1AC3D8A
        33AF44FA03B614C1CD2200A2B7EE0C81B6DD00C3939B99C017F712DF8BCF7B2C
        ED85B72EBB04E676CF6FBABA3F2D98FADE370DA02045B3C0A4BFE54E84E27D72
        CB8DB061E0894810A120431FC8898AAA502C561412803B1E8A93D5692101485A
        EE5973B91F9DB01EF415FD029004345BF8CF80BDDFBFC6D9060B1BFC4F671309
        68042E02C0D5FF88AC04405C0442486AEAC40C042028DB6604403E27BFB6CA19
        D0D4AF2C0440EE7F1A5F0097190055C0794D00AAEDE514AF664BB78CAAF6683F
        1DF7512700411449D33C6B73DC0202A05C9F9600F82762C3026B8337F901C8C7
        B3128089CA90B26AC6D5BFBC0DF09CE3BE097BEF7CE48C0B7F0139029F300BE0
        BEFBA2F72A02F0AC1E78009EDE728BF2DD142440F80588F99663059434122052
        0A379B044C9687BDF7E37E3AE1CD70F7EACBD9F6C4E03EE5380910DAA3596EEF
        4FD206D3041009C80E2B01F8F025CB563D7EFFA6DEE08041A51954929100A8AF
        1096CB400094571701086CE031ABC75C630440799FD20C606A4F3ED1CC24417A
        FFF306019F755BA034DDF679B6E43B88CC658630C1C6EB2CC2D6460022F31FCC
        A7AE0192CE43F43BD82C02C0EB8F0AEA241902F571E06FBF1E5C6F2208D26A98
        118450C73C3CDEA7D4C56DE0BCD9FD763B1CCE5EF62F33A2F68F831E8F5F3809
        8AD5353A083EB4F16A26D0C57733EFFD30A391F8806902B8EABFC2FD01984640
        D50488D0C127BC6619AC78C54F33F557260168C210E98447A636C13D6BAE606D
        8AC7B8D004E83F8B596AEF37B6A3A71206220199612500DFBDFD8CFA95DFBD37
        3CE070886B06011045136706943ED8C202CB6575D3442A7BB461ECCD220072B9
        697506D4CB38B40071616C4D481A26581E8BAD7C53C2046B95374A004C7D936F
        771C0100A58CF61B882100BC8D185380C10C80BFF4BABF9F1E404490ABF9F5D4
        ECF5A1E31EE4031F8052750C26C62B01C913AA7F7C7863B3A71EF64138BAF7ED
        2CC04F3B42D606C81EF7681210ABEBFBD65DCE488080D876C79F61F217AA1698
        036C244068021A2101A674C28204DCBDFA0A4D1300BE26C037B5CD80BDDF5887
        7E3E9DCADFDA0E1009C80C2301B8EEE12F2CF3BEEA0F5E75CD2F61EDB303FC60
        930800FEF0D2E40568940088F259B7039AEA4AED0C68934D0E2D405202201F6E
        666020F71C349F00C86DA4D10424F107306901F439897EA7EC0440EE634EF97E
        FBC7A4F134EA07E04E11ACABEA2D24C0FBCDE16A95BDAD877663B369211F5BD7
        F0F04420EC11E8818EC24FE082D75D0D0BE7ED927AF52F04F3FAC1C76055DF5D
        B069F449189C5C8DC17F59BB8BE7ED097B2C3A02F6DFE5844C01774CEDD956D7
        6812B867EDFF2809879826A01BEF218E4B482B3E09A55239081D2C9300C51C50
        ADC10927BEACE92400FB7AF7DA9FC0F0C8482074F32262A041EB13873672F6B3
        963780ED0EF8E29B6F271290023602B0DC7BB9197F10DFFFEFABD9173B3301E0
        852351019312005E7FA43AB5EE19260061B96C04409F87697306940EA4D916E8
        1288411DF9F83291F3191C02E5FEBAA203CA02CBA40550CC1592A036F901A8D7
        AAF3C7EAD2C694C50C20DE67250062752F043E66E333920ABFA1A4668562710A
        26C6D4843FF2FCCC5B50804F9EF287C4AB7F79FFFEC3EBAE81FBD7FF0C36AE1D
        667DC67802983A1CB50BB52AF731100186E62DE88265CB0E85E5075C9029198F
        DCBE49B00AE740240123636194C39004887912DA1360C25E26012260D09477AC
        952440F4F5AE353FF6C8D98874BB7CFF859CD004CCBCB35F03F67E7BBFC3024C
        13402420398C04E0DA873E7F91F705BF04DFF74F3C0F975DFA672701088EA1FD
        A9C30980DC8F467703C8FD68893360A4BE04D727508BB33A5A44004C732DF739
        4D844093CDDD44005CE335F902E80440948F7ED7E30900EF439404EACE80C129
        DF4BBD56AB32A16FEA33D6B764C17ED0336F1F58346F57967D6FA7F97B47E6AB
        EAC7E01F2F6E83B2B7CA1C9ADCC4E2EB6F1D5AABA8C7E531ECBDDB0170EEB13F
        885DFDCB827FD3D0E3F0C7A7FF19366DEEE37673DF9CC00900DF5AC89C0C598C
        017EBCEEBBBAE3E3EBD097EF027F73C43FC0A17BBC0EB240F70BD053F4DEB376
        258C8E0F07EDE1CA5A2501E17D9035012293A04C02B0EF580933071C7F79D3FB
        2A488078AA0B27C638CC127B7F6CF99A9F4AF84B6FBD83484002D808C0C5DECB
        17C517FCE94DB7C1F53F7B8A5FE07830A72100E27A6BBCF5563B034A7D364E8C
        B422CC4A0022731411BEE6B99C366740EDE266470764F5C404078A74C5503E0D
        0188CC93E99A040440BCCFE7EDF54684BAC50C602C9B338D35811940EBB0AC09
        40C18F821105BF1C314E60B74507C3EE0B0FF15E0F617BF331142F2F13FD71D5
        EB6ACCFD3AD3268459F7D0F6DC3FBE1AD68EDC0F83FDA341FFF6DAF5C570FE2B
        563AEFB1BC3F7FFDE0C3F09BC7BEC4B40A2CB94E958711669904AB758504E00A
        BB56F18EE1F98AD797AA2F00FCB11E77E2DEF0D623FF13765B7C20A485EC1720
        A7E89549C0C8D8B072EFC258012AB09F28FC458020A109989CA8B0B10912B0EF
        813D70D169FFE791B0A54DED2B9280215F1380D3835F33A609B03CEB6699BDDF
        7A4D4D4D257CB6470256A79AD80E8491005CF3D0E72EF6BEDA5F6405727CABD1
        5FEEBB01EEFDCBBAA61300B9AE661300D1A72C044069C35257AAED80EC83A981
        E85C4E9B33A0B1AE681D334D008CE3D7E63B9543A02E881B2000F2F1661100BD
        5F4908000A7F5C21337928D9F8E7CCE986BD16BD1C0ED8E555B0A3B7DA67A178
        BD153F7AF4F3A87CF920EDAE8C9ABFFAAF3281CF33EFC959F7585A5E76ACCA34
        04AB06EEF584F9A3B074D17E70DE713FB1CEBFBE82FDC5831F819161BE9D5008
        05F120473280BE05354F606206BE4A390CB6835BEECA15EE5C07D29877583807
        CE7ADD3970DAE19F852C1091F8E24800BB2F059CDF3C9B47112340402601FC15
        9307D5424D4099A738EE3D68A74C2420AEAF4F6CF93DACDE1C6612C4AF1A730C
        D41ED0B3D4DEEF12FEA20ED4009CF4E5B7DDF150EA89ED20D808C0F9DECB65E1
        FE5F4E02AEBEF657B0F6F981F062030140349A1990D7E5BF5ACC007EB5334E00
        046CCE80B104403ADEC86E00F9B02B478069D56B2200CAB82C0440EE579C604F
        922ED8369E30B1513202609C2FFD1ACB6ABB5102208EEB6600FD3E9AFC0094BA
        A4FEC41100143E2204AF8C7D962C8323F73C13E677F7B0043C22110F13FE100A
        7EA1099081C25D00053F5BFDFB59F76ADE1F0A1A41063085EFDCAE1D5886BF67
        B7DE02271CF07EEBBD9585D6E31B7F07773C7375708EC5E2F756AA2854703CA8
        C92897B9773D0A4C54A7A31F001EAB32157B85910034C1D76A35265870DB1D7E
        178E3F752F38EFD82B9B2E583160D0FAFE27C2EF5D816B02727935452FBEC77E
        8A7C01BA3900B70F22B169050910710D1ED9747D4002706E5059D165D82228D0
        06C17D52AFFA11353B89211210031B01C02440ABBCBF1EB685C87FB2A153E0D5
        BFFC2D6CDD28927F242700FCBCF8D87866C0A0DA2C040000929280340440EE67
        B39C01B31000539F8CE331CE855A7E26B605C6666AB410812409836C0440BC97
        E744994B475020D15692E44041D90C0420382F375CAF337BB3FC3BDE61FE8E70
        D49EEF823D7B8E60021FFFF2DECA1F053E26E2C154BB4932F0D5FC2D837AD63D
        2404E54A9109192403A82D40E1BF60CE4EDEDF42AB03A0F0BA9F280EB1CC7C7F
        7EF61258BFF539BF1FA19A5A440B45D57FB9540F32F0A1D0AC947D618A1A812A
        D70E9450F3E1ABD6E57938E0D025F0DE53BF05FBBFE878480B97607D74D3EFAC
        2420B84F3E19C03EEB9A00B13B809100E6EF506B0A09907D02443A612401AB36
        869A001EFA1B945801D311DCA745F67E4399C8014E02DE7E27910003AC710084
        1680159248003A05FEFCB2DB3C265BCE4C00F8A1C632034AD54A0F73031948E0
        0CD80A02A0F421A119402FDB6C67C0685DEE7B14195703A60056570A2D80DE86
        710EB4F9368DD94A02668000846DC41300BD3F112D0080EF290FCC435ED4B5F3
        C2BD9967FC8E73770ED2EECA42BFD1C03CB2F39E48C1CBFB5560E6054CF8E322
        0093A531182BF6C178B11F6E78EA2B3038C017135DDDA1B39AECB55E11821F9D
        00FD0C7CB833A0EC0B50240155D40EF8E600E13320E663E1E2B9F00FE77FBF21
        126012AC494880008E21C81CE86F11447300FA04542ACD26013C9D30EE12107D
        7D78E375B07AD3D3C19CB2F9EEE2DB0475CC427BBFFDFAF02091000B9CD9003D
        12C0F201E8A680D5C377C2AF7EF4586A02C0CB405057783A0791954F060220EA
        52EA9DC1DD0089F303A42000D1BAECCE807ABFCC75454FC6ABD6ED04C05A2F34
        161CC8390741F964A600590B609A8BA86629F96E005754C060EE22DF75BB16C0
        4600EAFECA5F6C8BC3C37B2E39144E3EF022983F675120F85B198A57D8F35133
        50F03A18473250488D1507606CAA8F91803F3DFB6F4E0220C0ECFD9226409000
        1E7C4725017CBB602D981731BF1F7DCF2760F9411F4B3D469760B592005D4BE3
        41D604E8C182587F7DEDC5D23D76800F9F7E69A6AD8DAEBE3EBDF5567872ED5D
        4AF94217CF2268DB26388BECFDEE4E40E813F09577100990918BDB1BEA910096
        13402701F73CF127B8FDF7ABA2159A1C013310005176A609805C346D68E02C09
        829AE90C88C84200E471C45E1FB34FDE04394CB0ABACCB1410B733204E1360D2
        02B40B0140A000137324677B13D78AE87B42D0EDB468299C7EC81761D1FCDD7D
        9BFCF486E1453210D71EA6E3C595F4F0C46698F404D49DAB7E0C1BB6AE61E770
        6CBA09409E5791400C81C27360EB944F04B886009D0445AC002409484AAA526E
        02BCF463E75F382D2400FBD9D5055C1B20C5C2664E8C93D160413A0998B74337
        7CFA9D3F680A0908C31C4FC2BAA147E081E76EF0E79397EFEACE19F376B483BD
        DF744D5AE1AF7D1CC204425F3D87488040120280FE000F7A7FBDB2290005F38D
        B7FF061EB977935AA16327003F2F3E369100C8F5C71000445A33802896649F7A
        339C0145F9469D01457F6CE389CC61A4BEF0705A5380B16E5157033B03F4B259
        FD014CBE004908805E57163F005B58607CC8E2034E5FBD8A39430189AA5B7DF5
        8F78C731DF825D767C3153C13743D5DF0AE804E099ADB7C0C3AB6E0AEE87492D
        ED2203539E30EDDF3C69340754996640D3043012809A808FA7EE7B1C0958D7F7
        B8D2471E3A5833D9F9F74DC40940C15FF6530BB78A048830C722D7C1BAA107E1
        FE67D574C2A809C0AF99D821D066C17D1812DAFB9DE7FDCF4C13402480239600
        203C12B0CC7B414D80E214883FE8ABAEBE1EB66D1A0D2B8C2100BC8C9D00C845
        53850576F801887EC90FDC2CCE80490980DCF759E50C18A9CF5C474408270C0E
        14D495C0DC62AADFD8B64313E0DA1A181715102CE34D9A21D074ABF5A8806285
        8FABD88000485A11FD5AA6AE9552298B9FEE917BBF9179DEBBECEFED00DD0430
        591A821B9FFCB627FC6AC19C7519B6AA85F31C250308240163A325264CCB95A8
        3940D604203EBEA2752440EE6357774125013EB8F0AF1853090B1280026FFE8E
        D949802B9DB08B04E8CFC05968EF37F7CBA009F8DA3B890424220008D3D640C4
        58692BFCCF8F6E604E81ECB82D2C70AB0980FFA1D504C094B9CE4500E4F3CD72
        064C4200E453599C01F531B80880DC7696D80071E5D5FA2DE7633401A90980D4
        A92C0420A84B1B83288B3FBB9A24C4E507A74C207A162F6291DDE4F1E3EA525E
        D9BEEF84FF819E05BBB7B5F047A0009D288D3207401448131E0178A1EF0E7864
        F52DE1FC1600BA1D416BD4790FCB0C0F4CC1507F919100A109E05A92D6920054
        B117CBA38C046C187E1C1E5EFB3BA57F2C26BFFF272034386CF5EF93005913C0
        CC19159EE10F49C0A7CEF91EBC78E971A9FB1A47021E59FB8720A223F6A950C8
        B3F9CF4BE9BA65CC227B7F92CF4C13D0E92420310140782400C3035FA4FB036C
        1C7D187EFE439E39302B01905F45F17623007A5DA6FDE92E02A0BF6F8A33A0D4
        1197D35C9C1640F96C18835C8F3C76D3DCC591807C02738BF59CC15E199957AD
        EFA6B4C1B60C81490880B1BD5C3C0160D1F9FD94B9CCF35BF38110D72FEAE986
        172F590E7B2D3E82EDDD7F74D36F60EDB6278D657B97BE0CCE5AF6B5963AFB35
        0B6217007AD58F792460CA574DDFBFEE4AD8B0757D500EFD010A0E4D803AEFB9
        C02480246078A0C49D0351E84B2480FB08349F04E82AF60DC38F2824808DC70F
        1DAC43F802B0957FA9E66B04AADC4FA0520F48C0BC05DDF0DE377D168ED9EF1D
        99E65C270122EBE1F0D406B8FD99CB59FBE1DCE783AD8202B3D4DE6FEEA7A609
        F00E9CF4B577DDD5B124201501407824E01AEFE52C9D043CB3F536B8FE8AA766
        9C00C8759A121645FC00321200E3F1DCCC3A03EA298E331300E943966D8172DF
        5CC2BC114D80B9FF6EED45523F00B36F89DAE73461816B7EC85ADB4F4D94DB7F
        CFC3A077C9F12C642F021FD462ABDDFAA1C73CC172438400BCEA80F7C0F1FBBF
        A7ED85BF000ACFF1D2304C14079930C2D5330AD0BBD6FE84ED0810C23C0D0908
        E731C754EB5B374C04FBECE334011F3BFF0238E9E00B328D034900DE1B1C8B4E
        021E5AF33B75C1E18DA5C09C39F9673F95010F71EC09FDA9498F04A026A0CC77
        0A7067419EF3809989BCF2EF7BDBC7E1C4033F9CBAAF3A0998F4085889390772
        1270DB533F659A0801E66FD2E59B9AB4BAA6C3DECFE7A731E11FF7593AC83501
        1D4A02B21000740A447F806526A7C047EFDF1C944D9B18887F36394841A6DD00
        398B708F9080A05F8D130044436600ED78626740E9E44CF802640D0E247EE849
        B708E662CAE50C731F4B00FCCA64E11FF52D09FB6CACCB6206C0872386B4AD4A
        5EFDF2D6AB25BB2C84FD7A5E09072C3D01E6752F82392C467F37DB6B8F51F6D0
        CF460896F5430F4748C0D92FFB2ABC64D713200DC45E7EB4C73FBDE92678A6EF
        66D83CFC1C0C6C9962427264B0C81CEBF679C962D873B73DE1A5BB9F0507EF7E
        6AA6FDE9A6B645302054A18F7B7DC0287BC3931BE08EE77E1AAC46B9FADCED13
        60030A542401C2A61EA709C84A025C2A76BC578FAC0B3DEE85E9A660188BF005
        40D2822480F907B01D03D520F191C87BF0FEB75FD010094052A9A713162460CA
        9F7BD402741934163311DCA709F6FE246683216F2C27FDF3DF761E09484D0010
        36A74014D2575C7D156CDDC89D02A78B0004E51B2400A6B286D3890980DCD796
        3B035AC69099004807D3C605107D13ABB95C82E77796180171FE0089FD00C438
        7386F9301099BCC3DF416E5BA8F95198CAC054B6FBECFA123878E9EB6097852F
        866EB6677FBEBF777F2E0BA883D1F5F0E1ACAB980727D6C203EBAF62420EDB7A
        F3CBBE0607ECFAAAF8098370DFFEE8E400DCFADC77E0D155B7FB02A61E64E143
        A139325C62EA671666B7CE1DC1D0167DECF107C019877D3D53B21D197A943DDC
        112004D19DCF5DA1AAA4BB720D93001C170B1BEC2001679C7D823387816B4E5D
        2400099BFEFD609A0D4110FD6EC8310244C023BE5590C70F40C188BE0D783FDE
        FF8EEC24C0944E18E7FEF9BEDBE1C1E76EE1738EBE00794EC004DA51E56FEC57
        4AE12F8D8369023A8D04642200088F049C852FBA29A0581D871FFFF0571E9B2C
        674A0CD4AE04402E96850098C6C83F981A895EC3FAEB7206748C21CE1930ACCF
        72421A4BAC4361064D808C7C3E1961486B0A486206D057FF69B400260280EA66
        F4F0AEF1E46FB0CBAEF3E0905D5F0FFB2D3916E6CFD94989CF8FC21F63F2CF29
        CC61BF09116D4F57DB624CFE09EFE1FD97E72F6502E2AD477D2336CA9D9C3DEE
        B9ADB7C24DCF7E1BA6262A2CD63E132C659E3A18C3E90EF6F3FDF5B8EA448109
        FE2E051606D82734A7BEF15038F3886FC2EE8B0F8ABF5116088740F407406740
        7935EA2201B2892B0E8204F0004261EE00915C48270138AE0F9F706DEAB12425
        01022CA6832126BF8811C03417651E2D50900025F911344602445F07C7D7C313
        9BFF084F6EFE138C0C15D979A1A1623119FCFEB5A3F0CF60EF77097F818E2301
        9908C0BBFEE9901EEF1975D6A1472DBDE4D0BD5FD5A39380FE89E7E0AA9FDEE1
        7D81CB8616A73733A0FCDEEA0700908A00C8E56C2BF2697706D44E640D0FACBF
        4F620A30CD8B79CC108B66980214ED430C0108C695810054250122D4FA829809
        02C085691D16F6CC81B35FFE6516A217E3E6CBAB7D11B18FF733B4E5EB820573
        71943D2159F04842D1139877ACFE212CDFFF42270190B3EFADEEBB07FEF8D4BF
        717F043FE10E3E77458ADAF2540D8606A78294BB553F110F12007D4FFDFC1DBA
        E18CD35F076F3FEA92F89B1AD32F1498BA4ADA44020A7E4024792B641C19C03A
        B66DD44880A60990EB39F58D877824E0BA4CE34943028449407C97441647EC2F
        13FA53DC1F20CC7F8064A0126801F0EF5D6F3E3755D64331E7DB4656B3204CCF
        6FBE9F85231610C29F1394DCACB5F727AAC360BEF0D1512420150138E70B07A3
        EAFF42EF618AAB7F2401F08A93F761E9467553003A05FEE6CAA7A73733A0DC86
        8D0CB4C019505FFD21DA2532A05EB61102208F252B01D0770F98902467806BC7
        83DC76E29800FA774E2601F209FFF7C2B7F185636251FAD85EFDF0A18E0F367C
        98A340C5DFD9A29DE6C09B8FFE32ECB5D33265B51F97904756DB2201C0FECFEB
        5EE89D2D78F556609785BDB1D70E4F6C846B1FFB8C2708CBCACA4E2603837D45
        7F1B1A179655BFFFA8196011F7CADC2BBD8E3E0DFE63E325872D81BF7BF3E599
        B4012E95B48904A00640040B122BE12464C0A80928F371E331416C449DAF7DD3
        A14D270123539BE0EED557B02040F278B82620EC37CE333A0496FDBEA23F4045
        843D66F910788C03DE6180134F3D1CDEFFCAAB9C7D12C99CEE5FFD4B787CCBAF
        61EDBA4D46B31D53FBE7734673CB0C26F3719E4FE1ECE71C8BD64F4602BE7EEE
        DDDB3D09484400DEFEF983CEF7BE305F048C06A8A9B9BBE616E0E4538E86C5F3
        768F9080DB1FFC033C70EB3AAD455588373533A0F42129014034EA0C98450BD0
        4C6740A5BE183380DE37DBF9E0986DC5AC8F519B97305E82DBEFC084245A8044
        B91BA4F94F4200E4EBE557F113119EDBC08466F45AE1B95EF06F14DBEFCDD2C0
        F215363EF0D0FEFFFE53FF137A77391A92425E2DA34041FF009EE56F4767C85F
        A1664741F4E886EBE1A1F5BFE6CE75797FF5095D9E0C41134515C6462B30DC5F
        E4AB7D5FE030CD007AA5976B2CE56ED15B81B215337AD4FBE3C7FBBCA8672E7C
        E6BDDF8497EE7D46E231E9633391007458BB73ED8F60A06F34D4BEF824202089
        D29E751719109A00B19A964900233C927A1DAF6D962640F6B8471270D7AACBD9
        9E7FD64FE02B6E4102C4B398053492C205A329806968FCB8017C77809B0408C1
        3F34B115EE7CE147F0D00B7F86E18122D7A460EA627F47820833CDBF17DCEE3F
        4B83FB34B2EA37F5B32348809300BCF5B307F678DF0BDCF6B7DCB6DAC507EB0E
        8BE7C06B979FECAD6816F8E7F281B0FEED9F7F0DCF3DB6556AD124149B9819D0
        FFD04E044019430B9C01F5F3716600BD6FA6F3A63935CD7D5C8440591D1FD79E
        8E24FE00491206C95A0054DBCB5EF8C179030160025FACF82D0F0FBC76EEFC2E
        2660B85A37D402E039A1CEC595263EB4B1FD053B74C3874EFB0EECBBF3CBE327
        C1871094E54A2938E60AFB1B7ADBF7C3781153EF7E0BFA47D7B171E39E744C0F
        0CEC779A675A846D5B4783BDE87ACA5DB1EA54D4E6F8BE12A621C67A2FFCD005
        70CAC117251E933E369D0494711784273CEF5CF30318E81F0FB52D5D2A0990BF
        0B2E32603407F83E01628BA01C00E7D4371D0C1F39E1FA4CE3D14D3782D40812
        502ACA7BEF55D3468D6D0D0C7705C8A600766FCA1A09F0B0FCD423E07DC7FF22
        98CB55DBEE833B577D1FEEB9FB0966CF173E078270A04F45A15B042A0ABDFE3B
        C8DE1FDF4F5F13F0CDF7DCB3DD92002B0140E10F62BB9FE6E06522012FDA7307
        38F1B8D782C929F07FAFF92D6CDB3002CAC510D502883AE3E201C8D7CAE54C1F
        E2E20120D21000B55F762730312FFA58E532CD72068CD615AF0568962F805C97
        890098FA6F2A6B42164D806E660892E7F84B56B6E229E494E0407A3C0079856F
        222F88853DDDB0CFAE87C0013BBF1AD60C3E000F3F730FBF37051E0236F413F0
        1EE453D520C88B88F58F9A808FBFE9BF536B02789FFC74B73199F7E4A87BBF79
        E21FD8EA91118039781DF739C0DF6BA53A01C383657FCB5C9404C8E175458C7D
        9E70A7EE3B06368F04A096434EBF5B62416B421220207C020AB6B0C10E32B069
        8D2798272B117380AE09403442026C9A0D9D0408DBBB1CEA59D702544A5C3383
        7DACB1574E10E48DFAAF39E5503860C96BE096C77E01EB9E1B867C57C17B5684
        1A1F2EF8CD0440F65D11E8007BBFBD9F9A26607B25012E0270B1F7F2C5A06002
        DBF701872D81A30E3E31620AE89F5805BFBCE236284E96321100A56C060220BF
        8AFE37830098E6426E2B8E00E8EFDBDA1950A9533DDCCC44414ABD191C02F5F2
        D82E3E4465BF0291B12D70DCCB8322F0C58FDFE438B8DF8BF780FDBD87EC9E3D
        47B2CFB84A7D62F3EFE1E1A7EF66950B02201EA842A808552ECB60E76FB99BBF
        43177CE88C6FC0217B9C1A3F19292112EF8C4E6E83F1523FFCE1E9AF58090086
        1A5633E7F1F1623C80C9F172906D8FAD3AAB4250F20035413E7BE93972D1873F
        91990488DD0A628BA08B04F00449FC3EBA324B9AC8C0E675E330E18DCDE51828
        98642B49801A852FB4C1CB5A800829ABD443C74D4D1320C6D7C57C52F8CE892E
        DFAB5FC421E8F2EE3F9A01F25D7E6022F9B7900323E1DD8EEDFDDA3D33F4B3C6
        49C0BF9CBFFD91002B0178F7C5873CE87D3997452E88D106BCEAB57BC35E8B8E
        8E908035C3F7C0B52B1F6D980088FA1A250072D146760324D502642200D2311B
        01B0B5EB1A0713823112983F08EC03CF121C283A7667178C9102D36802447BB2
        BA5598157279D98ECCCFE9F1F8C5B876EC990307ED792C1CB8F44458BC604FE6
        B98F40218B76EAD5FDF7C3AD0FFF2F6B141FA8DD734202801A007C78E3AA4D0E
        F0820F1A91F9EDFC375F00AF39F043D04C60DF70BFFF58712B133A77ACF284E7
        D82610A96A59DE006F90E5F2148C8DA8BB75F4A43B13A36518EC9B0C35016533
        09A8D56AC135594900428F1390840424711C15DF132130B76C986024408F18A8
        90001FAD2201773E1F46E1C3EF9F1CFC8839FE95EB8A4360B5CA1D3605890C48
        8074BF848930D0001438E9EBF2CD00DC8FC28FADE07F6783645362F112EC4E98
        9DF67E319FA9FAE9260F435EF993FE75C5BDDB1509B01280CF5F797CFDE947FA
        CD17C56803DEF037AF809E797BFA9F4312F0E8DA5BE0A66B9E8B908056650614
        F5C9AF729F45D1661300BDBD441902F9C02C8DA9F5161CE427CE19502FDFCA6D
        817647BD640FEB3404C0364E7CB8CB5F71DD448028F86601DD2F60BF17EF0E07
        EE7212ECB7CB2B59B09EAEC25CE8F6FEF0B5549980A2F75047F5FAC6E147E1C6
        07AE081EA6B8DA128E55F8F0931FE06C25ED67ADC3603B8D4678B3412600935E
        1F1FDB748347541E08C6DBD5D5CD7E47438313AC8F5662259D18EA9F82E1C162
        E01320A7DC153E01B38104C81024602635014802302362309E02045A0D41B6B8
        09A0169802586C06E6580ACC1483F32FEE237B8616F281F017DFEF7C5E7AEF9B
        C1F2BED901BFB773E6AAE6A4ED20B84FF27EC6D45197C2066F4F24C04A00FEF5
        0FCBEB77FF79032F14E371AD9300FC22E11E619353E04D77FF0E1EBD77535847
        420220CAB2D71461815B4D004CE3D7DB7339036621000285A02EF3799319402F
        3FDDDB02F53EA63505B8AE318D53A858C56A8E6DDFF36DFCCC91ACA03A472DDA
        692E1CD17B221CFCA29361DE9CC52C342F0A7CF4BA47C7397C8FC0953FC6801F
        9BDAC6F679DFF8C0E5BCAFBEBA55DEDF2D82BA947D272E11A2165FB980012638
        3FF0CE0B60F9411F8D9F9004D04D00FDE36BE0CE175606E7E7782B425C794E8C
        559439356DD394EF179A04B66E9A703A06CE340910242FE9F74BD604C8E3625B
        20FD488862628E3C7E37B8E80DBF8245F3774D3596B8DD0E722E04F13DC2AF50
        8D7D7FF8F7A65A0EFD14AAFED64CA10908DBA90709BBD89F24E8050110DA2F7C
        DF3DAF0073BDBF7674F69B017BBFB10EED1A964AF8DFDEBB7D90002B01B8FCDE
        F7D5AFBFEE76C6F259C18424401C5BB274019C74C2F2080940A7C06BAEFD9DF7
        A31BF1AF8B1200F5556A2BC36E00639D060280BF2146041A2000CA7C647106CC
        48006CED36CB1950F96C2100B6BA4C9A00130170C507484A00F4B162398C7827
        7FC5AB5575BB9710FC47BC747F3868E929B0D74E2F5356FBDD18ADCF0FD653C8
        7505DF55CC6A373AB5956900D60EDCCF3500103A19A28A5580097EC99B5BF142
        2F718159F5EDE81F391733D47D0C1A8548BA333ED5E7F5731B4B5B7BFFBACBA1
        7F6C5330A7BAEADF35BFB2C32412972DEBC69515B3F0A26F277380188B4E064C
        DF351B0990C98DB868FF4397C03FBEE3D74D2301C16E87B53F82C1FED1703CFE
        CA44CC2BBE62A6C86D9B261921A88B288DD5BA129F42FEADE2FDE29A005FFDEF
        6B05162F991BD4DF6C67BF596EEF4F32174C13B03D90002B01B8F2BE8FD61F78
        F83E58FDF46022A168D2061C70D8CE70F42151A7C0B1D256F8D94F7FEF3D9CCB
        89330386ED67270091F726674049471CE70C98540BD02A6740D6E70C5A00D303
        3ED5B6C0846600DB1CC97D4CB35A4BAB0940412F3400226A1F134EFE2A698785
        DDF0CAA34E84C3773F8D87E635ACF64DC17A445ADBB1621FF3B2371100D9B35A
        EC0408C3BAD682F0AE2529D63BF617E7226B721A19A28F28381901288FC2D6B1
        E7E0BE357CBFF8D44495992478C8D7245A20F59E63D8DA2DEB278231D8B6088A
        5D14D34502B09BC2D3DD341E171948A409F071C0E14BE0F36FCB4E02ACBB1D7C
        1220B63B62DF640280B6FC79F30B0A09608EABD5BA22D0E49D3962C58FDFF705
        0BBB8332DBCBFE7ED35862FB99803CC41121EFFBB0E2DFDF7FDF4A98C5301200
        4FF8F77A2FAB262B03F087DF3C085591CCC4A2520E2A339080634EDC03F65FFA
        0AE3CE802B7E74534000D0FBB7A99901E5FEA62100D2B5590880320F2D760664
        7D4EA105308D59EF9F738CA6B9CDBBEB8A2300716D2AF5A6D004605B22988DBC
        42AAF82A533CFF92C37AE0DDC75D1A49C423AFF66D7BECD310001111B034C5B7
        D5C9F1DD31C80E3A03EA42E663EFFD389C7CF085D008743300AA9B9FDEFA67E6
        0B8051FFB0C19C1FF6B550300B4CD7FDC2D0B4494880C0749200149439CB6F46
        943191812DEB7177404589BA67730C6C8404E0F34ECF85D03FBECABB3F37C2BA
        CD3C789A08CC53656615A1F20758B8980BF1F1D1328C8F943979AC9B05386AA2
        7A7699C7EEB18C7650F99B0EB591BDDF3917D2F7605693000B01F8F072EFEB87
        3100E0858D8FC1FDB76D8C84CC4DE320F7DABF79292C5D70A07F2EF4077876DB
        ED70C3554F4BD7353133A0DCD78C04206E9CA6B146FADB426740D6E7B82D8106
        02602A3F1DDB02E5F6B31000567742C740E1ED8D1A00E1ADCE54A635EE7C27DA
        FFD6276E8C24E27185E6459808C01FEFBB82EF1CB010007C00635FC6874B6196
        377F6B5DCD0FB3CBF6A0FB6176B1AF5FB9E8924CD1F50484D0C47EA2A9A2C8D4
        CD9370D79A9FC09A35B21F8E990498BE4F7A5C048504F8639183EAB0F1D56AC1
        35AD220177ACF9BEB7729E50FACE7D3CC26054F238F471CA8F414602C6CA8CC0
        885C0EADD0048860410FADBB169EE9FB336CDEBA59E987D000D4FCA44DA849EA
        EE2E28A97A455FB83F4799ED309933B700F377EC62B67D7ECFD4B6DB41F84F47
        709F26D8FB4DAB7E5353B396043808000601E20F0434053CFFD4207B9F9408C8
        8271EEBC2E38ED0DAF8605DD3BFBE754A7C0C7EEDF141CE7AF6E3F80C40440EE
        A7C519B05904402EDBAECE80FA78921000B99C8D00C8E391219C91944B126801
        9A4500102CEB9D4400447E7581EF7DFA5E63221E177402D037FA3C5C7BE77FF1
        EFA6244C050190E70785C890B7FA6624A05C53B6D53167AF4A987467E1E23970
        F1477E082FD9F58444FD32F513D5CD2C2E7D71D0EBEB004C79020705E62DCF5D
        0A7D9B26C3EFA18104584D2CDA09F469409F002309986673407FDF58D0479904
        C87D779101012401B8C296E31FC84991643F12CC87F0B9B75E97880488D5FFE8
        541FDCB3EA4A78BAEF06181A2845CA894892829C70C7BF1ACC5F107E47756194
        60C13D2B82FBB499BD5F2AEF9C9C5949028C04E067F77D68B9F7F5BB997FCA43
        B93605B7DC742F4B158AC8A20DD865D70570D2AB4F624E81B22900DFFFFC5757
        C1D64D23D0D4CC80860F712982B33803CA4D34EA0C18BC4F4000E4EB627304C4
        8C853907E5128E31673E99C61420FA914BD8A60971E68020FCEB244FA622ECEB
        3C3D2F26BAE1F3F6E9F3BE0587EEF13A4803DDBE8E2ADC2B6FBE3898834277B8
        E75ADC03797E50F8F76F9E5462D28B1526DBDB5DE59FF1B7B9E3A2B9F0958FFF
        A82112807D9D2A8FB1ED802C418D2F309104F46F9954E68CABCE55221BB73380
        8FC9D70454B893A389044C8763206A0206FAC603411F843E2E98BEF76E32D0E7
        DD238C9F1FECB5F79D1B4DA9840F3C7C67F8EC5BAE35920011C111C9D8339B6F
        8347365E078F3FFB60B0FD0E2757443414DB47791C0A2ED40501C0BE06ABFA94
        C27F3A92F96CE7F6FE9836D9CB8A6F7D607691002B01F05E6E0E056D1ED01FE0
        86EBFECABEFCE2B792561BB0EF4B7AE0552F3F25E20F80B6CA9FFFE23A18199A
        F2CBBB0940F03E2E1E80F6218E000864250072D9563B03EA654D5A80687D392B
        011068A62620892920D2474BBF7424D104083F00B6AAAE840440B64D7FEEBD97
        344C00D0C1EEF29BBEE02400F2DCE0C7C093DE0FE91A46D8E30E5FD84F062401
        8BE735440284C0447B33E6059005A64E02C43646F1BB7346D8D304A8EE13A084
        D79D0112207F570A5D39676E091319C0CF480246064B01B1615B36A55D0FF277
        EF2587A92440ACF64BD512DCB7EA67DE8AFFE72C02A1D82512087AC96C24ECFE
        C177CDFF1A08613B676EBE61E14FF67E7B79F3FC2512FE02B38A041809C015F7
        7EA0C713D04CE7CF49007F728D1437C20DD73CC62F4C4902449197BD6A373874
        AF57FB9F435340FFE46AF8DF2B6F0DBCB66DBB0192E40590FB375304403EDE34
        67C0040420D29F169802F4F74908807B9EEC2BB11825815313806DB0286F52D0
        14AE62E7C154703EDFF2C6B3E0AC655F83B498F456D463535B61ACD80F53A561
        270190C76522012838510BC042BE96F9EA9909CB6A18C1B05924C02430151290
        0B8319A549E52CEE21122E4CB8833B1B8463E04C6A02E4FE25091B2C8F45A07F
        CB14D70408F2E8FB04B03DF87E3E04FE6CE2E680CF9C7D0DCC9FB308360F3D03
        B7BFF03DB8F7AFF7334D148BC1DF9D0F82F188687C2CB991143EDA149912FBD3
        A53BF219FADE8EC27F3AECFDC67E36D7D9CFD2A6FAD99F9B15DFFED0FD2BE37B
        3CF3B06E03F448C0259E8066BF4C9904ACEB7B1CEEFC931F20C8643F4FA00D38
        E9F403618F8547FA9F4312F05C1F3A053EEB1F6F8C00045DB139006AAB61D758
        5CE3D1AF6F5B6740C778F40761A3C181C4D8D2040712103FB87C025B342B1743
        00F0E16C8C9F5EE70178DE7CC69BE0EC655F87B440028099F6463C1220088040
        D7DC7C1007C0A50540204159F7C22857FF4BCE80159FB4C8FE0A3B2C9A0B5FBD
        E0C72D21017F79FE52B6DA95E7CEE518E8220338DF5B378424602635017D5BC7
        A40881D1888149B7A0069A00911ED9770664BB4C6A61B449AC7BFF4376825DF7
        5C00F7DDB619BA51F36008C98B738B0E7DF9C0511182B9362D1C0A05B53FDB8B
        BD3F511DEDE3ECE7BC469B9B5941025C04806503F404F432D9148040A7C0671F
        1F88A8BB93928079F3BBE094D71F0D3BCDDB3BE20F70DFD337C25D37AEF5ABC9
        9619502EEF2200C17B9B33600BCC006C161B750694CEC5E508706D09348DDDD4
        47E318E515A18500D8EA12AB2501614FAD4A765511C0848DABCB728345FD36D2
        E5EF04D043A7E28ABBE2B775DC6BF6868FBFE6F790168D1280601EBCD7F1B10A
        6C5A331AD94A672201ADD40424210126A16922033A0968074D00DB8DE1A7BE35
        11C73832209300A10910511C51C008A1C393FAE4D9E3B2CB8FC0C732447AEFD1
        431F57F222218F300188DFA1C909336EE53F13F67E631D6DE8ECD7427B7FECFC
        C02C2001560280F04840AF27941FF4DEF6E824E0F77FBC1586FA26DDE9751D44
        60E7172D80534E343B05FEEEA66BE1B927FA8D0420789FD419B0110210330663
        7B5AD9963803F2C98A5C179B23C042004CE5534508B4E887E3C204E3963C3C27
        EFD38FB4278532657559EE832D0EBCD002B095BF588D96423F80238E5E0A9F79
        C32D9016690980B807260280181D2AC3E6F5A3CC14C07207F8BB01708E983F80
        343FD3660EF0E74F760CD4EFA34D689A7C02669204A026407C4F583E8D2E472A
        610BC941E0DC0812800F7D462499A71E286361BF2BEF7FA1016044C07B3F674E
        21883EC9496E9E7FC7F32131167D6C85BDDF744DF4FCCC3BFBCD127BBF4DF0CB
        686B12E02400088F042CF78432DB11209B027067C0F5D7DC1E645ACBA20DD863
        DF8570F2F16FF08B85A600740ABCE6D7BF856D9BC69D0420EC538C1F80FFC145
        008C7DD72A691B6740EDD84CFA02C80FCA08E1326801C42ABFEE4840636A5098
        14C4BE6EA3D6C2910C46C44E17F9ED311600F61DB551DFBD287D444F9D00FCE2
        CE2F42D94FE8D23587AFF8F4F9329901829F89D7F79181126C5A37AA6C0BACD7
        CC246051CF7CF8D2C7B26F114CA309909DD41CB7C8A80930F904D87207203EF9
        910B5B4E0210B226807D17F3F1644040900039090FEE2A1166257653BD57B6FB
        4012FE857C2E48C91BCCA94F00B01D2401F31674057DD2311B9CFD3AD0DE9FE4
        9A15FFF1E1F62401B10400E191808B3C017D09BB40710ADC007FFACD93F12440
        3AA8FFD00EF356602F3B60B95F44730AFCF96D2C898A56855F8FFF9A322A207F
        9B731200A5EFEDE80CA81D6B1601904FC51100A142670FAE5C387FB2F3A53C36
        F1839493F2E85DDA6997F970E421C732ADD0232FDC069BD78EA905C4180BAA69
        20E8B3430B204C01CC16EDC7E1175FFDCB3EF718A4852000E80438511C803F3D
        F7AFB0692DCF6F8104A0D015DD4EA787D3D509000249C0FA35A3C1AE00990428
        E600EFE23DF75D0CFFFA913FA40E4223908604B0A0347937091063D557CFF87C
        E0E68068B63D3D7700A27524E0BBB06DCB44F87C2A705B7C5E3249B9C8800C41
        026A7E18DE30167F3DD0B60519F7F25C93C59CFEB48C7C48000ADD3C4CAFC0F6
        BABF3F511DB3D3DE1F5BDEEBC38AFFFCC8032B631B9A66242200088F045CE609
        E8F37553003A05DEFE071EBA524FB693541BF09AD3F7817D161DA79802105BC6
        1F875FFDF4FEB0B32D2600C63EEBD7369020489E2336832D7006141039C16DE7
        45C75CDB026D24001FDA7ABE045D7B20AF086D5F3171CD91C7EC0D872C3D0D76
        5F7C28FB5CAB61009BB2275CB7C1E35B7E0B2FBCB096E5A38FDE8BD04F404E76
        622200ACDF65BE5A93D3F122BEF0FECB60BF5D8E8134E004602848B77BE3B3FF
        1210007CA0CB5EF42E0220DF46D1CFD1A112AC7DC1ABAB06010910F3CE831AD5
        83C93DF0F05DE0E2BFFD4DCB48C0B68D93E15C272401F2FD15F73EF40908773C
        88A03AD39940084940DFD689A05FC2212F6FF8EDEA64400EFE83401230365C62
        7E25B5BA4A6CC56F47ECF3EFEA52B3F0A1F0DF69E9BC8849AB1DF7F71BEB6843
        7BBFA98E69B4F73BC61E1C683B12908600F4F8A6808853E0C34F3E004FFC751B
        AF30210990CB60708B53DF708CD129F0B1B537C1CDD7AF8EA87D5B4D00E2FA6C
        9CCC8C0440194F1A67C0180220B76F230071FDD54900DA75F57AD9AA272FF62E
        D5236D081F0BB9AE9D5F341F5E7EE8AB82443C18831FEBC26029554FF857AA45
        EF07EEBDD6F85EEAB5830FC09AA1BBE1D1BF6E50AB97FC0C581B527A5F7D6C6C
        25ED091ADCCF5D2E89886E35F8D47BD207034233D5E8E40023002860FEF8CCD7
        AD04C0740F723A41D3EE814E0282688606DB3906A1F9E2BB9B470226CB432C43
        DDE0C41AB8E9D19F4271A21A6E714C4902E4F1EB9A80992401A80910FDCAFBE3
        D13DEDC577471712F2B1B1D10A0C6C9D8C9611E44E4BC7BB60876E58D8D36D7C
        8E74AABDDF3496D87EB6A7BDDF25FC459B2BFEEB637F5D195BD1342131014044
        9D02C387C04D7FB903B6AC0F5359A6D506A073CC5967BEC1E81478F33DBF85C7
        1FD8AAD4C3AF85A09CFC19A4264C9EEAB6B0C07AFD699D019B410022FD4AE80C
        98244950A45C020220F7536CA143E831E1C567F6A392849DD04408B5E851C7EF
        0387BEE874D877E76358DA5D9E888767DE636D542BDE8FBBC408003EB0910C60
        FCFA7ABDCAC840A9320A6B3C32F0E8AADB3D813B26F53FECAB6C1A10E94F0582
        6D814CF870F5ED99AF3F0BDE74E497210D44A29DE189CD4C60262100F2FC9B08
        807C1FF01CAA9837AE19E5BB18CA6A185A112D50D489FBCF9B450244721A4C1E
        3438B1166E7EECF2ED9A0420842640D7CAC48EC99B07F4D918DC36C9E23A08C1
        2408A9B89FB8DA97C3F8CA98ADF67E63BFC8DE6FEF879440A85D48402A028070
        3905FEE9C67BBC1FC24444C026D506E0CE80D34EFE1BFF94EA1478DD6F6E80AD
        1BC78C0440F4A591ED8049CD008D1200B9CD76720634DD2701D14F4C952A1C9C
        02F8EF23817CA43AF6D97F111C7BD8A970E0D21361C1DC254ADA5D9188A7E06B
        10704F359A00AA754CC632C156A24806F0FB55AD96D871612218F056A8CFF5DF
        028F3FF63C4C4D55A2739A0BFD04648D006A01D8C3DA4FA1FACA57BE14561C7F
        39A441560220E6488F076022008891A1326C5A33C28425F763A805DA00396F80
        0842F34FEFBCBE2112A067A89349006633140F5BF473484B026C3E012200923C
        A699D004081220EE87F89ADB7EF175ED9CD00C4C4E56D998E67BAB7DA1558833
        2BC87546DA6943E14FF6FEB8B15B85BFB866C5A51F9F7912909A00208453A06E
        0A40A7C01B7FFD04148B15A790756903509D79ECE127FB875512F03F3FFD3F66
        BF0DEA6D220130F5CFD6C7D849CD2523006CE666C01950765452AA8A31033002
        2050E75F72F667F821CFDFB11B8E3C6E291CBDD77B986D9F0BFD7991B4BBA644
        3C720855610A287964A0CA3400139EF02F1A4D04CF0FDE02CF3C3260BC0FC284
        8444000900D300F8F9D40F3A7209FCDD2937C5DE5719CD2600E256EAF700CB0E
        0F9660F3DA511E80A6066A521ADC5A17FA053212F08573B2910039573DE60C40
        6169D204F0EF4AB87FBDAB2B9D2600217C02584C86CAF4920061E2182F6E833F
        3DFE031E7D1423ED6999F6E4FBA29301D3671319304126033266C2D98FECFDEE
        BE3760EFB7B62915997112908900207E76DF872EF35E224E819B479E829BAE7B
        21149829B50178FE35A7ED0DFB2C7E45C414D037F102FC62E55FC255531A0220
        B7918500F827D2C40310759AB648FD7FF6DE03CC8EE24A1B3E37CC682421440E
        C620C04463038635D10891733638E0201C1616D66B7BBDFBFDBBFB3DB6613F6F
        FA7EEF0FECAEB3771930061384B2044242A30028A22C2184A451CED24893E786
        F9FB5475755757575557F5ED3B497D1EC4DC4E55D575FBF679EB9CF79C138B0C
        486F54D2A1D87F86000056F046EEFE377705E0F8F007D8D15A0C3CE02C0B1A0A
        DB7DEA1947C2D5975E0FE79F78130C1D741C59E5E7B0D42EB7DAB729BB8B824A
        A95044C6758928A362B9C351801D1E5F005D04CC2A5028B5C2BABD7360C5BA85
        70705F4728E530FB2EF03E0AACBCABF3EF377F6D170A582900087EDFC1AF51F6
        1C623ADAFD7B3B68F5C0A29F8A96270892BE9D6BCE383FBE258081808E42AB73
        7F07B52080DD6B5488A04A1004ECDCDA0A45375323CB7FC08300DEB2F4FD47BF
        170B0488C066F7A18F60D5CE3761FD8EA524452F9BEC9A1A6A01D06539140D60
        2A7060EA4200EE9AC076EAEFF7C7D90BC97D1236F9ABA602EFED915F7E6F497D
        64675592D80040470A5CBD7E292C7D6FBB120490CF1140E0CEFBAF949202D7ED
        990DD35E5FEFB6C1DD882519B0121E007FAE7452AB4506A4372AE950EC3FBE2B
        401516D8E1BC28BB4BC1153F5B85A29C7BD17170C765DF85538EBA88ACEAD96A
        BF363FD8B9BF9C72B56F2ABC55802AFB0EEA1A887011ACD93D153EFE6807313B
        F3455E585820D9763E3FF5EDD7E1C423CF321E8F0800966D1B0F4BD7CCA37396
        F313CDC86A1B440100F63D88DFD7BEDDEDB07F4F0749192CB50694299A410BDC
        59171C07FFF88DC95501013396BFE0E53C20CF584D6596000401B80AF70B22F9
        8447C4350876D89CFDE0D1BF82EBCFFB7EACE766FDEE7761D1969761C3E68F42
        E7B15CFC8C2FC2E65E070644D1590AF8E36273A9BF5F33CEFEEFEF97F711DCD1
        6B2020360040D19102E7BCF73E6C597FC0EDC5DE1A5033280777DF3D0A86D41C
        1B7005E0E786059414580900908D878DA92F0080D0B8A2D849957001F8EF4801
        00F031696FE9F2529EE273C357434339EFE2E3E0CA0B6E874B4E7B108EAC3BD1
        6AB56F234C41A1F5817711E888839B0F2C81555BE610B333BD1FEA4FEF7601CC
        9FDFFF53F8DC69F7198F810180E6F63DD0DAB50F966E1B0BCBD62CA073160100
        D8FCDB0200DCDEBBAB1D0EEEEB74E3E8CB5EA9635244882850675F175DD57EEE
        EA4FC0FFF9D27B15CDB10D08604C77365E36CF51659F119CEDDA4641805F4638
        0802F810BCEF7FF77B91208029FEE68EBDF0C1E6D760F1A6B1D0B4BFCBF3C9F3
        E46056B8296B911930D086EC1A90FBF3A38EF745E5DF13C97D06B8BFDFE4BE1E
        F9D5F77B1E0454040050B4A4C069480A742B72458000EE144FE91E73D250B869
        D4F55E64000F02C64F1B0BDB3636F9D7260800F853FB1C00A0372BE9547E9D2D
        00D08DB9ADB98B989DA9EFDFCFE18F2F69FC8873C572A27CE1E64FC22523EE85
        CF8FF84A6C525A94B0977CC9F98B2E024A1CEC0CB8080A8EC2E2AD02BB5BD6C2
        BABD0DB07AC516EAC270EFE18EEBEF873B3FFB63E3BED1AFDCD2B91F5A1C05D3
        D2B9D7CA02C0E65F9516987D073200808220E0D0FE4E5ADD902B4E837EF4B6B6
        829F35D0B9E0D62F9E0F7F79CD94D8F31BC712C0EE5B565E570506982580599A
        642080091A1A9EF8B61C04B031EF3EB81E667EFC0CACF968B5032CDC4A7C792E
        EB5E2E68B1C871F9F6F185AC73274A225D232D0526C743FBFA41729FD4DFAFEF
        D750F933E9711050310040F9E3C247D131172205B617F7C39437161186B6CA0F
        1F650D38E7C2E3E0F2CFDE10720574165BE095D726407353A7795D80C0073300
        C0C4B64430BBDE04009019AB940CC8EDD71508F2C625270668E700E79A297F7C
        D0D9A3C3C2D2D867FE991A3AAC16BE70D3E970E9295F852B3FF58DC8398B2B32
        1781481CE4AD0225677BC3BEF7E183B5B348C6BB4B3E7F267CF7AA31C6FD2100
        68759462AB03009A3BF6100B802D00A0732DEC67E749C880FC79FB7777C041E7
        FBC0AC86982510931A757596A1BDB510081144B9E581F3AA0602649C000602FC
        F1ABCB3DF3220301ACDC2E4A9143019800EA2FBFF55770DD79DF0B00C1F73E7E
        0E166D7E1DD6AD38E02A793FFD2E03018CA381FFD80B582CC1CB6F672C3C1B32
        30205A0F54C7BDED1E48EE93FAFB839234D94FE1EFD7DF1B3DFEC8AF7EB0B41E
        7A48120100282A52E0BEF6F5F0E66B6B69678620803F17DF2357DCF84938FBC4
        ABA5A4C0B1AFBC4BC2898C0180A67FD518D838F80371C980FEB1F0F5D522036A
        C76511168804B4D696421800B81600B69FB0B725CF1596B3BDE6E633E0E673FE
        01CE396964E4FCC515A6B4645601E2222851422186220EA93D1A36ED5B40720B
        3C74E9D3C67D4402801C04D2018BF3AFAA0E287E8DECB909651574F6EF73800B
        7E1F2CA951CBA14E624E17497478ED2DF79F0F4F5C33A9A2F934B504B012B7B2
        623B51EE0004013BB6B492557BB79BA781E79A7497FC90079C8327467F0F2EFC
        E4BD3063EDFF07F397CC853DBBDA49019E0CE6FA7773F063D95D1C0B51FA0802
        6A339EE99F8C374BAD312A65552918906DF3608097BE60F2978EAB0FFAFBE5F3
        D7E7FDFDF2F91138013D05021203006152A0FF4BF978EB0A98FF0E4B17CCF76E
        6E0DB8FEEEF3E0946117855C019B0E2E80C97F5A150900027D0B8A350E00909D
        AFEC4FD2AE0E00F0F7D05B6440D55CB43B0AA7D38DB9E72D00B85172DD029464
        E73FE1B247ECC4538E80ABAFFD0C5C73C6E35503032AAB00230F22397150CD50
        A8AB19EE008161CE1CD51AB76D020070D24C8980FC1C9B020094FDBB3A487866
        7B6B11DA9CEF86943D2EBB15F7DC1A026CFE6FBEF7BC1E0301324B40700ED4BF
        1BC60960960096AF81B706F073C6CCF95912F2422BF061FB35B5B940053EB104
        2FE32C30F74A1438E1BF2F110C88960351C4F365AE84BEA0FC7BC2DF2F1DE7E1
        E5EFD7CF1FDD7CE4D73FAC3E08480C00A0E848810B3E5800EB56EEF53BB67409
        601DEDDBEEBADC8B0CE041C092F533E0FDE99BB59501657DF2FDB1CF2C7EF770
        21038AE7997001100474B4FB2981D9AA2C0000DCF83A1F2428A709CEFACCB170
        E3557710BEC0C9479D0F498B184EC8AC02CE88891500A315EA6A86240600E8DC
        F9CA9B57346C2E3352B017FA0A03CF61381DB60F0230428024D621A576BB5D42
        60C9F3A133BD79F33DE7C1E33D0002D8FD933CFBD27A137AB70082001A1D5024
        D10E1E6993E39F30171BFE150140AE8656E1CB93D03EBF025FDEB5CAF0208D70
        7D72B4508F2CC3A56A8CEC3EF9679BDFB6712BF4077FBF511BA9BF5F796F11AB
        FED02EE7F353BFF9EBA54F46DE5C0592280040F9E3C24747397F668AAE00420A
        7C6B3EEC67A440B0B70660A6C05B6EB80106E58FA0FB3810F0D6EC09B07ECD3E
        B3F2C01A00E07D16E2F7FB1C00A01320E9547E1D93C8BC0011F7C65B021808E0
        2D00F4E5ECA70B6620C0AB06A8E146E3778760E086AB6E8751E73C01C3079F04
        498B6815881BA9200280B5BB67C2FBCBDF949E9B750966CC2C9ECD06BF4F5332
        A00A0074B49560FBE666C20760E99A898BA64CEB1E782182F44B811BEF391FFE
        E20B1363CF9F0D08C8D504D332CB44451844D7068200E2D670EF8785A1F22F57
        AF4C7496FAFC1108504090F17CFF3997FCC7830136B7B8B810C7C3C6A01B6394
        D880035EFA45729FD4DFAFBDC656F96BC056BD03021E812A49E2000045450A44
        10F0C6ABB3BD30256F1016D680D3CF3E0A465D7E8B9414387EF254D8B7930318
        2A10600800F86B18C3BD9A6440130010D8D6759D510380A87104BE0B4558200A
        866CB5606440B1DBB302B0902DDE0A80C25B0210048451BE089800AEB96D045C
        7AC6DD70C5995F4B1C0C30AB803FF776618A2C6D6E2B9603EE3A009D8566D871
        6815341E980F9BB66D0A98C3D9FD907E727E6D02B6EAE48F8BF82E0A00E05C63
        781B4EE0C1FD9D6E5E806EC2D7406B80584C88C98D779E0F8F7D617CECB95381
        806D0797C3EC25E302F74D18F6AE3B84BD7CD97DE3B60E18A0F2C79A0F04D490
        E709804F3FCDFF1698F2A765767D17442EEF1788625680BAA1F9D07C9A8A0A0C
        98843CF2F3D22BC97D527FBFD5355524FB69FA0C3559351050150080122405FA
        5A07D3054F7879993A544FC3D267CAE8CFAE39193E7BFAC8100868EEDC0DAFBE
        320DBADC95A90919D0140030E92932A01100A037AFE8547E7EA56181FC211EB0
        B43B73DED156F0486822080898B6CABE25A0BBAC7FC951F00470DB97CE863F3B
        E561B8EA535503C356824AB0BDABC54B2F8BB9E509D190A4262E40E3FEC5B0ED
        D012D8DCB88B9B477FF2583C3A230A3257810C0078F390093E9378ACADA5E867
        B373A4E550812A7C373A80CF1CE81303E9B977DDF705F8E6E5FF13FBFE791080
        2008E7004140E3FEF9F0FEF2B702F7CD4080F7EC64CDC1004637202700231D0A
        C5F0C382F392CF01A94849943E73BDE4E9E76CCE5FF51F79F420E1DA30314F14
        6DBC3F0706D836BDC6CE9590FAFBEDE6A22F2AFF0AFCFDDA7B75A52A20A06A00
        00C50101C80708910237ED5A0973A66EA6038800022A1070FD5DA7C188A3AE0C
        F10176B6AC82B17F5C286D3BD0BEB0D197C980D50200FCD86C00007F382B193F
        25A53130A0B60490BF0210903D8FFC4AED88E18360E4EDA7F53A18E0D3CB62F1
        1C968488CF3B5022A98B5B61D38185B071DF7C523FDE7FAEFD7964A090590458
        A5401900608A85292E5CF58BD2DA4CC9805EC5C362D9E30690844165DF25F0C4
        E8BF8251E7FE6545738020A0ADF300B43BF3D05938048552570804A030F6BDF8
        C89880010602BA39F71253CCACAE0553FEA49D1C9D47DC1E7E6C5DC8CC2F131D
        4B9FDF36B51A88E040DC277335F07DAAA4BFFAFBC938FB01D9AF37FCFD8A53C4
        3EEA7FF7A36589BEF4AA0D008E72FE6C747E8A47D13DBEF699BF7801AC5B4149
        81A62080FF3CA82E07B7DF73859414B87ADB4C983569933500E03FF7140090F5
        9F341990BF461716A823038A55CCF853B38A3722A91FD0562460A0A3BD100201
        E433670DF0B6354080F58DF372D22787C1D5D75E0023CF7CA2AA61852AE1C30D
        4D521337B56F81CD4D8B61EBDE0F49953F576F05E6D42F65EC12E83880C0CF03
        6EB7B795487D06918D8E04B78ED602CD0A885101823500130631563DCAE3DFF8
        5E4520A0B388D1152DC412422D012D521020B30488120506F6EE6823D5F682CF
        857B2D63F33BE762E9DD6147D7C6AA5110252A3060030ED8F7D82FFCFDB236FA
        20D96F00F8FB95C2F5912808A82A00407140C0C5CE9F25221F0065FA8CD9B073
        4BB8A6BBB71D610D187E741DDC75C7CD015220730BCC5A3405560BE982036D0A
        1BFD0100C8E6C0BD7149A7B27144BB02BCF3246F325D8543150860BB5101A1B2
        6A6FF3C180CE2DE0ED37B00A303070D38D23E1BAB3BF5795480295C80A169954
        2FDC7E70156C6F5E0E5B776E249692C09CBA1F588A5A0206727C9E7AFA1757FF
        22C98C092AFE62573950F99081002CC1CB8A09D139EE86BFF83A5A029E883D07
        362080E741E8440706F0596A6B2D1280C9A6ACCE51FAA8F8997FBF2744B414B0
        7D327010F88E2592B8BF5FB2B32F92FD527FBF5ECAE136EA7FFF37C98080AA03
        001407048C76FE3C27BA0270953471EC5C686DEE54B2F7A3AC01A78C1806B78C
        BA23C407407975C26BB07F57AB6C489164C02401007FBA4E89B2BE4D0040E073
        041950766D92618128D988172E7F1815114611606D012C5C136511207F39E297
        7C2EFCB93AFB33C75535AC5025BAD4C4E5724151A7A015761C5AED808165B065
        EBB6C064B1DBC3552CE308D0ED0C3189A3120CCCB1C032E74180E812C0F4C17C
        8C7D8F82003753A2F85CE8C4863340DBB567ED574378B782B82D030F2A395CC8
        7EFDD5DF2F9D9F0A957F59FF1D2602027A0400A0E8488153C6AC0C64F33309E1
        E357C2E75D741C5C75F18D215740A7B3FA7AF9E537482A62697BBD0000F8F355
        0080894806948DD3DF50752ABF96DC8B84791E6E576E09509A70232C01E236FA
        A63B9D555C9B0302793020E3083011C18032DDAE1B49F06767DE03979FF17055
        C20A55A2AB5E881104B23A056D5DFB1C30B006B61C5A007B76B579F72216D841
        696DEE72BF43B9899B3D375E81A042D903017C0D011E04A03CF6B5EF550104B4
        C3BB8DBFF70891620CBEAD9FBDBF8281F0B87A87EC97FAFB23C6D137FCFDD1E3
        2E77D7FFF7FF5A5E1108E831008082A440E7277F31DD0A9202674DF67DF6B6D6
        00FC7BC33D23A4A4C0FDED9BE1D517DF09DF780400F03E27901048727AC56582
        C5CF9105C8336A00A01B83CC9E19D71220073CFE013485A3626B7700011F2ACA
        830159F820FD2B7F8E8945C5E57F313070F3A77F043D29BA3A052ABEC0C18E6D
        B0F9C007B0E3E087D072A82B703FB8F267D918595C3BBE304430A004014537C5
        AE1B2A58660976DCB9FDF387FFB2221080D111488C6C6ADB0E4BB68E818FB62F
        8096A6823F2ECE0210FCAE2A23DD5502066C42F87A4A527F7F54BFC1ED01E8EF
        D7CE0D665B4577C0737FBF323608E86900A024057EB06211AC5CB82B1204907D
        0A2070FF97AE8663869CEE5DCF5C011BF6CF8669633684DB300400FC35BD0D00
        7463756F5CD1B9FC7A1908D0150A92DDAB0921503C4FBA8FDBE872145CB3A3F8
        9040C817B6B10103FC4BDD0BB573C67EC4518360E42D67C003173EDD67F8021E
        8150C2174017C1AE96D5B075F73AE8E82839CA9403042E4133EBA61CCE713C01
        3ED90C49AC23B304B0C441255AC3212E08E0EFEDE35D7361E9B63760C5874BA5
        CF124B13ACD3EE3D0D06C46D1D18E809B03050FDFDB26B527FBFA60FC9DCB88A
        9F1660EBA69680177FBA3A1608E8510080A22305CE9AF31E6C5A77800E2C8635
        60505D1E1E7AF00E292970DEAA69B0F4BDEDE1EBDD8DDEC80720DDDF8B00801F
        4B9CBC00E2988DE641010098E003DFD646730CF060401546E85DD7DD1DFA9167
        B3598F2B804AE1878F7F1F6E3CFF8791E3AD86C4E50B6C3BB802361F5C081BD6
        EE0AB5C9C0008B24E0EB10889C0006045420005F4426EE00DEBAB178D39F60C1
        A69748E29E3C17CDC0BE07967D2F60A830D0EE3D0106C27DAA2D05FCBE6A8081
        D4DFAFEB33B83D50FCFDD2F90B70A3C28A1FFFB1DF6BA95CAE7FE5676BAD4140
        8F0300141529B0D4DD095327BD07FBF7B8FECF18D680134E1E0A77DF7A4FC815
        803269FA38D8BAB129789DB051CD7C00FCE9552103D2C952742ABF3EA7899250
        5902640080BD902B0200AAC970EF1F15540B210F2218F057C1B2C442E1978DFF
        E2CE66E9BFAF8DBE1DBEFAF95F468EB7DA12872FD0DAB517B6342D85F53B17C1
        9EED6DC25CB9CA490206B05090080244622073070C39B216FEFE1BBF864F9D70
        A574CC38AE5D07D7C1DC0DBF830F562C80CE8E12E90333F265DC3966FDF2B511
        345FB39C422F39CCB7516D30201F4726120CD82603E2CFF1E6B90F26F749FDFD
        11F397A0BFDF40F193636E91ACFAD7FFF5232B10D02B000045470A9CF4DA7228
        749603642EF2D7D01A70FEC5C7C3D59FBB494A0A9C30750AECDBD9D22BE180B2
        767A830C285E639C1D30E25E1900C007DA1408280180E2ADEEF9B58BDDD0DA1A
        04037C9A610602642F69B404202FE0EBA3EFE813008097387C81FD6D9B60C3FE
        F760CB8E8D70705F87305FDC73E42619620000A78624062AD23C010C0460FA60
        F682193ABC16FEEEEB1404F0568B35DBA7C39C8DBF8425F3B6D3F4BA39FA65A2
        F2E7F3ED6329DE4C4E58F5835C914B1F900AC180AE0F151810098651A24BEE63
        5A57A02792FBA4FE7E7DBF7DC9DFCFEAABE07DF28A1FEF0395BDA0F8BDF39D9F
        70FDF87FFFD81804F41A0040519102B737AD81B75D9FBD35087037AEB9F53438
        EF1323BD6B981500498113C6CC71562B05E9C5FD950CE8AD367400A01BA4AE00
        5D48A0D8578FB802343BF9EF9DF581456358F6410403B46C2C3D47E60A605680
        6F7CEB360700FC3A729C2AD9D3BC01F6B76E86734F1A15BB0D95C4E50B6C6D5A
        065B0F2D860F57377273169C475226D80500A47C301709C0F2040007A0061F51
        0BFFCFD77F01C70C1D01CBB6BE0193E7BE08BB77B611A59F71C9A57954F4CE67
        ACBE472AF0B939F83D5740163460B77A60C0B40F1E0CF0FBA2C080081E64C97D
        74223B3FF5F7EBEF3D69B25F5FF2F7AB56FC068A9F7CA6C0BDBB7EF27F361A81
        80DE06004A52E0CAB54B60F15CEAB30F2A4CF7AF8135E09E2F5D02270CFDB477
        3E03015B0E2E82C9AFAEF4CF1F0064406F5BA2E88327A9AF8F1316A84A139C08
        0050F6299917D7ADD2852439973CD8D64A0B15F1E2F9A39D25E937BF6D0F00F8
        553086BAFDEC4F77C327CF3802AE38ED5B70F9995FB36A2B4E9FE67C8166070C
        2C878D07E6C2960D34D916CBE6C80040D1CD08D8ED82010208B88C81CCD48882
        2000E798E41EF040B99B83DF0500ACFA1E0200E266E1D8FE18A190F10083FEAB
        3606038A93F8C3B1FB1044157A286E8B9604113844B91E06AABF5F3AAED4DFEF
        9D9F90E2F7C6EBCC55FD9BBFDA1409027A1500A0044981BE764365FDDEFCF760
        EDF2BD1C93DB3D660802EA86D4C27D0F5C0747D49E10E2032C593F03E6BFB325
        193220B73AA9360008DCBF0C00781BBA01C8AF374A0E6408005463579D27DBD6
        1D2044BE4C78EEE82A936EECDFDB0E7BB6B504A2032A05002592FBBE8D286154
        B6BF9CF110ECDFD341FA38FAF83AB8E48CDBE10B677D0786D51D67D5AEA9E8F8
        022A1701F205D032B07AD37C3874A0D30300C4BC8844C062302BA3080242C997
        3C900D505B838A3D4BAD015C395E0292733E1780E6E577AD01129780EA6BAF14
        0CC4E923AA391E0C88DB519604F11C99EB81495FF0F7D34B9225FBA5FE7E6EBB
        A4F7F1B394DD3AC50FDD7EC97552E7835DDF5DAE9FFEBB6D5A10D0EB00004547
        0A9C3CF15DD8BFBB4D0902C8670D1038E6C423E0CE5B6F229101220898BD780A
        AC59B23B7041A5D100B2F35512870C18BA775B2E8070CC343B60B87D351010AF
        B54D0EA49D30610EB2A1E7220800F6EE6809710218D1330E00E82AB57915F070
        F53D79F593B076ED46728C55DA43E57AD9A597C217CE7C14461C7B8955FB36C2
        8301E60AE05310534B41BBF33E297B60E040DB6658BFFF5DF868DD4724952E71
        01B8D1007EBBAE4BA044098220BE08DDE7B606C97E58692FEBAFECD1ECCF8724
        126B10E303D4E602DF950D79CF5ACFAB4E327423C4EA13C2CADEE47C32E7FD20
        B94FEAEF8FEA577F5F7C1F518A5FB7E2C7DF255F6555A2F8E9F8D1A5D70DF50D
        CF6D5782803E0100501C10F0B4F3BAF801DDF235517B713F8C7D791E497D4A06
        1CC31A70E6F9C7C20D57DD1E3CCF25054E7E6B0AECD9D1027CA3B27CFB7D850C
        28DE63258981C46B748582C2ED27030064EF63134B800A00F0634105B763D341
        EF0782C2FEE2BD8CBC6304FCEFBB66838D200040D37F4BC75EE7F969850FB6BC
        060B96CFF14C75F447D8ED25DC39EFA2A3E1D24F7E955805AA25517C01E62210
        F9021845B0B9691E2C5BBCD92DDFECB759722B06929A01E520A92DE786516658
        8AE24C100050A54F79007583F39EE95FF70C68BFF74AAF512DED2D1088AACFA8
        266C400E7F8D6E47EAEFD7DDBB7ED52FBBA6A7FCFDCCD42F23F799287EDD8A9F
        BC7FCA25E2CE432931B7023DF7A9397FD8F9A46C5C7D0600A0382060A6F3AA18
        45B77C6DB4AF7D1D4C78F1C39062B6B1065C7EFDA970D199A3BC739815A0A56B
        2F8C797D1A74B475850040E87336AC6CFA1217200E0010DBB00A0B949AE63352
        00A08B0C50352B7D791A5A01503ADB4BB0ADB1C9FBB16084002307E2B9975CFD
        09F8E7AFBD0F36C2004073FB1E92EA76E3BE053063E16BE4182BB3EBE5DE2F32
        FF5D370C1E9C832B2FBB02AE3FE70770D2F073ACFAB4111D5FA058EA088414A2
        DBE0E33DB361F9C6D9B0BDB139A0E0181F80BD8042DF592EEB9DCB57E1C3EF04
        99FF438FA8816C3E63A573930203914A37D645F2CBC57DBA0804D971D9F9EA1D
        A9BF5F7FEF7DD3DFCFFF8E62B0FA4D4CFD72C5CF2C92E57293B37DC6BC57F636
        8963EB6B0000C980C807389D0700288DBB56C2CC09D4D41A05045420E0B607CF
        8353877FDE3B8781809D2DAB60FC9F164AC980515680BE040002DB310100B9A7
        18C981A2EE431CBF6E2E22F70B96101D00D8B1A5D9F95195023F1C76EDE7AEB4
        0700C80168ED3A08AD1D7BA1B9630FEC6EF90826CCFD1D3946420C9D0702C3EC
        50F963881D2BC55B2E969C1F3EFD715E70E97170C5A7BE04A3CE7DDCAA6F5B51
        8514EE6DDE00CB774C8485CBDE27D5F4484480FB4261BE79460A0CAC5CB8B9E5
        899E6CF53FC451FA75436B94DF63BF05037196F1065DC8B6037DAA37A5FBFA82
        F2978E3361E5DF9FFCFD44A157A8F805729FCAD42F53FC9EDBB3269F7F6AEE4B
        BB9E14C7D8A700008A4B0A9C49230382A4C077E72129708FBB6D0602F87D7575
        79B8F3FE2B49BA60910FB0F1C01C98F6C606AE3F0918D028378F0CE8F5191F00
        04EEA707C880E2353A57804D6E80240080F478040060E34000B06B7B0B598D33
        7F1B9F34280E0040A5DADAE90080CE7DD0E200808E620BBCF0F64FFCB9731121
        D635C0EC7A18A24872F1771549DE7D62EE2BD11FEE6047615E7EF55970C3D97F
        2B4DB69384F02060DDCE99F0C1B631F0C19215E41853FAA592B0CA773556B7B0
        5B66C5213C9BE307FB80D44073F71530A0D5EBA66E83A88109E7EB7806A136E5
        9B3DE2EF47E90F64BFBEE8EF678A9FBD734A65A6D883A67EE632F4C61C43F117
        B992DE32C54FDF796574C935CE7F75DF19E258FB1C00404152A0A3A09FA35B41
        10306EDCDB8414E8EFB3B3061C73E250B8EBB69BA5A4C0391F4C85D52E29D0C6
        0D8092932A28FDDB8A371B46B1E97B920CE8DD936982200DF091BD1713B10464
        82C99198199A1F070280BD3B5B69A6BB521004A05C7CE5C9B1000016BB69EBDA
        4F2C006D5D4D3076E1CFA0D9CDCF8F71EF7CDA5D0402D41A403F33BF7AB11844
        FE675F700C7CE1E23BE19AB3BE0B470E3ED16A4CAA71E28BA2A96D37ACDE3105
        DE5FFF126CDDD84C8E31C5CF5E846CEED8B358E25E3CFCCB94D76535B55938F2
        E84181F2C3D22FAD0F8301D33E231BADA493083F80B5C95FD646EAEF37BFB718
        9617BEED24C97DD4A5085253BFA9E227ED9551D3E560C8F09ACFCD7A7EC7527E
        CC7D1200A0A848811819F0A73FCC20897C98E2B605019F387D38DC79E3DDDEB1
        0CF7F61A3BE575D8BDA355DA2E6D43BEC24D221A80C569CBDA8F4D06F476EA06
        600700D47D64AA060042C70CDC000800F63960B11B15AEFB03E30B0B5D74B93D
        0040692F3800A0731F1CEAD80D1D5D07E1ED75FFE228574A246500007FB8C405
        80CABFAB4462EEBBBA68CEFD72910280920B0244B9F1CEF3E1AA11DF810B4FBD
        CB7A6C2C45EFEE83EB498ADE45CBE71133BF6AF58E643DFE1DC05EA225F7E533
        6C782DB92762B2ECEED6961FAE140CC8BE6B5B3010D58574C51DD1A72DE0B002
        07AA7D1043F9A7FE7EF5DC18DC5B5C93BFCED46FA3F8D93DE8147F94A95FA6F8
        BB4B34FA265B577C64C16BFBEAF9B1F7590080A222051EECDC02639EFF80DE80
        0002F8CF3A2080ABBFCB2EB8D1DBCFDAC1C8803FBD3A0E3ADA0BFD8E0CC8CE8B
        030064FD90FB32490E6470DFA6EE006357802100C0BA12E447E1828052A1E8FD
        90F119F8A7AFC605004DD0D2B91BDABB0EC0C22D2FC18AD534B1140300381092
        5AD7B300503E002AFEAE2ECAD62531F865B66A60B640EACFC372C8278F180E37
        5C7B2D5C7BD65F68AB168652F436FE1A562CF49368F173C6F2F493396335035C
        9F24CB4AC7C682E000C97CB692C99A9E684EBA63E33455EC712C05AA3EA3DAB4
        B21EE81008D75ED4BEBEA0FC7BC2DF2FBFF7BE41F68BEBE32F310B9C85E2672B
        7E325FEEF5C552C99B0F51F177976B1DE5CE069F834C99FC8E9F5A3865D393FC
        3DF47500202505A2B2DEB06339BC336E3DE707B7B706DC70EF99F0A9E3AE0EB9
        02305DF0C4B1730320A02F910151645680D038137605C8757EE062E57DDBF001
        F8F3652FD74C886F21CF0A883FBABDBBDAC8EA1BC55B75BB41EF43860D8257FF
        692DD80A8B0438D8B6D301034DF0C1D6D749311C16FBCEAADE61829DA25B7A97
        54DC433050F2D3EDE20F9FE4E2E77C81D475500CDEAFB3EA1E79DB6970E988FB
        E0FAF3BEEFEDF7CDFCBBE0FD8DF5D0B07022ECDBD5E6DE3F8DC71743F4C8F799
        576B683EDC2F8EF2E7BF93E893ECEDEF714CF6958281A836757D585204527F7F
        E4BD274CF68BE1EF17153FEFE33751FC2A1F7FD90BDBD39BFA79C54FDBEFD62B
        FE6EEFC7F8D4C2A91B9FE4EFA54F03001424053AAFB099CEC7102970E192F9B0
        6CDE762508E03FCB8040EDE03CDCF3808214D83417A68D596F4506F440400F02
        00FE9E54F7EEDEB06600C1EBC52A66C6AE80104741CF6B3049172CEF138C0000
        0A2A4462767757D95401FB0A76D27F341A8D81178C0468E9DC4F7201B474EE85
        ED4D2B60CAFB7FF0E602AD00180247FCE905AAE4910C587449815EF95D1667EF
        860D921F37010AFEF8F8D53B662F1C7E741D5C7FF3A570E3393F725E446598B2
        E627B078DE66E8682DD07B76FEF372F467692EFEAC6B91C871F1F8BE152BFC1D
        D40ECA9250BE4A4ADDB267125F6E4A30604B00503C179582019935BE12912DF2
        4D2902BCF486BF5FD6465F50FE7DC1DFAF54FCEE7898E217C97D95287ED58A5F
        A7F8A9D2CFF18A1F773AFF4A4F2D9CBCF549FEFEFA3C0040D19102A74C9D09DB
        1BDD12BF31AC010802BEFA95BB3C5220CF0758B0661A2C7D7F27D79F851B803B
        9804195054CCA62181DE3E4300206B47971B20D847750080789D8D1BE0C0DE0E
        470963463BFAC30C58019C13273DBBD1780C4C5828605BE70138D4BE9384028E
        9FF35B2900C06EA4AE000405C5EE0008C01F3BF1D7BB31BFA13920AB7A37CD6E
        D64DB39B73CB1B6768F11D314B5F3EE73F830C28A900E7A0BA9C57BC477C0E06
        3A18B069D39A3018D1AF6C1CB6267F36BF3AE90B64BFFEE8EFF7426199C99E23
        F899287E95A99F29FE72C9FFBD27AEF8B305E8A6CA1FB79E5A3431180AD82F00
        008A03029E745E5D3F75EFCADB8FA4C0D75F99052D4DEDF486224000FD0C8173
        8F3BE908F8E2DDF7D37D020898F1FE2458BF667FB88D2837007F00A241003B3D
        0E19D0EF430300BC0DDD00E4D7180300C5092A77404F0080A6FD9D01D21D09C9
        2B94BD97CAC4673698741F101609D0DCB19B2403C24880E7A7FD580A00C8F94E
        9F581407F57A5B7301DA51C9F3A1816EF95D04094814F45608DDFE5F9EDB418A
        EC64395FBE0B0228FF80CBC79FA5E79173F0D9C8F9E0919FA3C143F381FB0B5A
        53A2EBDEDB482459907D81516040A3851323F329DAB419569C3E537FBF661C3D
        ECEFE799FD248F477758F1DB92FB6C153F4B30C6147FA69C77F6E5A8E247333F
        2A7C5EF1BB0A9F53FCCE67809AC1A547E6BDB2B79EBFD77E0300501C1030D679
        75DD2B5A019A3A36C184979743577B21A4144CAD019FFEDC0930F2F3B7865C01
        480A9CFAF6D4506400BDB6E7C980FC18AA1916C85F9B53BCA8952E0A430020BB
        079339CA0873AC0A07C47E5B0E76127F3B0BBD2BB921798C495B090060A1809D
        856698B8FC67B067479BC703C8D5F899F2F05FB1AB1BF2B5FEE0F18571705F07
        B4B514A00B390ACE7FED6D05B2CA6061F9FCCB8E7FD6D833C6B2F1B1F2BBA8F4
        F13B24AB7FB7639107C0E66BC8D01AAF529F28EC3BD1676FAC1C0C04DAB30503
        BAE3C2E5969778E7DB5812747D44DD86150720F5F7ABFB30991B03E5CF27BF0A
        A4C28E50FCB62BFE12F71B678ABF58F2172701C55F02C2E88FA3F8B359671F90
        ED33168D3BD0C8DF6F7F030047B97C808BA5A4C0B11FB31DF48F210860E7DE74
        FFA7B4A4C0CE8E62AF9301F9F1A3587301C80ED500646332B304C4CD12980400
        E0EF3D909DCEE9AFD559711385EFFAD99181CF62F0F1C735E1E9F556FD339185
        026ED940E3ECA90520EB8D95B902982F9E1F3AAEDC1104ECDED60ACD07692E01
        3EFDAEFB7EF1124DF11622768F79CCBBEF9AFF450E40000038E762589FFF7DC8
        EF8DA56EE6E7B34F8081C80B0D34BBC12515181FACFB946DF363D0ED3C5CFCFD
        B27E93F6F7B36D96B6D766C5DFA7157FD6D3594B178E39F039715EFB150040D1
        910297AF59040B666E663BFC6316D68087BE36524A0ADC7A68314C797D552400
        4049820CC85F170700F0E71A0300C971D392C1D54C132C6BD6C40DC0420189A9
        DD65DD2300404E004B7633EEE71F1BF52B8A180AB864DB58120940C6404CF441
        374046F64C70B7DCD2D44578002D0E6041AB45D1B552283921EE7381FD10DF7E
        36080048889F6B01C0D53EFAF7A5F399D5FBE6656040FFFD540E00C4F1C5BBB0
        3230A06AC2041C885DDA028681E2EF27FD264CF6AB96BF3FA4F82DC87D492BFE
        6E727126B6E2CF649D8544968171CF5518CA01409AE86F0000C50101F73AB735
        966E0541C0F419B3A071ED3EEE0EEDAC01B57579F8F2576F82A1B5C787F8006B
        77CD82D953360727304137800A00C88E479101C5F3C4CF95E605508E570504DC
        B7A02A93225334FCE3C8E79F172D065E3E1AE1FB65E7302589A177E86767F5ED
        59521EF603FE7FFFB61ECE3EF10B602B7C51A0D6AE7DB062FB1498BFAC81F62F
        0100DE502500A0D05126D6255E3A3B4A70F04027B4B71642D3C9CAED665D73BE
        A7FC81590430535F1E8E38B2869CCBBE17D1971FFAEE22FCF351459DB4CF4142
        120B1098DADF0D9B30392EDB66DDEA00435FF0F7CBC63150FCFDFC6E51F12749
        EE2395F96479FABB21A0F8FD18FE08C55FE64272258A3F9373CDFC82E2A716C8
        4CE3BC57F69E219B877E0900507C5260100014CBED30FE8D397060770B779761
        25A10302C79F7C04DC75C7CDD2C880F796BD09AB3ED8E3B763E10610CF578989
        2BC0A44680785E520000012D71371B0200FCA1B80FA2E7B766F713F07573A437
        F9BCF8D7E7B879F1941C670560C3C01F2B63DDA3AFBD44B2F1953C56EF4FFFEA
        E95819F758244073FB2E68EDDC0FDB9A96915040364E9108287E7F90F1D3EFB6
        1EEC52AE12C9F1E6023437759297110FFCC4953F1E1B32C451FCAE995FA5DB4C
        C1804A4CDD02517D542A2AEB8571B481B86D030E2AF003987006422740EF90FD
        068CBFDF9D60A6F8A5697BCB3ED39E1C2F77874CFD140C74574DF1B3AC7D268A
        3FE0DF972B7E72D991470DB96FDA6F368F937D17FD1600A0BCB4F031B4024849
        81E3FFB8DC59FD05574F36D6804F5F72025C7B5998145828B5C3E4695360CF4E
        AE1E81CE0A502500C08FD7140004B60D0180AA1D060064EF41FE5C64B533B334
        19AB5B479E57FAA6CFA03F76B72DB74D8FE99EE794233726127BEFFC1A91655F
        7679002C2FC04FBEF7EF70D1A9771BF5CF0B0280B6AE66AF285073E76EF8E3F4
        7FF1FAC5387A130080ABFF8EF6A2775CA77B90CBD0D65A844E3CBFDBFF9ED0C4
        5FE7287ECCCF1F9C2F6F8AB5604039DF8AF0BD381C819E02035163D737A259E6
        472DDB932409F07DB0CDD4DFAFBC37E5AA9FFB7E98E247212BF8523990BD8F15
        E832F5F1F3E5C59942174DFD9E92F7B803152AFE2CD567A68A1FFF0E3F7A48FD
        9BBFDAF488EAFBE8D70040470ADCD3F621BCF1DC6A4D6C3E04CE6713C6FF1D75
        E708F8F4A9D78640404BD75E18F3FA34A250685BE65680DE240386B655433104
        0051E322CA9F6B938F284020E095E6558CE38CF38EF63EEFD8D2029D6D45E97C
        12B378C667BAE75C021E136605205C802E1A8BCFB203FEE4897F8F9D731F2301
        30111082000C05AC7FEBC75EBF6801E0230142F7E92A9BD64305A9CEB1D11FEC
        19517106A2DAB37109F4073020BB0FD9D8ADC0816A522B250944FA000E5F7FBF
        EC1AA395BFD0809BF853AAF88DC97D65BF6E07B50CB8D602CD8A5FAEF8E579FA
        2559FB88E2274A5FC6E8E7143F7309924B32D4FD889BC38F1DBCF4926B4EB9EE
        1F1F7CB749353DFD1A00A0E848816B367C00B3A73692ED2820A002010F7CFD52
        38F1880B42AE80A68E2DF0DACB0D6E1B72251DA742A0D886B72F26195096D92F
        6E58A06976401424D2E06A3B706D26D83603047868D0E01AB8E07327C299C75C
        0BA70CBF00EA6A8E24A7757797C8F84BE46F19B61F5C053B9A57C2AA35AB61FF
        9E8E103F80F9FEF9AC77285D9D340C10411B9200991BA05200C087024EFBE89F
        034581B21C109191010B1D25E2EB672FCEAC265CD254A2C040945BE0700203BA
        7B49B653039BBFC4FA90FAFBD5F7C5DF9BCC05C4143F9FC4C753FC9CA93FD2C7
        2F94114F42F147A4EB1593F748147F56BADA678A1FE8EF1EABFE5D37E70F3B95
        CA9F5CD7DF0100CA4B0B1FBBD7F9339607007452B2307BEE5C58B38C96F83505
        01F4333D3668701EEEFFD2D55E64007F4E63D3BBF0F6D80D8957088C4B06642F
        5B2B3220D9A11A88BA8D9CB40FFF73475B891B7BF8DCACDB00E69BBF6EE4B570
        C149B7C390DAA39C76C3F9E7CBAEF22F963A9DCF0528968B1E1858B46102347E
        74D06F970301F9BC0FBA181910C9766537152FFEF0E3020014160AD8E2FCC348
        80391B7F0D6B3FDC44FA27002097F14CFDA22B007F76AC84B037760900B0E4AA
        05AF570080A836A314B349329FFE000664F78522B314E8EE3571CB02F48CF297
        FAE21356FED5F2F78B513F44D197FDF63C825F5CC5AF30F527A5F84359FB2262
        F833C450908954FCF877D8F0BAA52D873AAF9BF5FC0EADF227D70F040080E280
        002C1DFCB48A14B877974F0AB4B5069CF08923E0EE3B6F81BAFCB0C071142405
        AE5EBA576C2ADC4F0F900151A22A05CAAE493A39103E526DAD05E9AA926DE30A
        FDA22B4E84BB2FFA311C31E804C8E706396DE69DF1E3939E73B6F3CE8F969AFC
        CBDD5D24EF7DB95C80AE52BBF3232B102E46B98CA56F3B1C20F0214C9EFD32C9
        B0C78701A20F9EF103F0C74DB8005D342F3F2BC2F3E3C7E303001609D0D4B61D
        3A0A8760F6865F1803000448CC85244AD662E56E223AB7405260208A34983418
        482AE7807ACEDC7E045E81CC7210757E144951053854D25F93FB24E1EF973D33
        9EF27757FD32C5CF97E595297E8FDC67BBE29794E4B54AD76B11CA17A5F871DF
        91470F1E77DD5DA73FF2D737BC13A9FC493B030500A03820E039E7CF681104B4
        76ED81D75E98071DED5DDECBD016047CEAD3C7C2ADA3EE0CF10150C6BDF906A9
        3A273415EC274100C01F8B030064D7D19DAA81A8DB91250742B336CBB6C7C6CE
        7C6BEC9C91B78D802F5EF81F44F1D7E68738E3AE21CA3FEB8000BEE63CF9C196
        291040658F568082F3AFABD8E66C771220D0556C87CE62334C5BF95FB0E9A343
        FE5CB8E96F110404A2013A5D00E0ECFBE2FDB7C343973E1DF95D88822E80CE62
        07EC6FD94C2AF1ADDEF43E1C3AD0E9DD1F7301B06DD10DDC72B04BD97656F36C
        54C32D60DA6E1CC2A04EE28281245313C71519E950A7B8752445D9B64A0E477F
        BF98E29B4989ADD0352B7E5EF1CB7CFC468ADFBDC646F1C749D71B11CAE7CE81
        5CF1D70ECAC3D1C70FF9E1ABFFB4F619B09001050074A4408C0CF8D3EF16D16D
        1508A027BBE7F8D7D2BF19B8E2C653E1D273AE0FB90250098D9D34090E35758A
        CD54850C183A66C00510CFB50200C2B1280070A849AEDCF0C789110023CE1A0E
        7FF7A55788E2CF67EBA0265FEBCC539ECC693693975ECB4ADF7695BA080840A5
        5F7056E09DC516B2FA4650D0DD5D80591B7F092B166EF7E783030174E5EFF300
        3024E7C107EE84072FF9F7C8EF828D01A558EE820FB7CF80C5DB5E83254B5611
        859DCBF9390E7279F7479A0BBEB8D85F2CF853E8D2BFE9B315ACDA7592A9105C
        54C211D0DEAF251810B77B130CF4941C2EFE7E26AAAF9128DE52B7A7F849C85E
        D155FC4597D59F84E28FB1E2AFBAE2E7DE29242CDA39AFAEAE66E9F1271FF1C8
        1F7EB26A69E49723CEF1400200280E0838DD999625202105AEDFB61CDE7E639D
        BF2F8635E09607CF82B38EBF5A4A0A9C30768EC77CAF2619503CAECB09C0DF87
        786E683B0600F0EE91EB2390D216C0CBBAC708D13FF8EE0FE1F3A73F4C147F3E
        5BAB54FA32E18100022F24DFA1191E410086E6A19560D2D2FF0B8DAE25807705
        20F31FBF1F120EE8D606F8E2FDD10080EF73FE867A98BDFA15D8B6B199AEF46B
        B25ED401A90190CFBA4579FC2F495CFDB71EEA82286100005F6AD90A56EDCAAF
        3326C0889B5028693060322E1918E8AF00A13FF8FB65D7D82A7FC6DF518D9528
        EFA25AF12B7DFC5C8D0D15B98F8086EEB2A7F859811E5EF1AB2AF3D92A7E9350
        3EAFB8582E1B58ED93E670D19181A6634F1EF6ACB3EA7FD2EC290ACB80030028
        2F2D7C6C94F367A608005066CD990B6B96EEF2F75B5A0330A5EA035FB90A8E1D
        7256A05D1424054E1FBF91BF34DC7695C880743B533D00C09D630200583EFB92
        8BBECB65068C32F0A77FFB00EA6A8638D7D41A742817A6943B0A6DCEBF830404
        60653EE408E0F68B6FFD5F686FA52B76B402A062C65A008C08D8ED96067EE0BE
        3B940080F5B1F5C02A98DFF802CC983513DADB8B24D35ED6F95FCE2DC78B6443
        A2F80918C8044BEA0AE64B5CFD934C8416A1E2D918CF49E4D768E816184860C0
        66DC7D450E077FBFA8F4C5EFCC23E8957C663F79A710106FA6F8752B7E1BC56F
        94A7DF32863F93CD0695BBC2CC4F8E39DB8306D5C0B0A306D51FD8DDF2C319FF
        B3DDC8D7AF920109005054A440148CE1DFB3A339381116D680E1C70C86871EBC
        434A0A5CBEE91D58D0B0BDC7C98074DBCC15102B2450728E2C3700AEAE51C931
        462D89B3E5EADB5F74C5C9F08F5F9E5591F2E70557FD0C04B4761E80F6421371
        0FACDBD3006FCD7CCB9B2754CEB418104D0484FE41DCBEEFDEDB03008029FD92
        F377E5D637E19D8FFE1316CEDA4E7E90A4E04ED6ADB697CDBAB1FE1992F4279F
        A7E8DD33FF8BA98A3340562E488E8C6BC2AFB65BA03F80019BBA04E2B8A28ECB
        C8AABD29BD91DCA7A7FCFD2874B5AB26797A8ABF0C7E763E41F1C721F79599EB
        80297E57E11B97E43554FC5131FCB68A1F57FC75436BEBCFBAE0B8679F7D6C51
        63D4F36322031600A0A848811819F0C2EF31914F30FFBA8D35E0B44F1D0DF7DC
        765FC815803273FE6458FFE181481E00DFA74E92E602C426030AC75400A0B5A5
        E099DA50D85F948B2E3F197EF6F01C2BB37F9430108031F998900743F2D03DF0
        D2CC9FD15C018C84E7FC8F71005875C0FBEFBD03BE78C9CF3DC5DFD4B603166F
        7E1DC6BEFDA203125BA90B81E5F6473FBFF30F0100E6DAC763987D0F431A59DE
        819C6BFEF740000700DA9D79212F2ECDF7AB133E795235DC02E4FA2A8181A81C
        03B4CFCAC1802D40508D5B3776D9B6CDF9366D8AF7E51DEFA7FE7EA6F475FE7D
        5A82B76F297EE33CFD9A187E9B503E41F1373A1F9F72FE8DAB74C52FCA400700
        47017105C849816FBCB0340402C871436BC0A5D77C12AEBAE866292970F2DB53
        4964400804C400007CF7A60080892A2F003BBF120020EB177F2CCD073B7DB37F
        37FBD1D1E76CE8B041F0FABF7E647CCFA68221791D855668EDD84B72F377145B
        E0FD4DBF8745F3D67973C498C20C00E0F8EEBDFB76B8E7A2FF033B9AD6C2A4D5
        3F86F9B31BA1ADB92B30B7D4CC4F153DAEF4E9DFACE75AC8BAD5F7722C35719E
        01828C0702B03F0446AAEFD556928E1490B61393A7A23E373E1830AD5828DBA7
        0203B66E0536767E9F0929D1E67AF11C364E5EFA9BBF3F4AE9B3B6F07A52AABB
        CC297253729FC6D46FAAF8A32AF369B3F649147FDC503E4EFF343A7F9E72947E
        7DE4971153063400407140C0E9CE9F25CE0C1FE5DDB4FB26F978EB328F149851
        28661508A0E700DCFAD03970CE09D704DA454152E0C4F17303B1DE71C98092AE
        23C9804C625B0254C38A00002807F777048836AC58067BD4FEE3C917E0DC93AE
        35BE6F13E133F3312BC0C77BDF83896F8F09000014561E18C778EC8943E0B893
        86C0CA45BB3D56313FAF44C167A88F9FADFE319281F8FFB90803DE0AE003069F
        FE8FABFF12E75B0CCEBD4F90B4956AF003426D548383600906F87D5189794273
        9491E72110B7454B421C2B027F7F3A656F2AFDC1DF2F1D876B41129F4FDE8AC5
        F747FCF7A5EEC00ADE0B25D6ADF81354FCD6E97A2B8DE1CF4957FB280DCEBFE7
        ABA9F8990C780080E280808B818200FFC6DDB7C7BC45F360C97B5BDD7D32025D
        B435E0E16F5D2B2505EE6EFD10268E59E46D571212285C525D2E80B753371875
        5BAD4D1DD0D9550AACFEF9A219B77FF96CF8E1F5EF18DDB38DB0C43C2D1D7B49
        8EFE4DFB17C39837FF103A8F01009607BCCCFDF8BD7963DF3B59DDD38A7BACD4
        AE47007401000308786EDD60DFB5C1E6BBECAEFE2393EAC4F0E59BB8056CDA93
        5E9BCD045673AAB6E38298B8217C71C04068FE628203DDF926120538FA73311F
        B6DA573D8FAC0FB6CAC6D57D5F56FC26C97BA242F90CCCFC280D4057FC0DC60F
        5285725800001407048C76FE3C270301E3C74F876D8D4DCA95741408A81B5203
        DF1C7D9F9414B876D72C98FBD696F0F5157201F86B4C0100BD467E9E3217BCA1
        2580BFAEB3BD00ADCD5D5E2A4D5A2693AB98E5C82FFFE98F70EE49A322EFD946
        C40A7D1FEE7E87580098B0972AA90888C580B84421E24BDC2F31CC1E0A5AD110
        5F6A59D72A405E72F90CA9C657E315FE09CF374623148BC1B77764EEFD98D680
        A8BA027195B47F3FFD070C546229901D43E18F8BE79BF2124CB799F487E43EBC
        D2D7FAF7B974BB2CA48F99FA0B2E104852F19B95E44D56F1AB8AF3F425C5EF7D
        6F870B0040D19102C7BD360B76EF6CD19AD37540E0F84F0C83AF7CF141092930
        03EF2FC774C17BAA0600C463517901E8B5AA55A82100501C278ACDF9911DD8DB
        160000347947D10BB539FBB327C0BF3DF6260C1F7C52E47D9B0ABA015A3B0F7A
        00E0AD8FFE05962FDC1A78A17A91098C5004C197A5342AC2FDD1E2EA3FE39201
        110C0C3DB296B0FEF97916E70F5F600800544A53A7F02A51D42675057A020C54
        129DC0E6A71230206E9BE6F3AF54A27809AA7364E30A6CF721B29F89D267522A
        55A8F8390B81C82D62EEC532B9465E92374AF1DBA4EBB5ADCAA751FCF5CEBF67
        1DC56F9DC0272939AC00008A0302D015707160129C5FFE81F6461853BF848688
        81DAAFAE03019FF9FCC970FD95B74949815366BC097B77B626460614AF312103
        06FB939F9F04004069DADB0EA56229600110D36ADEF5F079F0A31B937305A005
        A0B5EB20B4751E80BD2D1BE1B713FE015A9B29F18EC5E69758384F371D53A9CC
        BD54F99F82309F44F93B7F8F183E086A07658373C6152611E70FC3FE4A7C5544
        090050B9052A55D4366183FD150CD8C6F39BE6F3B7CDDF5F0DE98B267F6F1E33
        E0915EE9DC0589C0FCF5E477568C56FCA5929F594FB6E2E715BFB8E257297EE3
        023DBAE43DCA18FEE8AA7C1AC58F2BFEC62A3D3AC67238020024036E949102B7
        EE5B09135E58C3CA294682001411085C77CF5970E1E9A302EDA260DEFA975F7B
        839002AB450664C72A0100A17D26C3929C53EA2AC3A1A676BAF22FCA7FA82823
        6F3F037E74E798442C018C03D0DCBE075E5DF27D58B5688F3729E4C7E7D60410
        01000A532CA28261E58A8F3A76B08BF0C373A402000826312782CE72239D73E9
        B17873C2DC02D5CA21206D33020C98DE970E949830F0A3C72937AFB363640C86
        F9FB75D5036D0B0889FBE85CF4AEF2F7A29904D7183FD5CCBAC63EAB143F71BF
        D190FAD88A3FE0523450FC9159FBAC62F8F58A3FC35B027CA58F520F7D44F17B
        B77AB80100141D29F083150B60DEF44D74A721101041C083DFBA0C3E31ECC240
        BB28181930E6D559552303868E09E3551102235D01965600763DB3023012A0CC
        378772CE8527C0DF3CFC6C459C00960B606FCB0698B4FA27B0686E236729C986
        E6AA9B0BF921DB92971DC6FA1F71A4FF62C864ED00404B731779F1980200DDF7
        218E2D8E98440C546A0908B519130C5462A1E88DE43E51110B26DB2AE94D7F3F
        6FE257718ED8F95E6E7E574123EF85A5ED2545B8FAB1E23789E157287E8CDB7F
        D639503FE3BFB735C678B4AA2A8725004051910233CEF6E4376740E31AB7C46F
        0C6BC0A0C1B5F0F0E85B6058ED89213E4063D37BD030717D7030965680385C00
        7A2B7200203BDFDA15209CC3B800FB77B786DD0042910D26DF79E276B8FBB3FF
        64650DE05302AFDA3605C6CFFB4FD8BCE110F0258B31440F57EFFCA3CEAC0032
        193CB4066A07E5C2F329CCB3E806E001005BFDABBE33B13DE594F6905B20C93E
        94ED5A80017E2C49810171DBC6956092DCA752894A06C4EE3DB05D257F3F33F1
        8B0A4F3666A6FC4BA5A0E2B725F715DDF87F998F3FB6E237C9DA1723863F9FCB
        4599F99155FEACF3F71947F1279ABC2749396C01008A8E14882BF57D2C5DB041
        CCBD680D38EE13C3E081FB6E2791013252E0DA657B20D428982A05615B131228
        8E35F1BC008A73D8F51811D07CA0339C77BB14060028C3860F82EBEE3E13EEFC
        CC4FB41601BE40CFE24D7F8277563C0F1F2ED94BCDF41C731FE3F6316C4F9421
        4369B81EBEACB04C70DD90BC37775915A0D23C070C00B07D6CF51FF5BD992844
        59CE00BE3D1B85689A4D30698E40A88F1860403697E2B82A0107E23E9B643E51
        60C2247BA0AA0F765FA25443F967B319CFD5255AB8FC7EFD7B60F1FBA2E22F39
        2BFE6209AAABF87595F9648ABFC2E43D86FEFD7EA1F8991CD600004524053265
        DDDAB5075EFEFD1C52DBDEFBDD5ABA042EF8FCC970E3557704DA75CF84B7668F
        871D9B0E41A041300700FC8B2E2E00A0D7CACF9502806E8038698231B31EFE0B
        85E994B94A813C13DFFD310D1D3E18CEF9ECB170F1672E22F377DA519792BF9B
        0F7C40CEFB70E35258B5703749CC434C956E021E964D0BFF2100102D2CC80520
        44BE2CCFDA0DDE4A5662EE34050018C78CE43FE97CAB7CDA060040954048D7AE
        4E06221848729CB6C97BA292FFD8661364526D7F3F33F167F9EC95EC983B6616
        ADD05D0E2BFEB29B561B57FA6547EB17DCAC7D51A6FE4A15BF2E4FBF4DF21E55
        0CBFFF0E3052FCE8737C0A305D6F3F50FC4C520040498108024E67FB98B2DED3
        BA065EFDCD4A779F7BD0D21A70D52DA7C3E7CFBB31D02E0A9202DF983401DA0E
        76061A4B920CE87F360700E2F95696000DF84000D0DADC1908D9E12B70098BE5
        40B40451AED91C5D9D90150ADD9F6521792EC31F3F633C3E49DC93F5E3F6FD76
        E88FB7AE2EE7CD591400087CCF1A570B0F005A0E7579C046050054CA49CEA037
        27B8554A16E4EF5D240FF6161810EB12E8EA14A8E6436629D0CD57D2F71557AA
        E9EF2749AE38A52F86B27A6971BBBB038A9F28DF6239B0E22F769568A21D8DE2
        676E375EF1B3FB119385555BF127549C0777340212FBFE7B5B7D6F3F2B71E4B0
        0700282E2970A61819807C8015EB16C13BE3D7910781EE774FB0B006DC3BFA02
        1831FC4A108B06212970D284B950C474C131C88081FE639201FD3ED5E71B1302
        23AC0F324B000A0F0442D7E76848652693F10040C665E66773396ED51FCCD98F
        42F2F60B0060F060DF1D600B0082D705EF91CD5FB1AB4C4A0647CDB7AC5DD6B6
        3E9C2E3A8150A5ACFEBE6C19880207DAF6044B81EE3EA2B6C5FB8C7245D8F621
        8E93BF779598ACFAD96A9F15AD9285AEFAEDF18578582E0FCCD457228A1F15BE
        C98A3F4AF1FB1CA1303F48A7F86579FAED63F8A343F93C4B00CFE8EFE78A9F49
        0A005CD1910267CC9A052B176E8F0401F4731808D4D5D5C097BE713549172CBA
        02B61DFA00DE1EBF0AF88692B202B0E395860526992698E704F0A63E946E0925
        9A297F02007240732C64DD1F633E0779928E9725E7C90638002C756F864E020C
        1E920FCC598633F1897349E64895695102FE18A3BBADA5204DEEA24B139BA45B
        C0A45D1B890A2364FDF4241810B7759682A87954DD876C5B36B7B2E811957237
        E943D567A5CA9F11FA58D12A591E0BFEE787CF55C935EDB3243EB68A9FB42398
        FA4D15BF6965BE388A5FC7E8C77788C6CC8F3B1B802AFE06A387AA8F4B0A0038
        7140C0D3CEB7FF03B6CD943592025F7F6516ECDE76906CC7B1069CF08961F0C5
        FBE5A4C0159B67C0E259DB6359014C0080FF596D09B0060074E846FB43A5509D
        1FF1A1A64E287414BD17155929480859649C9CE267F7C92B7F7A0EFDF192554D
        CE0FFB6371FC75436B82F79B890600A45D4996B38CE2FBC61C0F2C91942C518C
        CE12A05AB5EB720698B8059252C22AB780C9BD54DB9CAEB314441D8FC339E849
        A9D4DF8FCA9E2F514DEF994D8CFF05F1C4BE806FDF0501C54299705B68263F7B
        725FE58ADF325DAF24798F4AF11B30FA079CE267920200411C1080AE80516C9B
        0701FFFDABA964058B620B02504E3BEB1878F0EE0702EDBA6743C38249D0F891
        CF1D896B0510AF8D030054E3B7AA1320210C8AD7B39A012456187C9251682C82
        F227263A2CBE93090300D1023004D9FDD930B189B70288C4BAC01C6900003B9F
        29632CF8234BEA22CEB7AED29CACAF28656502002A55C2261C019DF41418881C
        878125818CD3C2B5203B5F767DD4393A1023ED53E1EF67BEFD6C2E1354FADC73
        EF5DCB297F54E298B44BA5F8998F9F99E6752BFE324BBB2BF1F1F319416D0AF4
        18A5EB15157FB6189FD14FB71B60002A7E2629001044450A4457C0FEF60DF0C2
        7FCD0BBC706D81C065A34E856B2EB9D56B97099202A7CC9802FB77B505CE4F3A
        2C50E50E8822034AAF8D1A5A44DF2C4E1F19F3186D51E8A4BE7359DEF68CFB83
        A4AE802C59FDF3C43E310200C3FA1839506CAB1A000057FF9DE8FB372059B231
        68A74EC10FD05F63E61648C180625C0238E0F79928EA28EB836A3BEA1A99C85E
        DBCCB79FE3D9FC19A6DCFCF9EE6629305CE52F2A7E34F563682C21F9718ADFC4
        C71FA9F8DD157F2CC5AF48D72B26EFA938948F6ED70355FC8DBDFA5056595200
        20111D29F0A32D4B60CA9FD6B8FBE883630B02EEFCEAB970EE4923435680B6C2
        7E183BEE2D471196FCBD3D0400FC6BA3CFAF344DB0986A978D137D8A78EFF8AF
        13C100A721D88F97F8F539E54FC6EFB2FD6B06E59C157F8DF7C2E327400700F8
        71C5E501B41C2A28351AE307C8C040926E01D91CA760A07A12A5DCAB2532DE41
        BE364B159BA0F4C5153F53FE2C714EA9E897E425A17C5D65ADE2F7FDF06AC54F
        2206A0B215BF6DD63EDBAA7C0A621FCE5FBDF3E9A9E9BF1BD88ADF9BC61400C8
        859202B3CFB16DA6AC11044C6F4052E03677BFBD35A06E702D7CF99B7252E09E
        D6B53079EC427F4FC2E981FD7DFECE8A5C01965680F09CA9EF0313896026B1CE
        0E6A1928BB457572B5D467573B280F8306E7495CBF787D60D80208F0C39D9201
        005D9D65E872C718A555656E81A87AF2266E019DC9DA24635D9284417EDE0E17
        30D0531248D1CB5BBD0808F68F791F986295287E9B15BFA8F84B5C59DF1E55FC
        42F21E63C59FD3FAF70F3BC5CF2405001A5191021104BCFEFA9BB075E37EF08F
        D959038E3C7A307CFDEBF74849811FED9E05EF4DDB42B7AA4006E4C74187186D
        B656E606307D512BB8083A0010385F4190242F4285095FB402B07B4B0200F0E3
        201507C5DF91CE2F1FC32DA08B14B0CD2668DB471C49020CE842E30E4780E0A5
        E875947EDE25F6F9E66DC9A4F0CADF25F551254F57FC9EE22FD07A1D49287E3E
        D3274AB194409EFE4A62F8F58ABFC9994392B5CF51FCFD26794F929202800871
        40C058E729BB976DF3A4C017FF673A1C3CD00AFEB12008A0FBDC0F122070FCC9
        C3E01B5FF972A05DF728CC5BF9267CB874AF354BD9D412A00300F45AB15D0500
        A0C335181828AFCF490187707E820080DDB30D0010DB66E340BF3F12A542ABD6
        1800C0EB536A75A17F75ABE3A4C206935E819B8001D38A85B27DAAB10E244B82
        9FE382FE16B2599E1713BC67F29753DA4CF1E3AA3FB0E217143F4FEE635100AC
        AD28537F628ADF2A794F38863F92D14FB70F7BC5CF24050011E29202678AE982
        D10AB0AF7D03BCFAFBC5D0D951085C63630DF8ECE74F869BAFB933040050264D
        1F0B7B77528051ED4A8174786A4B40AF03006EA70E00F0FBA3DC00E25CA9C880
        3A2B00C6FD6B15514C4B80CE2D10A5D44C3902BD010602F7C981017E9F8DA580
        8DD536798F6D66401389D347D43534BB65CE5BC966391FBF387F8CD85776C3EF
        504113655FA400C0F3EFE33F85E2D792FBCA65773FCBDF21AFED61AAF8E367ED
        CB1A11FB02A9D9A999BFD1F9F43CA48ADF93140018082505661D10005252E0E4
        9757875EA44A1080222894BB1E3E4F4A0A2C963BE095316309292E695740A5C9
        81A4FB74438C001F74AE0CC6CAFDB0F973642977930600E27E8C5CC0D5BFEC98
        7C0EE4F3AB2208CAEE4BD35CE05E6C3902BD0D06A4F75E211810B775E0C0E67C
        D95CC4ED43760E09DFCBFB26EC2C67EACF72CF29F5B37787143F6FEAC7103E54
        FC645F5C533FA7F87545BD6255E69329FE0A43F924FEFD46A0FEFDFAEA3EB1FD
        4F520060280E08B8D779CAC6B26D9E0F30FBFD39B078CE6677BF21101040C0E8
        BFB81E8E9390020F766C85B1AF37C42E154CF659440598260792EE330400AAEB
        759600D10AC0EE4B070002A74B7800950000FCD9E0EADFF43B883AA8730BC489
        14E0EFCB26E94D5482A1DE0603EC334A54BA625D2D0313D18109D3736CFAF46A
        59B01CFD2C6DAFE487C12B7FD1CCCF3E93881A64F997CA152B7E7EC5AF2BC96B
        92A73F6E0C7F54711E99E277DEA74FBDFDDB2DF5C93C85034F520060210E0878
        D279E27ECAB679103079CA0CF868E54E77BFBD35A06E700D8CFEEEED30ACF6C4
        1008D8D4F43E344CD96034C64A01001D5270B5AC3BDF384D30EE33480E44E729
        7C3F1503006E432402F273649A1618F3FD630223D3EF2074501332288A690221
        13306023A685877A130C88DB2A70606B49A896C8C681AB7D66E667ABFD5C80C9
        4ECFF343F95C737D99AEFAD1A44F93F550C5DFD5410BF3F407C52FC6F09B2AFE
        0C3F3F61C5BFD479873E9B2AFE68490180A5C8488108000AE55678E58FEFC09E
        1D87DCFDEA15B3CA1A70E22947C2430FDE01836B868B57C292F5D361F9FC5DC6
        E354B90294CA416109880A0B4CB24E00132D00E076F2A178BAB2BBA215400700
        F8BE642000F7E10BB4BDB5A855BA4A8518A1A959CE00D9DCF3DF8B4D36C160FB
        C98200C3DBEA31B10107E23E1D2951B62D6B530732F873C833EBFAF7B3795FF1
        3313BF38876C6E4B259A56B7543257FC3A725FA9CC7CFEDD768A3FA2408F3679
        4F44289FAE2A9F54F167BC44660D404DFD0DBDF704F62F490180A5505220E103
        484981AFFC6E1174B41794BEF62810F0D9CB4E865B47DE2525054E9B331E766C
        69311AA72919501C17135D6E00DD7D71C3550C4C355EB53B406505B00600EE06
        0F0002ED1B5801701FAEFE91451D3DA7114A919DA0710B988001E5541B286259
        A63BD9F7A2E30858DF772F89080E64C751A20083E9B60C30E0CA9E25ED218A3F
        E7AFF679A5C784ADB279C5DFED32F9D1B7EF25EF710BF450A53C3014BF09A39F
        297ED7D4DFD0DBCF587F931400C4109114C8BB0236ED590663FE6725DD568000
        7E9F0C08DC74FFD970F199D74949816FBE3315F6ED6E0353213F1C4D7895381E
        265503008A73AC0000B7D3234769FCD53200C0DFA30D00C0171EAEFE75F36DB3
        3F70D0228150605C15B805827DF41E181848217B4C7830C0143F0BE523192DDD
        54D5ACC4B53717655FF113054E2AF2F98A1FFDFC85AE124940454CF70999FA59
        65CE28C56F94AE5791BCC724865FA5F8F339FF074D4B8267C7395BCFA68A3FBE
        A40020A6E848810B97BE0FB3A7AE57568DF3AF518380871FBD1C3E31EC222929
        70CAA4B95ED5B928896B09A8283740020080CE4B709C710140E0B30100607DC9
        00407B6B81F85D75F31DE51690E60C30D09271C306555D44E514D09107E38001
        D95CB071988EABBF092AFEDA41398FD84757FC82899BFB5EBD10BC6E5690A79B
        98FABD30BE821FCE872712925FB75CF18B2BFEE4143F5DF1C74DDE23ABCA6741
        ECC37762BDB3852BFEC6DEFE7EFBBBA400A0027140C00F9CA7F569B6CD5C0128
        6FCF9809CB176C8B0401FC3E1E080C1A9287AF7EEB5A387EE839E2D9B0A37919
        4C9BB8D2688C95B802A232046A7303D0A1460C4EDF3F9D1385A5420000CA318B
        5600090F20701E670590F9613BDAD4AB7FDDDCB3ED483D6F0000A2C206E38001
        ED7D54190CE8C6D51FC1000245C6E8CF21ABDF23F66503AB7DFE7E7DF3BBBFE2
        673EFE6221ACF893F0F14795E48D95AEB742C5AFC9D19F2AFE2A480A002A9497
        163E8EF50246B3ED0029F0C519B06B9B4B0A8C610D38F1D4E11252203D6FD5D6
        7760D1EC1D91E30B29A18834C13A5780DF46F8DCD80040880C50B90254560053
        00E07D16565DA21580CD910C0060D63FDDEADF64FEA3F6874EB0881610258A23
        60348E50BFF1C0802EB4D0748C5149737A5B507921A39F98F9B12A5FDEF7EF33
        C52F8E9F2963142F8C8F53FC68E96379FA2B55FC653739906AC56FADF84D92F7
        18C6F0CB147F867E687215FFB3A9E24F5E520050A188A440DE15D0D2B50B9EFF
        D52C67D5D845F7198200140604CEBDE804B8E7D6FBA4A4404C17BC76F93EEDF8
        A47AD9224360942BA0E292C1927354D50243ED6732A139AD1600C0976367BB4B
        7CD230F04DBF03F1985699C5700BF0520D20C0E6C9140CF0FB920203BAF9EB49
        122253FCCCD4CFFCFBC43595935B92542B7E2C2B8D79FAB1B814824D54FC4C81
        F38A1F957BB95BADF8CBE5B2570B208EE2B74ED7AB89E1B72ACEE3AFF63153DF
        B3CEF167A6FD66739AB5AF4A92028004C40101A73B8FFD1290900277B5AC8417
        FF7309F05ACED61A70ED9D67C2E517DC541129506709880200A2C2AB360008CE
        41708CB60020782D7F5DF01E650080BF064DFF259EED6DA95974960023651541
        0EACD42D603256ED35960987683FD160C0967048AF09EE33CDD2674352C4ED3C
        AEF01D455F534B53D3D2157F50F1B34BB08BB24BDB09287E374D6F9198F7A9E2
        278CFE5277A28A9F37F5EB2AF3A9D2F59A24EFC964BBB455F9F2B9AC09B1CF59
        F167489EFE54F1575F52009090BCB4F0F151406A0650E141C0DACD1FC0A43FAE
        6247E8FF2DAD010F3DF659387DF8552110D056D80FE3C74F8B24059A020059FF
        2815950CF66F5B2F124B80180D10372D70E03E250020D087901510574C1D1DF2
        F935050246C43B1300601029500D3060636E4F0A0CC8B693E218C8B655F72DEE
        C3157FBE862A7E7EC54F7DFFEEB9EE356E96DE00B90F4DFBCCAC5F72CDFD5E0C
        7F992AFEA25B529757FC2566CA678ADF792E4BEEB6ADE28F4AD76B93BC8757FC
        1530FA1B5DC55F9F2AFE9E93140024280E08C0D2C15252E0B4E9EFC08A85DBD8
        11FA7F691D7B39101832B4161EFE8E480AA4C7F6B6AE85C9E317458E4F450854
        2B243921B02701008A6805F08E6582F3686C0550B801D8711100E0EABFACF89D
        D85A0274F36D7ADC060CE84406064C120CF5241810B7ABC13130953C33F3A37F
        3F47CBF232FF3E2A7EBE67A6F89922C6387EEADF7757FC056AEE27B1FC6E281F
        0107255684073CC5AC53FC9E491F5C855F626982ABABF87531FC968C7E54FC4F
        394ABFBE6A5F5C2A4A490140C2A22205A2FCE1F909B06B5B13F792B2B3061C73
        FC50F8E6E8FBA4A440D374C122DB5D764CEC17450400B25566C5590285E3BD09
        00581F18778DF1D651CA2F492060EC163038C10408B0F1F705CB802E0F01ED57
        6D29883A2E020613B080A778A17C2EB18FF7EF8B43D5297EB4D2898CFE6E9755
        CA2B7E5268C7D91D52FC2E0190FAEDCBDE5C86147F44495EAB74BDDA187EF3AA
        7CA9E2EF9B9202808445470AC4C880DF3C33093A3A3A9520805EC3FE8615EA19
        E71C075F7EE0C1902B00B7DF5F3915D62EDBAB1D9FCA0A201E13FBB7CD0B20DB
        E66E375A320600C0DD695A1ED8FB2B80191D00686B2D84CCC43A006043103451
        F4C6B8426309D0651394491C7E832DE94E55B150DC36050326C765DBA41F8935
        81F8ACF361C5CFAFF6F9718A8A9F55E343C5CFB2F661F548BAA20F67EDE363F8
        F992BCA47DC1D46FA2F8D97199E25766ED334EDE93B5CED14FF7138B4983B3F9
        7CAAF8FB86A400A00AF2D2C2C74F77FE484981982EF8B97F7F97FC90E8317B6B
        C095379C0EA32EBB4D0A0226BE3D464B0AD47101C4E322009029375D9640E50A
        CBD01D60140D606905900100FE1E790B09BEB40B0575DC9FEAF692760B183567
        E816B0010371EFA31230206E9B82814A857FD650F10FAACB43AE26ECDF67E9A0
        D95493D5B8A79C83C97BD0C48FDB183EAA22F6A9143FB506746B157F54495EE3
        74BD9631FC21C51FCDE8678A1F57FC0D55FB1253B196140054491C1080168025
        6C9B7705202970E20BAB8C4140F01C2AF78DBE003E7DCA75DC1E7A1C23035E7B
        639C9214180500A2FAB50100B2EBB9A1EA4550F4890280C075C17BE301407B5B
        515BCA55A7E0E2284F559B2A26BBB28B84C080AD5BC064DC91630F8D536D2910
        F7F1CF72D476E85E5D625F6D6DCECBD12F5BF1B37B62ABFE52D1CD948784BE42
        D963F42B897D65DF9CCFC7F0F3E97A89DFBE0C01533F490F0C61C58F229AFA13
        53FC5155F90C153F9AFADFFAF5A606EB072895AA4B0A00AA280E0818EDFC798E
        6DF32060D6DCD9B0B061133D10D31AF0E73FB8594A0AC474C153A7CC25264799
        48958C455860F03A59FB1100C01FAA5A24F72CCD0A5825004042B23A4BA1B911
        DBD3293395D5447BDB162BE89EB40C988001D372C586C3928C336829883A6EE2
        5AC8BAA577D1D48F59FBF8503EB40488DFBD54F123B1AF50228A9F11FB88E5C8
        35BB97CA41629F2E798F97AEB7BB5BABF86317E88988E1D785F2C918FD0AFF3E
        1EAB4756BFA3F8979A7DBBA9F486A400A0CAC29302795700FE785EFDD364D8B4
        CE4DE41303040C1D5A0B8F3EF1A558A4409D2540C70560621315508915C01400
        B07BE08FCBC20103BB146440FCD3DE5E922A1B9DC5240A0CD88A2918A8942710
        BCBF7860C0269AC0F43EAB99CC87C5EF63395E34F5B31CFD0800088F845BED93
        FBF194B3ABD45DC55F70953E9FB14F65E65711FB7479FA5965BE28C51F59A0A7
        CA8A3F9BCBB2F3EB819AFA1B93FFD652495A5200D003E280007405484981F5BF
        9E0A07F7B7D313B3618252141038E9D4A3E05B5FFFAA940FF0C1C7D360F9FC5D
        CA71A908817D0900F0D72B7302185A0184D3435C00763E2DBA52D26A1E71BE4C
        94555CB74054BBD6AB6953C51C934098141890ED5335639A261815FFA0C139C8
        A3E27743F958EEFE6C06426E0396C04764F4F3C43E46F813E3F745C51F20F619
        E4E98F53992F2A6B5FDC503E558E7EA6F871C5EFEC41537FA3D993924A5F9014
        00F480380000C9801B81230532570092025FFCC57C287674D31F238AA535E0E2
        2B3E0977DC70AFD02B0501B3164D848D6BE579356C220282E3B1CF0B20DD6FE8
        0660D7DA0280D0382300001392F237429B9A945816258E4234693B1647C07279
        DD1B60C0E65EA3B659E21E96AE375F93F552F87A8F83C0EAD72AFEF622ADC427
        F1EFEBCAF18AC43EF014B899E28F9BA75FADF8D5A17C52467FD0CCCFB2F6D5A7
        8ABF7F4A0A007A4874A4C0358D8B61CA8B6BC9673508205BF4FF1220A02305BE
        35732AECDD158E0CD00100F1B838165B2E806CBBA701807F5DF826D9F88919B7
        500A1D0F0D2D82911EA5E3AAE512E8AB604076EF2218A8842FA1DAC6156AED20
        E71FB2FAF372463F9B1F96458F297EB6B22FB1A43D2EB14FE7DF97A5EA25DF81
        73A248EC23F7ACC8DA67A3F86D93F74455E5B350FCCF388A3FCDDAD78F250500
        3D283C29907705A0CC5BFC1ECC99BC85B06F51E25803BEF9BD2BE193475ECAF5
        A82705DA90018363300300E2352C0EDB18089802007747DCB4C0FCF8BDD5BF78
        81428B9A84A6552B5AA0AF82015D2A62D5FDF3991665E4491B0222FE41D33EAE
        F671D58FE43EA6F8D1EC2F724588191E20A0F879463FF1F177962BF7EF4B887D
        BAAC7DB1F3F42B62F8B58A3F1799AAD753FCCEAE67DEFC55AAF80782A400A087
        45470A7C63EC9BF0F1F226031040AF22FFE78040DDE05AF8EE1377C2F0BA5302
        E7613FDB0F2D8169135786C6932419905E1F7D8D952540427EE4C98049BA01F0
        055BE82A2AC72D9B14D354B751E4C04A4DE3BA3E629DD70B6040353F327020CE
        1DDB46D33E0BE7CBD7663C1F3FAEFEC5187E72ADB0E2E763F82B55FC9E7F9F53
        FC8CD82726EFE12BF3C54ED76BA0F8F9503EB1388F8CD19FA5C50D1A3194CFD9
        352E55FC034B5200D00BE28000CC14380A3FF3AE002405BEF4FC74D8BDA5836C
        C7B1069C74EAD1F0B587EF81BAFC30AE470A02D6ED9909EF4EDB1A1A4F526440
        7A7DF81AD9AADF8A1898B10700FCF84D0100566233CA291FC32D50AD4801DB3E
        0C6E437E6215C04092E000153ECFEA471080AC7E550C3F9FBC0753F352F047D3
        F462FE8710B14FE2DFD765EC9311FBB48C7ED374BD3162F8A3AAF2A914BF73AC
        1128B1AF3EFEB7944A5F961400F482B8A440E4039C8EDB2229F00FFF350F0AED
        14E59B8200F2C95540975C75AA400A643F7E79BAE04AC880644852D3B8FE9AC4
        01803B585300E07D767750B3AFE82231B30204EF5B4D0E34D5A149BA054CAA0F
        DAC4E2270906C46D111CF0C755F3848A5EC6EA672B7E5E98E2C7553E12FBA87F
        DFCFD1EF11FBC4C23CA04EDC438E71FE7D9DE29712FB124CDEA30AE58B64F407
        CDFC44F13B7F9E7256FBF5B11EC454FA8DA400A097C42505A225E028910FB0E3
        D04AF8E3D3ABC88F9A89AD35E086BBCF86AB2EBA95EB514D0AAC840C48861203
        0028F7CB4E9300007E5C95BA01F027D0D559548E4D5938466309D0B90578E299
        4C2ACDC0C7F721DE675F020326C75584435CE90FAACB7925791108104597F70B
        F4B0EF81E5E9E757FCA8F859A1272F55AF243FBF8AD8A7CAD8478F1930FA2B55
        FC8A187EAB50BEB0E26F70157F43AC872E957E272900E845519102F1C7B874F5
        7C78FBD58D641F0302B620E0E1272E82338F19C9F5485D016D5DFB61C2A4B7A0
        A39DF9BBC3634BC21290586480820CA80200FCF84DDC005D5D7475A653CC4A00
        60A000A34206072C184838934FCE55F42C9C8F64EDCB87153F1355285F674791
        30F991F019E5DFD7297E19B1CF5FF5DB87F2A58A3F959E961400F4B23820E069
        E7CF0FF0B30802264D9D0E6BE65373BD0802C8BE082030E48841F08DC7AE8513
        869EC7F548410046068C1D33D3DFAB2103CA8E07FB73871113008456D8625F99
        F0F5265901F971AB00003EFEA810A2EE55357E938B54F9EA6D17D0957204547D
        56150C58CC933AD282FAF889A9DFADCCC727F0C96468481F1FBFCFFCE824639F
        B3CD52F562244C6767C9C8BF1F20F6B9FE7D31631F4AA82A9FC0E8EFF118FE08
        46BFEBDFC73DA9E23FCC2505007D4074A4C017FF673AECDBD6E19D6B6B0D38F9
        B4A3E1EB5FBF972305FA7C80C603EF06D205478100E939D5880CD058016C0100
        1BB32A1F40979BB73D171AA3FCBB8A4B0E8C8A1488720BA8E6B612490A0C5881
        035583927DA8C8A2143FEB565CED33FF3E9AF971E5DFE1803C34F7A3220FC4EF
        43B47FDF86D887A20BE5AB54F19B86F269887DB859EFEC45C5DF98D8C3944ABF
        941400F401D191029BBB76C0EF9F79074AED79EF7C2508203BC340E0BC8B4F86
        87EE7990EBD10701F3564D850F97EE75B7C3638BB204C40100AA6B4DAC009169
        81DD1D2600001FFD76D70DA20200562E01BE61C584323010D72D9064D860D4B0
        A3C040A5C57D748341133FFAF889E2AF09FAF84D153FCBD887208F25EED1F9F7
        5519FBE2287E65289FA0F8E324EFD155E5D3A4EA4D157F2A214901401F111529
        107FB87BDAD641FDBF2DF55E0A4C6CAC0157DF7C26DC70E59DDCD53E0898347D
        0C2105AA56A13D450CB4B1024401007EEC2A0050E82A11D6374A4EC336570180
        C890C1186E01D9E57D1D0CD88E5B77212A7D54FE4CF18B457A58BBE4BE59619E
        92ABC85DFF3E5672248CFE42599B9F5F97B18FF9F759AA5E96B14F64F4A388E5
        78AB11C36F539C870282A0E277369F9AFA8B54F1A712941400F421D19102576D
        5804539EDF680E02C8CEA0827AE0DB17C2059FBC8EBB9ABE280AA53698F8E644
        38D4D4E59E1F1C574F4606F8843EC90425080050D8EA9F175B20A0BA8FA88B4C
        130845F5CD24490010358624C0400060B82B7E4CD98BECFE6C3E1328CBCBCCFD
        C115B8EFDF0F25EE299442617C5AFFBE22631F0A9FAAD796D1DFCB8ABFC9F9F3
        ACB3F98CA3F8D3E43DA9482505007D4C1C10F0A4F3E7A7F89977051052E01424
        051EA027C6B006D40D1904A31F1FC591027D2B004D173C874406C800806CA55A
        D5C8808401803816CCF8572C85BB88030064F710B82882E9670200A2FA67D213
        40801F8BED2A5F9C8E1AD7D4CF143F09E9CB738C762E0C3040EC2B767BA97A3D
        625F51EEDF67667E9BC43DAA54BDAAAA7C28C6A17CE48B2A1827EF618A3F2A47
        7F9632FF51D9A78A3F15234901401F1407048C75FE904C3E2208F8EFDF8E85FD
        DBDC95AB25084039FAB861F0E78F3D24270536BD0F0D933FF6CEEDCDC8006E68
        C2C9720010B8360200E06A0F578B2A133E6B1B15494E3A5EF9F7A6AC751075A1
        627E55979B64134CDA2D50E9B8C4F36B0651533F92FC78C5CF8EF33918B05DA9
        7FBF83AEFA99E2D615E63125F6992A7E46EC23735D41F21E5EF1AB42F9748A9F
        11FB72B94C93330252A02755FCA9984A0A00FAA0B8A440E4035C2CBA02BA4A2D
        F01FFF3616BA3BEBE8C999F032360A0860BAE047BFFD4DEE0A1F04ACDA3A1D16
        CEDAE11FE195ABA125A0D2C80013008022E603F0AE558403B23160D29F22E7F7
        D599F07500404F92ABAE5BA0BF8101B68D31FC8306E7038A3FE765AC0B9EEF31
        F35DFF3E66ECF34AF15AFAF7C5C43D2AC5EF11FB0C8AF358C7F02BB2F699287E
        3E944F20F635BAFEFDFA1EF9825319509202803E2A51A4C0E79F9907D03184BE
        54C8413B6BC0A55F381DEEBC31982E98F5337BF124D8F0217535F46464009FAF
        DC1D92E4240300C0ED140100AEFEC5B87FDDB899E494910CCA4B2A760B240D06
        2A4D28642BFCB890D037D851FCF9DA6C20A4CFFFCEFD29299568563DB4ACE36A
        1B153FAEF449E21E67F5AF0BE30B99F925FE7D15B1CF94D16F13CA1727798F4C
        F14B887DA9E24FA5624901401F160704A086467740C815B06AFD4298FAFC66B2
        AD0201F418FD2B03020F7CEB42F8CC69D77367FBA4C0690D5361CFCEB65800C0
        DF1F8F1818150E58495A60341BAB9EF93800C0E4FE2B710BF8F3942C4FA027C0
        00364D2AF36159DE416E49DE9CCFECE7455CEDA3C265FE7D5AA4A7140CE38308
        FF7E42C43E9350BE28C51F4CDE13ADF855A17C6EF8DF52E737F36CAAF8534942
        5200D0C745470A9CDED0004B6734798A3F8E35E02FFEF6562D2950B65AAE3600
        085C2B0100FC71133220E301E00B1C5792A48D6E90B6AF52D43A00C0BA8AED12
        D04DA230E7BAB0418BE63CA91618C0157F5D5D9E287E5470B84D145B2E08F044
        C5CFFCFB74D5EF17683289DF27ED1966ECEB79C51F9DB52F42F137B82BFE86C4
        BEA4540E7B4901403F10460A148B06E1CBE10F2F4C805DEBCA9120801EA37F79
        203078682DFCD58FBE262505EE69F908268F9F1F8B0C183C6E4E0CB405002826
        5600FC4856FFE56E697B7CFFBAF8FE288260D47C54E21610E7BF921C02324902
        0CB03CFD2C673F61B30B8A9F2F77CBC2F8D0A7CF2AF2B1DA0CBC999FF7EF975C
        A56EEBDFD712FB84503EAB18FE0AD3F5AA42F952C59F4AB5250500FD40A24881
        2FFC7E1A346D652F237B6BC049A70D876F8E7E200002583FEBF7CD84B96F6D0D
        B411A574C2FBCD2D01B63C001425007077127F7AA94C33C2A9C45069635FA572
        B05FDBB9304A20D407C1808E4C888A9E4FE2C313FC78217E7A52292FE8DFEF22
        A67E7BFFBE58910F3C1FBD3A639F49285F258A3F4EBA5E51F13B1FC739BB9F4D
        157F2AD5941400F4137140C0E940D305CB33053EFD1E643A86D3930D41000A03
        02175F730ADC7DD37DDC593E08C074C16B97ED0D8D29AE2BC0EB5B610948DA0D
        80E3EC6C9713FFC4366DC66F0200A2DC02FD1D0CA8143F215DBA63F014B1ABFC
        59FC3EABC887391902D5F820E8DF0F99F92D887D62C63E361E28FB8ADF27F649
        42F900AC93F7C455FC44F9E768BADE346B5F2A3D212900E847E2808051402D01
        213EC0FA1D4B60EC2FB6503F24134B6BC06D0F9F0B9F3FF7267631B07E182910
        D3058B22E6DC9749B501008ACE0D80E6E042C1E0398FE1BF8FE206E8E6C5B40F
        AB86D8A9550603B92C2696CA7B8A1F1559364B2D01BCD074BD74B5CF17E621C4
        3E67C5AF32F3ABD2F4EAFCFB3CB18FADF8D96A9F9D631DCA67A9F8F93CFD797C
        3822B2F66559D95E48D3F5A6D2F39202807E260E08C0D2C15842380402DE5D30
        17DE9FB09F9E28287D531030FA4757C069C3FFCC3DEA838062A9035E1F3F365C
        3A3766C540268132BDD9F0F9D2AC800600C0BF3643897F2662C9659049DC4C82
        C67DC4F4CD27114A8882DF17A6EC65B1FC99AC9FAA976F84AEC07DC5EFC5EF17
        BBBDEF2329FF7E1C467F2531FCB1157F269CB5CF35F5A78A3F955E911400F443
        714000D60B182DBA02505E7B6D2A6C5A4659C82051FA5140A0764819BEF3FD1B
        029101AC1F8C0C18F7C6CCC07526C9817419F26456005300E01D07350020A163
        45CB67BC12933D4493032B720B58B80442975A8612F2E3C4EF8924F1A9CB91F8
        7D7ED5CF9F4FF4A93BDF62E21E54CE36617C3AFFBE0DB1CF98D16F91B54FA7F8
        BD7D12C5EFFAF851F1A759FB52E9754901403F942852E0F3BF7B130E6EADF52F
        B0B4069C3462308C7E444E0A64E982E34406985802946E003A8CD067D10A2002
        005A0A5672BD4E34618226F76213295031474037E1E22996A184F45EE88ABFA6
        9632FB89E2CFD2FEB259FF1EBA5D137C91E4E90FFAF755D9FA4ADE4A5E13C6C7
        F9F779629FA7F835C4BE8A42F92CF3F45BACF853C59F4A9F911400F453114981
        BC2BE050E776F8CDCFDF864CFBD1FE052A10C0ED63822FBDF32F3D16BE74DF43
        EC04B76D3529500600A4A58523F8006248A02D00607DA314DD4C72D2EB4D2526
        39D02452809FABE8732C066F802E54608099E551C9E18A1F63F9316B5FDECDDA
        97117CFC64955EA479FAF11F865A7638FF307E9FCFCD8FA232F3936614F9F9E9
        98DC187EC1BF8FC2887D32C5AF63F4DB66ED8BABF8DD157FA3ABF8EB53C59F4A
        5F921400F463D19102B735AD80977FBE317C918535E0FAFB46C0C84B6F671782
        DF4F06DE7E6F1C6C6B3C146E3E469A602659F7C5C99F5B090028744962FEBB21
        51201055008881812480801508101B35040328B56EBE7E5CF19394BDD96C2861
        1353E4A42A5FC1CDD85728FB459604333F4AA95C969AF9558A5F45EC435131FA
        FDEB7C467F258A9FCFDA87C22BFE90A91FC0758BE480A5EB75763DF5E6AFD2AC
        7DA9F44D4901403F1707048C76FE3C27E3032C5E310F66BEB23B7C918535E0E1
        1F5E00671D37921DA4FF77498113DF9A00879A3A834D57101A680500B86D190F
        0059FF64752BF545B87F6DC080815B40755FFCD8A2DC023AF7BE516AE1C8FB90
        9B66F07BC3BCF344F1E38ABF361B50FC7C495E8CC947333F722B48E29ECEB099
        5F9BAD8FF3EFCBCCFC3CB14FE6DF471119FD6C9F4AF1CB62F81353FC61537F23
        A48A3F957E2029001800A223054E9A321D3E7CAF4D7EA18135203FA444488127
        1E713EBB28400A94A50BB6890CE095998A07E07D8E2003F28AB5E026FD892ED1
        1B63C20D0080D8A7CC2DD057C040BE26E728FE1CD490157F3694AE978E95AEF6
        51A917DC34BD9E7F5FC3E6AFC8BFAF20F61987F2015866ED53E7E93754FC0DCE
        DEE753C59F4A7F9114000C10714000F2012E165D015252202F062060F8F13978
        EC2FBF222505EE685E0AD326AE083669080044829B181218371A0057A662CA5F
        7D79DE18135E0171AF5A1C015B30808A1F097E18CBCF8AF46439AB0BBFDA2F79
        59FB04337FB79F5B9F297E2F84AF3B68E69715E69166EC3364F427A7F815E97A
        23143F67EA6F00BAE26F88F124A5924AAF490A000688B89101E8F43F4A06029E
        FDD7314152A028114060C4F947C2E8AF3DCC4E76DBA67C8055DBA6C38286EDB1
        2203D81851AC01803F94C0B9985B5ED5877C0031273D825360A2944D3902761C
        407DBFD93CCDD38F71FCB8DACFB9CC7E3ECB1F23F5955C621F2A7DF4F1ABCCFC
        62181F0AAEF865F1FBA40F4D295E1B46BF4DF21E3237868A9F2FC9AB21F73540
        AAF853E9C792028001240E08B8D8F9B344E60AD8DBB61EEAFF7995BE81081070
        C52DA7C02D23EF6627D3FFBB2060D6E289B071ED816073163503C80B559314C8
        342B607739BCFA17FB511FAC60F263B8057889720BC4C9DA274A369F839A7C06
        6AEBA89F9FC5B1B3B9660A1CFF22B39FE5E7EF2A70A194926C7DAA34BDAAF87D
        59E21E141DA3DF2A869FDCAC3C6B9F8DE2CF7BCCBEE08A1F306B5F8698FA1B2A
        78625249A5D7250500034C74A4C055EB17C2D4E7764437A20102F73F7A2E7CF6
        B4EBD9899E2B0049816F354C8E4C174CB6353EEDC870C00837002B1FAB52B446
        00A04A91027CFF269103EC73B83D779886602043B2F7E588E2CFE5FC5CFD6C5C
        4C59E36A9F30FA9DD53EA6E9154BF0F2457978FF3E035C518A5F568A17A5580A
        FAF77946BFAC2A9F69F21EB22BA7CFDA27E6E927FBD53EFE7AA02BFEC6184F47
        2AA9F4394901C000149E14C8BB0250B4A4405E3420E0B1BF1F252505B675ED87
        8993A741477B21D8540200C0FBAB0100E0FA98D9B92A5FBC9610689B34C8F27A
        ABE43E60EE1A50E55C607E7E8FDC27C4FC9355B69BAE17FDFB08A044C56F92AD
        0F85E5E767E3B125F69956E5334EDE1355A027C2D4CFF9F8EB2155FCA90C4049
        01C000151529103FBFF0FC58D8B5CE64E9282F2C941BD2097FF377A35D5260D0
        15B0BB652D4C1E3F3F920F40AF11B7F5D1005A00C029FF703F6100609E612FE6
        179060721F13A2A0DFA67B0D32FB07D1EC7D59A6FCDCB4CDAC6A1EFE2B6029DE
        AE3221F8D998F955F9F9E971BF7D147B46BF650C7F0595F95014A6FE26679324
        EF49157F2A0355520030408591021DC58C7F43A4C0DF3E3B093AF60F316B4C62
        0D387E440D3CFEE823EC04B76D0A023EDEF70ECC7D6B6BB0896A0100579852D1
        DE8646E1261A2668797D141030091B6492CD65DD90BE9C1BCEE71F2B31BF3AA6
        EAEDA2617C589CC7C4CCCFE6382A3F7F28714F4C46BF510C7F822B7E9C37F75C
        CCD4F7ACF3F11947F1A759FB5219D0920280012C2E2970260F027852E0734FCF
        D54706F022B1065C38F268B8F7B607D84EF0790719787FD514F870E95EABC800
        5E11CA40800E00940A65AE0FC52DC40100F486E24BC26E01151840058619FCF2
        6E2C7F969B676FB58F25788B65A97F3FCACCAF8BDFAF84D8671BCA5769653E14
        D58A1F52C59FCA6126290018E09208299017C11A70EF6367C28523C2A4400401
        9366BC1E2205EA2C01460080361E103EDD2C7F8D74F8BD410E14DB313DDD000C
        A0B2433F3F86F591703EE11292B10F53F40A667EDF74AF37F307D2F42AE2F755
        C43E143E556FEC503E49D6BEA8CA7C16A6FE4667CF53CEAE71A9E24FE5709314
        001C06E28080A79D3F3F90F101DE6E7807964E3F64D7A00002BEF97717C288E1
        9701EF0A40C1C880D7C78F0D650A24E7482C01C6000020A04CF9D57FB00FC9BE
        08167ED5380131DBD0450AE4B1421F29CDCB4CD8E029649AB1CFCCCC1F28CA63
        E8DFD725EE4191E5E8370AE5B348D70B42811E99E2E7F3F4CB14FF5BBF4EB3F6
        A572F84A0A000E13714000160D1A250301AFBE3619362D2BD837EA0281CCD016
        F8ABBFBD1F86D79D02221FA0A9630B8C7B6366F852852B40971448060028F35C
        31BCAC9FC35E0706C47D46E6F82ABB05C43132C0828A1F097E3535592F969F09
        4BDC434AF2164AA41E02BDD8C0CC0FC1303EA3C23C06C43EFF5AC3503E72D3C1
        AC7D5125796D57FCCE669AA73F9554200500878DB8A4404C12743A6EF3AE80C8
        74C13A7141C0B12300BEFDDD2F4A23033636BD070D933FD6F2014C00007F9C29
        510C5FE333D8655526FEBEEC16300403B53598C12F470BF7E4FD9389E2C615BF
        B3D227697ADD12BC628A5E15A94F34F39BFAF7CD887DF115BF98A75F54FCDA92
        BCEE43C5C87D8E34387F9F7556FCE32AF8B652496540490A000E23499414288A
        F3F2FEECC86170DFED5F643B027C80C51FBF052B16EC0A5FE6F96DDD6D851B40
        0600D0F45F169EDFAC4669274E0EF44E8A3765D276246000B3F7D5D4E6A9F263
        196E31E9919BAEB758E0B2F55998F9E3F8F779337F1C467F28948FDC4C305DAF
        89A93F8ADCC7B1FA1B809AFA1B12FA96524965C0480A000E33E14981A22BE0E3
        1D8B61EC2FB6C46FDC7989DFF28D53E0F24FDF0C221F007B78FBBD71B075E321
        A92540160DA00B07C4E7B6582C2B8722030299C8A43A998A8E270604DCB650A1
        113F7F2EE399B17D267D3765F317C395F8CADD6AC5AF33F39B24EE415111FB2A
        55FCBACA7C283156FCA9E24F25158DA400E030141D2970D18AF760E62BBB2B6A
        FFCB3F3A03CE39612488AE8042A95D9A2E58050050B2998C1400900A758EB251
        16BC71F633EB80080674960013FF7F64CE8004DC0268EE47767F961B2B86DD23
        E82145796298F94DC3F82A21F6D986F2915D11A67ECB70BE7AA02BFEC60ABE81
        5452392C24050087A9382060ACA398EFC5CFBC2B003F4F9C32CD2C5DB04A8634
        C1A33FBAD94D171C0401073BB6C29429B3039101516E001100A0142272FEF322
        03003A726054BB26F9FCE38201F4EDE3AA3F4BAACD81B7DAC70A874998F975F9
        F96D887D952A7E9B023DAA157FC6FD808A1F48819E4CAAF85349C54252007098
        8A4B0A443E00F202922305BA72F46925F8EEA30F7AA440DE15B0BD79094C9BB8
        C23B570400F473D80DC0F6E12AD8269F3EDF8E2871C98156FD1B9C828A1FD9FD
        398E18898A9FE4E62F32DF7C30765F558297ADF64DCCFC36C43E9400A3DF2694
        CF50F193B9B033F5A78A3F9554624A0A000E63E1498162D1A0E6CE9DF0EB9FBF
        159F14E8C89997D6C2D71EFA8ABB150401ABB64D87050DDBFD55BFC20A200200
        95EF3F6A559E8D50D4516E812830101B08B8E6FE4CCE4FE24362F825667E558A
        5E72DF82E257A5E98D4ADC5311A3BF0756FCE43A2F6B5FE61947F1A7C97B5249
        25A6A400E030170704A01B60AC8C0FB0B56919BCFCF38D15B5FF67B71E05B75F
        770F88AE00144C17BC76D95EBADFD00DC094A04E74CA586709E811B700C7F2AF
        A97166394F4972349B6199AEF6D96A5D88DD8F6BE6B7F5EFCB143F5F9C27AEE2
        97E5E947B158F1A78A3F955412941400A48220E0494731FF143F8B2060E5FAF9
        F6E98205B9F7F153DD74C16A52A0981340060018D1CD4474E440944A7306888A
        5EE61650661B74341B26F2714F22F1FB32529F2C452FB9C480CD9F8CE20F32FA
        A362F8A5E97A0D0AF4E814BF4BEE6BC2187E674FAAF8534925414901402A447A
        9214C8BB025ABBF6C1C4C9D3A0B39323052A0040812FF86399414F2671730644
        F9FF95E7B8AB7E769C64EAF332ED8543F8746C7ED1CC4FDBD09BF965C43E91D1
        1F19CA679AB5AF42C5EFAEF81B9DADA7A6FD66737DFC872F95545251490A0052
        21A22305E2E7DFFEFAD58A4881838F6F87EFFDE06129297077EB473065FC3C25
        199085F4B1FAF2E23932B121EAC5C91960D2AE774E8692FCB0580DDE0333F3CB
        42F8502273F373497BC8F982E2E7E3F751E230FAE324EFB151FC5EE11EF98ABF
        1152C59F4A2A55971400A4E2898A14889F3B4B87E0D97F1D531129F0E4F3B2F0
        DD47BE0E323E4063D33C6898F2913427002A685458A21806004412F5E25802C4
        F651647DA0B91FE3D5C9429CE32F4492FA64667E215B9FA9995F568A1745CBE8
        2717C6CBDA1797DCE7C85234F5A78A3F95547A465200904A401C10300A280808
        F101F6B4AD83FA7F5E5551FB9F193914EEBF03D3058741C0FC3553E0C365FB42
        0080AD50650584D8E36B44C28F490E4441C56AE316204A309B51FAF6FD553728
        CDFC6517F4C8FCFB51F1FBB4DDB0E28F64F48324869F4C50F28A9FADF89D6780
        64ED73147F43450F572AA9A4622529004825240E08C02C81982D30E40A489A14
        C8BB025026BD3306F6EFF1F9062CEB1F2F2210A0E7458301130010971CE8B583
        19EB5CB63FAF88A356FB32337F12FEFD2443F9C8581352FC649EDC74BDA9E24F
        2595DE911400A42215070460BD80D1F85904016F37BC034BA71FAAA8FD477F7C
        999414582C77C2EB13DE2099029952E7FDDDE4BCAC7EB96F4A105449DC9C01AC
        6DCFCC6F49EA8B32F3A398F8F74D887DB68A5F96AE37AE8FDFF9BEC7B9A6FE86
        8A1EA2545249A5224901402A52E14981A22B00E58517C6C1AE8F2AE8604813FC
        AFFFFD2DA8CB1FE9B6ED83004C173CF5CD39D0D5590C10E278890201B4CDE861
        249D3380EDE743F8C87E4D095E7A3CACF88DCDFC0A625F5F51FC2C65AFF31DD7
        3B7F9E7AFBB75B1A2B78725249259584240500A928C50101A73B7F96A84881BF
        7D761274EC1F12BBFD634694E13B7FFEC500081049812A310500261C814A7306
        F04A3F2A531F39AF646EE6B725F61931FA7B70C5EF9AFAEB2155FCA9A4D2E724
        0500A9680549818E629E899F45570092029F7B7A6E4591013A52E007EBDF8265
        F376798A5CA6834D80006D5777CCBEA010135EE9936D45A63E93A43D51617CA4
        7D49E21EB69F67F49BC6F0EBD3F5CA2BF3192A7E4CD833CEF5F137C67E405249
        2595AA490A005289141D2970FD8EC5F0C62FB654D4FE2DDF3C192EFFF4CD20F2
        01F0F3AC0FC6C3FAD507BC73453DEC31EDA172B7800D10D0AEF60D487DA2E227
        8980B8D53E8A35B14F15CA5705C5AF61F53739DF1B49D7EB28FE346B5F2AA9F4
        614901402A46C2488162D120DC9EBB6036BC3F617F45ED7FF31FCE8711C32F03
        1929F0CD991361CF4E3E3240DE86091830010051C57DA27CFB22A9CFC6CC8F22
        16E65113FBD4A17CD2187E4DBADEA414BFB3F5CCDBBFDDF2FFB777B731525577
        1CC7FFAC9628DAC20BB036D1169A98DAD6544329AF5A051A8B91A625B6B631B6
        114C0AC4D08A8A6D4C432C4DDB37D8002F6A2520CC02611514579E775996E90A
        4811B26EBB6B09200C028B50C4450A0B0B0B3DE7DE3BB3F370EFDC8799D999D9
        F3FD24EB3CECCC719FF4FFBBF7FCCFB9147EA00A100010980A01AD5E4D81ABD7
        6C94A36D57A20F3EA44B9EFEDD4F65E84D773863F74D05E8A6C04D9B5AE452F7
        55E773FEC3E53B1B906F99A0D7EE817E47FB6E5BF4DAEFF3B91A9FF3A2708D7D
        1E17E7118F35FC010AFF20A7C8BB15FE41E98120B7F0279CC21FA3F003D58500
        80C0F4CA00F53F7B7D79C061D95301BA2970F99246E93A7663E4F1F33505769E
        6F9386756D19AF8F1A0482EE19703DA3887B2FE1D3AE250BB5CB69FE6BBDCE63
        9FF9FDB08D7D793BFAAD6FC27B9FFE2085DF67399F2EFCBAB12F16F9170EA0AC
        080008456F17ACFEC7DFAAEF97A229F0ABDF1E2CBFF8D963E2D60F70F04C93BC
        B3E578EAB5410340BE6901AF31821EEDBBEDCDDFB73DAFF7697EBFF97DCDABB1
        CFB7F0E7D9A7DF2EFC353997E40D71AA3FA1EECD6D5A7C22568CBF2700E54300
        40682A044C514564995B3FC089736DB26ADE9182C6BFFF27C365DCD849E21602
        76B56F90FDEF9FC9787DE06B02049816B8D69B59F4B5204BF8BC4EF30759BFEF
        D7D81775295F918FF8E3EAE75FCB113F3070100010895B5360F2FEBE8E5DD25C
        77BAA0F11F9B3D4AEE1AF1803376DF5480575360D06B02B88580EC86BED4731E
        4BF8D25F1BA69BDF7E5FC0C63EA7F05FBF3638B7A33F74E12FE8883F2EF6117F
        BCC87F4200CA8C0080C8EAF6CED45301AE4D81EB3735CAFE5D17A30F3EA44BA6
        3FF703F9E2ADDF70C6EE0B01177A3E91751B1A524D81E9FCC2407A00F03AC5AF
        B935F58539DA4F8D9155F8F51C7FF6FCBE5F635F90A57CD6CB7C2EC99BFC1D05
        2DFCCE1C7FBCB47F4500CA850080C84ADD1478F3886EF9F5ACC7ADA6C0EC8B06
        E995016BDF6CCEFBFE7CF3FB198F032EE10B5BF8F3CDEFFB6ED56BBD28CF52BE
        020ABF4F577F4CDDABE5881F18F808002888D314A8770ACC09019F5DEE94575E
        6A28A829F04B77D7C8AFA6FE52DCFA010E7FBA43E21B0FE57D7F7A08C837B7EF
        759A3F59F4ADC759A7F9ED31FC4FF3876AEC139FA57C6E85BFE6AAEB76BDF6F7
        1F788E3F26F6A9FE4449FF6000540C02000A56B777E61475B3CC6D2A40AF0C88
        FDA5A3A0F1C73C344C1E1E3FD9193B3304B41F6F943DF14ECFF7A64F09686E47
        FB5A314FF38769EC0BB2942FEC257993BF8380A7FA6342E1078C44004051A810
        A0B70A9EE51602DA0FEF91CD4B3B0B185D64F25377CAB7BEF27D67ECBE7E007D
        FFDD8E0DF29FD6339EEFF59ADB2FC6697EEB3D79D6EF17B3F0EB0BF458E38638
        E2F728FC7AC39E85BAF853F80173110050342A04E8A98071D953015A319B02B3
        FB01DC5606685E73FBF6E7722FC8A3252FC16B3D9FDCAD2FEDBF11AF6D7AF316
        7E672320DFA57CD68B82EDD3EF37C79F7CCEA3F02F50859F5DFB00C311005034
        2A000C53377A65C048B710B078D11B053505EA10F0DBDF3F99D314A8EF77757F
        946A0AD485B7376D695FD18FF603147EDF8EFE8047FC610ABF647DEEC664E5A7
        F0037041004051A910709FBAD9AE8ABE0E031953013DBDFF93450BD7C9A5B343
        228FAFB70B9EF9D493628F9D1902F69F6A9296CD1FF9167DED5AFAD6BEA59EDF
        B706F029FC3E17E88958F813EA9F73D58FA69EC20F201B010045E7D71458E876
        C1F7DC7F8B3C32E95167ECCC7E800DDBD7C8B10FCF853FDAB75E94B95B9FFD54
        01F3FBD60BA3EFDA17A6AB5FCB2EFCDB5E3D112BF7DF0280CA45004049A43705
        664F0594B229F0D3EEA352B762AB75DF6D095F314FF397B3F0E73BE2A7F00308
        820080925121E02D7533D92D046C8D37CBFB4D9F451F7C4897CC983D516EBBE5
        EB3953017A55C0DE9613A9A2AF65ACDD2F61E10FBD86BF80C29FD6E017574F2E
        5485BFBEDCBF7300D583008092719A02753F80EE0BC80901CB97D7CBA903D1C7
        B7FB01A64AF62641577ABBE5D5589D5CEEBEEA79B4AF15D2D8A7455DC35FB423
        7EBBF0EB23FE78B97FD700AA0F010025E5D71458BB644B412B03EC2B07FE50EC
        B1FBA602DA8F6F95AD6B0FF5FF697EEB0B29CD1C7FD6113F851F404108002839
        1502F4367E6F95AA2970FA9CB1AE170D5ABA3C265D9F5C2C79E1BF6EFD1BAFF7
        C7A9FE98E839FEA59D8972FF4E01543F0200FA850A017F50372FBAF5037C7872
        9FACFDDBB1C8637B5D2FA0ED68A334AC39683DAE96237E0A3F80FE420040BFC9
        D714B8634F8BBCBBEE6CE4B1ED550113243D045CE9BD282FBFBC522E5DE8B11E
        57C3117FC6CE7D147E0025440040BF716B0A4C06006DF59A8D72B4ED4AA4B1D3
        2F1D6C8F6D4F056C7F6F9DEC6C3C9251F4ED5BE9BBEA5FDA56BD1570C46FEDDA
        A73E16A8C2CFE63D004A8600807E55CAA640BB2170921E55ECB16BE4FCE553B2
        70DE6BC18FF6350A3F00031000D0EF540818277608C8990A38DF7352FE3E6F4B
        B4A6C0D4B5023E2FE953018B63B5D299D0D30B11E6F7AD2F8EC20F60E02100A0
        2C540898A56EE6BB858013E7DA64D5BC2391C6FDF18C3BE5DE51139C477608D8
        77B041D6AF6C0FDFD867DD96ACF027C49EDF8F95FB7701C04C0400948D0A01FA
        7A0153F4FDEC7E807D1DBBA4B9EE74E831752FC0F3B367388FEC82ABA701E6FF
        7975F8C63E6B080A3F8081890080B2F16B0A5CBFA951F6EFBA187ADC6973C6C8
        EDB77ED3796417DF57162F935389EE50F3FB1A851FC04045004059A9103052DD
        B4EAA6C0ECA980A8970F1E3371A83C3C6172DA3383A4A1E56DF9E7E6D38196F2
        69C52AFC4A5C157F5DF8E3E5FE5903403A0200CA2E5F5360947E809B86EB6980
        69A92640EDE07F5BA4EEA5B47128FC000C47004045D04D81AAE8EB4B0817E5CA
        81CFFF69B2DCFCB9A1A9C7E72E9D90852F367976F46B85167EEBF33583EA55E1
        5F48E10750E90800A818F99A02172F7A23D4FE004FBCF035F9F2D0B1196701FE
        F8C212D78E7EEB7EE147FC31F53137BE8C5DFB00540702002A8A0A01BA1FE0BE
        42F707F8D1F43BE4DE51E3ED319C10105BB1528EEE3F5FF0117FF279EBB66650
        CC39D59F28F7CF0E00C22000A0A2382B038EB8350586E907F8DE23C3E581B10F
        A5AE0CA84340EDAA552A009CB58BBE16A2F0DBCFA53EDFA54FF50B47FC00AA18
        010015476F17AC8A7EABBE9F1D02DA0FEF91CD4B3B7DC7F8F9B323E5AEDBBEEB
        BCD71E63476B8334D71FF02DFC9A55FC6FC839E2D785DFDAB54F157E76ED0350
        D50800A8482A044C51457F99BE1F6593A0697346CB882177675C1E78679B0A00
        6F1F907C47FCF67DB18EFA6B6A52CD7D147E00030E0100152BEA4E817A19E0B3
        CF4D4DBD3E190276FF6BAB6C5B77D0FB54BF96190C12EAA356157F0A3F800187
        00808AE6D514A8E9E9804D751D398D810F3E7EBB7CE79E7119AFD72160FBEECD
        B2BB39E13C4E3BD59FDBD9AF5F34F71FB52763E5FEFE01A0540800A868BA2950
        15F1EDEAAE6B08D0AB03E24DFF4E6D193CFAC1A13271FCC48CE57FF6064335B2
        6C459D7C7CAC2BDF92BE8450F801188200808A971D02D20340FA1CBFDE3A78F0
        0D5F50357D50C6E7B49EDE8BB260DE2AAFC21F571FB5147E00262100A02ABCB6
        F737D68583C4270488F3BC0E01E901E0BDF6B8BCB3F9B05BE1D747FCF1727F7F
        00D0DF0800A81AC910A08AB77DF5C08021E0F2D50BB264D19BD273B997C20F00
        0E0200AA8E0A02F355219FA5EF678780E49A7F1D029253011B1B37C9A10FCEE8
        BB31B14FF5C7CBFD3D0040B9110050955EDFF7B4BEDEEF7C150046A63F9F1D02
        9A776E958EBD1FC7C43EE24F94FBEB06804A410040D55221404F09E8AB083EA1
        6E47EAE7D2A702B6B534D57FD07AEA190A3F00E42200604058BDEF19DD17304E
        7D0C5321406FDA53FFE8E8BF26CAFD750140A522000000602002000000062200
        0000602002000000062200000060200200000006220000006020020000000622
        0000006020020000000622000000602002000000062200000060200200000006
        2200000060200200000006220000006020020000000622000000602002000000
        0622000000602002000000062200000060200200000006220000006020020000
        0006220000006020020000000622000000602002000000062200000060200200
        0000062200000060200200000006220000006020020000000622000000602002
        0000000622000000602002000000062200000060200200000006220000006020
        0200000006220000006020020000000622000000602002000000062200000060
        2002000000062200000060200200000006220000006020020000000622000000
        6020020000000622000000602002000000062200000060200200000006220000
        0060200200000006220000006020020000000622000000602002000000062200
        0000602002000000062200000060200200000006220000006020020000000622
        000000602002000000062200000060200200000006FA3F7AA1909A030933FA00
        00000049454E44AE426082}
      Align = alLeft
      Transparent = True
    end
    object UniBitBtn4: TUniBitBtn
      AlignWithMargins = True
      Left = 975
      Top = 9
      Width = 183
      Height = 52
      Hint = ''
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Caption = 'Fechar'
      Align = alRight
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
          'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Aguarde...'
      ScreenMask.Target = Owner
      OnClick = UniBitBtn4Click
    end
  end
  object UniFileUpload1: TUniFileUpload
    MaxAllowedSize = 10485760
    Filter = '.xml'
    Title = 'Envio de Arquivo'
    Messages.Uploading = 'Enviando...'
    Messages.PleaseWait = 'Aguarde...'
    Messages.Cancel = 'Cancelar'
    Messages.Processing = 'Processando...'
    Messages.UploadError = 'Erro ao Enviar'
    Messages.Upload = 'Enviar'
    Messages.NoFileError = 'Por Favor, selecione o arquivo'
    Messages.BrowseText = 'Pesquisar'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    OnCompleted = UniFileUpload1Completed
    Left = 651
    Top = 1
  end
  object DsEntradaCor: TDataSource
    DataSet = UniMainModule.qEntradaCor
    Left = 878
  end
  object dsPagarCab: TDataSource
    DataSet = UniMainModule.qPagarCab
    Left = 800
  end
end
