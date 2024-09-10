unit JohnsMatrix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls,  Math, Vcl.Menus, FunctionsForSeparating, GeneralPath, Settings;

type
  TForm9 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Edit7: TEdit;
    Button1: TButton;
    Edit14: TEdit;
    Edit1: TEdit;
    Edit8: TEdit;
    Label13: TLabel;
    Label20: TLabel;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    GroupBox8: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    CheckBox2: TCheckBox;
    ScrollBox1: TScrollBox;
    Label79: TLabel;
    Label41: TLabel;
    Edit2: TEdit;
    Edit26: TEdit;
    Label6: TLabel;
    Label9: TLabel;
    GroupBox14: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    BitBtn3: TBitBtn;
    GroupBox15: TGroupBox;
    Label84: TLabel;
    GroupBox16: TGroupBox;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Edit4: TEdit;
    RadioButton1: TRadioButton;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    GroupBox6: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    GroupBox9: TGroupBox;
    Label44: TLabel;
    GroupBox10: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit46: TEdit;
    Memo1: TMemo;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Memo2: TMemo;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    GroupBox7: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit16: TEdit;
    Edit18: TEdit;
    RadioButton4: TRadioButton;
    GroupBox11: TGroupBox;
    Label36: TLabel;
    GroupBox12: TGroupBox;
    Label37: TLabel;
    Label43: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Edit38: TEdit;
    Edit42: TEdit;
    RadioButton5: TRadioButton;
    Label22: TLabel;
    Label25: TLabel;
    Label35: TLabel;
    Label59: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label23: TLabel;
    Label61: TLabel;
    Label64: TLabel;
    Label71: TLabel;
    Label76: TLabel;
    Label55: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Label83Click(Sender: TObject);
    procedure Label57Click(Sender: TObject);
    procedure Label74Click(Sender: TObject);
    procedure Label55Click(Sender: TObject);
    procedure Label82Click(Sender: TObject);
    procedure Label69Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TComplex = record
    Re, Im: double;
  end;
  TVectorMatrix = record
    fi1,fi2:TComplex;
  end;
  TMathMatrix = record
    a	:array[1..2,1..2] of TComplex;
  end;

  TCollectedObject = class(TObject)
    SName : string;
    matrixtype:integer;
    Sa: TMathMatrix;
  end;

function AddC(x, y: TComplex): TComplex; stdcall; external 'Cmplx.dll';
function SubC(x, y: TComplex): TComplex; stdcall; external 'Cmplx.dll';
function MulC(x, y: TComplex): TComplex; stdcall; external 'Cmplx.dll';
function DivC(x, y: TComplex): TComplex; stdcall; external 'Cmplx.dll';
function AbsC(c: TComplex): Double; stdcall; external 'Cmplx.dll';
function CnjC(c: TComplex): TComplex; stdcall; external 'Cmplx.dll';
function GetComplexOfAngleC(c: double): TComplex; stdcall; external 'Cmplx.dll';

function ReplaceTooSmall(var x:double):boolean;
function ReplaceTooSmallMatrix(var T:TMathMatrix):boolean;
function DoubleMatrixMultiplex(M,T:TMathMatrix;var MT:TMathMatrix):Boolean;

var
  Form9: TForm9;
  CombinationList:TList;

implementation

{$R *.dfm}

function ReplaceTooSmall(var x:double):boolean;
begin
  if (x<0.00001) and (x > -0.00001) then
    x:=0;
  result:=true;
end;

function ReplaceTooSmallMatrix(var T:TMathMatrix):boolean;
var i,j:integer;
begin
  result:=true;
  for i:=1 to 2 do
    for j := 1 to 2 do begin
      ReplaceTooSmall(T.a[i,j].Re);
      ReplaceTooSmall(T.a[i,j].Im);
    end;
  result:=true;
end;

function DoubleMatrixMultiplex(M,T:TMathMatrix;var MT:TMathMatrix):Boolean;
var i,j,k:integer;
  s:TComplex;
