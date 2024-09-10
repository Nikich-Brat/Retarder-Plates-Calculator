object Form2: TForm2
  Left = 260
  Top = 247
  Caption = 'Polarization Rotation'
  ClientHeight = 417
  ClientWidth = 349
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
    Width = 349
    Height = 417
    Align = alClient
    Caption = 'RotationOfPolarization'
    TabOrder = 0
    object Label2: TLabel
      Left = 96
      Top = 40
      Width = 42
      Height = 13
      Caption = 'grad/mm'
    end
    object Label1: TLabel
      Left = 144
      Top = 40
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
    object Label3: TLabel
      Left = 176
      Top = 40
      Width = 21
      Height = 13
      Caption = 'grad'
    end
    object Label6: TLabel
      Left = 208
      Top = 40
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
    object Label4: TLabel
      Left = 248
      Top = 40
      Width = 16
      Height = 13
      Caption = 'mm'
    end
    object Image1: TImage
      Left = 8
      Top = 88
      Width = 329
      Height = 329
    end
    object Label12: TLabel
      Left = 16
      Top = 40
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
    object ComboBox1: TComboBox
      Left = 16
      Top = 16
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Quartz'
      Items.Strings = (
        'Quartz'
        'Island spar')
    end
    object CheckBox4: TCheckBox
      Left = 168
      Top = 16
      Width = 81
      Height = 17
      Caption = 'ShowAxis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox4Click
    end
    object BitBtn1: TBitBtn
      Left = 256
      Top = 16
      Width = 81
      Height = 25
      Caption = 'Solve'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        26040000424D2604000000000000460100002800000020000000170000000100
        080000000000E0020000C30E0000C30E00004400000044000000DDDDDD00CCCC
        CC008B8B8B0096969600D2D5D900A7A7A700BEBEBE00B5B5BB00AFAFB900A6B0
        C600829CD200A9B2C500ADADAD008888B2000909820053539E00B2BCD200497F
        EC000355FE000054FF001963F800C8CACC00B2B2C2000303800006068100BFBF
        C700ACB9D4000657FD000C5BFB00BFC4CF004040970000007F006F6FA8003372
        F200437BEE009FB1D7009595B7001C1C8900C5C8CD006C93E400467DED002323
        8C008F8FB50082A0DE007878AC0039399400B8C0D0002C6EF300AAABAE00C2C2
        C8000C0C8300ACACBF000959FC00135FFA006B8BCB005959A0007C7CAD008CA6
        DC00A9A9B700B2B7C2007997D5009DABC900CFD3D400BABABA00B4B4B400C7B5
        AC00CABAAC009F9F9F0000000000000000000000000000000000000000000000
        0000000000000000000000030303030303030303030303034303434343434303
        0303030303030303050000023F3F3F3F3F3F403F403F403F403F404040404140
        40423F3F3F3F3F3F020000020101000100010001000104010401040404043E3E
        3E3E010001010101020000020101010101010101010101010101040101010101
        0101010101010101020000020101010101010101010101010101010101010101
        0101010101010001020000020101010101010303030303030303030303030303
        03030101010101010200000201010101010103050606063A3A06063B3C3D0606
        050301010101010102000002010001010101030C010101371738261413132F39
        0C0301010101010102000002010101010101030C010131321F33101334351313
        360301010101010102000002010101010101030C01012C1F2D011512122E272F
        300301010101010102000002010101010101030C0101291F2A010121132B0101
        0C0301010101000102000002010101010101030C01241F250126012713280101
        0C0301010101010102000002010101010101030C011E1F2001212223131C0101
        0C0301010101010102000002010001010101030C161718191A1B131C13131D01
        0C0301000101010102000002010101010100030C0D0E0F010110111213141501
        0C0301010101010102000002010101010101030506070806060606090A0B0606
        0503010101010101020000020101010101010303030303030303030303030303
        0303010101010101020000020101010101010101010101010101010101010001
        0101010101010101020000020101010101010101010101010101010004010101
        0101010101010001020000020100010101010101010101010101010101010101
        0101010101010101020000020203030303030303030303030303030303030303
        0303030303030302020000010101010101010101010101010101010101010101
        01010101010101010100}
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = BitBtn1Click
    end
    object StaticText1: TStaticText
      Left = 48
      Top = 40
      Width = 18
      Height = 17
      Caption = 'nm'
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 16
      Top = 56
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '532'
      OnChange = Edit1Change
    end
    object StaticText2: TStaticText
      Left = 80
      Top = 40
      Width = 11
      Height = 22
      Caption = 'e'
      Font.Charset = BALTIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 80
      Top = 56
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0'
    end
    object Edit3: TEdit
      Left = 144
      Top = 56
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '0'
      OnChange = Edit3Change
    end
    object Edit4: TEdit
      Left = 208
      Top = 56
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Text = '0'
      OnChange = Edit4Change
    end
    object CheckBox1: TCheckBox
      Left = 272
      Top = 56
      Width = 65
      Height = 17
      Caption = 'inverse'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = CheckBox1Click
    end
  end
end
