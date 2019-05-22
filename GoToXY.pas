unit GoToXY;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormGoTo = class(TForm)
    LabelX: TLabel;
    EditX: TEdit;
    LabelY: TLabel;
    EditY: TEdit;
    Bevel1: TBevel;
    ButtonCancel: TButton;
    ButtonGoTo: TButton;
    procedure ButtonGoToClick(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGoTo: TFormGoTo;

implementation
 uses Main;

{$R *.dfm}

procedure TFormGoTo.ButtonGoToClick(Sender: TObject);
var X, Y:Extended;
begin
 try
  Y:=StrToFloat(EditY.Text);
 except
  begin
   MessageBox(Handle, ' оордината Y не указана или указана не верно.', '', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 end;
 try
  X:=StrToFloat(EditX.Text);
 except
  begin
   MessageBox(Handle, ' оордината X не указана или указана не верно.', '', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 end;
 Engine.CenterPos.Y:= Round((Y*Engine.Step)+FormMain.DrawPanel.Height / 2);
 Engine.CenterPos.X:=-Round((X*Engine.Step)-FormMain.DrawPanel.Width  / 2);
 OldMousePos:=Point(FormMain.DrawPanel.Width div 2, FormMain.DrawPanel.Height  div 2);
 Engine.CursorPoint.Coord:=ExtPoint(X, -Y);
end;

procedure TFormGoTo.ButtonCancelClick(Sender: TObject);
begin
 Close;
end;

end.
