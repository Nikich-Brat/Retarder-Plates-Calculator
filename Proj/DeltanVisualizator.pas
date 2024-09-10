unit DeltanVisualizator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Buttons,PlatesCalculations, Calculations, Settings,GeneralPath, FunctionsForSeparating,
  VclTee.TeeGDIPlus;

type
  TForm8 = class(TForm)
    GroupBox1: TGroupBox;
    Chart1: TChart;
    Series1: TLineSeries;
    BitBtn1: TBitBtn;
    Series2: TPointSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form8: TForm8;

implementation


{$R *.dfm}

procedure TForm8.BitBtn1Click(Sender: TObject);
var i,j:integer;
notemp,netemp,deltntemp:double;
dntemp,wltemp,tempmas1:double;
begin
  Series1.Clear;
  Series2.Clear;
  j:=0;
  if platescalcmode = 1 then begin
    for i:=Trunc(matherialo.rangestart*1000) to Trunc(matherialo.rangestop*1000) do begin
      notemp:=sqrt(CalcRefIndex(matherialo.B1,matherialo.B2,matherialo.B3,matherialo.B4,matherialo.B5,matherialo.C1,matherialo.C2,matherialo.C3,matherialo.C4,matherialo.C5,i/1000));
      netemp:=sqrt(CalcRefIndex(matheriale.B1,matheriale.B2,matheriale.B3,matheriale.B4,matheriale.B5,matheriale.C1,matheriale.C2,matheriale.C3,matheriale.C4,matheriale.C5,i/1000));
      deltansecond:= notemp-netemp;
      Series2.AddXY(i/1000,deltansecond);
    end;
    if not StrToFloatReplace(Form8.Edit1.Text,wltemp) then
      exit;
    notemp:=sqrt(CalcRefIndex(matherialo.B1,matherialo.B2,matherialo.B3,matherialo.B4,matherialo.B5,matherialo.C1,matherialo.C2,matherialo.C3,matherialo.C4,matherialo.C5,wltemp));
    netemp:=sqrt(CalcRefIndex(matheriale.B1,matheriale.B2,matheriale.B3,matheriale.B4,matheriale.B5,matheriale.C1,matheriale.C2,matheriale.C3,matheriale.C4,matheriale.C5,wltemp));
    dntemp:=notemp-netemp;
    Series1.AddXY(wltemp,dntemp);
    Form8.Edit2.Text:=FloatToStr(dntemp);
  end;
  if platescalcmode = 2 then begin
    if not StrToFloatReplace(Form8.Edit1.Text,wltemp) then
      exit;
    dntemp:=InterpolationLagrange(wlmas,dnmas,wltemp);
    Series1.AddXY(wltemp,dntemp);
    for i:=0 to length(dnmas)-1 do begin
      Series2.AddXY(wlmas[i],dnmas[i]);
    end;
    Form8.Edit2.Text:=FloatToStr(dntemp);
  end;
  if platescalcmode = 3 then begin
    if not StrToFloatReplace(Form8.Edit1.Text,wltemp) then
      exit;
    dntemp:=InterpolationLinear(wlmas,dnmas,wltemp);
    Series1.AddXY(wltemp,dntemp);
    for i:=0 to length(dnmas)-1 do begin
      Series2.AddXY(wlmas[i],dnmas[i]);
    end;
    Form8.Edit2.Text:=FloatToStr(dntemp);
  end;
end;

end.
