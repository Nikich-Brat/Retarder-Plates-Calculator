unit PolarizationVizualizator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, ExtCtrls, StdCtrls, Buttons, GeneralPath;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    Label31: TLabel;
    ComboBox2: TComboBox;
    Label9: TLabel;
    Edit5: TEdit;
    Label10: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    BitBtn2: TBitBtn;
    Image3: TImage;
    Image5: TImage;
    Image2: TImage;
    procedure CheckBox3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function InitializeVisualPolar():boolean;

var
  Form6: TForm6;
  platePI2:boolean;
  angle:double;


implementation

uses  Calculations, FunctionsForSeparating;

{$R *.dfm}

function InitializeVisualPolar():boolean;
begin
  if Form6.ComboBox2.ItemIndex=0 then
    platePI2:=true
  else
    platePI2:=false;
  angle:=StrToFloat(Form6.Edit5.Text);
  Form6.Edit5.Text:=FloatToStr(angle);
end;

procedure TForm6.CheckBox3Click(Sender: TObject);
var i:integer;
begin
  if Form6.CheckBox3.Checked then begin
    VisualizePolarizationCoordinateAxis(Form6.Image2,160,clBlue);
    Form6.Image2.Canvas.TextOut(Trunc(160),Trunc(50),'A`');
    Form6.Image2.Canvas.TextOut(Trunc(160),Trunc(270),'A');
    Form6.Image2.Canvas.TextOut(Trunc(50),Trunc(160),'O');
    Form6.Image2.Canvas.TextOut(Trunc(270),Trunc(160),'O`');
    Form6.Image3.Canvas.TextOut(150,80,'k');
    Form6.Image3.Canvas.Pen.Color:=clBlue;
    for i:=10 to 160 do begin
      if i mod 2 = 0 then
        Form6.Image3.Canvas.MoveTo(80,i)
      else
        Form6.Image3.Canvas.LineTo(80,i);
    end;
    Form6.Image3.Canvas.TextOut(80,10,'O`');
    Form6.Image3.Canvas.TextOut(80,150,'O');
  end;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  InitializeVisualPolar()
end;

procedure TForm6.ComboBox2Change(Sender: TObject);
begin
  if Form6.ComboBox2.ItemIndex = 1 then begin
    platePI2:=false;
  end else begin
    platePI2:=true;
  end;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
var i,j,maxindex:integer;
mas:array[0..359] of double;
radius, radius1u, radius2u:array[0..359] of double;
polarizatormass:FlArr;
resultarr: Arr2D;
begin
  SetLength(polarizatormass,0);
  SetLength(polarizatormass,360);
  if Form6.ComboBox2.ItemIndex = 1 then begin
    platePI2:=false;
  end else begin
    platePI2:=true;
  end;
  if not StrToFloatReplace(Form6.Edit5.Text,angle) then
    exit;
  VisualizeCoordinateCircle(Form6.Image2,160,clBlack,Pi/2);
  ShowLightPenetration(Form6.Image3);
  Form6.CheckBox3Click(Sender);
  while angle>359 do begin
    angle:=angle-360;
  end;
  for i:=0 to 180 do begin
    if platePI2 then begin
      resultarr:= CalcEllypseY(160,cos(Pi*i/180),Pi*angle/180,Pi/2) ;
      mas[i]:=resultarr[0];
      mas[359-i]:=resultarr[1];
    end else begin
      resultarr:= CalcEllypseY(160,cos(Pi*i/180),Pi*angle/180,Pi) ;
      mas[i]:=resultarr[0];
      mas[359-i]:=resultarr[1];
    end;
  end;
  for i:=0 to 359 do begin
    radius[i]:= Power(160*cos(Pi*i/180)*cos(Pi*angle/180),2) +  Power(mas[i],2);
    radius1u[i]:=0;
    radius2u[i]:=0;
  end;

  for j:=0 to 359 do begin
    for i:=0 to 359 do begin
      radius1u[i]:= radius[i]*cos((Pi*(i-j))/180)*cos((Pi*(i-j))/180);
    end;
    for i:=0 to 359 do begin
      radius2u[i]:= radius2u[i]+radius1u[i]/360;
    end;
  end;

  polarizatormass:=NormalizeMass(radius2u,120);

  Form6.Image2.Canvas.Pen.Color:= clRed;
  Form6.Image2.Canvas.MoveTo(Trunc(160),Trunc(160));

  if Form6.CheckBox2.Checked then begin

    if platePI2 then begin
        Form6.Image2.Canvas.MoveTo(Trunc(160+polarizatormass[0]*cos(Pi*0/180)),Trunc(160+polarizatormass[0]*sin(Pi*0/180)));
        for i:=0 to 359 do begin
          Form6.Image2.Canvas.LineTo(Trunc(160+polarizatormass[i]*cos(Pi*i/180)),Trunc(160+polarizatormass[i]*sin(Pi*i/180))) ;
          Application.ProcessMessages;
        end;
        Form6.Image2.Canvas.LineTo(Trunc(160+polarizatormass[0]*cos(Pi*0/180)),Trunc(160+polarizatormass[0]*sin(Pi*0/180)));
    end else begin
        Form6.Image2.Canvas.MoveTo(Trunc(160+polarizatormass[0]*cos(Pi*0/180 - angle*Pi/180)),Trunc(160+polarizatormass[0]*sin(Pi*0/180 - angle*Pi/180)));  //- becouse rotate left
        for i:=0 to 359 do begin
          Form6.Image2.Canvas.LineTo(Trunc(160+polarizatormass[i]*cos(Pi*i/180 - angle*Pi/180)),Trunc(160+polarizatormass[i]*sin(Pi*i/180 - angle*Pi/180))) ;  //- becouse rotate left
          Application.ProcessMessages;
        end;
        Form6.Image2.Canvas.MoveTo(Trunc(160+polarizatormass[0]*cos(Pi*0/180 - angle*Pi/180)),Trunc(160+polarizatormass[0]*sin(Pi*0/180 - angle*Pi/180)));  //- becouse rotate left
    end;

  end else begin

    Form6.Image2.Canvas.MoveTo(Trunc(160+160*cos(Pi*angle/180)),Trunc(160+mas[0]));
    for i:=0 to 359 do begin
        Form6.Image2.Canvas.LineTo(Trunc(160+160*cos(Pi*angle/180)*cos(Pi*i/180)),Trunc(160+mas[i]));
        Application.ProcessMessages;
    end;
    Form6.Image2.Canvas.LineTo(Trunc(160+ 160*cos(Pi*angle/180)),Trunc(160+mas[0]));

  end;
  Form6.Image2.Canvas.Pen.Color:= clBlack;
end;

end.