begin
  result:=false;
  for i:=1 to 2 do
    for j:=1 to 2 do begin
      s.Re:=0;
      s.Im:=0;
      for k:=1 to 2 do
        s:=AddC(s, MulC(M.a[i,k],T.a[k,j]));
      MT.a[i,j]:=s;
    end;
  result:= true;
end;

procedure TForm9.BitBtn1Click(Sender: TObject);
  var
  CollectedObj:TCollectedObject;
  temp,Q,F,insangle:double;
  matrixtype:integer;
  M:TMathMatrix;
begin
  if Form9.RadioButton1.Checked then begin
    if not StrToFloatReplace(Form9.Edit21.Text,M.a[1,1].Re) then
      exit;
    if not StrToFloatReplace(Form9.Edit19.Text,M.a[1,1].Im) then
      exit;
    if not StrToFloatReplace(Form9.Edit23.Text,M.a[1,2].Re) then
      exit;
    if not StrToFloatReplace(Form9.Edit24.Text,M.a[1,2].Im) then
      exit;
    if not StrToFloatReplace(Form9.Edit22.Text,M.a[2,1].Re) then
      exit;
    if not StrToFloatReplace(Form9.Edit20.Text,M.a[2,1].Im) then
      exit;
    if not StrToFloatReplace(Form9.Edit25.Text,M.a[2,2].Re) then
      exit;
    if not StrToFloatReplace(Form9.Edit46.Text,M.a[2,2].Im) then
      exit;
    matrixtype:=0;
  end else if Form9.RadioButton2.Checked then begin
    if not StrToFloatReplace(Form9.Edit30.text,temp) then
      exit;
    M.a[1,1]:=GetComplexOfAngleC(temp);

    if not StrToFloatReplace(Form9.Edit35.text,temp) then
      exit;
    M.a[1,2]:=GetComplexOfAngleC(temp);

    if not StrToFloatReplace(Form9.Edit31.text,temp) then
      exit;
    M.a[2,1]:=GetComplexOfAngleC(temp);

    if not StrToFloatReplace(Form9.Edit37.text,temp) then
      exit;
    M.a[2,2]:=GetComplexOfAngleC(temp);


    ReplaceTooSmallMatrix(M);

    temp:=StrToFloat(Form9.Edit32.text);
    M.a[1,1].Re:=M.a[1,1].Re*temp;
    M.a[1,1].Im:=M.a[1,1].Im*temp;

    temp:=StrToFloat(Form9.Edit34.text);
    M.a[1,2].Re:=M.a[1,2].Re*temp;
    M.a[1,2].Im:=M.a[1,2].Im*temp;

    temp:=StrToFloat(Form9.Edit33.text);
    M.a[2,1].Re:=M.a[2,1].Re*temp;
    M.a[2,1].Im:=M.a[2,1].Im*temp;

    temp:=StrToFloat(Form9.Edit36.text);
    M.a[2,2].Re:=M.a[2,2].Re*temp;
    M.a[2,2].Im:=M.a[2,2].Im*temp;

    ReplaceTooSmallMatrix(M);
    matrixtype:=1;
  end else if Form9.RadioButton3.Checked then begin
    if not StrToFloatReplace(Form9.Edit4.text,insangle) then
      exit;
    M.a[1,1].Re:=cos(Pi*insangle/180);
    M.a[1,2].Re:=sin(Pi*insangle/180);
    M.a[2,1].Re:=-sin(Pi*insangle/180);
    M.a[2,2].Re:=cos(Pi*insangle/180);
    ReplaceTooSmallMatrix(M);
    matrixtype:=2;
  end else if Form9.RadioButton4.Checked then begin
    if not StrToFloatReplace(Form9.Edit3.text,M.a[1,1].Re) then
      exit;
    if not StrToFloatReplace(Form9.Edit16.text,M.a[1,2].Re) then
      exit;
    if not StrToFloatReplace(Form9.Edit5.text,M.a[2,1].Re) then
      exit;
    if not StrToFloatReplace(Form9.Edit18.text,M.a[2,2].Re) then
      exit;
    ReplaceTooSmallMatrix(M);
    matrixtype:=3;
  end else if Form9.RadioButton5.Checked then begin
    if not StrToFloatReplace(Form9.Edit38.text,Q) then
      exit;
    if not StrToFloatReplace(Form9.Edit42.text,F) then
      exit;

    if Form9.label83.Caption='-' then
      M.a[1,1].Re:=-1*cos(Pi*F/360)
    else
      M.a[1,1].Re:=cos(Pi*F/360);

    if Form9.label57.Caption='-' then
      M.a[1,1].Im:=-1*sin(Pi*F/360)*cos(Pi*Q/90)
    else
      M.a[1,1].Im:=sin(Pi*F/360)*cos(Pi*Q/90);

    if Form9.label55.Caption='-' then
      M.a[1,2].Im:=-1*sin(Pi*F/360)*sin(Pi*Q/90)
    else
      M.a[1,2].Im:=sin(Pi*F/360)*sin(Pi*Q/90);

    if Form9.label74.Caption='-' then
      M.a[2,1].Im:=-1*sin(Pi*F/360)*sin(Pi*Q/90)
    else
      M.a[2,1].Im:=sin(Pi*F/360)*sin(Pi*Q/90);

    if Form9.label82.Caption='-' then
      M.a[2,2].Re:=-1*cos(Pi*F/360)
    else
      M.a[2,2].Re:=cos(Pi*F/360);

    if Form9.label69.Caption='-' then
      M.a[2,2].Im:=-1*sin(Pi*F/360)*cos(Pi*Q/90)
    else
      M.a[2,2].Im:=sin(Pi*F/360)*cos(Pi*Q/90);

    ReplaceTooSmallMatrix(M);
    matrixtype:=4;
  end;
  Form9.ComboBox1.Items.Add(Form9.ComboBox1.Text);
  CollectedObj:=TCollectedObject.Create;
  CollectedObj.SName:=Form9.ComboBox1.Text;
  CollectedObj.Sa:=M;
  CollectedObj.matrixtype:=matrixtype;
  CombinationList.Add(CollectedObj);
