unit PlatesCalculations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Math, IniFiles,Calculations, FunctionsForSeparating, GeneralPath, Settings,
  Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    BitBtn3: TBitBtn;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label21: TLabel;
    Edit10: TEdit;
    Label23: TLabel;
    Label1: TLabel;
    Edit11: TEdit;
    Label24: TLabel;
    Memo2: TMemo;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label45: TLabel;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Label11: TLabel;
    Edit6: TEdit;
    Label44: TLabel;
    Label18: TLabel;
    Edit7: TEdit;
    Label15: TLabel;
    Label17: TLabel;
    Edit9: TEdit;
    Label14: TLabel;
    Edit8: TEdit;
    Label46: TLabel;
    Edit18: TEdit;
    Label47: TLabel;
    Edit19: TEdit;
    Button1: TButton;
    ComboBox4: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    procedure ComboBox5Change(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox4Select(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function InitializePlatesPart():boolean;
function SetCurrValues():boolean;

var
  Form4: TForm4;
  platescalcmode:integer;//selmeer/real dn/etc.
  difrefindfileselected:boolean;//indicator in usage
  numberofmatherials:integer;
  wlfirstplate:double;
  wlsecondplate:double;
  deltanfirst:double;
  deltansecond:double;
  dwidthfirst:double;
  dwidthsecond:double;
  firstplatetype:integer;
  secondplatetype:integer;
  firstplateworkorder:integer;
  secondplateworkorder:integer;
  mathindexo:integer;
  mathindexe:integer;
  matherialo:TMatherial ;
  matheriale:TMatherial;
  ordero:boolean;

  wlmas:FlArr;
  dnmas:FlArr;
implementation

uses DeltanVisualizator;

{$R *.dfm}

///////////////////////////////
//Plates
/////////////////////////////

function InitializePlatesPart():boolean;
var sl : TStringList;
Ini : TIniFile;
i : Integer;
begin
  Form4.ComboBox4.Clear;
  if platescalcmode=1 then begin
    SetCurrValues();
    sl := TStringList.Create;
    Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'DispMatherials.ini');
    Ini.ReadSections(sl);
    numberofmatherials:=sl.Count;
    for i:=0 to sl.Count-1 do begin
      Form4.ComboBox4.Items.Add(Ini.ReadString(IntToStr(i),'Productname','-'));
    end;
    Ini.Free;
    if numberofmatherials >2 then begin
      mathindexo:=0;
      mathindexe:=1;
      Form4.ComboBox4.ItemIndex:=1;
      ordero:=true;
    end else begin
      mathindexo:=0;
      mathindexe:=0;
      Form4.ComboBox4.ItemIndex:=0;
      ordero:=true;
    end;
    Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'DispMatherials.ini');
    DownloadMatherial(matherialo,Ini,mathindexo);
    DownloadMatherial(matheriale,Ini,mathindexe);
    Ini.Free;
    Form4.Memo1.Lines.Add(matherialo.productname);
    Form4.Memo1.Lines.Add(matheriale.productname);
  end else if platescalcmode = 2 then begin
    if difrefindfileselected = false then begin
      Form3.BitBtn5.Click;
    end;
    SetCurrValues();
  end else if platescalcmode = 3 then begin
    if difrefindfileselected = false then begin
      Form3.BitBtn5.Click;
    end;
    SetCurrValues();
    if difrefindfileselected = false then
      MessageDlg('You hadnt choosen file. It may cause problems', mtWarning,[mbOk], 0);
  end;
  result:=true;
end;

