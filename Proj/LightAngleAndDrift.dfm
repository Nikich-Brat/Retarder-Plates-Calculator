object Form5: TForm5
  Left = 498
  Top = 233
  Caption = 'Reflection Index'
  ClientHeight = 577
  ClientWidth = 366
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 183
    Height = 577
    Align = alClient
    Caption = 'Drift'
    TabOrder = 0
    object Label19: TLabel
      Left = 8
      Top = 24
      Width = 63
      Height = 16
      Caption = 'RefIndex 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 8
      Top = 72
      Width = 62
      Height = 16
      Caption = 'Thickness'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 8
      Top = 48
      Width = 35
      Height = 16
      Caption = 'Angle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 104
      Top = 72
      Width = 5
      Height = 16
      Caption = 'd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 104
      Top = 48
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
    object Label32: TLabel
      Left = 104
      Top = 24
      Width = 8
      Height = 17
      Caption = 'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 192
      Top = 72
      Width = 16
      Height = 13
      Caption = 'mm'
    end
    object Label41: TLabel
      Left = 192
      Top = 48
      Width = 21
      Height = 13
      Caption = 'grad'
    end
    object Label42: TLabel
      Left = 8
      Top = 96
      Width = 63
      Height = 16
      Caption = 'RefIndex 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 96
      Top = 96
      Width = 15
      Height = 17
      Caption = 'n1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Image4: TImage
      Left = 2
      Top = 150
      Width = 179
      Height = 168
      Align = alBottom
    end
    object Edit14: TEdit
      Left = 112
      Top = 24
      Width = 81
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '1,5'
    end
    object Memo2: TMemo
      Left = 2
      Top = 318
      Width = 179
      Height = 257
      Align = alBottom
      Lines.Strings = (
        '')
      TabOrder = 1
    end
    object Edit15: TEdit
      Left = 112
      Top = 48
      Width = 81
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
    object Edit16: TEdit
      Left = 112
      Top = 72
      Width = 81
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '1'
    end
    object BitBtn4: TBitBtn
      Left = 0
      Top = 120
      Width = 185
      Height = 25
      Caption = 'Calculate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object Edit17: TEdit
      Left = 112
      Top = 96
      Width = 81
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '1'
    end
  end
  object GroupBox1: TGroupBox
    Left = 183
    Top = 0
    Width = 183
    Height = 577
    Align = alRight
    Caption = 'RefIndex'
    TabOrder = 1
    object Label36: TLabel
      Left = 62
      Top = 24
      Width = 55
      Height = 16
      Caption = 'Matherial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 64
      Width = 72
      Height = 16
      Caption = 'Wavelenght'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 88
      Top = 64
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
    object Label34: TLabel
      Left = 152
      Top = 64
      Width = 14
      Height = 13
      Caption = 'um'
    end
    object Label35: TLabel
      Left = 8
      Top = 80
      Width = 53
      Height = 16
      Caption = 'RefIndex'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 88
      Top = 80
      Width = 8
      Height = 17
      Caption = 'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 2
      Top = 564
      Width = 179
      Height = 11
      Align = alBottom
      Alignment = taCenter
      Caption = 'Selmeer method'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Gothic'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 84
    end
    object Label25: TLabel
      Left = 8
      Top = 104
      Width = 3
      Height = 13
    end
    object ComboBox3: TComboBox
      Left = 8
      Top = 40
      Width = 169
      Height = 21
      TabOrder = 0
      OnChange = ComboBox3Change
    end
    object Edit12: TEdit
      Left = 96
      Top = 64
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '1,064'
      OnChange = Edit12Change
    end
    object Edit13: TEdit
      Left = 96
      Top = 80
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Memo3: TMemo
      Left = 2
      Top = 150
      Width = 179
      Height = 414
      Align = alBottom
      TabOrder = 3
    end
  end
end
