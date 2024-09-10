program Project2;

uses
  Forms,
  GeneralPath in 'GeneralPath.pas' {Form1},
  Settings in 'Settings.pas' {Form3},
  Calculations in 'Calculations.pas',
  FunctionsForSeparating in 'FunctionsForSeparating.pas',
  RotationOfPolarization in 'RotationOfPolarization.pas' {Form2},
  PlatesCalculations in 'PlatesCalculations.pas' {Form4},
  LightAngleAndDrift in 'LightAngleAndDrift.pas' {Form5},
  PolarizationVizualizator in 'PolarizationVizualizator.pas' {Form6},
  PlatesWithBevelCorners in 'PlatesWithBevelCorners.pas' {Form7},
  DeltanVisualizator in 'DeltanVisualizator.pas' {Form8},
  JohnsMatrix in 'JohnsMatrix.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