function SetCurrValues():boolean;
begin
    Form4.CheckBox5.Checked:=true;
    Form4.CheckBox6.Checked:=false;
    if not StrToFloatReplace(Form4.Edit6.Text,wlfirstplate) then
      exit;
    Form4.Edit6.Text:=FloatToStr(wlfirstplate);
    if not StrToFloatReplace(Form4.Edit7.Text,wlsecondplate) then
      exit;
    Form4.Edit7.Text:=FloatToStr(wlsecondplate);
    firstplatetype:=Form4.ComboBox5.ItemIndex+1;
    secondplatetype:=Form4.ComboBox6.ItemIndex+1;
    if not StrToFloatReplace(Form4.Edit9.Text,deltanfirst) then
      exit;
    if not StrToFloatReplace(Form4.Edit18.Text,deltansecond) then
      exit;
    Form4.Edit9.Text:=FloatToStr(deltanfirst);
    Form4.Edit18.Text:=FloatToStr(deltansecond);
    firstplateworkorder:=StrToInt(Form4.Edit8.text);
    Form4.Edit8.Text:=IntToStr(firstplateworkorder);
    secondplateworkorder:=StrToInt(Form4.Edit19.text);
    Form4.Edit19.Text:=IntToStr(secondplateworkorder);
    result:=true;
end;

procedure TForm4.CheckBox5Click(Sender: TObject);
begin
  if Form4.CheckBox5.Checked then begin
    Form4.CheckBox5.Checked:=true;
    Form4.CheckBox6.Checked:=false;
    Form4.Label18.Visible:=false;
    Form4.Label15.Visible:=false;
    Form4.Label45.Visible:=false;
    Form4.Label46.Visible:=false;
    Form4.Label47.Visible:=false;
    Form4.Edit18.Visible:=false;
    Form4.Edit19.Visible:=false;
    Form4.Edit7.Visible:=false;
    Form4.ComboBox6.Visible:=false;
    Form4.Memo4.Visible:=false;
    Form4.Memo5.Visible:=false;
    Form4.label7.Visible:=false;
    Form4.Memo1.Align:=alClient;
  end else begin
    Form4.CheckBox5.Checked:=false;
    Form4.CheckBox6.Checked:=true;
    Form4.Label18.Visible:=true;
    Form4.Label15.Visible:=true;
    Form4.Label45.Visible:=true;
    Form4.Label46.Visible:=true;
    Form4.Label47.Visible:=true;
    Form4.Edit18.Visible:=true;
    Form4.Edit19.Visible:=true;
    Form4.Edit7.Visible:=true;
    Form4.ComboBox6.Visible:=true;
    Form4.Memo4.Visible:=true;
    Form4.Memo5.Visible:=true;
    Form4.label7.Visible:=true;
    Form4.Memo4.Align:=alRight;
    Form4.Memo1.Align:=alLeft;
    Form4.Memo5.Align:=alBottom;
  end;
end;

procedure TForm4.CheckBox6Click(Sender: TObject);
begin
  if Form4.CheckBox6.Checked then begin
    Form4.CheckBox6.Checked:=true;
    Form4.CheckBox5.Checked:=false;
    Form4.Label18.Visible:=true;
    Form4.Label15.Visible:=true;
    Form4.Label45.Visible:=true;
    Form4.Label46.Visible:=true;
    Form4.Label47.Visible:=true;
    Form4.Edit18.Visible:=true;
    Form4.Edit19.Visible:=true;
    Form4.Edit7.Visible:=true;
    Form4.ComboBox6.Visible:=true;
    Form4.Memo4.Visible:=true;
    Form4.Memo5.Visible:=true;
    Form4.label7.Visible:=true;
    Form4.Memo4.Align:=alRight;
    Form4.Memo1.Align:=alLeft;
    Form4.Memo5.Align:=alBottom;
  end else begin
    Form4.CheckBox6.Checked:=false ;
    Form4.CheckBox5.Checked:=true;
    Form4.Label18.Visible:=false;
    Form4.Label15.Visible:=false;
    Form4.Label45.Visible:=false;
    Form4.Label46.Visible:=false;
    Form4.Label47.Visible:=false;
    Form4.Edit18.Visible:=false;
    Form4.Edit19.Visible:=false;
    Form4.Edit7.Visible:=false;
    Form4.ComboBox6.Visible:=false;
    Form4.Memo4.Visible:=false;
    Form4.Memo5.Visible:=false;
    Form4.label7.Visible:=false;
    Form4.Memo1.Align:=alClient;
  end;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
