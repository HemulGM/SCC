unit CGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Vcl.Buttons, sSpeedButton, sColorSelect;

type
  TFormChangeGroup = class(TForm)
    LabelName: TLabel;
    EditName: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CheckBoxUsed: TCheckBox;
    CheckBoxShowPointsLines: TCheckBox;
    CheckBoxShowPointsName: TCheckBox;
    CheckBoxShowPoint: TCheckBox;
    CheckBoxConnectPoints: TCheckBox;
    Label6: TLabel;
    Panel1: TPanel;
    ButtonCancel: TButton;
    ButtonApply: TButton;
    ComboBoxGroup: TComboBox;
    ButtonUpdate: TButton;
    ColorPickerEditorPointBrush: TsColorSelect;
    ColorPickerEditorPointPen: TsColorSelect;
    ColorPickerEditorConnectColor: TsColorSelect;
    ColorPickerEditorPointsLinesColor: TsColorSelect;
    ComboBoxPointsLinesStyle: TComboBox;
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonApplyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBoxGroupChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChangeGroup: TFormChangeGroup;
  ChangeGroup:Integer;

implementation
 uses Main;

{$R *.dfm}

procedure TFormChangeGroup.ButtonCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TFormChangeGroup.ButtonApplyClick(Sender: TObject);
begin
 if (ChangeGroup <=0) or (ChangeGroup > 100) then Exit;
 with EnginePoints.Groups[ChangeGroup] do
  begin
   Name:=EditName.Text;
   Used:=CheckBoxUsed.Checked;
   PointsLinesColor:=ColorPickerEditorPointsLinesColor.ColorValue;
   PointsLinesStyle:=TPenStyle(ComboBoxPointsLinesStyle.ItemIndex);
   PointBrush:=ColorPickerEditorPointBrush.ColorValue;
   PointPen:=ColorPickerEditorPointPen.ColorValue;
   ShowPointsLines:=CheckBoxShowPointsLines.Checked;
   ShowPointsName:=CheckBoxShowPointsName.Checked;
   ShowPoint:=CheckBoxShowPoint.Checked;
   ConnectPoints:=CheckBoxConnectPoints.Checked;
   ConnectColor:=ColorPickerEditorConnectColor.ColorValue;
  end;
 OnChangePoints; 
end;

procedure TFormChangeGroup.FormShow(Sender: TObject);
var i:Byte;
begin
 ComboBoxGroup.Clear;
 for i:=1 to 100 do
  begin
   if EnginePoints.Groups[i].Name <> '' then ComboBoxGroup.Items.Add(EnginePoints.Groups[i].Name)
   else ComboBoxGroup.Items.Add('Ãðóïïà ¹'+IntToStr(i));
  end;
 if (ChangeGroup <=0) or (ChangeGroup > 100) then ChangeGroup:=1;
 ComboBoxGroup.ItemIndex:=ChangeGroup-1;
 with EnginePoints.Groups[ChangeGroup] do
  begin
   EditName.Text:=Name;
   CheckBoxUsed.Checked:=Used;
   ColorPickerEditorPointsLinesColor.ColorValue:=PointsLinesColor;
   ComboBoxPointsLinesStyle.ItemIndex:=Ord(PointsLinesStyle);
   ColorPickerEditorPointBrush.ColorValue:=PointBrush;
   ColorPickerEditorPointPen.ColorValue:=PointPen;
   CheckBoxShowPointsLines.Checked:=ShowPointsLines;
   CheckBoxShowPointsName.Checked:=ShowPointsName;
   CheckBoxShowPoint.Checked:=ShowPoint;
   CheckBoxConnectPoints.Checked:=ConnectPoints;
   ColorPickerEditorConnectColor.ColorValue:=ConnectColor;
  end;
end;

procedure TFormChangeGroup.ComboBoxGroupChange(Sender: TObject);
begin
 ChangeGroup:=ComboBoxGroup.ItemIndex+1;
 FormShow(nil);
end;

end.
