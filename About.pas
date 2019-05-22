unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, pngimage;

type
  TFormAbout = class(TForm)
    ImageAbout: TImage;
    LabelAbout: TLabel;
    ButtonClose: TButton;
    Bevel1: TBevel;
    LabelName: TLabel;
    procedure ButtonCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.dfm}

procedure TFormAbout.ButtonCloseClick(Sender: TObject);
begin
 Close;
end;

end.
