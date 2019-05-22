program DSC;

uses
  Forms,
  Main in 'Main.pas' {FormMain},
  Functions in 'Functions.pas',
  CGroup in 'CGroup.pas' {FormChangeGroup},
  CFunction in 'CFunction.pas' {FormCFunction},
  CompileFunctUnit in 'CompileFunctUnit.pas' {FormCompileFunct},
  WaitDialog in 'WaitDialog.pas' {FormWait},
  About in 'About.pas' {FormAbout},
  GoToXY in 'GoToXY.pas' {FormGoTo};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Декартова система координат';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormChangeGroup, FormChangeGroup);
  Application.CreateForm(TFormCFunction, FormCFunction);
  Application.CreateForm(TFormCompileFunct, FormCompileFunct);
  Application.CreateForm(TFormWait, FormWait);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.CreateForm(TFormGoTo, FormGoTo);
  Application.Run;
end.
