unit RotationOfPolarization;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Math, GeneralPath, Settings;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Image1: TImage;
    ComboBox1: TComboBox;
    CheckBox4: TCheckBox;
    BitBtn1: TBitBtn;
    StaticText1: TStaticText;
    Edit1: TEdit;
    StaticText2: TStaticText;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    Label12: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function InitializeRotationPart():boolean;

var
  Form2: TForm2;
  spectramode:boolean;  //режим спектра
  signal:array of double;  //режим спектра
  wl:double;
  e:double;
  f:double;
  d:double;
  searchwlstart:integer;
  searchwlstop:integer;

  order:boolean;

implementation
uses  Calculations, FunctionsForSeparating;

{$R *.dfm}

function InitializeRotationPart():boolean;
begin
  e:=0;
  f:=0;
  d:=0;
  order:=true;
  spectramode:=false; // будущий режим спектра
  searchwlstart:= 266;
  searchwlstop:= 1340;
  if not StrToFloatReplace(Form2.Edit1.Text,wl) then
    exit;
  Form2.Edit1.Text:=FloatToStr(wl);
  result:=true;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  InitializeRotationPart();
  Form2.Edit1.OnChange(Self);
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  if Form2.CheckBox1.Checked = false then begin
    if not StrToFloatReplace(Form2.Edit1.Text,wl) then
      exit;
    wl:=wl*Power(10,-3);
    e:= CalculateRotationConstant(wl,Form2.Combobox1.ItemIndex);
    Form2.Edit2.Text:=FloatToStr(e)
  end;
end;

procedure TForm2.Edit3Change(Sender: TObject);
var tempf:double;
begin
  if not order then
    exit;
  order:=false;
  if Form2.CheckBox1.Checked = false then begin
    StrToFloatReplace(Form2.Edit3.Text,tempf);
    f:=tempf;
    if e<>0 then
      d:=f/e;
    Form2.Edit4.text:=FloatToStr(d);
    VisualizeCoordinateCircle(Form2.Image1,160,clBlack,0);
    Form2.Image1.Canvas.MoveTo(160,160);
    Form2.Image1.Canvas.LineTo(Trunc(160+160*cos(Pi*f/180 - Pi/2)),Trunc(160+160*sin(Pi*f/180 - Pi/2)));
  end;
  Form2.CheckBox4.OnClick(Self);
  order:=true;
end;

procedure TForm2.Edit4Change(Sender: TObject);
var tempd:double;
begin
  if not order then
    exit;
  order:=false;
  if Form2.CheckBox1.Checked = false then begin
    StrToFloatReplace(Form2.Edit4.Text,tempd);
    d:=tempd;
    if e<>0 then
      f:=d*e;
    Form2.Edit3.text:=FloatToStr(f);
    VisualizeCoordinateCircle(Form2.Image1,160,clBlack,0);
    Form2.Image1.Canvas.MoveTo(160,160);
    Form2.Image1.Canvas.LineTo(Trunc(160+160*cos(Pi*f/180 - Pi/2)),Trunc(160+160*sin(Pi*f/180 - Pi/2)));
  end;
  Form2.CheckBox4.OnClick(Self);
  order:=true;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var i:integer;
curre:double;
mine:double;
calcwl:double;
begin
  if Form2.CheckBox1.Checked = true then begin
    if not StrToFloatReplace(Form2.Edit3.Text,f) then
      exit;
    if not StrToFloatReplace(Form2.Edit4.Text,d) then
      exit;
    if d<>0 then begin
      e:=f/d;
      Form2.Edit2.Text:=FloatToStr(e);
      mine := 131;
      i:=searchwlstart;
      while i<searchwlstop do begin
        calcwl:=i*Power(10,-3);
        curre:=CalculateRotationConstant(calcwl,Form2.Combobox1.ItemIndex);
        if ((mine-e)*(mine-e)>(curre-e)*(curre-e)) then begin
          mine:= curre;
          Form2.Edit1.Text:=FloatToStr(calcwl*Power(10,3));
        end;
        i:=i+1;
      end;
    end;
  end;
end;

procedure TForm2.CheckBox4Click(Sender: TObject);
begin
  if Form2.CheckBox4.Checked then
    VisualizePolarizationCoordinateAxis(Form2.Image1,160,clBlue);
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
   if Form2.CheckBox1.Checked = true then begin
    Form2.Edit1.Enabled:=false;
    Form2.BitBtn1.Visible:=true;
   end else begin
    Form2.Edit1.Enabled:=true;
    Form2.BitBtn1.Visible:=false;
   end;
end;

end.