end;

procedure TForm9.BitBtn2Click(Sender: TObject);
begin
  Form9.ComboBox1.Items.Clear;
  CombinationList.Clear;
end;

procedure TForm9.BitBtn3Click(Sender: TObject);
begin
  CombinationList.Delete(Form9.ComboBox1.ItemIndex);
  Form9.ComboBox1.DeleteSelected;
  Form9.ComboBox1.Refresh;
end;

procedure TForm9.BitBtn4Click(Sender: TObject);
begin
  Form9.CheckBox2.Checked:=true;
  Form9.Edit26.Text:=FloatToStr(0);
  Form9.Edit27.Text:=FloatToStr(0);
  Form9.Edit28.Text:=FloatToStr(1);
  Form9.Edit29.Text:=FloatToStr(0);
end;

procedure TForm9.BitBtn5Click(Sender: TObject);
begin
  Form9.CheckBox2.Checked:=true;
  Form9.Edit26.Text:=FloatToStr(0);
  Form9.Edit27.Text:= FloatToStr(0);
  Form9.Edit28.Text:=FloatToStr(0);
  Form9.Edit29.Text:=FloatToStr(1);
end;

procedure TForm9.BitBtn6Click(Sender: TObject);
begin
  Form9.CheckBox2.Checked:=true;
  Form9.Edit26.Text:=FloatToStr(0);
  Form9.Edit27.Text:=FloatToStr(0);
  Form9.Edit28.Text:= FloatToStr(0.7071067811);
  Form9.Edit29.Text:=FloatToStr(0.7071067811);
end;

procedure TForm9.BitBtn7Click(Sender: TObject);
begin
  Form9.CheckBox2.Checked:=true;
  Form9.Edit26.Text:=FloatToStr(0);
  Form9.Edit27.Text:=FloatToStr(0);
  Form9.Edit28.Text:= FloatToStr(0.7071067811);
  Form9.Edit29.Text:=FloatToStr(-0.7071067811);
