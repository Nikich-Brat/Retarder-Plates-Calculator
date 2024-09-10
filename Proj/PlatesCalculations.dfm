object Form4: TForm4
  Left = 369
  Top = 64
  Caption = 'Retarder plates'
  ClientHeight = 686
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 104
    Top = 48
    Width = 13
    Height = 16
    Caption = 'l2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Symbol'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 403
    Height = 686
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Direct calculation'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 395
        Height = 137
        Align = alTop
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 187
          Top = 18
          Width = 206
          Height = 117
          Align = alRight
          TabOrder = 0
          object Label21: TLabel
            Left = 3
            Top = 64
            Width = 21
            Height = 16
            Caption = 'min'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 64
            Top = 64
            Width = 24
            Height = 16
            Caption = 'mm'
          end
          object Label1: TLabel
            Left = 3
            Top = 86
            Width = 25
            Height = 16
            Caption = 'max'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 64
            Top = 86
            Width = 24
            Height = 16
            Caption = 'mm'
          end
          object BitBtn3: TBitBtn
            Left = 6
            Top = 21
            Width = 197
            Height = 37
            Caption = 'Solve'
            Font.Charset = BALTIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@Microsoft YaHei UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn3Click
          end
          object CheckBox5: TCheckBox
            Left = 94
            Top = 64
            Width = 109
            Height = 17
            Caption = 'monochromate'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 1
            OnClick = CheckBox5Click
          end
          object CheckBox6: TCheckBox
            Left = 94
            Top = 87
            Width = 89
            Height = 17
            Caption = 'bichromate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = CheckBox6Click
          end
          object Edit10: TEdit
            Left = 30
            Top = 64
            Width = 36
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '0,1'
          end
          object Edit11: TEdit
            Left = 30
            Top = 84
            Width = 36
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '3'
          end
          object ComboBox4: TComboBox
            Left = 6
            Top = 3
            Width = 197
            Height = 24
            TabOrder = 5
            OnSelect = ComboBox4Select
          end
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 18
          Width = 186
          Height = 117
          Align = alLeft
          TabOrder = 1
          object Label5: TLabel
            Left = 16
            Top = 3
            Width = 10
            Height = 16
            Caption = 'l/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 103
            Top = 3
            Width = 10
            Height = 16
            Caption = 'l/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label11: TLabel
            Left = 13
            Top = 25
            Width = 13
            Height = 16
            Caption = 'l1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 72
            Top = 33
            Width = 20
            Height = 16
            Caption = 'um'
          end
          object Label18: TLabel
            Left = 98
            Top = 25
            Width = 13
            Height = 16
            Caption = 'l2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label15: TLabel
            Left = 163
            Top = 33
            Width = 20
            Height = 16
            Caption = 'um'
            Visible = False
          end
          object Label17: TLabel
            Left = 24
            Top = 52
            Width = 32
            Height = 16
            Caption = 'no-ne'
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Forte'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 3
            Top = 89
            Width = 18
            Height = 16
            Caption = 'm1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Modern No. 20'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 112
            Top = 52
            Width = 32
            Height = 16
            Caption = 'no-ne'
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Forte'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label47: TLabel
            Left = 88
            Top = 89
            Width = 18
            Height = 16
            Caption = 'm2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Modern No. 20'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object ComboBox5: TComboBox
            Left = 24
            Top = 3
            Width = 49
            Height = 24
            AutoComplete = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = '4'
            OnChange = ComboBox5Change
            Items.Strings = (
              '4'
              '2'
              '1')
          end
          object ComboBox6: TComboBox
            Left = 114
            Top = 3
            Width = 49
            Height = 24
            AutoComplete = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 0
            ParentFont = False
            TabOrder = 1
            Text = '4'
            Visible = False
            OnChange = ComboBox6Change
            Items.Strings = (
              '4'
              '2'
              '1')
          end
          object Edit6: TEdit
            Left = 24
            Top = 25
            Width = 49
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '0,532'
            OnChange = Edit6Change
          end
          object Edit7: TEdit
            Left = 114
            Top = 25
            Width = 49
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '1,064'
            Visible = False
            OnChange = Edit7Change
          end
          object Edit9: TEdit
            Left = 24
            Top = 68
            Width = 49
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '0'
          end
          object Edit8: TEdit
            Left = 24
            Top = 89
            Width = 49
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = '0'
          end
          object Edit18: TEdit
            Left = 114
            Top = 67
            Width = 49
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = '0'
            Visible = False
          end
          object Edit19: TEdit
            Left = 114
            Top = 89
            Width = 49
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Text = '0'
            Visible = False
          end
          object Button1: TButton
            Left = 72
            Top = 66
            Width = 41
            Height = 25
            Caption = 'Graph'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = Button1Click
          end
        end
      end
      object Memo1: TMemo
        Left = 0
        Top = 137
        Width = 188
        Height = 386
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Memo4: TMemo
        Left = 188
        Top = 137
        Width = 207
        Height = 386
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object Memo5: TMemo
        Left = 0
        Top = 523
        Width = 395
        Height = 132
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Reverse calculation'
      ImageIndex = 1
      object Memo2: TMemo
        Left = 0
        Top = 37
        Width = 395
        Height = 618
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 395
        Height = 37
        Align = alTop
        Caption = 'inverse plate calculations'
        TabOrder = 1
        object Label2: TLabel
          Left = 254
          Top = 15
          Width = 44
          Height = 16
          Caption = 'dgeom'
        end
        object Label3: TLabel
          Left = 371
          Top = 15
          Width = 24
          Height = 16
          Caption = 'mm'
        end
        object Label6: TLabel
          Left = 92
          Top = 18
          Width = 13
          Height = 16
          Caption = 'l1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Symbol'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 172
          Top = 18
          Width = 13
          Height = 16
          Caption = 'l2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Symbol'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Edit3: TEdit
          Left = 304
          Top = 14
          Width = 65
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '0,1'
        end
        object BitBtn1: TBitBtn
          Left = 0
          Top = 16
          Width = 86
          Height = 23
          Caption = 'Calculate'
          TabOrder = 1
          OnClick = BitBtn1Click
        end
      end
    end
  end
end
