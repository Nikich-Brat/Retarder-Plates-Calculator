unit Calculations;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Dialogs, ExtCtrls, Math, Menus, GeneralPath;


function CalculateRotationConstant(wl:double;matherial:integer):double ;
function CalcEllypseY(ampl:double;x:double;angle:double;plate:double):Arr2D;
function CalcRefIndex(B1,B2,B3,B4,B5,C1,C2,C3,C4,C5,wl:double):double;
function CalcPi2D(wl:double;order:integer;deltan:double):double;
function CalcPiD(wl:double;order:integer;deltan:double):double;
function Calc2PiD(wl:double;order:integer;deltan:double):double;
function NormalizeMass(mas:array of double; value:double):FlArr;
function InterpolationLagrange(x,y:FlArr;xt:double):double;
function InterpolationLinear(x,y:FlArr;xt:double):double;

implementation

function CalculateRotationConstant(wl:double;matherial:integer):double ;
var
  firstabsline:double;
  secondabsline:double;
  thirdabsline:double;
  fourthabsline:double;
  res:double;
begin
  res:=0;
  if matherial = 0 then begin
    firstabsline:= 4.948/(wl*wl-0.014161);
    secondabsline:= 4.617/(wl*wl-0.011236);
    thirdabsline:= 2.311/(wl*wl-0.000974);
    fourthabsline:= 0.000815/((wl*wl-0.0192)*(wl*wl-0.0192));
    res:=firstabsline+secondabsline-thirdabsline-fourthabsline-0.1905;
  end;
  CalculateRotationConstant:=res;
end;

function CalcEllypseY(ampl:double;x:double;angle:double;plate:double):Arr2D ;
var
  a,b,Discriminant,cD,aD,bD,y1,y2:double;
  res:Arr2D;
begin
  a:=ampl*cos(angle);
  b:=ampl*sin(angle);
  if b = 0 then
    b:=0.001;
  x:=a*x;
  cD:= ((x*x)/(a*a) - Power(sin(plate),2));
  aD:= 1/(b*b);
  bD:= -(2*x*cos(plate))/(a*b);
  Discriminant:=  (bD*bD)-(4*aD*cD) ;
  if (Discriminant>-0.000001) and (Discriminant<0)  then
    Discriminant:=0;
  if Discriminant>=0 then begin
    y1:= (-1*bD+sqrt(Discriminant))/(2*aD);
    y2:=(-1*bD-sqrt(Discriminant))/(2*aD);
    res[0]:=y1;
    res[1]:=y2;
  end;
  Result:= res;
end;

function CalcRefIndex(B1,B2,B3,B4,B5,C1,C2,C3,C4,C5,wl:double):double;
var part1,part2,part3,part4,part5:double;
begin
  part1:= B1*wl*wl/(wl*wl - C1);
  part2:= B2*wl*wl/(wl*wl - C2);
  part3:= B3*wl*wl/(wl*wl - C3);
  part4:= B4*wl*wl/(wl*wl - C4);
  part5:= B5*wl*wl/(wl*wl - C5);
  result:=1+part1+part2+part3+part4+part5;
end;

function CalcPi2D(wl:double;order:integer;deltan:double):double;
begin
  result:=wl*(1+4*order)/(4*deltan);
end;

function CalcPiD(wl:double;order:integer;deltan:double):double;
begin
  result:=wl*(1+2*order)/(2*deltan);
end;

function Calc2PiD(wl:double;order:integer;deltan:double):double;
begin
  result:=wl*order/deltan;
end;

function NormalizeMass(mas:array of double;value:double):FlArr;
var i:integer;
temp:FlArr;
max:double;
begin
  SetLength(temp,length(mas));
  max:=MaxValue(mas);
  for i:=0 to length(mas)-1 do begin
    temp[i]:=(mas[i]*value)/max;
  end;
  result:=temp;
  SetLength(temp,0);
end;

function InterpolationLagrange(x,y:FlArr;xt:double):double;
var
  i,k:integer;
  a:FlArr;
  s:double;
  f:double;
begin
  SetLength(a,Length(x));
  for i:=0 to length(x)-1 do begin                  {���������� ������� �������������}
    s:=1;
    for k:=0 to length(x)-1 do begin
      if k<>i then
        s:=s*(x[i]-x[k])
      else
        s:=s*1;
    end;
    a[i]:=1/s;
  end;

  f:=0;

  for i:=0 to length(a)-1 do begin
    s:=1;
    for k:=0 to length(x)-1 do begin
      if k<>i then
        s:=s*(xt-x[k])
      else
        s:=s*1;
    end;
    f:=f+a[i]*y[i]*s;
  end;
result:=f;
end;

function InterpolationLinear(x,y:FlArr;xt:double):double;
var
  i,k:integer;
  f:double;
begin
  i:=0;
  f:= y[length(x)-1];
  if xt<x[length(x)-1] then begin
    While (x[i]-xt)<0  do begin
      inc(i);
    end;
    f:=y[i-1]+((y[i-1]-y[i])/(x[i-1]-x[i]))*(xt-x[i-1]) ;
  end;
  result:=f;
end;

end.