end;

procedure TForm9.BitBtn8Click(Sender: TObject);
begin
  Form9.CheckBox2.Checked:=true;
  Form9.Edit26.Text:=FloatToStr(0);
  Form9.Edit27.Text:=FloatToStr(-0.7071067811);
  Form9.Edit28.Text:= FloatToStr(0.7071067811);
  Form9.Edit29.Text:=FloatToStr(0);
end;

procedure TForm9.BitBtn9Click(Sender: TObject);
begin
  Form9.CheckBox2.Checked:=true;
  Form9.Edit26.Text:=FloatToStr(0);
  Form9.Edit27.Text:=FloatToStr(0.7071067811);
  Form9.Edit28.Text:= FloatToStr(0.7071067811);
  Form9.Edit29.Text:=FloatToStr(0);
end;

procedure TForm9.Button1Click(Sender: TObject);
  var angle,ampl1temp,ampl2temp,temp:double;
  i:integer;
  E1,E2:TVectorMatrix;
  M,T,MT:TMathMatrix;
  CollectedObj:TCollectedObject;
begin

  if Form9.CheckBox2.Checked = false then begin
    if Form9.CheckBox1.Checked then begin
      if not StrToFloatReplace(Form9.Edit14.text,angle) then
        exit;
      ampl1temp:=cos(Pi*angle/180);
      ampl2temp:=sin(Pi*angle/180);
      ReplaceTooSmall(ampl1temp);
      ReplaceTooSmall(ampl2temp);
      Form9.Edit1.text:=FloatToStr(ampl1temp);
      Form9.Edit8.text:=FloatToStr(ampl2temp);
    end else begin
      ampl1temp:=StrToFloat(Form9.Edit1.text);
      ampl2temp:=StrToFloat(Form9.Edit8.text);
    end;

    E1.fi1:=GetComplexOfAngleC(StrToFloat(Form9.Edit2.text));
    E1.fi2:=GetComplexOfAngleC(StrToFloat(Form9.Edit7.text));

    ReplaceTooSmall(E1.fi1.Re);
    ReplaceTooSmall(E1.fi1.Im);
    ReplaceTooSmall(E1.fi2.Re);
    ReplaceTooSmall(E1.fi2.Im);

    E1.fi1.Re:= E1.fi1.Re*ampl1temp;
    E1.fi1.Im:= E1.fi1.Im*ampl1temp;
    E1.fi2.Re:= E1.fi2.Re*ampl2temp;
    E1.fi2.Im:= E1.fi2.Im*ampl2temp;

    Form9.Edit28.text:= FloatToStr(SimpleRoundTo(E1.fi1.Re,-3));
    Form9.Edit26.text:= FloatToStr(SimpleRoundTo(E1.fi1.Im,-3));
    Form9.Edit29.text:= FloatToStr(SimpleRoundTo(E1.fi2.Re,-3));
    Form9.Edit27.text:= FloatToStr(SimpleRoundTo(E1.fi2.Im,-3));
  end else begin
    E1.fi1.Re:= StrToFloat(Form9.Edit28.text);
    E1.fi1.Im:= StrToFloat(Form9.Edit26.text);
    E1.fi2.Re:= StrToFloat(Form9.Edit29.text);
    E1.fi2.Im:= StrToFloat(Form9.Edit27.text);
  end;
  Form9.Memo2.Lines.Clear;
  Form9.Memo2.Lines.Add('Insident light');
  Form9.Memo2.Lines.Add('E1[1]= ' + FloatToStr(SimpleRoundTo(E1.fi1.Re,-3))+'+'+ FloatToStr(SimpleRoundTo(E1.fi1.Im,-3))+'i');
  Form9.Memo2.Lines.Add('E1[2]= ' + FloatToStr(SimpleRoundTo(E1.fi2.Re,-3))+'+'+ FloatToStr(SimpleRoundTo(E1.fi2.Im,-3))+'i');

  if CombinationList.Count = 0 then
    exit;
  CollectedObj:=CombinationList.Items[0];
  M:= CollectedObj.Sa;
  for i := 0 to CombinationList.count-2 do begin
    CollectedObj:=CombinationList.Items[i+1];
    T:= CollectedObj.Sa;
    DoubleMatrixMultiplex(M,T,MT);
    M:=MT;
  end;

  E2.fi1:= AddC(MulC(M.a[1,1],E1.fi1),MulC(M.a[1,2],E1.fi2));
  E2.fi2:= AddC(MulC(M.a[2,1],E1.fi1),MulC(M.a[2,2],E1.fi2));
  Form9.Memo2.Lines.Add('');
  Form9.Memo2.Lines.Add('Resonator');
  for i := 0 to CombinationList.count-1 do begin
    CollectedObj:=CombinationList.Items[i];
    Form9.Memo2.Lines.Add('name:' + CollectedObj.SName);
    Form9.Memo2.Lines.Add('a[11]= ' + FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[1,1].Re,-3))+'+' + FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[1,1].Im,-3))+'i');
    Form9.Memo2.Lines.Add('a[12]= ' + FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[1,2].Re,-3))+'+' + FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[1,2].Im,-3))+'i');
    Form9.Memo2.Lines.Add('a[21]= ' + FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[2,1].Re,-3))+'+' + FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[2,1].Im,-3))+'i');
    Form9.Memo2.Lines.Add('a[22]= ' + FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[2,2].Re,-3))+'+' + FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[2,2].Im,-3))+'i');
  end;
  Form9.Memo2.Lines.Add('');
  Form9.Memo2.Lines.Add('Result');
  Form9.Memo2.Lines.Add('W[11]= ' + FloatToStr(SimpleRoundTo(M.a[1,1].Re,-3))+'+' + FloatToStr(SimpleRoundTo(M.a[1,1].Im,-3))+'i');
  Form9.Memo2.Lines.Add('W[12]= ' + FloatToStr(SimpleRoundTo(M.a[1,2].Re,-3))+'+' + FloatToStr(SimpleRoundTo(M.a[1,2].Im,-3))+'i');
  Form9.Memo2.Lines.Add('W[21]= ' + FloatToStr(SimpleRoundTo(M.a[2,1].Re,-3))+'+' + FloatToStr(SimpleRoundTo(M.a[2,1].Im,-3))+'i');
  Form9.Memo2.Lines.Add('W[22]= ' + FloatToStr(SimpleRoundTo(M.a[2,2].Re,-3))+'+' + FloatToStr(SimpleRoundTo(M.a[2,2].Im,-3))+'i');


  Form9.Edit11.text:= FloatToStr(SimpleRoundTo(E2.fi1.Re,-3));
  Form9.Edit9.text:= FloatToStr(SimpleRoundTo(E2.fi1.Im,-3));
  Form9.Edit12.text:= FloatToStr(SimpleRoundTo(E2.fi2.Re,-3));
  Form9.Edit10.text:= FloatToStr(SimpleRoundTo(E2.fi2.Im,-3));

