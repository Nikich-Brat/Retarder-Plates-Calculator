unit PlatesWithBevelCorners;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, IniFiles,GeneralPath, FunctionsForSeparating;

type
  TForm7 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label39: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Label3: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function InitializePlatesBevel():boolean;

var
  Form7: TForm7;
  wl,deltaphase,d,no,ne:double;
  matherial:TMatherial;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  wl,deltaphase,d,n0,ne,angle:double;
  order:integer;
begin
  if not StrToFloatReplace(Form7.Edit1.text,wl)or
  not StrToFloatReplace(Form7.Edit2.text,no)or
  not StrToFloatReplace(Form7.Edit3.text,ne)or
  not StrToFloatReplace(Form7.Edit4.text,angle)or
  not StrToFloatReplace(Form7.Edit5.text,d) then begin
    exit;
  end;
  deltaphase:= (2*Pi*no/(wl*Power(10,-3)))*((ne/sqrt( sqr(no)*sqr(cos(Pi*angle/180))+ sqr(ne)*sqr(sin(Pi*angle/180))))-1)*d;
  Form7.Memo1.Clear;
  order:=0;
  While deltaphase>2*Pi do begin
    deltaphase:=deltaphase-2*Pi;
    inc(order);
  end;
  Form7.Memo1.Lines.Add('Number of complete wavelenghts: '+FloatToStr(order));
  Form7.Memo1.Lines.Add('remain phase retardation is'+FloatToStr(deltaphase/(2*Pi)));
  Form7.Memo1.Lines.Add('Is equal to lamda/'+FloatToStr(1/(deltaphase/(2*Pi))));
end;

function InitializePlatesBevel():boolean;
var
  sl : TStringList;
  Ini : TIniFile;
  i : Integer;
begin
  result:=true;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  InitializePlatesBevel();
end;

end.
