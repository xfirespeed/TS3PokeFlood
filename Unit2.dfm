object Form2: TForm2
  Left = 513
  Top = 188
  Width = 258
  Height = 440
  Caption = 'TS3PF - Configura'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 225
    Height = 393
    Caption = 'Configura'#231#245'es:'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 304
      Width = 67
      Height = 13
      Caption = 'Pokar a cada:'
    end
    object Edit1: TLabeledEdit
      Left = 16
      Top = 40
      Width = 193
      Height = 21
      EditLabel.Width = 68
      EditLabel.Height = 13
      EditLabel.Caption = 'IP do servidor:'
      TabOrder = 0
    end
    object Edit2: TLabeledEdit
      Left = 16
      Top = 80
      Width = 193
      Height = 21
      EditLabel.Width = 83
      EditLabel.Height = 13
      EditLabel.Caption = 'Porta do servidor:'
      TabOrder = 1
    end
    object Edit3: TLabeledEdit
      Left = 16
      Top = 120
      Width = 193
      Height = 21
      EditLabel.Width = 72
      EditLabel.Height = 13
      EditLabel.Caption = 'Porta da query:'
      TabOrder = 2
    end
    object Edit4: TLabeledEdit
      Left = 16
      Top = 160
      Width = 193
      Height = 21
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome da query:'
      TabOrder = 3
    end
    object Edit5: TLabeledEdit
      Left = 16
      Top = 200
      Width = 193
      Height = 21
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = 'Login da query:'
      TabOrder = 4
    end
    object Edit6: TLabeledEdit
      Left = 16
      Top = 240
      Width = 193
      Height = 21
      EditLabel.Width = 78
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha da query:'
      PasswordChar = '*'
      TabOrder = 5
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 320
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Text = '10 milisegundos'
      Items.Strings = (
        '30 milisegundos'
        '50 milisegundos'
        '100 milisegundos'
        '300 milisegundos'
        '500 milisegundos'
        '800 milisegundos'
        '1 segundo'
        '2 segundos')
    end
    object Button1: TButton
      Left = 32
      Top = 352
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 112
      Top = 352
      Width = 81
      Height = 25
      Caption = 'Sair sem salvar'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Edit7: TLabeledEdit
      Left = 16
      Top = 280
      Width = 193
      Height = 21
      EditLabel.Width = 68
      EditLabel.Height = 13
      EditLabel.Caption = 'DBID do Alvo:'
      TabOrder = 9
    end
  end
end
