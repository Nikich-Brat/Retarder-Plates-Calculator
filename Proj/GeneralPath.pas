unit GeneralPath;

interface

uses
  Windows, Messages, SysUtils, Variants, IniFiles, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ArrowCha, Series, BubbleCh, TeEngine,
  TeeProcs, Chart, ComCtrls, Math, Menus, Buttons, ShellApi;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Settings1: TMenuItem;
    Help2: TMenuItem;
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    BitBtn6: TBitBtn;
    procedure Settings1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Help2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  FlArr = array of double ;
  Arr2D = array [0..1] of double;
  Arr2I = array [0..1] of integer;
  Arr2DFl = array [0..1] of FlArr;
  TMatherial = record
    B1		: double;
    B2		: double;
    B3		: double;
    B4		: double;
    B5		: double;
    C1		: double;
    C2		: double;
    C3		: double;
    C4		: double;
    C5		: double;
    productname:string;
    producer	: string;
    rangestart: double;
    rangestop: double;
    formula: string;
    state: string;
    worktemprature: double;
    anisotrope: boolean;
    e: boolean;
  end;

var
  Form1: TForm1;

const
  DEFAULTDocSize = 4096;
  DEFAULTPathMathDn:string = '\matherials';
  DEFAULTPicturePath:string = '\For Pictures';
implementation

uses  Settings, PlatesCalculations, RotationOfPolarization, LightAngleAndDrift, PolarizationVizualizator, PlatesWithBevelCorners, JohnsMatrix;

{$R *.dfm}

procedure TForm1.Settings1Click(Sender: TObject);
begin
  Form3.Show;
end;
procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Form2.Show;
end;
procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form4.Show;
end;
procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  Form5.Show;
end;
procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  Form6.Show;
end;
procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  difrefindfileselected:=false;
end;

procedure TForm1.Help2Click(Sender: TObject);
begin
    ShellExecute(0, 'Open', PChar('about program.pdf'), nil, nil, SW_SHOWNORMAL);
end;

end.
