unit LightAngleAndDrift;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Math, GeneralPath,IniFiles;

type
  TForm5 = class(TForm)
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Image4: TImage;
    Edit14: TEdit;
    Memo2: TMemo;
    Edit15: TEdit;
    Edit16: TEdit;
    BitBtn4: TBitBtn;
    Edit17: TEdit;
    GroupBox1: TGroupBox;
    Label36: TLabel;
    Label8: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label25: TLabel;
    ComboBox3: TComboBox;
    Edit12: TEdit;
    Edit13: TEdit;
    Memo3: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function InitializeRefPart():boolean;
function InitializeDriftPart():boolean;

var
  Form5: TForm5;
    //Refractive Index
  wlrefraction:double;
  refindex:double;
  matherial:TMatherial;

  //Light Drift
  mathrefindex:double;
  downrefindex:double;
  downangle:double;
  thickness:double;

implementation
uses  Calculations, FunctionsForSeparating;

{$R *.dfm}

function InitializeRefPart():boolean;
var
  sl : TStringList;
  Ini : TIniFile;
  i : Integer;
begin
  sl := TStringList.Create;
  Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'DispMatherials.ini');
  Ini.ReadSections(sl);
  Form5.ComboBox3.Items.Clear;
  for i:=0 to sl.Count-1 do begin
    Form5.ComboBox3.Items.Add(Ini.ReadString(IntToStr(i),'Productname','-'));
  end;
  Ini.Free;
  RefIndex:=1;
  Form5.ComboBox3.ItemIndex:=0;
  if not StrToFloatReplace(Form5.Edit12.Text,wlrefraction) then
    exit;
  Form5.Edit12.Text:=FloatToStr(wlrefraction);
  result:=true;
end;

function InitializeDriftPart():boolean;
begin
  if not StrToFloatReplace(Form5.Edit14.text,mathrefindex) then
    exit;
  Form5.Edit14.Text:=FloatToStr(mathrefindex);
  if not StrToFloatReplace(Form5.Edit17.text,downrefindex) then
    exit;
  Form5.Edit17.Text:=FloatToStr(downrefindex);
  if not StrToFloatReplace(Form5.Edit15.text,downangle) then
    exit;
  Form5.Edit15.Text:=FloatToStr(downangle);
  if not StrToFloatReplace(Form5.Edit16.text,thickness) then
    exit;
  Form5.Edit16.Text:=FloatToStr(thickness);
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  InitializeRefPart();
  InitializeDriftPart();
  Form5.ComboBox3.OnChange(self);
  Form5.Edit12.OnChange(self);
end;

procedure TForm5.Edit12Change(Sender: TObject);
begin
  if not StrToFloatReplace(Form5.Edit12.Text,wlrefraction) then
    exit;
  RefIndex:=sqrt(CalcRefIndex(matherial.B1,matherial.B2,matherial.B3,matherial.B4,matherial.B5,matherial.C1,matherial.C2,matherial.C3,matherial.C4,matherial.C5,wlrefraction));
  Form5.Edit13.Text:=FloatToStr(RefIndex);
end;

procedure TForm5.ComboBox3Change(Sender: TObject);
var
  Ini : TIniFile;
begin
  Form5.Memo3.Clear;
  Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'DispMatherials.ini');
  DownloadMatherial(matherial,Ini,Form5.ComboBox3.ItemIndex);
  Ini.Free;
  Form5.Memo3.Lines.Add('B1:'+FloatToStr(matherial.B1));
  Form5.Memo3.Lines.Add('B2:'+FloatToStr(matherial.B2));
  Form5.Memo3.Lines.Add('B3:'+FloatToStr(matherial.B3));
  Form5.Memo3.Lines.Add('B4:'+FloatToStr(matherial.B4));
  Form5.Memo3.Lines.Add('B5:'+FloatToStr(matherial.B5));
  Form5.Memo3.Lines.Add('C1:'+FloatToStr(matherial.C1));
  Form5.Memo3.Lines.Add('C2:'+FloatToStr(matherial.C2));
  Form5.Memo3.Lines.Add('C3:'+FloatToStr(matherial.C3));
  Form5.Memo3.Lines.Add('C4:'+FloatToStr(matherial.C4));
  Form5.Memo3.Lines.Add('C5:'+FloatToStr(matherial.C5));
  Form5.Memo3.Lines.Add('Productname:'+matherial.productname);
  Form5.Memo3.Lines.Add('Producer:'+matherial.producer);
  Form5.Memo3.Lines.Add('diapazon:'+FloatToStr(matherial.rangestart)+'-'+FloatToStr(matherial.rangestop)+'um');
  Form5.Memo3.Lines.Add('formula:'+matherial.formula);
  Form5.Memo3.Lines.Add('state:'+matherial.state);
  Form5.Memo3.Lines.Add('work temprature:'+FloatToStr(matherial.worktemprature));
  Form5.Memo3.Lines.Add('anizotrope:'+BoolToStr(matherial.anisotrope));
  Form5.Memo3.Lines.Add('e:'+BoolToStr(matherial.e));
  Form5.Edit12.OnChange(self);
