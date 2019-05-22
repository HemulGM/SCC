unit CompileFunctUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormCompileFunct = class(TForm)
    LabelInfo1: TLabel;
    MemoInfo: TMemo;
    MemoTextCode: TMemo;
    ButtonClose: TButton;
    ButtonCompile: TButton;
    ButtonLog: TButton;
    procedure ButtonCloseClick(Sender: TObject);
    procedure ButtonCompileClick(Sender: TObject);
    procedure ButtonLogClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCompileFunct: TFormCompileFunct;
  Path:string;

implementation
 uses ShellAPI;

{$R *.dfm}

procedure TFormCompileFunct.ButtonCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TFormCompileFunct.ButtonCompileClick(Sender: TObject);
var FName:string;
    CMD:TStrings;
begin
 Path:=ExtractFilePath(ParamStr(0));
 try
  FName:=MemoTextCode.Lines.Strings[0];
  FName:=Copy(FName, 9, Length(FName)-9);
  MemoTextCode.Lines.SaveToFile(Path+'CompileFunct\'+FName+'.dpr');
  CMD:=TStringList.Create;
  CMD.Add('dcc32 '+FName+'.dpr'+' > "Result.log"');
  CMD.SaveToFile(Path+'CompileFunct\'+'temp.cmd');
  CMD.Free;

  ShellExecute(Handle, 'open', PChar(Path+'CompileFunct\'+'temp.cmd'), '', PChar(Path+'CompileFunct\'), SW_NORMAL);
 except
  begin
   MessageBox(0, 'Ошибка при компилировании.', '', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 end;
end;

procedure TFormCompileFunct.ButtonLogClick(Sender: TObject);
begin
 if FileExists(Path+'CompileFunct\Result.log') then
  ShellExecute(Handle, 'open', PChar(Path+'CompileFunct\Result.log'), '', '', SW_NORMAL);
end;

end.
