object Form7: TForm7
  Left = 430
  Top = 160
  Caption = 'Bevel optical axis'
  ClientHeight = 163
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 385
    Height = 662
    Align = alTop
    Caption = 'normal ray fall'
    TabOrder = 0
    object Label39: TLabel
      Left = 16
      Top = 16
      Width = 6
      Height = 16
      Caption = 'l'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 12
      Height = 13
      Caption = 'ne'
    end
    object Label4: TLabel
      Left = 88
      Top = 16
      Width = 6
      Height = 13
      Caption = 'd'
    end
    object Label3: TLabel
      Left = 72
      Top = 16
      Width = 14
      Height = 13
      Caption = 'um'
    end
    object Label5: TLabel
      Left = 152
      Top = 16
      Width = 16
      Height = 13
      Caption = 'mm'
    end
    object Label6: TLabel
      Left = 176
      Top = 16
      Width = 9
      Height = 16
      Caption = #1092
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Mistral'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 240
      Top = 16
      Width = 18
      Height = 13
      Caption = 'deg'
    end
    object Label1: TLabel
      Left = 80
      Top = 48
      Width = 12
      Height = 13
      Caption = 'no'
    end
    object Edit1: TEdit
      Left = 24
      Top = 16
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '0,780'
    end
    object Edit2: TEdit
      Left = 96
      Top = 48
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '1,53'
    end
    object Edit3: TEdit
      Left = 24
      Top = 48
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '1,54'
    end
    object Edit5: TEdit
      Left = 96
      Top = 16
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '2'
    end
    object Button1: TButton
      Left = 264
      Top = 8
      Width = 97
      Height = 33
      Caption = 'Solve'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Memo1: TMemo
      Left = 2
      Top = 72
      Width = 381
      Height = 588
      Align = alBottom
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 184
      Top = 16
      Width = 57
      Height = 21
      TabOrder = 6
      Text = '5'
    end
  end
end
