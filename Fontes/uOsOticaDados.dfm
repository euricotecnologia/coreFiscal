object fOsOticaDados: TfOsOticaDados
  Left = 0
  Top = 0
  ClientHeight = 603
  ClientWidth = 1047
  Caption = 'Ordem de Servi'#231'o e Produtos'
  OnShow = UniFormShow
  BorderStyle = bsNone
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
    Top = 38
    Width = 1047
    Height = 519
    Hint = ''
    ActivePage = tabItens
    Align = alClient
    LayoutConfig.Width = '100'
    ClientEvents.UniEvents.Strings = (
      
        'tabPanel.beforeInit=function tabPanel.beforeInit(sender, config)' +
        #13#10'{'#13#10'  config.bodyStyle = '#39'background-color: transparent'#39';'#13#10'}')
    TabOrder = 0
    ExplicitWidth = 1029
    ExplicitHeight = 509
    object tabItens: TUniTabSheet
      Hint = ''
      Caption = 'Dados e Itens'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object UniLabel6: TUniLabel
        Left = 79
        Top = 5
        Width = 33
        Height = 13
        Hint = ''
        Caption = 'C'#243'digo'
        TabOrder = 12
      end
      object eCodigo: TUniDBEdit
        Left = 79
        Top = 24
        Width = 116
        Height = 22
        Hint = ''
        DataField = 'CODIGO'
        DataSource = dsOticaCab
        TabOrder = 0
        ReadOnly = True
      end
      object UniLabel7: TUniLabel
        Left = 201
        Top = 6
        Width = 23
        Height = 13
        Hint = ''
        Caption = 'Data'
        TabOrder = 13
      end
      object eData: TUniDBDateTimePicker
        Left = 201
        Top = 23
        Width = 120
        Hint = ''
        DataField = 'DATA'
        DataSource = dsOticaCab
        DateTime = 43310.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 1
      end
      object UniLabel8: TUniLabel
        Left = 330
        Top = 5
        Width = 23
        Height = 13
        Hint = ''
        Caption = 'Hora'
        TabOrder = 14
      end
      object eHora: TUniDBDateTimePicker
        Left = 330
        Top = 22
        Width = 69
        Hint = ''
        DataField = 'HORA'
        DataSource = dsOticaCab
        DateTime = 0.807132673609885400
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniTime
        TabOrder = 2
      end
      object eVendedor: TUniDBLookupComboBox
        Left = 405
        Top = 23
        Width = 328
        Hint = ''
        ListField = 'NOME'
        ListSource = dsVendedores
        KeyField = 'CODIGO'
        ListFieldIndex = 0
        DataField = 'VENDEDOR'
        DataSource = dsOticaCab
        TabOrder = 3
        Color = clWindow
        Style = csDropDown
      end
      object UniLabel9: TUniLabel
        Left = 405
        Top = 6
        Width = 46
        Height = 13
        Hint = ''
        Caption = 'Vendedor'
        TabOrder = 15
      end
      object eSitaucao: TUniDBComboBox
        Left = 739
        Top = 22
        Width = 197
        Hint = ''
        DataField = 'SITUACAO'
        DataSource = dsOticaCab
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
        Left = 739
        Top = 3
        Width = 41
        Height = 13
        Hint = ''
        Caption = 'Situa'#231#227'o'
        TabOrder = 16
      end
      object UniLabel11: TUniLabel
        Left = 79
        Top = 52
        Width = 33
        Height = 13
        Hint = ''
        Caption = 'Cliente'
        TabOrder = 17
      end
      object eCliente: TUniDBLookupComboBox
        Left = 132
        Top = 70
        Width = 320
        Hint = ''
        ListField = 'RAZAOSOCIAL'
        ListSource = dsClientes
        KeyField = 'IDCLIENTE'
        ListFieldIndex = 0
        DataField = 'CLIENTE'
        DataSource = dsOticaCab
        TabOrder = 6
        Color = clWindow
        Style = csDropDown
      end
      object eCodCliente: TUniEdit
        Left = 75
        Top = 70
        Width = 51
        Hint = ''
        Text = ''
        TabOrder = 5
        OnExit = eCodClienteExit
      end
      object bPesqCliente: TUniSFButton
        Left = 455
        Top = 69
        Width = 33
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 18
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = bPesqClienteClick
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_primary
      end
      object bCadCliente: TUniSFButton
        Left = 488
        Top = 69
        Width = 33
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 19
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Aguarde...'
        ScreenMask.Target = Owner
        OnClick = bCadClienteClick
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniLabel12: TUniLabel
        Left = 79
        Top = 98
        Width = 74
        Height = 13
        Hint = ''
        Caption = 'C'#243'digo Produto'
        TabOrder = 20
      end
      object eCodProduto: TUniEdit
        Left = 79
        Top = 117
        Width = 105
        Hint = ''
        Text = ''
        TabOrder = 7
        OnExit = eCodProdutoExit
      end
      object enProduto: TUniDBLookupComboBox
        Left = 216
        Top = 117
        Width = 430
        Hint = ''
        ListField = 'DESCRICAO'
        ListSource = UniMainModule.dsProduto
        KeyField = 'IDPRODUTO'
        ListFieldIndex = 0
        TabOrder = 8
        Color = clWindow
        Style = csDropDown
        OnExit = enProdutoExit
      end
      object UniLabel13: TUniLabel
        Left = 216
        Top = 98
        Width = 38
        Height = 13
        Hint = ''
        Caption = 'Produto'
        TabOrder = 21
      end
      object eQuantidadeProduto: TUniFormattedNumberEdit
        Left = 652
        Top = 115
        Width = 68
        Hint = ''
        TabOrder = 9
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  sender.type' +
            'Ahead = true;'#13#10'  sender.selectOnFocus = true; '#13#10'}')
        DecimalSeparator = ','
        ThousandSeparator = '.'
        OnChange = eQuantidadeProdutoChange
      end
      object eValorProduto: TUniFormattedNumberEdit
        Left = 726
        Top = 115
        Width = 68
        Hint = ''
        TabOrder = 10
        DecimalSeparator = ','
        ThousandSeparator = '.'
        OnChange = eValorProdutoChange
      end
      object eTotalProduto: TUniFormattedNumberEdit
        Left = 800
        Top = 115
        Width = 68
        Hint = ''
        TabOrder = 22
        TabStop = False
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object bDelProduto: TUniSFButton
        Left = 903
        Top = 114
        Width = 33
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 23
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Excluindo...'
        ScreenMask.Target = Owner
        OnClick = bDelProdutoClick
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object bAdcProduto: TUniSFButton
        Left = 870
        Top = 114
        Width = 33
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 11
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Gravando...'
        ScreenMask.Target = Owner
        OnClick = bAdcProdutoClick
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniLabel14: TUniLabel
        Left = 652
        Top = 96
        Width = 56
        Height = 13
        Hint = ''
        Caption = 'Quantidade'
        TabOrder = 24
      end
      object UniLabel15: TUniLabel
        Left = 726
        Top = 96
        Width = 24
        Height = 13
        Hint = ''
        Caption = 'Valor'
        TabOrder = 25
      end
      object UniLabel16: TUniLabel
        Left = 800
        Top = 96
        Width = 24
        Height = 13
        Hint = ''
        Caption = 'Total'
        TabOrder = 26
      end
      object UniDBGrid1: TUniDBGrid
        Left = 79
        Top = 149
        Width = 857
        Height = 256
        Hint = ''
        DataSource = UniMainModule.dsOticaCor
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        TabOrder = 27
        OnDblClick = UniDBGrid1DblClick
        OnDrawColumnCell = UniDBGrid1DrawColumnCell
        Columns = <
          item
            FieldName = 'GARANTIA'
            Title.Caption = 'GARANTIA'
            Width = 57
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
      object eSubTotal: TUniDBFormattedNumberEdit
        Left = 248
        Top = 437
        Width = 153
        Height = 38
        Hint = ''
        DataField = 'SUBTOTAL'
        DataSource = dsOticaCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 28
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniLabel17: TUniLabel
        Left = 248
        Top = 406
        Width = 99
        Height = 25
        Hint = ''
        Caption = 'Sub Total'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 29
      end
      object UniLabel18: TUniLabel
        Left = 783
        Top = 406
        Width = 54
        Height = 25
        Hint = ''
        Caption = 'Total'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 30
      end
      object UniLabel19: TUniLabel
        Left = 432
        Top = 406
        Width = 129
        Height = 25
        Hint = ''
        Visible = False
        Caption = 'Desconto %'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 31
      end
      object UniLabel20: TUniLabel
        Left = 605
        Top = 406
        Width = 132
        Height = 25
        Hint = ''
        Caption = 'Desconto R$'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 32
      end
      object ePercDesconto: TUniDBFormattedNumberEdit
        Left = 433
        Top = 437
        Width = 153
        Height = 38
        Hint = ''
        Visible = False
        DataField = 'PERCDESCONTO'
        DataSource = dsOticaCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 33
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object eValorDesconto: TUniDBFormattedNumberEdit
        Left = 608
        Top = 437
        Width = 153
        Height = 38
        Hint = ''
        DataField = 'DESCONTO'
        DataSource = dsOticaCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 34
        DecimalSeparator = ','
        ThousandSeparator = '.'
        OnExit = eValorDescontoExit
      end
      object eTotal: TUniDBFormattedNumberEdit
        Left = 783
        Top = 437
        Width = 153
        Height = 38
        Hint = ''
        DataField = 'TOTAL'
        DataSource = dsOticaCab
        Alignment = taRightJustify
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 35
        ReadOnly = True
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniLabel21: TUniLabel
        Left = 159
        Top = 3
        Width = 26
        Height = 13
        Hint = ''
        Visible = False
        Caption = 'NFCe'
        TabOrder = 36
      end
      object UniDBEdit1: TUniDBEdit
        Left = 159
        Top = 22
        Width = 38
        Height = 22
        Hint = ''
        Visible = False
        DataField = 'CODIGO'
        DataSource = dsOticaCab
        TabOrder = 37
        ReadOnly = True
      end
      object UniSFButton30: TUniSFButton
        Left = 800
        Top = 52
        Width = 136
        Height = 38
        Hint = ''
        Caption = 'Imprimir Garantia'
        TabOrder = 38
        OnClick = UniSFButton30Click
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton33: TUniSFButton
        Left = 183
        Top = 116
        Width = 33
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 39
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Gravando...'
        ScreenMask.Target = Owner
        OnClick = UniSFButton33Click
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_info
      end
    end
    object TabLaboratorio: TUniTabSheet
      Hint = ''
      Caption = 'Laborat'#243'rio'
      object UniSFButton1: TUniSFButton
        Left = 171
        Top = 0
        Width = 121
        Height = 63
        Hint = ''
        Caption = 'Olho Direito'
        TabOrder = 0
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton2: TUniSFButton
        Left = 171
        Top = 65
        Width = 121
        Height = 63
        Hint = ''
        Caption = 'Olho Esquerdo'
        TabOrder = 1
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton3: TUniSFButton
        Left = 171
        Top = 133
        Width = 121
        Height = 63
        Hint = ''
        Caption = 'Olho Direito'
        TabOrder = 2
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton4: TUniSFButton
        Left = 171
        Top = 198
        Width = 121
        Height = 63
        Hint = ''
        Caption = 'Olho Esquerdo'
        TabOrder = 3
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton5: TUniSFButton
        Left = 295
        Top = 0
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Esf.'
        TabOrder = 4
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton6: TUniSFButton
        Left = 422
        Top = 0
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Cil.'
        TabOrder = 5
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton7: TUniSFButton
        Left = 549
        Top = 0
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Eixo'
        TabOrder = 6
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton8: TUniSFButton
        Left = 676
        Top = 0
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Altura'
        TabOrder = 7
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton9: TUniSFButton
        Left = 803
        Top = 0
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'DNP'
        TabOrder = 8
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton10: TUniSFButton
        Left = 298
        Top = 69
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Esf.'
        TabOrder = 9
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton11: TUniSFButton
        Left = 425
        Top = 69
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Cil.'
        TabOrder = 10
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton12: TUniSFButton
        Left = 552
        Top = 69
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Eixo'
        TabOrder = 11
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton13: TUniSFButton
        Left = 679
        Top = 69
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Altura'
        TabOrder = 12
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton14: TUniSFButton
        Left = 806
        Top = 69
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'DNP'
        TabOrder = 13
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton15: TUniSFButton
        Left = 298
        Top = 137
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Esf.'
        TabOrder = 14
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton16: TUniSFButton
        Left = 425
        Top = 137
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Cil'
        TabOrder = 15
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton17: TUniSFButton
        Left = 552
        Top = 137
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Eixo'
        TabOrder = 16
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton18: TUniSFButton
        Left = 679
        Top = 137
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Altura'
        TabOrder = 17
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton19: TUniSFButton
        Left = 806
        Top = 137
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'DNP'
        TabOrder = 18
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton20: TUniSFButton
        Left = 298
        Top = 202
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Esf.'
        TabOrder = 19
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton21: TUniSFButton
        Left = 425
        Top = 202
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Cil.'
        TabOrder = 48
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton22: TUniSFButton
        Left = 552
        Top = 202
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Eixo'
        TabOrder = 49
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton23: TUniSFButton
        Left = 679
        Top = 202
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Altura'
        TabOrder = 50
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniSFButton24: TUniSFButton
        Left = 806
        Top = 202
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'DNP'
        TabOrder = 51
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
      object UniLabel1: TUniLabel
        Left = 16
        Top = 344
        Width = 62
        Height = 13
        Hint = ''
        Caption = 'Data Receita'
        TabOrder = 52
      end
      object eDataReceita: TUniDBDateTimePicker
        Left = 16
        Top = 363
        Width = 120
        Hint = ''
        DataField = 'DATARECEITA'
        DataSource = dsOticaCab
        DateTime = 43305.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 41
      end
      object UniSFButton25: TUniSFButton
        Left = 0
        Top = 0
        Width = 168
        Height = 128
        Hint = ''
        Caption = 'Longe'
        TabOrder = 53
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton26: TUniSFButton
        Left = 0
        Top = 133
        Width = 168
        Height = 128
        Hint = ''
        Caption = 'Perto'
        TabOrder = 54
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton27: TUniSFButton
        Left = 0
        Top = 264
        Width = 168
        Height = 68
        Hint = ''
        Caption = ''
        TabOrder = 55
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_danger
      end
      object UniSFButton28: TUniSFButton
        Left = 171
        Top = 266
        Width = 121
        Height = 33
        Hint = ''
        Caption = 'Adi'#231#227'o'
        TabOrder = 56
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_primary
      end
      object UniLabel2: TUniLabel
        Left = 152
        Top = 344
        Width = 117
        Height = 13
        Hint = ''
        Caption = 'Observa'#231#245'es da Receita'
        TabOrder = 57
      end
      object eObsReceita: TUniDBEdit
        Left = 152
        Top = 363
        Width = 772
        Height = 22
        Hint = ''
        DataField = 'OBSRECEITA'
        DataSource = dsOticaCab
        TabOrder = 42
      end
      object cAcompanhaReceita: TUniDBCheckBox
        Left = 560
        Top = 456
        Width = 153
        Height = 17
        Hint = ''
        DataField = 'ACOMPANHARECEITA'
        DataSource = dsOticaCab
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Caption = 'Acompanha Receita'
        TabOrder = 46
        ParentColor = False
        Color = clBtnFace
      end
      object cAcompanhaArmacao: TUniDBCheckBox
        Left = 679
        Top = 456
        Width = 121
        Height = 17
        Hint = ''
        DataField = 'ACOMPANHAARMACAO'
        DataSource = dsOticaCab
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Caption = 'Acompanha Arma'#231#227'o'
        TabOrder = 47
        ParentColor = False
        Color = clBtnFace
      end
      object UniLabel3: TUniLabel
        Left = 16
        Top = 392
        Width = 33
        Height = 13
        Hint = ''
        Caption = 'M'#233'dico'
        TabOrder = 58
      end
      object eMedico: TUniDBEdit
        Left = 16
        Top = 411
        Width = 524
        Height = 22
        Hint = ''
        DataField = 'MEDICO'
        DataSource = dsOticaCab
        TabOrder = 43
      end
      object UniLabel4: TUniLabel
        Left = 16
        Top = 440
        Width = 55
        Height = 13
        Hint = ''
        Caption = 'Laborat'#243'rio'
        TabOrder = 59
      end
      object eLaboratorio: TUniDBEdit
        Left = 16
        Top = 459
        Width = 527
        Height = 22
        Hint = ''
        DataField = 'LABORATORIO'
        DataSource = dsOticaCab
        TabOrder = 45
      end
      object UniLabel5: TUniLabel
        Left = 546
        Top = 392
        Width = 97
        Height = 13
        Hint = ''
        Caption = 'Observa'#231#227'o Interna'
        TabOrder = 60
      end
      object eObsInterna: TUniDBEdit
        Left = 546
        Top = 411
        Width = 378
        Height = 22
        Hint = ''
        DataField = 'OBSINTERNA'
        DataSource = dsOticaCab
        TabOrder = 44
      end
      object eEsfLongeDireito: TUniDBEdit
        Left = 295
        Top = 36
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ESFLONGEDIREITO'
        DataSource = dsOticaCab
        TabOrder = 20
      end
      object eEsfLongeEsquerdo: TUniDBEdit
        Left = 298
        Top = 106
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ESFLONGEESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 25
      end
      object eEsfPertoDireito: TUniDBEdit
        Left = 298
        Top = 174
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ESFPERTODIREITO'
        DataSource = dsOticaCab
        TabOrder = 30
      end
      object eEsfPertoEsquerdo: TUniDBEdit
        Left = 298
        Top = 239
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ESFPERTOESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 35
      end
      object eCilLongeDireito: TUniDBEdit
        Left = 422
        Top = 36
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'CILLONGEDIREITO'
        DataSource = dsOticaCab
        TabOrder = 21
        OnChange = eCilLongeDireitoChange
      end
      object eCilLongeEsquerdo: TUniDBEdit
        Left = 425
        Top = 106
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'CILLONGEESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 26
        OnChange = eCilLongeEsquerdoChange
      end
      object eCilPertoDireito: TUniDBEdit
        Left = 425
        Top = 174
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'CILPERTODIREITO'
        DataSource = dsOticaCab
        TabOrder = 31
      end
      object eCilPertoEsquerdo: TUniDBEdit
        Left = 425
        Top = 239
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'CILPERTOESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 36
      end
      object eEixoLongeDireito: TUniDBEdit
        Left = 549
        Top = 36
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'EIXOLONGEDIREITO'
        DataSource = dsOticaCab
        TabOrder = 22
        OnChange = eEixoLongeDireitoChange
      end
      object eAlturaLongeDireito: TUniDBEdit
        Left = 676
        Top = 39
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ALTURALONGEDIREITO'
        DataSource = dsOticaCab
        TabOrder = 23
      end
      object eDnpLongeDireito: TUniDBEdit
        Left = 803
        Top = 36
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'DNPLONGEDIREITO'
        DataSource = dsOticaCab
        TabOrder = 24
      end
      object eEixoLongeEsquerdo: TUniDBEdit
        Left = 552
        Top = 106
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'EIXOLONGEESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 27
        OnChange = eEixoLongeEsquerdoChange
      end
      object eAlturaLongeEsquerdo: TUniDBEdit
        Left = 679
        Top = 106
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ALTURALONGEESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 28
      end
      object eDnpLongeEsquerdo: TUniDBEdit
        Left = 806
        Top = 106
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'DNPLONGEESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 29
      end
      object eEixoPertoDireito: TUniDBEdit
        Left = 551
        Top = 174
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'EIXOPERTODIREITO'
        DataSource = dsOticaCab
        TabOrder = 32
      end
      object eALturaPertoDireito: TUniDBEdit
        Left = 678
        Top = 174
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ALTURAPERTODIREITO'
        DataSource = dsOticaCab
        TabOrder = 33
      end
      object eDnpPertoDireito: TUniDBEdit
        Left = 805
        Top = 174
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'DNPPERTODIREITO'
        DataSource = dsOticaCab
        TabOrder = 34
      end
      object eEixoPertoEsquerdo: TUniDBEdit
        Left = 552
        Top = 239
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'EIXOPERTOESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 37
      end
      object eAlturaPertoEsquerdo: TUniDBEdit
        Left = 679
        Top = 239
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ALTURAPERTOESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 38
      end
      object eDnpPertoEsquerdo: TUniDBEdit
        Left = 806
        Top = 239
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'DNPPERTOESQUERDO'
        DataSource = dsOticaCab
        TabOrder = 39
      end
      object eAdcao: TUniDBEdit
        Left = 298
        Top = 267
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ADCAO'
        DataSource = dsOticaCab
        TabOrder = 40
        OnExit = eAdcaoExit
      end
      object UniSFButton37: TUniSFButton
        Left = 822
        Top = 442
        Width = 121
        Height = 38
        Hint = ''
        Caption = 'Imprimir'
        TabOrder = 61
        OnClick = UniSFButton37Click
        FAIcon.Icon = fa_none
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        ButtonStyles = bs_success
      end
    end
    object pFaturar: TUniTabSheet
      Hint = ''
      Caption = 'Finalizar'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object navPanel: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 1039
        Height = 491
        Hint = ''
        ParentRTL = False
        ParentColor = False
        Align = alClient
        ParentAlignmentControl = False
        AutoScroll = True
        TabOrder = 0
        ScrollHeight = 491
        ScrollWidth = 1039
      end
    end
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 557
    Width = 1047
    Height = 46
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 1
    LayoutConfig.Width = '100'
    object bSalvar: TUniSFButton
      Left = 209
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Salvar'
      TabOrder = 0
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Gravando...'
      ScreenMask.Target = Owner
      OnClick = bSalvarClick
      FAIcon.Icon = fa_none
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      ButtonStyles = bs_success
    end
    object bCancelar: TUniSFButton
      Left = 697
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = bCancelarClick
      FAIcon.Icon = fa_none
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      ButtonStyles = bs_warning
    end
    object bFaturar: TUniSFButton
      Left = 87
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Faturar'
      TabOrder = 3
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Aguarde...'
      ScreenMask.Target = Owner
      OnClick = bFaturarClick
      FAIcon.Icon = fa_none
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      ButtonStyles = bs_primary
    end
    object UniSFButton36: TUniSFButton
      Left = 819
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = UniSFButton36Click
      FAIcon.Icon = fa_none
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      ButtonStyles = bs_primary
    end
    object UniSFButton29: TUniSFButton
      Left = 453
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Imprimir Termica'
      TabOrder = 5
      OnClick = UniSFButton29Click
      FAIcon.Icon = fa_none
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      ButtonStyles = bs_info
    end
    object UniSFButton31: TUniSFButton
      Left = 575
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Excluir'
      TabOrder = 6
      OnClick = UniSFButton31Click
      FAIcon.Icon = fa_none
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      ButtonStyles = bs_danger
    end
    object UniSFButton32: TUniSFButton
      Left = 331
      Top = 3
      Width = 121
      Height = 38
      Hint = ''
      Caption = 'Imprimir A4'
      TabOrder = 7
      OnClick = UniSFButton32Click
      FAIcon.Icon = fa_none
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      ButtonStyles = bs_info
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 2
    Caption = ''
    Color = 12024371
    LayoutConfig.Width = '100'
    object lTitulo: TUniLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 256
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Alignment = taCenter
      Caption = 'Lan'#231'amento de Or'#231'amento'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object dsOticaCab: TDataSource
    DataSet = UniMainModule.qOticaCab
    Left = 988
    Top = 128
  end
  object sa: TUniSFSweetAlert
    Timer = 0
    IsHtmlJS = False
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ConfirmButtonColor = '#3085d6'
    CancelButtonColor = '#d33'
    ShowConfirmButton = True
    ShowCancelButton = False
    Animation = True
    AlertType = atNone
    Position = top
    ImageWidth = 0
    ImageHeight = 0
    AllowOutsideClick = False
    AllowEscapeKey = False
    ScreenMask.Theme = ht_sk_rect
    Language = alPortuguese
    Left = 936
    Top = 65528
  end
  object qVendedor: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Banco
    SQL.Strings = (
      'select codigo,nome from VENDEDORES where 1=2 ')
    Left = 984
    Top = 248
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
    Left = 985
    Top = 297
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.qClientes
    Left = 985
    Top = 177
  end
  object frxDB: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'OticaCab'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'COD_EMITENTE=COD_EMITENTE'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'HORA=HORA'
      'VENDEDOR=VENDEDOR'
      'SITUACAO=SITUACAO'
      'CLIENTE=CLIENTE'
      'SUBTOTAL=SUBTOTAL'
      'PERCDESCONTO=PERCDESCONTO'
      'DESCONTO=DESCONTO'
      'TOTAL=TOTAL'
      'ESFLONGEDIREITO=ESFLONGEDIREITO'
      'ESFLONGEESQUERDO=ESFLONGEESQUERDO'
      'ESFPERTODIREITO=ESFPERTODIREITO'
      'ESFPERTOESQUERDO=ESFPERTOESQUERDO'
      'CILLONGEDIREITO=CILLONGEDIREITO'
      'CILLONGEESQUERDO=CILLONGEESQUERDO'
      'CILPERTODIREITO=CILPERTODIREITO'
      'CILPERTOESQUERDO=CILPERTOESQUERDO'
      'EIXOLONGEDIREITO=EIXOLONGEDIREITO'
      'EIXOLONGEESQUERDO=EIXOLONGEESQUERDO'
      'EIXOPERTODIREITO=EIXOPERTODIREITO'
      'EIXOPERTOESQUERDO=EIXOPERTOESQUERDO'
      'ALTURALONGEDIREITO=ALTURALONGEDIREITO'
      'ALTURALONGEESQUERDO=ALTURALONGEESQUERDO'
      'ALTURAPERTODIREITO=ALTURAPERTODIREITO'
      'ALTURAPERTOESQUERDO=ALTURAPERTOESQUERDO'
      'DNPLONGEDIREITO=DNPLONGEDIREITO'
      'DNPLONGEESQUERDO=DNPLONGEESQUERDO'
      'DNPPERTODIREITO=DNPPERTODIREITO'
      'DNPPERTOESQUERDO=DNPPERTOESQUERDO'
      'ADCAO=ADCAO'
      'DATARECEITA=DATARECEITA'
      'OBSRECEITA=OBSRECEITA'
      'MEDICO=MEDICO'
      'OBSINTERNA=OBSINTERNA'
      'LABORATORIO=LABORATORIO'
      'ACOMPANHARECEITA=ACOMPANHARECEITA'
      'ACOMPANHAARMACAO=ACOMPANHAARMACAO'
      'NOMEFANTASIA=NOMEFANTASIA'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'DATACADASTRO=DATACADASTRO'
      'DATASAIDA=DATASAIDA'
      'HORASAIDA=HORASAIDA'
      'ATIVO=ATIVO'
      'FONE=FONE'
      'FAX=FAX')
    DataSet = UniMainModule.qOticaCab
    BCDToCurrency = False
    Left = 649
    Top = 296
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
    Left = 689
    Top = 296
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
    Left = 761
    Top = 344
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'Empresa'
      end
      item
        DataSet = frxDB
        DataSetName = 'OticaCab'
      end
      item
        DataSet = frxDbCor
        DataSetName = 'OticaCor'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
        DataSet = frxDbCor
        DataSetName = 'OticaCor'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataField = 'NPRODUTO'
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
  object frxDbCor: TfrxDBDataset
    UserName = 'OticaCor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'COD_EMITENTE=COD_EMITENTE'
      'CODIGO=CODIGO'
      'IDOTICA=IDOTICA'
      'PRODUTO=PRODUTO'
      'QUANTIDADE=QUANTIDADE'
      'VALOR=VALOR'
      'TOTAL=TOTAL'
      'NPRODUTO=NPRODUTO'
      'GARANTIA=GARANTIA')
    DataSet = UniMainModule.qOticaCor
    BCDToCurrency = False
    Left = 649
    Top = 344
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
    Left = 649
    Top = 248
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
    Left = 761
    Top = 296
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'Empresa'
      end
      item
        DataSet = frxDB
        DataSetName = 'OticaCab'
      end
      item
        DataSet = frxDbCor
        DataSetName = 'OticaCor'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
        DataSet = frxDbCor
        DataSetName = 'OticaCor'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
    Left = 761
    Top = 392
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'Empresa'
      end
      item
        DataSet = frxDB
        DataSetName = 'OticaCab'
      end
      item
        DataSet = frxDbCor
        DataSetName = 'OticaCor'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
          DataSet = frxDB
          DataSetName = 'OticaCab'
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
        DataSet = frxDbCor
        DataSetName = 'OticaCor'
        Filter = '<OticaCor."GARANTIA"> = '#39'SIM'#39
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          DataField = 'NPRODUTO'
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
  object frxOrcamentoA4: TfrxReport
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
    Left = 841
    Top = 296
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'Empresa'
      end
      item
        DataSet = frxDB
        DataSetName = 'OticaCab'
      end
      item
        DataSet = frxDbCor
        DataSetName = 'OticaCor'
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
        Height = 181.417440000000000000
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
          Top = 60.472479999999990000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = frxDB
          DataSetName = 'OticaCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."CODIGO"]')
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
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEFANTASIA'
          DataSet = frxDB
          DataSetName = 'OticaCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."NOMEFANTASIA"]')
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
          DataField = 'DATA'
          DataSet = frxDB
          DataSetName = 'OticaCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."DATA"]')
          ParentFont = False
        end
        object EmpresaCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 23.236239999999990000
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
          Top = 131.283550000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 134.283550000000000000
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
            'OR'#199'AMENTO')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Top = 162.519790000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
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
          Left = 419.527830000000000000
          Top = 164.299320000000000000
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
          Left = 502.677490000000000000
          Top = 162.519790000000000000
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
          Left = 615.063390000000000000
          Top = 163.299320000000000000
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
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          DataField = 'FONE'
          DataSet = frxDB
          DataSetName = 'OticaCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."FONE"]')
        end
        object OticaCabFAX: TfrxMemoView
          AllowVectorExport = True
          Left = 51.913420000000000000
          Top = 114.385900000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          DataField = 'FAX'
          DataSet = frxDB
          DataSetName = 'OticaCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[OticaCab."FAX"]')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 4.559059999999999000
          Width = 102.047310000000000000
          Height = 75.590600000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = frxDbCor
        DataSetName = 'OticaCor'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 1.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
          Left = 56.692950000000000000
          Top = 1.000000000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          DataField = 'NPRODUTO'
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
          Left = 404.630180000000000000
          Top = 2.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
          Left = 487.559370000000000000
          Top = 2.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR'
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
          Left = 593.386210000000000000
          Top = 2.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = frxDbCor
          DataSetName = 'OticaCor'
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
        Height = 77.149660000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Top = 54.472480000000020000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 56.692949999999990000
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
            'OR'#199'AMENTO - SEM VALOR FISCAL')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Top = 3.779530000000022000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Frame.Typ = []
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 598.945270000000000000
          Top = 24.897650000000000000
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
            ' [OticaCab."TOTAL"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 599.165740000000000000
          Top = 3.779530000000022000
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
          Top = 24.897650000000000000
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
            '[OticaCab."DESCONTO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 480.220780000000000000
          Top = 3.779530000000022000
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
          Top = 24.897650000000000000
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
            '[OticaCab."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 359.275820000000000000
          Top = 3.779530000000022000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 128.724490000000000000
          Top = 22.677180000000020000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Itens: [SUM(<OticaCor."QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