end;

procedure TForm9.CheckBox1Click(Sender: TObject);
begin
  if Form9.CheckBox1.Checked then begin
    if Form9.CheckBox2.Checked then begin
      Form9.CheckBox2.Checked:=false;
    end;
    Form9.Edit28.Enabled:=false;
    Form9.Edit29.Enabled:=false;
    Form9.Edit1.Enabled:=false;
    Form9.Edit8.Enabled:=false;
    Form9.label1.Visible:=true;
    Form9.label79.Visible:=true;
    Form9.Edit14.Visible:=true;
  end else begin
    Form9.Edit28.Enabled:=true;
    Form9.Edit29.Enabled:=true;
    Form9.Edit1.Enabled:=true;
    Form9.Edit8.Enabled:=true;
    Form9.label1.Visible:=false;
    Form9.label79.Visible:=false;
    Form9.Edit14.Visible:=false;
  end;
end;

procedure TForm9.CheckBox2Click(Sender: TObject);
begin
  if Form9.CheckBox2.Checked then begin
    Form9.GroupBox8.Visible:=true;
    Form9.GroupBox2.Visible:=false;
  end else begin
    Form9.GroupBox8.Visible:=false;
    Form9.GroupBox2.Visible:=true;
  end;
end;

procedure TForm9.ComboBox1Select(Sender: TObject);
  var CollectedObj:TCollectedObject;