var dgeomtemp,diffirsttemp,difsecondtemp:double;
i,j:integer;
begin
    if not StrToFloatReplace(Form4.Edit3.text,dgeomtemp) then
      exit;
    if not (dgeomtemp<>0) then
      exit;
    Form4.Memo2.Lines.Clear ;
    if Form4.CheckBox6.Checked = false then begin
      if deltanfirst>0 then
      else
        deltanfirst:=deltanfirst*(-1);
      diffirsttemp:=(deltanfirst*dgeomtemp)/(wlfirstplate*Power(10,-3));
      Form4.Memo2.Lines.Add('Monochromate mode');
      Form4.Memo2.Lines.Add('number of firstwavelengths nested within dgeom:'+IntToStr(Trunc(diffirsttemp)));
      Form4.Memo2.Lines.Add('Fractional part of firstwavelengths in dgeom:'+FloatToStr(Frac(diffirsttemp)));
      diffirsttemp:=1/Frac(diffirsttemp);
      Form4.Memo2.Lines.Add('fractional part equivalent to lambda/'+FloatToStr(diffirsttemp));
    end else begin
      if deltanfirst>0 then
      else
        deltanfirst:=deltanfirst*(-1);
      if deltansecond>0 then
      else
        deltansecond:=deltansecond*(-1);
      diffirsttemp:=(deltanfirst*dgeomtemp)/(wlfirstplate*Power(10,-3));
      difsecondtemp:=(deltansecond*dgeomtemp)/(wlsecondplate*Power(10,-3));
      Form4.Memo2.Lines.Add('Bichromate mode');
      Form4.Memo2.Lines.Add('number of firstwavelengths nested within dgeom:'+IntToStr(Trunc(diffirsttemp)));
      Form4.Memo2.Lines.Add('number of secondwavelengths nested within dgeom:'+IntToStr(Trunc(difsecondtemp)));
      Form4.Memo2.Lines.Add('Fractional part of firstwavelengths in dgeom:'+FloatToStr(Frac(diffirsttemp)));
      Form4.Memo2.Lines.Add('Fractional part of secondwavelengths in dgeom:'+FloatToStr(Frac(difsecondtemp)));
      diffirsttemp:=1/Frac(diffirsttemp);
      difsecondtemp:=1/Frac(difsecondtemp);
      Form4.Memo2.Lines.Add('fractional part equivalent to lambda/'+FloatToStr(diffirsttemp));
      Form4.Memo2.Lines.Add('fractional part equivalent to lambda/'+FloatToStr(difsecondtemp));
    end;
    Form4.label6.Caption:='l1='+FloatToStr(wlfirstplate);
    Form4.label7.Caption:='l2='+FloatToStr(wlsecondplate);
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
var min,max:double;
imin1,imax1,imin2,imax2,i,j:integer;
dgeomfirsttemp,dgeomsecondtemp:FlArr;
minimum, diftemp:double;
indexminimum:Arr2I;
begin
    if not StrToFloatReplace(Form4.Edit9.text,deltanfirst) then
      exit;
    if not StrToFloatReplace(Form4.Edit18.text,deltansecond) then
      exit;
    if not StrToFloatReplace(Form4.Edit10.text,min) then
      exit;
    if not StrToFloatReplace(Form4.Edit11.text,max) then
      exit;
    if not StrToFloatReplace(Form4.Edit6.text,wlfirstplate) then
      exit;
    if not StrToFloatReplace(Form4.Edit7.text,wlsecondplate) then
      exit;
    if not TryStrToInt(Form4.Edit8.text,firstplateworkorder)or
    not TryStrToInt(Form4.Edit19.text,secondplateworkorder)
    then begin
      MessageDlg('Check matherials characteristics', mtWarning,[mbOk], 0);
      exit;
    end;
    if (platescalcmode = 1) and (mathindexo = mathindexe) then begin
      MessageDlg('Check used matherials', mtWarning,[mbOk], 0);
      exit;
    end;
    if ((platescalcmode = 2) or (platescalcmode = 3)) then begin
      if (wlfirstplate > wlmas[length(wlmas)-1]) or (wlfirstplate < wlmas[0]) then begin
        MessageDlg('Check used wavelengths', mtWarning,[mbOk], 0);
        exit;
      end;
      if Form4.CheckBox6.Checked then  begin
        if (wlsecondplate > wlmas[length(wlmas)-1]) or (wlsecondplate < wlmas[0]) then begin
          MessageDlg('Check used wavelengths', mtWarning,[mbOk], 0);
          exit;
        end;
      end;
    end;

    Form4.Memo1.Lines.Clear ;
    if firstplatetype  = 1 then
      Form4.Memo1.Lines.Add('Calculation for plate Pi/2')
    else if firstplatetype  = 2 then
      Form4.Memo1.Lines.Add('Calculation for plate Pi')
    else if firstplatetype  = 3 then
    Form4.Memo1.Lines.Add('Calculation for plate 2Pi');
    Form4.Memo1.Lines.Add('------------------------------------------');
    Form4.Memo1.Lines.Add('------------Characteristics:------');
    Form4.Memo1.Lines.Add('------------------------------------------');
    if platescalcmode = 1 then begin
      Form4.Memo1.Lines.Add('matherial ne:'+matheriale.productname);
      Form4.Memo1.Lines.Add('matherial no:'+matherialo.productname);
    end else begin
      Form4.Memo1.Lines.Add('matherial ne: undefined');
      Form4.Memo1.Lines.Add('matherial no: undefined');
    end;
    Form4.Memo1.Lines.Add('wl:'+FloatToStr(wlfirstplate)+'um');
    Form4.Memo1.Lines.Add('no-ne:'+FloatToStr(deltanfirst));
    Form4.Memo1.Lines.Add('m1:'+IntToStr(firstplateworkorder));
    Form4.Memo1.Lines.Add('------------------------------------------');
    Form4.Memo1.Lines.Add('---------------Results:--------------');
    Form4.Memo1.Lines.Add('------------------------------------------');
    if Form4.CheckBox6.Checked then begin
      Form4.Memo4.Lines.Clear ;
      if secondplatetype  = 1 then
        Form4.Memo4.Lines.Add('Calculation for plate Pi/2')
      else if secondplatetype  = 2 then
        Form4.Memo4.Lines.Add('Calculation for plate Pi')
      else if secondplatetype  = 3 then
      Form4.Memo4.Lines.Add('Calculation for plate 2Pi');
      Form4.Memo4.Lines.Add('------------------------------------------');
      Form4.Memo4.Lines.Add('------------Characteristics:------');
      Form4.Memo4.Lines.Add('------------------------------------------');
      if platescalcmode = 1 then begin
        Form4.Memo4.Lines.Add('matherial ne:'+matheriale.productname);
        Form4.Memo4.Lines.Add('matherial no:'+matherialo.productname);
      end else begin
        Form4.Memo4.Lines.Add('matherial ne: undefined');
        Form4.Memo4.Lines.Add('matherial no: undefined');
      end;
      Form4.Memo4.Lines.Add('wl:'+FloatToStr(wlsecondplate)+'um');
      Form4.Memo4.Lines.Add('no-ne:'+FloatToStr(deltansecond));
      Form4.Memo4.Lines.Add('m2:'+IntToStr(secondplateworkorder));
      Form4.Memo4.Lines.Add('------------------------------------------');
      Form4.Memo4.Lines.Add('---------------Results:--------------');
      Form4.Memo4.Lines.Add('------------------------------------------');
    end;
    if firstplatetype  = 1 then
      Form4.Memo1.Lines.Add('For m ='+IntToStr(firstplateworkorder)+' dgeom: '+FloatToStr(SimpleRoundTo(CalcPi2D(wlfirstplate*Power(10,-3),firstplateworkorder,deltanfirst),-8))+'mm')
    else if firstplatetype  = 2 then
      Form4.Memo1.Lines.Add('For m ='+IntToStr(firstplateworkorder)+' dgeom: '+FloatToStr(SimpleRoundTo(CalcPiD(wlfirstplate*Power(10,-3),firstplateworkorder,deltanfirst),-8))+'mm')
    else if firstplatetype  = 3 then
      Form4.Memo1.Lines.Add('For m ='+IntToStr(firstplateworkorder)+' dgeom: '+FloatToStr(SimpleRoundTo(Calc2PiD(wlfirstplate*Power(10,-3),firstplateworkorder,deltanfirst),-8))+'mm');
    if Form4.CheckBox6.Checked then begin
      if secondplatetype  = 1 then
        Form4.Memo4.Lines.Add('For m ='+IntToStr(secondplateworkorder)+' dgeom: '+FloatToStr(SimpleRoundTo(CalcPi2D(wlsecondplate*Power(10,-3),secondplateworkorder,deltansecond),-8))+'mm')
      else if secondplatetype  = 2 then
        Form4.Memo4.Lines.Add('For m ='+IntToStr(secondplateworkorder)+' dgeom: '+FloatToStr(SimpleRoundTo(CalcPiD(wlsecondplate*Power(10,-3),secondplateworkorder,deltansecond),-8))+'mm')
      else if secondplatetype  = 3 then
        Form4.Memo4.Lines.Add('For m ='+IntToStr(secondplateworkorder)+' dgeom: '+FloatToStr(SimpleRoundTo(Calc2PiD(wlsecondplate*Power(10,-3),secondplateworkorder,deltansecond),-8))+'mm');
    end;
    Form4.Memo1.Lines.Add('work order          '+'dgeom');
    if Form4.CheckBox6.Checked then
      Form4.Memo4.Lines.Add('work order          '+'dgeom');
    if (firstplatetype = 1) then begin
      imin1:= 0;
      imax1:= 0;
      if deltanfirst>0 then begin
        While CalcPi2D(wlfirstplate*Power(10,-3),imin1,deltanfirst)<=min do
          inc(imin1);
        While CalcPi2D(wlfirstplate*Power(10,-3),imax1,deltanfirst)<=max do begin
          inc(imax1);
          SetLength(dgeomfirsttemp,imax1+1)
        end;
        for i:=imin1 to imax1 do begin
          dgeomfirsttemp[i]:=CalcPi2D(wlfirstplate*Power(10,-3),i,deltanfirst);
          Form4.Memo1.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(dgeomfirsttemp[i],-6)));
        end;
      end else begin
        While CalcPi2D(wlfirstplate*Power(10,-3),imin1,-deltanfirst)<=min do
          inc(imin1);
        While CalcPi2D(wlfirstplate*Power(10,-3),imax1,-deltanfirst)<=max do begin
          inc(imax1);
          SetLength(dgeomfirsttemp,imax1+1)
        end;
        for i:=imin1 to imax1 do begin
          dgeomfirsttemp[i]:=CalcPi2D(wlfirstplate*Power(10,-3),i,deltanfirst);
          Form4.Memo1.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(-1*dgeomfirsttemp[i],-6)));
        end;
      end
    end else if (firstplatetype  = 2) then begin
      imin1:= 0;
      imax1:= 0;
      if deltanfirst>0 then begin
        While CalcPiD(wlfirstplate*Power(10,-3),imin1,deltanfirst)<=min do
          inc(imin1);
        While CalcPiD(wlfirstplate*Power(10,-3),imax1,deltanfirst)<=max do begin
          inc(imax1);
          SetLength(dgeomfirsttemp,imax1+1)
        end;
        for i:=imin1 to imax1 do begin
          dgeomfirsttemp[i]:=CalcPiD(wlfirstplate*Power(10,-3),i,deltanfirst);
          Form4.Memo1.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(dgeomfirsttemp[i],-6)));
        end;
      end else begin
        While CalcPiD(wlfirstplate*Power(10,-3),imin1,-deltanfirst)<=min do
          inc(imin1);
        While CalcPiD(wlfirstplate*Power(10,-3),imax1,-deltanfirst)<=max do begin
          inc(imax1);
          SetLength(dgeomfirsttemp,imax1+1)
        end;
        for i:=imin1 to imax1 do begin
          dgeomfirsttemp[i]:=CalcPiD(wlfirstplate*Power(10,-3),i,deltanfirst);
          Form4.Memo1.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(-1*dgeomfirsttemp[i],-6)));
        end;
      end;
    end else if (firstplatetype  = 3) then begin
      imin1:= 0;
      imax1:= 0;
      if deltanfirst>0 then begin
        While Calc2PiD(wlfirstplate*Power(10,-3),imin1,deltanfirst)<=min do
          inc(imin1);
        While Calc2PiD(wlfirstplate*Power(10,-3),imax1,deltanfirst)<=max do begin
          inc(imax1);
          SetLength(dgeomfirsttemp,imax1+1)
        end;
        for i:=imin1 to imax1 do begin
          dgeomfirsttemp[i]:=Calc2PiD(wlfirstplate*Power(10,-3),i,deltanfirst);
          Form4.Memo1.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(dgeomfirsttemp[i],-6)));
        end;
      end else begin
        While Calc2PiD(wlfirstplate*Power(10,-3),imin1,-deltanfirst)<=min do
          inc(imin1);
        While Calc2PiD(wlfirstplate*Power(10,-3),imax1,-deltanfirst)<=max do begin
          inc(imax1);
          SetLength(dgeomfirsttemp,imax1+1)
        end;
        for i:=imin1 to imax1 do begin
          dgeomfirsttemp[i]:=Calc2PiD(wlfirstplate*Power(10,-3),i,deltanfirst);
          Form4.Memo1.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(-1*dgeomfirsttemp[i],-6)));
        end;
      end;
    end;
  if Form4.CheckBox6.Checked then begin
    imin2:= 0;
    imax2:= 0;
    if (secondplatetype = 1) then begin
      if deltansecond>0 then begin
        While CalcPi2D(wlsecondplate*Power(10,-3),imin2,deltansecond)<=min do
          inc(imin2);
        While CalcPi2D(wlsecondplate*Power(10,-3),imax2,deltansecond)<=max do begin
          inc(imax2);
          SetLength(dgeomsecondtemp,imax2+1)
        end;
        for i:=imin2 to imax2 do begin
          dgeomsecondtemp[i]:=CalcPi2D(wlsecondplate*Power(10,-3),i,deltansecond);
          Form4.Memo4.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(dgeomsecondtemp[i],-6)));
        end;
      end else begin
        While CalcPi2D(wlsecondplate*Power(10,-3),imin2,-deltansecond)<=min do
          inc(imin2);
        While CalcPi2D(wlsecondplate*Power(10,-3),imax2,-deltansecond)<=max do begin
          inc(imax2);
          SetLength(dgeomsecondtemp,imax2+1)
        end;
        for i:=imin2 to imax2 do begin
          dgeomsecondtemp[i]:=CalcPi2D(wlsecondplate*Power(10,-3),i,deltansecond);
          Form4.Memo4.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(-1*dgeomsecondtemp[i],-6)));
        end;
      end
    end else if (secondplatetype  = 2) then begin
      imin2:= 0;
      imax2:= 0;
      if deltansecond>0 then begin
        While CalcPiD(wlsecondplate*Power(10,-3),imin2,deltansecond)<=min do
          inc(imin2);
        While CalcPiD(wlsecondplate*Power(10,-3),imax2,deltansecond)<=max do begin
          inc(imax2);
          SetLength(dgeomsecondtemp,imax2+1)
        end;
        for i:=imin2 to imax2 do begin
          dgeomsecondtemp[i]:=CalcPiD(wlsecondplate*Power(10,-3),i,deltansecond);
          Form4.Memo4.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(dgeomsecondtemp[i],-6)));
        end;
      end else begin
        While CalcPiD(wlsecondplate*Power(10,-3),imin2,-deltansecond)<=min do
          inc(imin2);
        While CalcPiD(wlsecondplate*Power(10,-3),imax2,-deltansecond)<=max do begin
          inc(imax2);
          SetLength(dgeomsecondtemp,imax2+1)
        end;
        for i:=imin2 to imax2 do begin
          dgeomsecondtemp[i]:=CalcPiD(wlsecondplate*Power(10,-3),i,deltansecond);
          Form4.Memo4.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(-1*dgeomsecondtemp[i],-6)));
        end;
      end;
    end else if (secondplatetype  = 3) then begin
      if deltansecond>0 then begin
        While Calc2PiD(wlsecondplate*Power(10,-3),imin2,deltansecond)<=min do
          inc(imin2);
        While Calc2PiD(wlsecondplate*Power(10,-3),imax2,deltansecond)<=max do begin
          inc(imax2);
          SetLength(dgeomsecondtemp,imax2+1)
        end;
        for i:=imin2 to imax2 do begin
          dgeomsecondtemp[i]:=Calc2PiD(wlsecondplate*Power(10,-3),i,deltansecond);
          Form4.Memo4.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(dgeomfirsttemp[i],-6)));
        end;
      end else begin
        While Calc2PiD(wlsecondplate*Power(10,-3),imin2,-deltansecond)<=min do
          inc(imin2);
        While Calc2PiD(wlsecondplate*Power(10,-3),imax2,-deltansecond)<=max do begin
          inc(imax2);
          SetLength(dgeomsecondtemp,imax2+1)
        end;
        for i:=imin2 to imax2 do begin
          dgeomsecondtemp[i]:=Calc2PiD(wlsecondplate*Power(10,-3),i,deltansecond);
          Form4.Memo4.Lines.Add(IntToStr(i)+'                 '+FloatToStr(SimpleRoundTo(-1*dgeomsecondtemp[i],-6)));
        end;
      end;
    end;
    Form4.Memo5.Clear;
    Form4.Memo5.Lines.Add('Selection of matches:');

    minimum:= sqr(dgeomsecondtemp[imin2]-dgeomfirsttemp[imin1]);
    indexminimum[0]:=imin1;
    indexminimum[1]:=imin2;
    for j:= imin1 to imax1 do begin
      for i:=imin2 to imax2 do begin
        if sqr(dgeomfirsttemp[j]-dgeomsecondtemp[i])<minimum then begin
          minimum:= sqr(dgeomfirsttemp[j]-dgeomsecondtemp[i]);
          indexminimum[0]:=j;
          indexminimum[1]:=i;
        end;
      end;
    end;
    Form4.Memo5.Lines.Add('best match for m1= '+FloatToStr(indexminimum[0])+'  and m2= '+FloatToStr(indexminimum[1]));
    Form4.Memo5.Lines.Add('difference: '+FloatToStr(sqrt(minimum)));
    diftemp:=(deltansecond*dgeomfirsttemp[indexminimum[0]])/(wlsecondplate*Power(10,-3));
    Form4.Memo5.Lines.Add('equivalent number of wl2 nested within d1geom: '+IntToStr(Trunc(diftemp)));
    Form4.Memo5.Lines.Add('fractional part for this case:'+FloatToStr(Frac(diftemp)));
    diftemp:=1/Frac(diftemp);
    Form4.Memo5.Lines.Add('fractional part equivalent to lambda/'+FloatToStr(diftemp));
  end;
