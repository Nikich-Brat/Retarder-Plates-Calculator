object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 504
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 305
    Height = 504
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Johns vector'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 297
        Height = 185
        Align = alTop
        Caption = 'Linear or circular polarization'
        TabOrder = 0
        object Label1: TLabel
          Left = 134
          Top = 94
          Width = 16
          Height = 16
          Caption = 'tg('
          Visible = False
        end
        object Label13: TLabel
          Left = 3
          Top = 51
          Width = 16
          Height = 16
          Caption = 'E='
        end
        object Label20: TLabel
          Left = 146
          Top = 51
          Width = 19
          Height = 16
          Caption = 'E'#39'='
        end
        object Label79: TLabel
          Left = 211
          Top = 94
          Width = 46
          Height = 16
          Caption = ')=a1/a2'
          Visible = False
        end
        object GroupBox2: TGroupBox
          Left = 25
          Top = 23
          Width = 121
          Height = 65
          TabOrder = 0
          object Label2: TLabel
            Left = 3
            Top = 8
            Width = 18
            Height = 53
            Caption = '['
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -53
            Font.Name = '@MS UI Gothic'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 58
            Top = 41
            Width = 24
            Height = 16
            Caption = 'e^(i'
          end
          object Label8: TLabel
            Left = 102
            Top = 8
            Width = 18
            Height = 53
            Caption = ']'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -53
            Font.Name = '@MS UI Gothic'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 102
            Top = 41
            Width = 4
            Height = 16
            Caption = ')'
          end
          object Label9: TLabel
            Left = 58
            Top = 19
            Width = 24
            Height = 16
            Caption = 'e^(i'
          end
          object Edit7: TEdit
            Left = 83
            Top = 41
            Width = 20
            Height = 24
            TabOrder = 0
            Text = '90'
          end
          object Edit1: TEdit
            Left = 20
            Top = 14
            Width = 32
            Height = 24
            TabOrder = 1
            Text = '1'
          end
          object Edit8: TEdit
            Left = 20
            Top = 41
            Width = 35
            Height = 24
            TabOrder = 2
            Text = '0'
          end
          object Edit2: TEdit
            Left = 83
            Top = 14
            Width = 20
            Height = 24
            TabOrder = 3
            Text = '0'
          end
        end
        object Button1: TButton
          Left = 3
          Top = 90
          Width = 125
          Height = 27
          Caption = 'Calculate'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Edit14: TEdit
          Left = 152
          Top = 90
          Width = 56
          Height = 24
          TabOrder = 2
          Text = '0'
          Visible = False
        end
        object GroupBox4: TGroupBox
          Left = 168
          Top = 23
          Width = 121
          Height = 65
          TabOrder = 3
          object Label4: TLabel
            Left = 3
            Top = 8
            Width = 18
            Height = 53
            Caption = '['
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -53
            Font.Name = '@MS UI Gothic'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 55
            Top = 41
            Width = 16
            Height = 16
            Caption = '+ i'
          end
          object Label14: TLabel
            Left = 102
            Top = 8
            Width = 18
            Height = 53
            Caption = ']'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -53
            Font.Name = '@MS UI Gothic'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 102
            Top = 14
            Width = 4
            Height = 16
            Caption = ')'
          end
          object Label16: TLabel
            Left = 102
            Top = 41
            Width = 4
            Height = 16
            Caption = ')'
          end
          object Label5: TLabel
            Left = 55
            Top = 14
            Width = 16
            Height = 16
            Caption = '+ i'
          end
          object Edit9: TEdit
            Left = 72
            Top = 14
            Width = 31
            Height = 24
            TabOrder = 0
            Text = '0'
          end
          object Edit10: TEdit
            Left = 72
            Top = 41
            Width = 31
            Height = 24
            TabOrder = 1
            Text = '0'
          end
          object Edit11: TEdit
            Left = 20
            Top = 14
            Width = 32
            Height = 24
            TabOrder = 2
            Text = '0'
          end
          object Edit12: TEdit
            Left = 20
            Top = 41
            Width = 32
            Height = 24
            TabOrder = 3
            Text = '0'
          end
        end
        object CheckBox1: TCheckBox
          Left = 275
          Top = 94
          Width = 14
          Height = 17
          TabOrder = 4
          OnClick = CheckBox1Click
        end
        object GroupBox8: TGroupBox
          Left = 25
          Top = 23
          Width = 121
          Height = 65
          TabOrder = 5
          Visible = False
          object Label38: TLabel
            Left = 3
            Top = 8
            Width = 18
            Height = 53
            Caption = '['
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -53
            Font.Name = '@MS UI Gothic'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 55
            Top = 41
            Width = 16
            Height = 16
            Caption = '+ i'
          end
          object Label40: TLabel
            Left = 102
            Top = 8
            Width = 18
            Height = 53
            Caption = ']'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -53
            Font.Name = '@MS UI Gothic'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 102
            Top = 41
            Width = 4
            Height = 16
            Caption = ')'
          end
          object Label41: TLabel
            Left = 102
            Top = 14
            Width = 4
            Height = 16
            Caption = ')'
          end
          object Label6: TLabel
            Left = 55
            Top = 19
            Width = 16
            Height = 16
            Caption = '+ i'
          end
          object Edit27: TEdit
            Left = 72
            Top = 41
            Width = 31
            Height = 24
            TabOrder = 0
            Text = '0'
          end
          object Edit28: TEdit
            Left = 20
            Top = 14
            Width = 29
            Height = 24
            TabOrder = 1
            Text = '0'
          end
          object Edit29: TEdit
            Left = 20
            Top = 41
            Width = 32
            Height = 24
            TabOrder = 2
            Text = '0'
          end
          object Edit26: TEdit
            Left = 72
            Top = 14
            Width = 31
            Height = 24
            TabOrder = 3
            Text = '0'
          end
        end
        object CheckBox2: TCheckBox
          Left = 3
          Top = 23
          Width = 14
          Height = 17
          TabOrder = 6
          OnClick = CheckBox2Click
        end
        object BitBtn4: TBitBtn
          Left = 3
          Top = 120
          Width = 75
          Height = 25
          Caption = 'linear Xdir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 108
          Top = 120
          Width = 75
          Height = 25
          Caption = 'linear Ydir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 213
          Top = 120
          Width = 75
          Height = 25
          Caption = 'linear 45deg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = BitBtn6Click
        end
        object BitBtn7: TBitBtn
          Left = 3
          Top = 151
          Width = 75
          Height = 25
          Caption = 'linear -45deg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = BitBtn7Click
        end
        object BitBtn8: TBitBtn
          Left = 108
          Top = 151
          Width = 75
          Height = 25
          Caption = 'cyr left'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = BitBtn8Click
        end
        object BitBtn9: TBitBtn
          Left = 213
          Top = 151
          Width = 75
          Height = 25
          Caption = 'cyr right'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = BitBtn9Click
        end
      end
      object Memo2: TMemo
        Left = 0
        Top = 185
        Width = 297
        Height = 288
        Align = alClient
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Element matrix'
      ImageIndex = 1
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 297
        Height = 366
        VertScrollBar.Position = 123
        Align = alClient
        TabOrder = 0
        object GroupBox15: TGroupBox
          Left = 3
          Top = 67
          Width = 254
          Height = 95
          Caption = 'rotation matrix'
          TabOrder = 0
          object Label84: TLabel
            Left = 1
            Top = 47
            Width = 17
            Height = 16
            Caption = 'R='
          end
          object GroupBox16: TGroupBox
            Left = 27
            Top = 18
            Width = 217
            Height = 65
            Enabled = False
            TabOrder = 0
            object Label85: TLabel
              Left = 3
              Top = 8
              Width = 18
              Height = 53
              Caption = '['
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label86: TLabel
              Left = 27
              Top = 14
              Width = 25
              Height = 16
              Caption = 'cos('
            end
            object Label87: TLabel
              Left = 27
              Top = 36
              Width = 26
              Height = 16
              Caption = '-sin('
            end
            object Label88: TLabel
              Left = 126
              Top = 8
              Width = 18
              Height = 53
              Caption = ']'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label89: TLabel
              Left = 68
              Top = 14
              Width = 8
              Height = 16
              Caption = '),'
            end
            object Label90: TLabel
              Left = 68
              Top = 36
              Width = 8
              Height = 16
              Caption = '),'
            end
            object Label91: TLabel
              Left = 90
              Top = 14
              Width = 22
              Height = 16
              Caption = 'sin('
            end
            object Label92: TLabel
              Left = 125
              Top = 14
              Width = 4
              Height = 16
              Caption = ')'
            end
            object Label93: TLabel
              Left = 125
              Top = 36
              Width = 4
              Height = 16
              Caption = ')'
            end
            object Label94: TLabel
              Left = 90
              Top = 36
              Width = 25
              Height = 16
              Caption = 'cos('
            end
            object Label95: TLabel
              Left = 55
              Top = 14
              Width = 12
              Height = 16
              Caption = #1092
            end
            object Label96: TLabel
              Left = 55
              Top = 36
              Width = 12
              Height = 16
              Caption = #1092
            end
            object Label97: TLabel
              Left = 113
              Top = 14
              Width = 12
              Height = 16
              Caption = #1092
            end
            object Label98: TLabel
              Left = 113
              Top = 36
              Width = 12
              Height = 16
              Caption = #1092
            end
            object Label99: TLabel
              Left = 150
              Top = 20
              Width = 28
              Height = 16
              Caption = #1092' = '
            end
            object Edit4: TEdit
              Left = 180
              Top = 20
              Width = 34
              Height = 24
              TabOrder = 0
              Text = '0'
            end
          end
        end
        object RadioButton1: TRadioButton
          Tag = 1
          Left = 263
          Top = -67
          Width = 11
          Height = 17
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = RadioButton1Click
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = -103
          Width = 254
          Height = 86
          Caption = 'complex view'
          TabOrder = 2
          object Label3: TLabel
            Left = 3
            Top = 47
            Width = 16
            Height = 16
            Caption = 'T='
          end
          object GroupBox6: TGroupBox
            Left = 27
            Top = 18
            Width = 217
            Height = 65
            TabOrder = 0
            object Label27: TLabel
              Left = 3
              Top = 8
              Width = 18
              Height = 53
              Caption = '['
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 199
              Top = 9
              Width = 18
              Height = 53
              Caption = ']'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 58
              Top = 14
              Width = 16
              Height = 16
              Caption = '+ i'
            end
            object Label30: TLabel
              Left = 58
              Top = 36
              Width = 16
              Height = 16
              Caption = '+ i'
            end
            object Label31: TLabel
              Left = 150
              Top = 14
              Width = 16
              Height = 16
              Caption = '+ i'
            end
            object Label32: TLabel
              Left = 150
              Top = 36
              Width = 16
              Height = 16
              Caption = '+ i'
            end
            object Label33: TLabel
              Left = 106
              Top = 22
              Width = 4
              Height = 16
              Caption = ','
            end
            object Label34: TLabel
              Left = 106
              Top = 44
              Width = 4
              Height = 16
              Caption = ','
            end
            object Edit19: TEdit
              Left = 76
              Top = 14
              Width = 24
              Height = 24
              TabOrder = 0
              Text = '0'
            end
            object Edit20: TEdit
              Left = 76
              Top = 36
              Width = 24
              Height = 24
              TabOrder = 1
              Text = '0'
            end
            object Edit21: TEdit
              Left = 20
              Top = 14
              Width = 35
              Height = 24
              TabOrder = 2
              Text = '1'
            end
            object Edit22: TEdit
              Left = 20
              Top = 36
              Width = 35
              Height = 24
              TabOrder = 3
              Text = '0'
            end
            object Edit23: TEdit
              Left = 116
              Top = 14
              Width = 35
              Height = 24
              TabOrder = 4
              Text = '0'
            end
            object Edit24: TEdit
              Left = 168
              Top = 14
              Width = 25
              Height = 24
              TabOrder = 5
              Text = '0'
            end
            object Edit25: TEdit
              Left = 116
              Top = 36
              Width = 35
              Height = 24
              TabOrder = 6
              Text = '1'
            end
            object Edit46: TEdit
              Left = 168
              Top = 36
              Width = 25
              Height = 24
              TabOrder = 7
              Text = '0'
            end
          end
        end
        object GroupBox9: TGroupBox
          Left = 3
          Top = -17
          Width = 254
          Height = 86
          Caption = 'phase plate'
          TabOrder = 3
          object Label44: TLabel
            Left = 3
            Top = 47
            Width = 18
            Height = 16
            Caption = 'G='
          end
          object GroupBox10: TGroupBox
            Left = 27
            Top = 18
            Width = 217
            Height = 65
            Enabled = False
            TabOrder = 0
            object Label45: TLabel
              Left = 3
              Top = 8
              Width = 18
              Height = 53
              Caption = '['
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label46: TLabel
              Left = 58
              Top = 14
              Width = 24
              Height = 16
              Caption = 'e^(i'
            end
            object Label47: TLabel
              Left = 58
              Top = 36
              Width = 24
              Height = 16
              Caption = 'e^(i'
            end
            object Label48: TLabel
              Left = 199
              Top = 8
              Width = 18
              Height = 53
              Caption = ']'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label49: TLabel
              Left = 102
              Top = 14
              Width = 8
              Height = 16
              Caption = '),'
            end
            object Label50: TLabel
              Left = 102
              Top = 36
              Width = 8
              Height = 16
              Caption = '),'
            end
            object Label51: TLabel
              Left = 157
              Top = 14
              Width = 24
              Height = 16
              Caption = 'e^(i'
            end
            object Label52: TLabel
              Left = 199
              Top = 14
              Width = 4
              Height = 16
              Caption = ')'
            end
            object Label53: TLabel
              Left = 157
              Top = 36
              Width = 24
              Height = 16
              Caption = 'e^(i'
            end
            object Label54: TLabel
              Left = 199
              Top = 36
              Width = 4
              Height = 16
              Caption = ')'
            end
            object Edit30: TEdit
              Left = 83
              Top = 14
              Width = 20
              Height = 24
              TabOrder = 0
              Text = '0'
            end
            object Edit31: TEdit
              Left = 83
              Top = 36
              Width = 20
              Height = 24
              TabOrder = 1
              Text = '0'
            end
            object Edit32: TEdit
              Left = 20
              Top = 14
              Width = 35
              Height = 24
              TabOrder = 2
              Text = '1'
            end
            object Edit33: TEdit
              Left = 20
              Top = 36
              Width = 35
              Height = 24
              TabOrder = 3
              Text = '0'
            end
            object Edit34: TEdit
              Left = 116
              Top = 14
              Width = 35
              Height = 24
              TabOrder = 4
              Text = '0'
            end
            object Edit35: TEdit
              Left = 182
              Top = 14
              Width = 17
              Height = 24
              TabOrder = 5
              Text = '0'
            end
            object Edit36: TEdit
              Left = 116
              Top = 36
              Width = 35
              Height = 24
              TabOrder = 6
              Text = '1'
            end
            object Edit37: TEdit
              Left = 182
              Top = 36
              Width = 17
              Height = 24
              TabOrder = 7
              Text = '0'
            end
          end
        end
        object RadioButton2: TRadioButton
          Tag = 1
          Left = 263
          Top = 19
          Width = 11
          Height = 17
          TabOrder = 4
          OnClick = RadioButton2Click
        end
        object RadioButton3: TRadioButton
          Tag = 1
          Left = 263
          Top = 106
          Width = 11
          Height = 17
          TabOrder = 5
          OnClick = RadioButton3Click
        end
        object GroupBox5: TGroupBox
          Left = 3
          Top = 168
          Width = 254
          Height = 86
          Caption = 'polarizator'
          TabOrder = 6
          object Label10: TLabel
            Left = 3
            Top = 47
            Width = 17
            Height = 16
            Caption = 'P='
          end
          object GroupBox7: TGroupBox
            Left = 26
            Top = 18
            Width = 217
            Height = 65
            Enabled = False
            TabOrder = 0
            object Label17: TLabel
              Left = 3
              Top = 8
              Width = 18
              Height = 53
              Caption = '['
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 19
              Top = 14
              Width = 23
              Height = 16
              Caption = 'p1='
            end
            object Label19: TLabel
              Left = 19
              Top = 36
              Width = 23
              Height = 16
              Caption = 'p3='
            end
            object Label21: TLabel
              Left = 199
              Top = 8
              Width = 18
              Height = 53
              Caption = ']'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 115
              Top = 14
              Width = 23
              Height = 16
              Caption = 'p2='
            end
            object Label26: TLabel
              Left = 115
              Top = 36
              Width = 23
              Height = 16
              Caption = 'p4='
            end
            object Edit3: TEdit
              Left = 48
              Top = 14
              Width = 53
              Height = 24
              TabOrder = 0
              Text = '0'
            end
            object Edit5: TEdit
              Left = 48
              Top = 36
              Width = 53
              Height = 24
              TabOrder = 1
              Text = '0'
            end
            object Edit16: TEdit
              Left = 144
              Top = 14
              Width = 55
              Height = 24
              TabOrder = 2
              Text = '0'
            end
            object Edit18: TEdit
              Left = 144
              Top = 36
              Width = 55
              Height = 24
              TabOrder = 3
              Text = '0'
            end
          end
        end
        object RadioButton4: TRadioButton
          Tag = 1
          Left = 263
          Top = 204
          Width = 11
          Height = 17
          TabOrder = 7
          OnClick = RadioButton4Click
        end
        object GroupBox11: TGroupBox
          Left = 3
          Top = 259
          Width = 454
          Height = 86
          Caption = 'lazer active element'
          TabOrder = 8
          object Label36: TLabel
            Left = 3
            Top = 47
            Width = 17
            Height = 16
            Caption = 'A='
          end
          object GroupBox12: TGroupBox
            Left = 26
            Top = 20
            Width = 415
            Height = 65
            Enabled = False
            TabOrder = 0
            object Label37: TLabel
              Left = 3
              Top = 8
              Width = 18
              Height = 53
              Caption = '['
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 27
              Top = 14
              Width = 25
              Height = 16
              Caption = 'cos('
            end
            object Label56: TLabel
              Left = 316
              Top = 9
              Width = 18
              Height = 53
              Caption = ']'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = '@MS UI Gothic'
              Font.Style = []
              ParentFont = False
            end
            object Label57: TLabel
              Left = 84
              Top = 14
              Width = 16
              Height = 16
              Caption = ' + '
              OnClick = Label57Click
            end
            object Label22: TLabel
              Left = 106
              Top = 14
              Width = 29
              Height = 16
              Caption = 'jcos('
            end
            object Label25: TLabel
              Left = 333
              Top = 36
              Width = 7
              Height = 16
              Caption = #1092
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 345
              Top = 14
              Width = 35
              Height = 16
              Caption = '(x,y)='
            end
            object Label59: TLabel
              Left = 345
              Top = 36
              Width = 35
              Height = 16
              Caption = '(x,y)='
            end
            object Label63: TLabel
              Left = 55
              Top = 14
              Width = 21
              Height = 16
              Caption = #1092'/2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label65: TLabel
              Left = 157
              Top = 14
              Width = 22
              Height = 16
              Caption = 'sin('
            end
            object Label66: TLabel
              Left = 179
              Top = 14
              Width = 21
              Height = 16
              Caption = #1092'/2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label58: TLabel
              Left = 226
              Top = 14
              Width = 26
              Height = 16
              Caption = 'jsin('
            end
            object Label60: TLabel
              Left = 269
              Top = 14
              Width = 22
              Height = 16
              Caption = 'sin('
            end
            object Label62: TLabel
              Left = 291
              Top = 14
              Width = 21
              Height = 16
              Caption = #1092'/2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label67: TLabel
              Left = 148
              Top = 36
              Width = 25
              Height = 16
              Caption = 'cos('
            end
            object Label68: TLabel
              Left = 174
              Top = 36
              Width = 21
              Height = 16
              Caption = #1092'/2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label69: TLabel
              Left = 204
              Top = 36
              Width = 12
              Height = 16
              Caption = ' - '
              OnClick = Label69Click
            end
            object Label70: TLabel
              Left = 220
              Top = 36
              Width = 33
              Height = 16
              Caption = ' jcos('
            end
            object Label72: TLabel
              Left = 276
              Top = 36
              Width = 22
              Height = 16
              Caption = 'sin('
            end
            object Label73: TLabel
              Left = 297
              Top = 36
              Width = 21
              Height = 16
              Caption = #1092'/2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label74: TLabel
              Left = 18
              Top = 36
              Width = 16
              Height = 16
              Caption = ' + '
              OnClick = Label74Click
            end
            object Label75: TLabel
              Left = 34
              Top = 36
              Width = 26
              Height = 16
              Caption = 'jsin('
            end
            object Label77: TLabel
              Left = 81
              Top = 36
              Width = 22
              Height = 16
              Caption = 'sin('
            end
            object Label78: TLabel
              Left = 106
              Top = 36
              Width = 21
              Height = 16
              Caption = #1092'/2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 252
              Top = 14
              Width = 14
              Height = 16
              Caption = '2'#1043')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label61: TLabel
              Left = 254
              Top = 36
              Width = 14
              Height = 16
              Caption = '2'#1043')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label64: TLabel
              Left = 136
              Top = 14
              Width = 14
              Height = 16
              Caption = '2'#1043')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label71: TLabel
              Left = 60
              Top = 36
              Width = 14
              Height = 16
              Caption = '2'#1043')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label76: TLabel
              Left = 333
              Top = 14
              Width = 5
              Height = 16
              Caption = #1043
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Mistral'
              Font.Style = []
              ParentFont = False
            end
            object Label55: TLabel
              Left = 209
              Top = 14
              Width = 16
              Height = 16
              Caption = ' + '
              OnClick = Label55Click
            end
            object Label80: TLabel
              Left = 202
              Top = 14
              Width = 4
              Height = 16
              Caption = ','
            end
            object Label81: TLabel
              Left = 130
              Top = 36
              Width = 4
              Height = 16
              Caption = ','
            end
            object Label82: TLabel
              Left = 136
              Top = 36
              Width = 16
              Height = 16
              Caption = ' + '
              OnClick = Label82Click
            end
            object Label83: TLabel
              Left = 12
              Top = 14
              Width = 16
              Height = 16
              Caption = ' + '
              OnClick = Label83Click
            end
            object Edit38: TEdit
              Left = 381
              Top = 14
              Width = 26
              Height = 24
              TabOrder = 0
              Text = '0'
            end
            object Edit42: TEdit
              Left = 381
              Top = 36
              Width = 26
              Height = 24
              TabOrder = 1
              Text = '0'
            end
          end
        end
        object RadioButton5: TRadioButton
          Tag = 1
          Left = 463
          Top = 297
          Width = 11
          Height = 17
          TabOrder = 9
          OnClick = RadioButton4Click
        end
      end
      object GroupBox14: TGroupBox
        Left = 0
        Top = 366
        Width = 297
        Height = 107
        Align = alBottom
        TabOrder = 1
        object BitBtn1: TBitBtn
          Left = 0
          Top = 6
          Width = 103
          Height = 27
          Caption = 'add comp.'
          Glyph.Data = {
            DE010000424DDE010000000000006E0000002800000020000000170000000100
            04000000000070010000C30E0000C30E00000E0000000E000000DDDDDD00CCCC
            CC008B8B8B0096969600D2D5D900007F260021FF0000CFD3D400BABABA00B4B4
            B400C7B5AC00CABAAC009F9F9F00A7A7A7000000000000000000000000000000
            000003333333333333C3CCCCC333333333D002888888989898989999A99B8888
            8820021101010101414144447777101111200211111111111111411111111111
            1120021111111111155555511111111101200211111111111566665111711111
            1120021111111111156666511111111111200210111111144566665111111111
            1120021111111555556666555551111111200211111115666666666666511111
            1120021111111566666666666651111101200211111115666666666666511111
            1120021111111566666666666651111111200210111115555566665555511011
            1120021111101111456666511711111111200211111111111566665111411111
            1120021111111111156666511111111111200211111111111555555101111111
            1120021111111111111110411111111101200210111111111111111111111111
            1120022333333333333333333333333332200111111111111111111111111111
            1110}
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 0
          Top = 57
          Width = 65
          Height = 27
          Caption = 'reset'
          Glyph.Data = {
            820C0000424D820C00000000000042000000280000001C0000001C0000000100
            200003000000400C0000C40E0000C40E000000000000000000000000FF0000FF
            0000FF000000FF00000000FF00000000FF00E3E3E3FFD0D0D0FFD4D4D4FFD4D4
            D4FFD4D4D4FFD5D5D5FFD5D5D5FFD6D6D6FFD7D7D7FFD7D7D7FFD8D8D8FFD8D8
            D8FFD9D9D9FFDADADAFFDBDBDBFFDBDBDBFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDEDEDEFFE0E0E0FFE0E0E0FFE0E0E0FFE3E3E3FFE3E3E3FFE3E3
            E3FFDDDDDDFF999999FFB8B8B8FFB3B3B3FFB3B3B3FFB2B2B2FFB2B2B2FFB1B1
            B1FFB1B1B1FFB0B0B0FFAFAFAFFFAFAFAFFFAEAEAEFFAEAEAEFFB6B6B6FFB5B5
            B5FFB5B5B5FFB4B4B4FFB4B4B4FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
            B3FFA0A0A0FFCECECEFFCECECEFFCECECEFFDDDDDDFF959595FFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDADADAFFD2D2D2FFC4C4C4FFBABA
            BAFFB6B6B6FFB8B8B8FFBEBEBEFFC8C8C8FFD3D3D3FFDADADAFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFA4A4A4FFCCCCCCFFCCCCCCFFCCCC
            CCFFDDDDDDFF949494FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFD5D5
            D5FFB9B9B9FF868686FF4E4E4EFF252525FF0C0C0CFF090909FF1F1F1FFF4444
            44FF828282FFBABABAFFD5D5D5FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFA3A3A3FFCDCDCDFFCDCDCDFFCDCDCDFFDDDDDDFF949494FFDCDCDCFFDCDC
            DCFFDCDCDCFFDADADAFFCDCDCDFF9C9C9CFF4D4D4DFF1A1A1AFF1E1E1EFF2F2F
            2FFF3E3E3EFF3F3F3FFF2D2D2DFF1C1C1CFF131313FF414141FF9C9C9CFFCDCD
            CDFFDADADAFFDCDCDCFFDCDCDCFFDCDCDCFFA3A3A3FFCDCDCDFFCDCDCDFFCDCD
            CDFFDDDDDDFF949494FFDCDCDCFFDCDCDCFFDADADAFFC8C8C8FF858585FF3333
            33FF212121FF555555FF8B8B8BFFACACACFFCBCBCBFFCFCFCFFFAEAEAEFF8C8C
            8CFF555555FF1E1E1EFF2C2C2CFF808080FFC7C7C7FFDADADAFFDCDCDCFFDCDC
            DCFFA2A2A2FFCECECEFFCECECEFFCECECEFFDDDDDDFF959595FFDCDCDCFFDCDC
            DCFFD2D2D2FF959595FF363636FF2F2F2FFF797979FFBEBEBEFFD9D9D9FFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDADADAFFC4C4C4FF7A7A7AFF2D2D2DFF2D2D
            2DFF8B8B8BFFD0D0D0FFDCDCDCFFDCDCDCFFA1A1A1FFCFCFCFFFCFCFCFFFCFCF
            CFFFDDDDDDFF959595FFDCDCDCFFD8D8D8FFB4B4B4FF525252FF2C2C2CFF8282
            82FFC9C9C9FFDADADAFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDADADAFFCBCBCBFF868686FF2F2F2FFF4C4C4CFFB0B0B0FFD8D8D8FFDCDC
            DCFFA0A0A0FFD0D0D0FFD0D0D0FFD0D0D0FFDDDDDDFF969696FFDBDBDBFFCCCC
            CCFF7B7B7BFF252525FF5E5E5EFFBCBCBCFFDADADAFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDADADAFFBEBEBEFF6262
            62FF2A2A2AFF787878FFCACACAFFDBDBDBFF9F9F9FFFD1D1D1FFD1D1D1FFD1D1
            D1FFDDDDDDFF979797FFD9D9D9FFB5B5B5FF4F4F4FFF373737FF9E9E9EFFD7D7
            D7FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFD6D6D6FF9F9F9FFF3A3A3AFF4C4C4CFFB1B1B1FFD8D8
            D8FF9F9F9FFFD2D2D2FFD2D2D2FFD2D2D2FFDDDDDDFF989898FFD6D6D6FF9A9A
            9AFF343434FF5C5C5CFFBEBEBEFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFBCBC
            BCFF595959FF353535FF969696FFD4D4D4FF9E9E9EFFD2D2D2FFD2D2D2FFD2D2
            D2FFD8D8D8FF999999FFD4D4D4FF8A8A8AFF2B2B2BFF878787FFD9D9D9FFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFC8C8C8FF6F6F6FFF282828FF848484FFD2D2
            D2FF9D9D9DFFD3D3D3FFD3D3D3FFD3D3D3FFD7D7D7FF9A9A9AFFD2D2D2FF7D7D
            7DFF1D1D1DFF8C8C8CFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFD5D5
            D5FF848484FF222222FF7C7C7CFFD1D1D1FF9C9C9CFFD4D4D4FFD4D4D4FFD4D4
            D4FFD7D7D7FF9A9A9AFFD2D2D2FF7C7C7CFF1E1E1EFF898989FFD9D9D9FFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFD7D7D7FF878787FF212121FF7C7C7CFFD1D1
            D1FF9B9B9BFFD5D5D5FFD5D5D5FFD5D5D5FFD6D6D6FF9B9B9BFFD2D2D2FF8383
            83FF141414FF434343FFAFAFAFFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFEDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFCACA
            CAFF717171FF242424FF858585FFD3D3D3FF9B9B9BFFD6D6D6FFD6D6D6FFD6D6
            D6FFD5D5D5FF9C9C9CFFD6D6D6FF9E9E9EFF2F2F2FFF303030FFA2A2A2FFDADA
            DAFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFBDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFF8D8D8DFF404040FF979797FFD5D5
            D5FF9A9A9AFFD7D7D7FFD7D7D7FFD7D7D7FFD4D4D4FF9D9D9DFFDADADAFFBFBF
            BFFF585858FF232323FF868686FFD0D0D0FFDCDCDCFFDCDCDCFFD8D8D8FFDADA
            DAFFDBDBDBFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFF999999FFD8D8D8FFD8D8D8FFD8D8
            D8FFD3D3D3FF9D9D9DFFDCDCDCFFCECECEFF808080FF252525FF525252FFB8B8
            B8FFDADADAFFDCDCDCFFB0B0B0FFA5A5A5FFB3B3B3FFBFBFBFFFCDCDCDFFD6D6
            D6FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFF989898FFD9D9D9FFD9D9D9FFD9D9D9FFD2D2D2FF9E9E9EFFDCDCDCFFD9D9
            D9FFB2B2B2FF454545FF282828FF888888FFCCCCCCFFDBDBDBFF6F6F6FFF1616
            16FF2A2A2AFF484848FF6C6C6CFF8B8B8BFFA6A6A6FFBABABAFFD0D0D0FFDADA
            DAFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFF989898FFD9D9D9FFD9D9D9FFD9D9
            D9FFD1D1D1FF9F9F9FFFDCDCDCFFDCDCDCFFCACACAFD777777FC1D1D1DFD2F2F
            2FFF858585FFC6C6C6FF9B9B9BFF151515FF000000FF000000FF000000FF0303
            03FF151515FF434343FF939393FFCECECEFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFF979797FFD8D8D8FFD8D8D8FFD8D8D8FFD0D0D0FFA0A0A0FFDCDCDCFFDCDC
            DCFFD9D9D9FDB3B3B3FC515151FD0D0D0DFF202020FF5A5A5AFF656565FF0E0E
            0EFF000000FF000000FF000000FF000000FF000000FF0A0A0AFF4F4F4FFFB7B7
            B7FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFF969696FFD8D8D8FFD8D8D8FFD8D8
            D8FFCFCFCFFFA0A0A0FFDCDCDCFFDCDCDCFFDCDCDCFFD4D4D4FFABABABFF5757
            57FF131313FF040404FF090909FF010101FF000000FF000000FF000000FF0000
            00FF050505FF2E2E2EFF818181FFC7C7C7FFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFF959595FFD8D8D8FFD8D8D8FFD8D8D8FFCFCFCFFFA1A1A1FFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFD8D8D8FFBDBDBDFF949494FF5D5D5DFF2F2F2FFF0F0F
            0FFF000000FF000000FF000000FF080808FF3D3D3DFF969696FFCCCCCCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFF949494FFDADADAFFDADADAFFDADA
            DAFFCFCFCFFFA2A2A2FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFD8D8D8FFC5C5C5FFB1B1B1FF939393FF050505FF000000FF090909FF4848
            48FFABABABFFD5D5D5FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFF949494FFDCDCDCFFDCDCDCFFDCDCDCFFCECECEFFA3A3A3FFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFD7D7
            D7FF252525FF070707FF4B4B4BFFB2B2B2FFD9D9D9FFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFF949494FFDCDCDCFFDCDCDCFFDCDC
            DCFFCDCDCDFFA4A4A4FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFFDCDCDCFFDCDCDCFFDCDCDCFFDADADAFF5F5F5FFF484848FFBDBDBDFFD9D9
            D9FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
            DCFF949494FFDCDCDCFFDCDCDCFFDCDCDCFFCBCBCBFF8C8C8CFF8B8B8BFF8B8B
            8BFF8B8B8BFF8B8B8BFF8C8C8CFF8D8D8DFF8E8E8EFF8F8F8FFF909090FF9191
            91FF878787FF848484FF939393FF959595FF969696FF979797FF989898FF9999
            99FF999999FF9A9A9AFF9B9B9BFF9C9C9CFF8D8D8DFFDCDCDCFFDCDCDCFFDCDC
            DCFFE3E3E3FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
            E0FFE0E0E0FFE0E0E0FFDBDBDBFFDADADAFFDADADAFFD8D8D8FFD7D7D7FFD6D6
            D6FFD5D5D5FFD4D4D4FFD3D3D3FFD2D2D2FFD1D1D1FFD1D1D1FFD0D0D0FFCFCF
            CFFFCECECEFF}
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object ComboBox1: TComboBox
          Left = 109
          Top = 3
          Width = 188
          Height = 24
          TabOrder = 2
          OnSelect = ComboBox1Select
        end
        object BitBtn3: TBitBtn
          Left = 0
          Top = 33
          Width = 103
          Height = 27
          Caption = 'del. comp.'
          Glyph.Data = {
            5A030000424D5A030000000000007A0000002800000020000000170000000100
            080000000000E0020000C30E0000C30E00001100000011000000DDDDDD00CCCC
            CC008B8B8B0096969600D6D6D600CFD1D300D2D5D900CDCFD00000007F000000
            FF00CFD3D400BABABA00B4B4B400C7B5AC00CABAAC009F9F9F00A7A7A7000000
            0000000000000000000000000000000000000000000000000000000000000003
            0303030303030303030303030F030F0F0F0F0F03030303030303030310000002
            0B0B0B0B0B0B0C0B0C0B0C0B0C0B0C0C0C0C0D0C0C0E0B0B0B0B0B0B02000002
            0101000100010001000106010601060606060A0A0A0A01000101010102000002
            0101010101010101010101010101050101010101010101010101010102000002
            0101010101010101010101010101010101010101010101010101000102000002
            01010101010101010101010101010101010101010A0101010101010102000002
            0101010101010101010101010101010101010101010101010101010102000002
            0100010108080808080808080808080808080808080808080101010102000002
            0101010108090909090909090909090909090909090909080101010102000002
            0101010108090909090909090909090909090909090909080101010102000002
            0101010108090909090909090909090909090909090909080101010102000002
            0101010108090909090909090909090909090909090909080101010102000002
            0101010108090909090909090909090909090909090909080101010102000002
            0100010108080808080808080808080808080808080808080101010102000002
            0101010101000101010101010101010101010107010101010101010102000002
            0101010101010101010101010101010101010101060101010101010102000002
            0101010101010101010101010101010101010101010101010101010102000002
            0101010101010101010101010101010101010001010101010101010102000002
            0101010101010101010101010101010405010101010101010101000102000002
            0100010101010101010101010101010101010101010101010101010102000002
            0203030303030303030303030303030303030303030303030303030202000001
            010101010101010101010101010101010101010101010101010101010100}
          TabOrder = 3
          OnClick = BitBtn3Click
        end
        object Memo1: TMemo
          Left = 109
          Top = 32
          Width = 188
          Height = 73
          Lines.Strings = (
            '')
          TabOrder = 4
        end
      end
    end
  end
end