begin
  Form9.Memo1.lines.Clear;
  CollectedObj:=CombinationList.Items[Form9.ComboBox1.ItemIndex];
  Form9.Memo1.lines.add('Name:'+CollectedObj.SName);
  Form9.Memo1.lines.add('Type:'+IntToStr(CollectedObj.matrixtype));
  Form9.Memo1.lines.add('a[11] = '+FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[1,1].Re,-3))+'+'+FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[1,1].Im,-3))+'i');
  Form9.Memo1.lines.add('a[12] = '+FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[1,2].Re,-3))+'+'+FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[1,2].Im,-3))+'i');
  Form9.Memo1.lines.add('a[21] = '+FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[2,1].Re,-3))+'+'+FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[2,1].Im,-3))+'i');
  Form9.Memo1.lines.add('a[22] = '+FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[2,2].Re,-3))+'+'+FloatToStr(SimpleRoundTo(CollectedObj.Sa.a[2,2].Im,-3))+'i');
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  CombinationList:=TList.Create;
end;

procedure TForm9.Label55Click(Sender: TObject);
begin
  if Form9.label55.Caption = '+' then
    Form9.label55.Caption:='-'
  else
    Form9.label55.Caption:='+';
end;

procedure TForm9.Label57Click(Sender: TObject);
begin
  if Form9.label57.Caption = '+' then
    Form9.label57.Caption:='-'
  else
    Form9.label57.Caption:='+';
end;

procedure TForm9.Label69Click(Sender: TObject);
begin
  if Form9.label69.Caption = '+' then
    Form9.label69.Caption:='-'
  else
    Form9.label69.Caption:='+';
end;

procedure TForm9.Label74Click(Sender: TObject);
begin
  if Form9.label74.Caption = '+' then
    Form9.label74.Caption:='-'
  else
    Form9.label74.Caption:='+';
end;

procedure TForm9.Label82Click(Sender: TObject);
begin
  if Form9.label82.Caption = '+' then
    Form9.label82.Caption:='-'
  else
    Form9.label82.Caption:='+';
end;

procedure TForm9.Label83Click(Sender: TObject);
begin
  if Form9.label83.Caption = '+' then
    Form9.label83.Caption:='-'
  else
    Form9.label83.Caption:='+';
end;

procedure TForm9.RadioButton1Click(Sender: TObject);
begin
  Form9.Groupbox6.Enabled := true;
  Form9.Groupbox7.Enabled := false;
  Form9.Groupbox10.Enabled := false;
  Form9.Groupbox12.Enabled := false;
  Form9.Groupbox16.Enabled := false;
end;

procedure TForm9.RadioButton2Click(Sender: TObject);
begin
  Form9.Groupbox6.Enabled := false;
  Form9.Groupbox7.Enabled := false;
  Form9.Groupbox10.Enabled := true;
  Form9.Groupbox12.Enabled := false;
  Form9.Groupbox16.Enabled := false;
end;

procedure TForm9.RadioButton3Click(Sender: TObject);
begin
  Form9.Groupbox6.Enabled := false;
  Form9.Groupbox7.Enabled := false;
  Form9.Groupbox10.Enabled := false;
  Form9.Groupbox12.Enabled := false;
  Form9.Groupbox16.Enabled := true;
end;

procedure TForm9.RadioButton4Click(Sender: TObject);
begin
  Form9.Groupbox6.Enabled := false;
  Form9.Groupbox7.Enabled := false;
  Form9.Groupbox10.Enabled := false;
  Form9.Groupbox12.Enabled := true;
  Form9.Groupbox16.Enabled := false;
end;

end.