end;

procedure TForm4.ComboBox4Select(Sender: TObject);
var Ini : TIniFile;
begin
  if ordero = true then begin
    Form4.Memo1.Lines.Clear;
    mathindexo:=Form4.ComboBox4.ItemIndex;
    Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'DispMatherials.ini');
    DownloadMatherial(matherialo,Ini,mathindexo);
    Ini.Free;
    Form4.Memo1.Lines.Add('e:'+matheriale.productname);
    Form4.Memo1.Lines.Add('o:'+matherialo.productname);
    ordero:=false;
  end else begin
    Form4.Memo1.Lines.Clear;
    mathindexe:=Form4.ComboBox4.ItemIndex;
    Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'DispMatherials.ini');
    DownloadMatherial(matheriale,Ini,mathindexe);
    Ini.Free;
    Form4.Memo1.Lines.Add('o:'+matherialo.productname);
    Form4.Memo1.Lines.Add('e:'+matheriale.productname);
    ordero:=true;
  end;
  Form4.Edit6.OnChange(Self);;
  Form4.Edit7.OnChange(Self);;
end;

procedure TForm4.Edit6Change(Sender: TObject);
var i:integer;
no,ne:double;
begin
  if not StrToFloatReplace(Form4.Edit6.text,wlfirstplate) then
    exit;
  if (wlfirstplate = 0)  then begin
    exit;
  end;
  if platescalcmode=1 then begin
    if (wlfirstplate < matherialo.rangestart) or (wlfirstplate > matherialo.rangestop) then
      ShowMessage('out of diapazon');
    no:=sqrt(CalcRefIndex(matherialo.B1,matherialo.B2,matherialo.B3,matherialo.B4,matherialo.B5,matherialo.C1,matherialo.C2,matherialo.C3,matherialo.C4,matherialo.C5,wlfirstplate));
    ne:=sqrt(CalcRefIndex(matheriale.B1,matheriale.B2,matheriale.B3,matheriale.B4,matheriale.B5,matheriale.C1,matheriale.C2,matheriale.C3,matheriale.C4,matheriale.C5,wlfirstplate));
    deltanfirst:= no-ne
  end else if platescalcmode = 2 then
    deltanfirst:= InterpolationLagrange(wlmas,dnmas,wlfirstplate)
  else if platescalcmode = 3 then
    deltanfirst:= InterpolationLinear(wlmas,dnmas,wlfirstplate);
  Form4.Edit9.Text:= FloatToStr(deltanfirst);
