object fSpedFiscal: TfSpedFiscal
  Left = 0
  Top = 0
  ClientHeight = 271
  ClientWidth = 742
  Caption = 'Sped'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 144
    Top = 375
    Width = 137
    Height = 185
    Hint = ''
    Visible = False
    TabOrder = 0
    TitleVisible = True
    Title = 'Inventario'
    Caption = ''
    object data_ini_inv: TUniDateTimePicker
      Left = 3
      Top = 44
      Width = 120
      Hint = ''
      DateTime = 43241.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 1
    end
    object data_fim_inv: TUniDateTimePicker
      Left = 3
      Top = 92
      Width = 120
      Hint = ''
      DateTime = 43241.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 2
    end
    object UniLabel3: TUniLabel
      Left = 3
      Top = 25
      Width = 70
      Height = 13
      Hint = ''
      Caption = 'Data de Inicio:'
      TabOrder = 3
    end
    object UniLabel4: TUniLabel
      Left = 3
      Top = 73
      Width = 48
      Height = 13
      Hint = ''
      Caption = 'Data Final'
      TabOrder = 4
    end
    object chkInventario: TUniCheckBox
      Left = 7
      Top = 117
      Width = 97
      Height = 17
      Hint = ''
      Caption = 'chkInventario'
      TabOrder = 5
      OnClick = chkInventarioClick
    end
    object chkZerados: TUniCheckBox
      Left = 7
      Top = 137
      Width = 97
      Height = 17
      Hint = ''
      Caption = 'chkZerados'
      TabOrder = 6
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 231
    Hint = ''
    Align = alTop
    TabOrder = 1
    Caption = 'UniPanel2'
    object UniLabel1: TUniLabel
      Left = 19
      Top = 14
      Width = 70
      Height = 13
      Hint = ''
      Caption = 'Data de Inicio:'
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      Left = 19
      Top = 62
      Width = 48
      Height = 13
      Hint = ''
      Caption = 'Data Final'
      TabOrder = 2
    end
    object Data_INI: TUniDateTimePicker
      Left = 19
      Top = 33
      Width = 120
      Hint = ''
      DateTime = 43241.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 3
    end
    object Data_Fim: TUniDateTimePicker
      Left = 19
      Top = 81
      Width = 120
      Hint = ''
      DateTime = 43241.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 4
    end
    object ListaErro: TUniMemo
      Left = 160
      Top = 8
      Width = 574
      Height = 219
      Hint = ''
      ReadOnly = True
      TabOrder = 5
    end
    object bGerar: TUniButton
      Left = 19
      Top = 120
      Width = 120
      Height = 41
      Hint = ''
      Caption = 'Gerar'
      TabOrder = 6
      OnClick = UniButton1Click
    end
    object bCancelar: TUniButton
      Left = 19
      Top = 167
      Width = 120
      Height = 40
      Hint = ''
      Caption = 'Fechar'
      TabOrder = 7
      OnClick = UniButton2Click
    end
  end
  object Barra: TUniProgressBar
    AlignWithMargins = True
    Left = 3
    Top = 234
    Width = 736
    Height = 34
    Hint = ''
    Position = 50
    Align = alClient
    Text = ''
    TabOrder = 2
  end
end