end;

procedure TForm5.BitBtn4Click(Sender: TObject);
var displacement,Rs,Rp,Ts,Tp:double;
f2,f1:double;
bruster:double;
begin
  if not StrToFloatReplace(Form5.Edit14.Text,mathrefindex) then
    exit;
  if not StrToFloatReplace(Form5.Edit15.Text,downangle) then
    exit;
  if not StrToFloatReplace(Form5.Edit16.Text,thickness) then
    exit;
  if not StrToFloatReplace(Form5.Edit17.Text,downrefindex) then
    exit;
  f1:=downangle;
  f2:=RadToDeg(ArcSin((downrefindex*sin(Pi*downangle/180))/mathrefindex));
  Rs:=Power((downrefindex*cos(f1*Pi/180)-mathrefindex*cos(f2*Pi/180))/(downrefindex*cos(f1*Pi/180)+mathrefindex*cos(f2*Pi/180)),2);
  Rp:=Power(-1*(mathrefindex*cos(f1*Pi/180)-downrefindex*cos(f2*Pi/180))/(mathrefindex*cos(f1*Pi/180)+downrefindex*cos(f2*Pi/180)),2);
  Ts:=((mathrefindex*cos(f2*Pi/180))/(downrefindex*cos(f1*Pi/180)))*Power((2*downrefindex*cos(f1*Pi/180))/(downrefindex*cos(f1*Pi/180)+mathrefindex*cos(f2*Pi/180)),2);
  Tp:=((mathrefindex*cos(f2*Pi/180))/(downrefindex*cos(f1*Pi/180)))*Power((2*downrefindex*cos(f1*Pi/180))/(mathrefindex*cos(f1*Pi/180)+downrefindex*cos(f2*Pi/180)),2);
  displacement:= thickness*Tan(f2*Pi/180);
  bruster:=RadToDeg(ArcTan((mathrefindex /downrefindex)));
  Form5.Image4.Picture:=nil;
  Form5.Image4.Canvas.Pen.Color:=clBlue;
  Form5.Image4.Canvas.MoveTo(0,80);
  Form5.Image4.Canvas.LineTo(169,80);
  Form5.Image4.Canvas.MoveTo(0,Trunc(80+thickness*20));
  Form5.Image4.Canvas.LineTo(169,Trunc(80+thickness*20));
  Form5.Image4.Canvas.Pen.Color:=clRed;
  Form5.Image4.Canvas.MoveTo(42,0);
  Form5.Image4.Canvas.LineTo(Trunc(42+80*Tan(Pi*f1/180)),80);
  Form5.Image4.Canvas.LineTo(Trunc(42+80*Tan(Pi*f1/180)+20*thickness*Tan(Pi*f2/180)),Trunc(80+thickness*20));

  Form5.Memo2.Clear;
  Form5.Memo2.Lines.Add('displacement:'+FloatToStr(SimpleRoundTo(displacement,-3))+'mm');
  Form5.Memo2.Lines.Add('Bruster angle:'+FloatToStr(SimpleRoundTo(bruster,-3))+'grad');
  Form5.Memo2.Lines.Add('Rs ='+FloatToStr(SimpleRoundTo(100*Rs,-3))+'%');
  Form5.Memo2.Lines.Add('Rp ='+FloatToStr(SimpleRoundTo(100*Rp,-3))+'%');
  Form5.Memo2.Lines.Add('Ts ='+FloatToStr(SimpleRoundTo(100*Ts,-3))+'%');
  Form5.Memo2.Lines.Add('Tp ='+FloatToStr(SimpleRoundTo(100*Tp,-3))+'%');
end;

end.
