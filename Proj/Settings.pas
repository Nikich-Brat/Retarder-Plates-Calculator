unit Settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GeneralPath, FunctionsForSeparating, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    StaticText1: TStaticText;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox4: TGroupBox;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    GroupBox3: TGroupBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    StaticText2: TStaticText;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    ComboBox1: TComboBox;
    Label12: TLabel;
    StaticText3: TStaticText;
    Label4: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Label39: TLabel;
    ComboBox5: TComboBox;
    Label5: TLabel;
    Label7: TLabel;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    Label33: TLabel;
    Label37: TLabel;
    GroupBox9: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    ComboBox17: TComboBox;
    GroupBox8: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox18: TComboBox;
    ComboBox10: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses RotationOfPolarization, PlatesCalculations;

{$R *.dfm}

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  Form3.Hide;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Hide;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  searchwlstart:= StrToInt(Form3.Edit1.text);
  searchwlstop:= StrToInt(Form3.Edit2.text);
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
var
FileName : string;
DataFile: TextFile;
i,len: integer;
value1,value2:double;
begin
  SetLength(wlmas,0);
  SetLength(dnmas,0);
  if Form3.RadioButton1.Checked then begin
    platescalcmode:=1;
    difrefindfileselected:=false;
    Form4.Combobox4.Enabled:= true;
    InitializePlatesPart();
    Form4.Edit6Change(Self);
    Form4.Edit7Change(Self);
    Form4.Memo1.Lines.Clear;
    exit;
  end else if Form3.RadioButton2.Checked then begin
    platescalcmode:=2;
  end else if Form3.RadioButton3.Checked then begin
    platescalcmode:=3;
  end ;
  Form4.Combobox4.Enabled:= false;
  Form4.Combobox4.Clear;
  SetLength(wlmas,DEFAULTDocSize);
  SetLength(dnmas,DEFAULTDocSize);
  Form3.OpenDialog1.FileName:=extractFileDir(ParamSTR(0))+DEFAULTPathMathDn+'\Quartz.txt';
  if Form3.OpenDialog1.Execute then begin
    if DownloadMatherialFromFile(Form3.OpenDialog1.FileName,dnmas,wlmas) then
      difrefindfileselected:=true
    else
      difrefindfileselected:=false;
  end;
  Form4.Edit6Change(Self);
  Form4.Edit7Change(Self);
end;

procedure TForm3.BitBtn6Click(Sender: TObject);
begin
  Form4.Combobox4.Enabled:= false;
  Form3.RadioButton1.Checked:=false;
  Form3.RadioButton2.Checked:=false;
  Form3.RadioButton3.Checked:=true;
  difrefindfileselected:=false;
  Form3.BitBtn5.Click;
end;

end.
