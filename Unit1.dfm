object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 388
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblSaldo: TLabel
    Left = 97
    Top = 352
    Width = 3
    Height = 15
  end
  object lblNumeroConta: TLabel
    Left = 8
    Top = 8
    Width = 98
    Height = 15
    Caption = 'N'#250'mero da Conta:'
  end
  object lblTitular: TLabel
    Left = 8
    Top = 75
    Width = 89
    Height = 15
    Caption = 'Nome do Titular:'
  end
  object lblValor: TLabel
    Left = 8
    Top = 187
    Width = 157
    Height = 15
    Caption = 'Valor para Dep'#243'sito ou Saque:'
  end
  object lblStatusCriar: TLabel
    Left = 112
    Top = 148
    Width = 3
    Height = 15
  end
  object edtNumeroConta: TEdit
    Left = 8
    Top = 29
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtTitular: TEdit
    Left = 8
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtValor: TEdit
    Left = 8
    Top = 208
    Width = 169
    Height = 23
    TabOrder = 2
  end
  object btnCriarConta: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Criar'
    TabOrder = 3
    OnClick = btnCriarContaClick
  end
  object btnDepositar: TButton
    Left = 8
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Depositar'
    TabOrder = 4
    OnClick = btnDepositarClick
  end
  object btnSacar: TButton
    Left = 31
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Sacar'
    TabOrder = 5
    OnClick = btnSacarClick
  end
  object btnExibirSaldo: TButton
    Left = 112
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Exibir Saldo'
    TabOrder = 6
    OnClick = btnExibirSaldoClick
  end
end