end;

procedure TForm4.Edit7Change(Sender: TObject);
var i:integer;
no,ne:double;
begin
  if not StrToFloatReplace(Form4.Edit7.text,wlsecondplate) then
    exit;
  if (wlsecondplate = 0)  then begin
    exit;
  end;
  if platescalcmode = 1 then begin
    if (wlsecondplate < matherialo.rangestart) or (wlsecondplate > matherialo.rangestop) then
      ShowMessage('out of diapazon');
    no:=sqrt(CalcRefIndex(matherialo.B1,matherialo.B2,matherialo.B3,matherialo.B4,matherialo.B5,matherialo.C1,matherialo.C2,matherialo.C3,matherialo.C4,matherialo.C5,wlsecondplate));
    ne:=sqrt(CalcRefIndex(matheriale.B1,matheriale.B2,matheriale.B3,matheriale.B4,matheriale.B5,matheriale.C1,matheriale.C2,matheriale.C3,matheriale.C4,matheriale.C5,wlsecondplate));
    deltansecond:= no-ne
  end else if platescalcmode = 2 then
    deltansecond:= InterpolationLagrange(wlmas,dnmas,wlsecondplate)
  else if platescalcmode = 3 then
    deltansecond:= InterpolationLinear(wlmas,dnmas,wlsecondplate);
  Form4.Edit18.Text:= FloatToStr(deltansecond);
end;

procedure TForm4.ComboBox5Change(Sender: TObject);
begin
  if Form4.ComboBox5.ItemIndex = 0 then
    firstplatetype:=1
  else if Form4.ComboBox5.ItemIndex = 1 then
    firstplatetype:=2
  else if Form4.ComboBox5.ItemIndex = 2 then
    firstplatetype:=3;
end;

procedure TForm4.ComboBox6Change(Sender: TObject);
begin
  if Form4.ComboBox6.ItemIndex = 0 then
    secondplatetype:=1
  else if Form4.ComboBox6.ItemIndex = 1 then
    secondplatetype:=2
  else if Form4.ComboBox6.ItemIndex = 2 then
    secondplatetype:=3;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  InitializePlatesPart();
  Form4.ComboBox5.OnChange(Self);
  Form4.ComboBox6.OnChange(Self);
  Form4.Edit6.OnChange(Self);
  Form4.Edit7.OnChange(Self);
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form8.Show;
  Form8.BitBtn1.Click;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  if Form3.RadioButton1.Checked then
    platescalcmode:=1
  else if Form3.RadioButton2.Checked then
    platescalcmode:=2
  else if Form3.RadioButton3.Checked then
    platescalcmode:=3;
end;

end.
