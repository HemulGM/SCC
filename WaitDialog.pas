unit WaitDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFormWait = class(TForm)
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    ButtonCancel: TButton;
    procedure ButtonCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormWait: TFormWait;
  DoCancel:Boolean;

implementation
 uses Main;

{$R *.dfm}

procedure TFormWait.ButtonCancelClick(Sender: TObject);
begin
 DoCancel:=MessageBox(Application.Handle, 'Вы действительно хотите отменить вычисление функции?', '', MB_ICONINFORMATION or MB_YESNO) = ID_YES;
end;

end.
