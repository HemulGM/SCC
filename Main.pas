unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, XPMan, Menus, CheckLst, Buttons, ExtDlgs,
  HGM.Controls.PanelExt, pngimage, ActnList, ComCtrls, System.Actions,
  Vcl.Samples.Spin, sSpeedButton, sColorSelect, Direct2D;

type
  TFormMain = class(TForm)
    DrawPanel: TDrawPanel;
    PanelSet: TPanel;
    Bevel: TBevel;
    LabelStep: TLabel;
    XPManifest: TXPManifest;
    TimerUpSpeed: TTimer;
    TimerFPS: TTimer;
    GroupBoxPoints: TGroupBox;
    ButtonAdd: TButton;
    EditData: TEdit;
    LabelData: TLabel;
    ButtonDelete: TButton;
    TimerAutoMove: TTimer;
    MainMenu: TMainMenu;
    MenuItemFile: TMenuItem;
    MenuItemSave: TMenuItem;
    MenuItemExit: TMenuItem;
    MenuItemN1: TMenuItem;
    MenuItemOpen: TMenuItem;
    MenuItemClose: TMenuItem;
    PopupMenuPoint: TPopupMenu;
    MenuItemDeletePoint: TMenuItem;
    TimerStartMove: TTimer;
    MenuItemRenamePoint: TMenuItem;
    MenuItemTools: TMenuItem;
    MenuItemPoints: TMenuItem;
    MenuItemView: TMenuItem;
    MenuItemCursor: TMenuItem;
    MenuItemGrid: TMenuItem;
    MenuItemZeroPoint: TMenuItem;
    MenuItemAdvInf: TMenuItem;
    MenuItemToZero: TMenuItem;
    MenuItemN2: TMenuItem;
    MenuItemN3: TMenuItem;
    MenuItemN4: TMenuItem;
    MenuItemPointsTool: TMenuItem;
    MenuItemPolyPoints: TMenuItem;
    MenuItemShowPoints: TMenuItem;
    MenuItemDeletePoints: TMenuItem;
    MenuItemFunction: TMenuItem;
    MenuItemDrawFunction: TMenuItem;
    MenuItemToolBar: TMenuItem;
    PopupMenuMain: TPopupMenu;
    SavePictureDialogFrame: TSavePictureDialog;
    MenuItemSavePic: TMenuItem;
    MenuItemN5: TMenuItem;
    PanelPoints: TPanelExt;
    LabelGID: TLabel;
    ButtonCheckAll: TSpeedButton;
    ButtonUnCheckAll: TSpeedButton;
    CheckListBoxPoints: TCheckListBox;
    PanelTMP1: TPanel;
    CheckBoxPointsLines: TCheckBox;
    CheckBoxPointsName: TCheckBox;
    CheckBoxPointsPoint: TCheckBox;
    CheckBoxPointsConnect: TCheckBox;
    PopupMenuGroups: TPopupMenu;
    MenuItemChangeGroup: TMenuItem;
    MenuItemAddPoint: TMenuItem;
    MenuItemGroups: TMenuItem;
    MenuItemFunctions: TMenuItem;
    PanelPointTool: TPanelExt;
    EditPointName: TEdit;
    MenuItemN6: TMenuItem;
    MenuItemN7: TMenuItem;
    MenuItemFullScreen: TMenuItem;
    MenuItemMM: TMenuItem;
    PopupMenuContext: TPopupMenu;
    ActionList: TActionList;
    ActionScreenShot: TAction;
    ActionExit: TAction;
    ActionFullScreen: TAction;
    ActionPointGroup: TAction;
    ActionPointGroupEdit: TAction;
    ActionShowPoints: TAction;
    ActionPointConnect: TAction;
    ActionDeletePointsOfGroup: TAction;
    ActionFunctionsEdit: TAction;
    ActionDrawFunctions: TAction;
    ActionGoToCenter: TAction;
    ActionSHMainMenu: TAction;
    MenuItemHelp: TMenuItem;
    MenuItemAbout: TMenuItem;
    MenuItemActionGoToCenter: TMenuItem;
    MenuItemActionDrawFunctions: TMenuItem;
    MenuItemActionShowPoints: TMenuItem;
    MenuItemActionPointConnect: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ActionGoToXY: TAction;
    MenuItemGoToXY: TMenuItem;
    MenuItemN8: TMenuItem;
    MenuItemGoToXY1: TMenuItem;
    StatusBar: TStatusBar;
    TimerInfo: TTimer;
    PanelInfo: TPanelExt;
    TimerHideInfo: TTimer;
    LabelPBrush: TLabel;
    LabelPFrame: TLabel;
    LabelPLines: TLabel;
    DXTimer: TTimer;
    SpinEditorStep: TSpinEdit;
    ColorPickerEditorPBrush: TsColorSelect;
    ColorPickerEditorPFrame: TsColorSelect;
    ColorPickerEditorPLines: TsColorSelect;
    SpinEditorStepSize: TSpinEdit;
    SpinEditorPenSize: TSpinEdit;
    SpinEditorCFission: TSpinEdit;
    ColorPickerEditorBGColor: TsColorSelect;
    PNGButtonPanelHide: TButton;
    ButtonClosePointsPanel: TButton;
    ButtonCloseRenamer: TButton;
    CheckBoxCName: TCheckBox;
    CheckBoxZPoint: TCheckBox;
    CheckBoxGrid: TCheckBox;
    CheckBoxCLines: TCheckBox;
    procedure DrawPanelPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpinEditorStepChange(Sender: TObject);
    procedure DrawPanelCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
    procedure SpinEditorStepSizeChange(Sender: TObject);
    procedure DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TimerUpSpeedTimer(Sender: TObject);
    procedure SpinEditorPenSizeChange(Sender: TObject);
    procedure DrawPanelMouseLeave(Sender: TObject);
    procedure DrawPanelMouseEnter(Sender: TObject);
    procedure TimerFPSTimer(Sender: TObject);
    procedure SpinEditorCFissionChange(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
    procedure TimerAutoMoveTimer(Sender: TObject);
    procedure MenuItemDeletePointClick(Sender: TObject);
    procedure TimerStartMoveTimer(Sender: TObject);
    procedure MenuItemRenamePointClick(Sender: TObject);
    procedure EditPointNameKeyPress(Sender: TObject; var Key: Char);
    procedure DrawPanelMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DrawPanelMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DrawPanelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckListBoxPointsClickCheck(Sender: TObject);
    procedure CheckListBoxPointsClick(Sender: TObject);
    procedure ButtonCheckAllClick(Sender: TObject);
    procedure ButtonUnCheckAllClick(Sender: TObject);
    procedure PanelPointsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PanelPointsMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure MenuItemToolBarClick(Sender: TObject);
    procedure MenuItemCursorClick(Sender: TObject);
    procedure MenuItemGridClick(Sender: TObject);
    procedure MenuItemZeroPointClick(Sender: TObject);
    procedure MenuItemAdvInfClick(Sender: TObject);
    procedure CheckBoxPointsLinesClick(Sender: TObject);
    procedure ButtonClosePointsPanelClick(Sender: TObject);
    procedure ButtonCloseRenamerClick(Sender: TObject);
    procedure PanelPointToolPaint(Sender: TObject);
    procedure PanelPointsPaint(Sender: TObject);
    procedure DrawPanelClick(Sender: TObject);
    procedure CheckListBoxPointsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MenuItemToolsClick(Sender: TObject);
    procedure MenuItemViewClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure ActionScreenShotExecute(Sender: TObject);
    procedure ActionExitExecute(Sender: TObject);
    procedure ActionFullScreenExecute(Sender: TObject);
    procedure ActionPointGroupExecute(Sender: TObject);
    procedure ActionPointGroupEditExecute(Sender: TObject);
    procedure ActionShowPointsExecute(Sender: TObject);
    procedure ActionPointConnectExecute(Sender: TObject);
    procedure ActionDeletePointsOfGroupExecute(Sender: TObject);
    procedure ActionFunctionsEditExecute(Sender: TObject);
    procedure ActionDrawFunctionsExecute(Sender: TObject);
    procedure ActionGoToCenterExecute(Sender: TObject);
    procedure ActionSHMainMenuExecute(Sender: TObject);
    procedure MenuItemAboutClick(Sender: TObject);
    procedure CheckBoxGridClick(Sender: TObject);
    procedure CheckBoxZPointClick(Sender: TObject);
    procedure CheckBoxCLinesClick(Sender: TObject);
    procedure CheckBoxCNameClick(Sender: TObject);
    procedure PNGButtonPanelHideClick(Sender: TObject);
    procedure ActionGoToXYExecute(Sender: TObject);
    procedure ColorPickerEditorBGColorChange(Sender: TObject);
    procedure TimerInfoTimer(Sender: TObject);
    procedure PanelInfoPaint(Sender: TObject);
    procedure TimerHideInfoTimer(Sender: TObject);
    procedure ColorPickerEditorPBrushChange(Sender: TObject);
    procedure DXTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  //-----------Point Engine-----------------------------------------------------

  TExtPoint = record                                                            //����������� �����
    X: Extended;                                                                   //X - ������������� ����
    Y: Extended;                                                                   //Y - ������������� ����
  end;

  TUserPoint = record                                                           //���������������� ����� (� ��� �� ������)
    Used: Boolean;                                                                 //������������ �� ��� �����
    Coord: TExtPoint;                                                              //���������� ����� ������������ [0:0]
    Name: string;                                                                  //�������� �����
    SelfInfoRect: TRect;                                                           //������������� � ���. � �����
  end;

  TUserPoints = array of TUserPoint;                                            //������ �����

  TGroupOfUserPoints = record                                                   //������ ����� �� ������ �����������
    Points: TUserPoints;                                                           //������ �����
    Name: string[255];                                                             //�������� ������ (�� ���������: ������ �)
    Used: Boolean;                                                                 //�������� ����� �� ��
    PointsLinesColor: TColor;                                                      //���� ������ ����� �����
    PointsLinesStyle: TPenStyle;                                                   //����� ������ ����� �����
    PointBrush: TColor;                                                            //���� ������� �����
    PointPen: TColor;                                                              //���� ������� �����
    ShowPointsLines: Boolean;                                                      //���������� ������ ����� �����
    ShowPointsName: Boolean;                                                       //���������� ������� �����
    ShowPoint: Boolean;                                                            //���������� �����
    ConnectPoints: Boolean;                                                        //��������� �����
    ConnectColor: TColor;                                                          //���� ����� ���������� �����
  end;

  TGroupsOfUserPoints = array[1..100] of TGroupOfUserPoints;                    //100 ����� �����

  TEnginePoints = class                                                         //������ � (�����)
  public
    Groups: TGroupsOfUserPoints;                                                  //100 ����� �����
    function Add(Name: string; Coord: TExtPoint; GID: Byte): TExtPoint;              //�������� ����� � ������
    function Delete(Coord: TExtPoint): Boolean;                                    //������� ����� �� ���. ������
    function DeletePointUnderCursor: Boolean;                                     //������� ����� ��� ��������
    function Exists(Coord: TExtPoint): Integer; overload;                          //���������� ������������ ����� � ������� ��������� (0 - ���� ��� �����)
    function Exists(AGID: Byte; Coord: TExtPoint): Integer; overload;               //���������� ������������ ����� � ������� ��������� (0 - ���� ��� �����)
    function UnderCursor(var ID, GID: Byte; var FindPoint: TUserPoint): Boolean;    //�������� ���������� � ����� ��� ��������
  end;
  //-----------���������--------------------------------------------------------

  TParameters = record                                                          //���������
    LineSize: Byte;                                                                //������ (�������) ����� ������� ���������
    PolyLineSize: Byte;                                                            //������ (�������) ����� ���������� �����
    ShowUserPoints: Boolean;                                                       //���������� ���������������� �����
    ShowCursor: Boolean;                                                           //���������� ������
    GridColor: TColor;                                                             //���� �����
    BackgroundColor: TColor;                                                       //���� ����
    AxisColor: TColor;                                                             //���� ����
    ZeroPoint: Boolean;                                                            //���������� ����� ������ ���������
    DrawGrid: Boolean;                                                             //���������� �����
    ZeroPointColor: TColor;                                                        //���� ����� ������ ���������
    FissColor: TColor;                                                             //���� �������
    FissFontColor: TColor;                                                         //���� ������� �������
    InfoFontColor: TColor;                                                         //���� ���.
    ShowAdvInfo: Boolean;                                                          //���������� ���. ���.
    DrawFunction: Boolean;                                                         //�������� �������
    ConnectPoints: Boolean;                                                        //��������� �����. �����
    CursorLinesStyle: TPenStyle;                                                   //����� ������ ����� �����
    PointNamePen: TColor;                                                          //���� ������� ������� ����� � �������
    PointNameBrush: TColor;                                                        //���� ������� ������� ����� � �������
    PointNameFont: TColor;                                                         //���� ������ ������� �����
    CursorPen: TColor;                                                             //���� ������� �������
    CursorBrush: TColor;                                                           //���� ������� �������
    CursorLines: Boolean;                                                          //���������� ������ ����� �������
    CursorLinesColor: TColor;                                                      //���� ������ ����� �������
    CursorName: Boolean;                                                           //���������� ������� �������
    FunctionWidth: Byte;                                                           //������� ����� �������� �������
    DefaultFontSize: Byte;                                                         //������ ������ �� ���������
  end;
  //-----------Function Engine--------------------------------------------------

  TFunction = function(x: Extended): Extended;                                   //������� ����������� �������

  TFunctionEngine = record                                                      //������ �������
    Points: array of TExtPoint;                                                    //�����, ���������� ����� ����������
    PointsAmount: Cardinal;                                                        //���������� �����
    Name: string;                                                                  //�������� (�� �����������)
    ExFunction: TFunction;                                                         //�������
    Computed: Boolean;                                                             //��������� �� �������
    MinX: Extended;                                                                //����������� �������
    MaxX: Extended;                                                                //������������ �������
    StepX: Extended;                                                               //��� X
    LineColor: TColor;                                                             //���� �������
    Use: Boolean;                                                                  //�������� ������
    ID: Cardinal;
  end;

  TFunctions = class                                                            //������ �� (������ �������)
  public
    FunctionsEngines: array of TFunctionEngine;                                   //������ ������� ��� ����������
    function Add(YourFunction: TFunctionEngine): Word;                             //�������� �������
    function Delete(FID: Integer): Boolean;                                        //������� �������
    procedure ComputeFunction(var YourFunction: TFunctionEngine);                 //��������� ����� ������� �������
  private
    function GetCount: Word;
    procedure SetCount(Value: Word);
  published
    property Count: Word read GetCount write SetCount default 0;                 //���-�� �������
  end;
  //-----------��� "�������� � ��"----------------------------------------------

  TQuarter = (tqNo, tqI, tqII, tqIII, tqIV, tqI_II, tqII_III, tqIII_IV, tqIV_I); //��������
  //tqNo  -  �� ����������
  //tqI   -  I ��������
  //tqII  -  II ��������
  //tqIII -  III ��������
  //tqIV  -  IV ��������
  //tqI_II   - �� ������������� ��� Y
  //tqII_III - �� ������������� ��� X
  //tqIII_IV - �� ������������� ��� Y
  //tqIV_I   - �� ������������� ��� X
  //-----------Engine SC--------------------------------------------------------

  TEngine = class                                                               //������ �� (������� ���������)
  public
    Parameters: TParameters;                                                      //���������
    StepSize: Word;                                                               //������ (������) ����������� ��. �������
    BordersOfTheMoving: Byte;                                                     //������ ����� � ������� ��������� ���� �����������
    FissionCount: Byte;                                                           //���-�� ������� ��. �������
    Draw: TBitmap;                                                                //���������
    TextFunction: string;                                                         //��������� ������������� ���������������� �������
    CursorPoint: TUserPoint;                                                      //��������� �������
    CenterPos: TPoint;                                                            //��������� [0:0] �����
    procedure DrawExFunction(YourFunction: TFunctionEngine);                      //��������� ������� �������
    procedure SetCenter;
    constructor Create;
  private
    AHeight: Word;
    AWidth: Word;
    AStep: Word;
    procedure SetHeight(Value: Word);
    procedure SetWidth(Value: Word);
    procedure SetStep(Value: Word);
    function GetQuarter: TQuarter;
    function GetGID: Byte;
    function GetCurPoint: TExtPoint;
  published
    property Step: Word read AStep write SetStep;                                 //������ ��. �������
    property Height: Word read AHeight write SetHeight default 0;                 //������ (������)
    property Width: Word read AWidth write SetWidth default 0;                    //������ (������)
    property GID: Byte read GetGID default 1;                                     //��������� ������
    property Quarter: TQuarter read GetQuarter;                                   //��������, � ������� ��������� ������
    property CurPoint: TExtPoint read GetCurPoint;                                //��������� ������� ������������ ��
  end;
  //----------------------------------------------------------------------------

var
  FormMain: TFormMain;                                                           //����� (=))
  Engine: TEngine;                                                               //������� ���������
  EngineFunctions: TFunctions;                                                   //������� �������� �������
  EnginePoints: TEnginePoints;                                                   //������� �����
  MouseIsDown: Boolean;                                                          //������� ������ ���� ������
  OldMousePos: TPoint;                                                           //��������� ������� ������������ ������
  FPS: Integer;                                                                  //FPS
  TextFPS: string;                                                               //��������� ������������� �������� FPS
  UPoints: array[0..999] of TPoint;                                                      //��������� ������� ��� �����. �����
  RenamedPoint, RenamedGroup: Byte;                                              //ID ������������������ �����/������
  IsRename: Boolean;                                                             //����������������
  CurAdd: Integer;                                                               //��������'� ����� FPS
  DrawFPS: Boolean;                                                              //������������ ������� �������� FPS
  InfoText: string;                                                              //�������������� ����� �����������
  //-------------��������� ��� ������������� �������������� ������--------------
  IsFullScreen: Boolean;                                                         //������ �� ���� �����
  OldL: Integer;                                                                 //������ ��������� ���� �����
  OldT: Integer;                                                                 //������ ��������� ���� ������
  OldW: Integer;                                                                 //������ ������ ����
  OldH: Integer;                                                                 //������ ������ ����
  //----------------------------------------------------------------------------

function ExtPoint(AX, AY: Extended): TExtPoint;                                   //X, Y Extended ���� � TExtPoint

procedure IncEx(var I: Extended); overload;                                      //������������� �����. ������� Inc

procedure DecEx(var I: Extended); overload;                                      //������������� �����. ������� Inc

procedure IncEx(var I: Extended; B: Extended); overload;                          //������������� �����. ������� Dec

procedure DecEx(var I: Extended; B: Extended); overload;                          //������������� �����. ������� Dec

function EFun(Name: string; Func: TFunction; MinX, MaxX, StepX: Extended; LColor: TColor; Use: Boolean): TFunctionEngine;

function QuarterToStr(Quarter: TQuarter): string;                                 //��������� ������������� ���� TQuarter (��������)

procedure ShowInfo(IText: string); overload;

procedure ShowInfo(IText: string; TOut: Integer); overload;

//-------------������ "������ �����"--------------------------------------------
procedure ShowPointsPanel;                                                      //�������� ������

procedure OnChangePoints;                                                       //�������� ������ �����
//------------------------------------------------------------------------------

implementation

uses
  Math, Functions, MMSystem, CGroup, CFunction, WaitDialog, About, GoToXY;

type
  PPoints = ^TPoints;                                                           //��������� �� ������ �����

  TPoints = array[0..0] of TPoint;

{$R *.dfm}

procedure ShowInfo(IText: string); overload;
begin
  ShowInfo(IText, 5000);
end;

procedure ShowInfo(IText: string; TOut: Integer); overload;
begin
  if InfoText = '' then
    InfoText := IText
  else
    InfoText := InfoText + ', ' + IText;
  FormMain.TimerHideInfo.Enabled := False;
  FormMain.TimerHideInfo.Interval := TOut;
  FormMain.PanelInfo.Show;
  FormMain.PanelInfo.Repaint;
  FormMain.TimerHideInfo.Enabled := True;
end;

procedure TEngine.SetCenter;
begin
  CenterPos := Point(Width div 2, Height div 2);
  ShowInfo('�� � ������');
end;

function QuarterToStr(Quarter: TQuarter): string;
begin
  case Quarter of
    tqNo:
      Result := '��������: �����';
    tqI:
      Result := '��������: I';
    tqII:
      Result := '��������: II';
    tqIII:
      Result := '��������: III';
    tqIV:
      Result := '��������: IV';
    tqI_II:
      Result := '��������: I - II';
    tqII_III:
      Result := '��������: II - III';
    tqIII_IV:
      Result := '��������: III - IV';
    tqIV_I:
      Result := '��������: IV - I';
  end;
end;

function TEngine.GetCurPoint: TExtPoint;
begin
  Result.X := (OldMousePos.X - CenterPos.X) / Step;
  Result.Y := -(OldMousePos.Y - CenterPos.Y) / Step;
end;

function TEngine.GetQuarter: TQuarter;
begin
  Result := tqNo;
 //�������������� "��������"
  if (OldMousePos.X - CenterPos.X = 0) and (OldMousePos.Y - CenterPos.Y = 0) then
    Result := tqNo
  else if (OldMousePos.X - CenterPos.X = 0) and (OldMousePos.Y - CenterPos.Y < 0) then
    Result := tqI_II
  else if (OldMousePos.X - CenterPos.X < 0) and (OldMousePos.Y - CenterPos.Y = 0) then
    Result := tqII_III
  else if (OldMousePos.X - CenterPos.X = 0) and (OldMousePos.Y - CenterPos.Y > 0) then
    Result := tqIII_IV
  else if (OldMousePos.X - CenterPos.X > 0) and (OldMousePos.Y - CenterPos.Y = 0) then
    Result := tqIV_I
  else //��������, ��������������� "��������"
if (OldMousePos.X - CenterPos.X > 0) and (OldMousePos.Y - CenterPos.Y < 0) then
    Result := tqI
  else if (OldMousePos.X - CenterPos.X < 0) and (OldMousePos.Y - CenterPos.Y < 0) then
    Result := tqII
  else if (OldMousePos.X - CenterPos.X < 0) and (OldMousePos.Y - CenterPos.Y > 0) then
    Result := tqIII
  else if (OldMousePos.X - CenterPos.X > 0) and (OldMousePos.Y - CenterPos.Y > 0) then
    Result := tqIV;
end;

procedure OnChangePoints;
var
  i: Byte;
  OldSel: Integer;
begin
  with FormMain do
  begin
    OldSel := CheckListBoxPoints.ItemIndex;
    CheckListBoxPoints.Clear;
    for i := 1 to 100 do
    begin
      if EnginePoints.Groups[i].Name <> '' then
        CheckListBoxPoints.Checked[CheckListBoxPoints.Items.Add(EnginePoints.Groups[i].Name)] := EnginePoints.Groups[i].Used
      else
        CheckListBoxPoints.Checked[CheckListBoxPoints.Items.Add(Format('������ � %d', [i]))] := EnginePoints.Groups[i].Used;
    end;
    CheckListBoxPoints.ItemIndex := OldSel;
  end;
end;

procedure ShowPointsPanel;
begin
  with FormMain do
  begin
    OnChangePoints;
    PanelPoints.Top := DrawPanel.Height - (PanelPoints.Height + 30);
    PanelPoints.Show;
  end;
end;

function EFun(Name: string; Func: TFunction; MinX, MaxX, StepX: Extended; LColor: TColor; Use: Boolean): TFunctionEngine;
begin
  Result.Name := Name;
  Result.ExFunction := Func;
  Result.MinX := MinX;
  Result.MaxX := MaxX;
  Result.StepX := StepX;
  Result.LineColor := LColor;
  Result.Use := Use;
  Result.PointsAmount := 0;
  Result.Computed := False;
end;

procedure TFunctions.ComputeFunction(var YourFunction: TFunctionEngine);
var
  X, Y, XXMax, XXMin: Extended;
  i, PUp, PupInc: Cardinal;
  DoRetry, IsError: Boolean;
label
  Retry;
begin
  if YourFunction.Computed then
    Exit;                                            //���� ��� �������� - �������
  ShowInfo('���������� ������� �������...');
  FormWait.ProgressBar1.Position := 0;
  DoCancel := False;
  FormWait.Show;
 {try
  YourFunction.ExFunction(1);
 except
  begin
   YourFunction.Use:=False;
  end;
 end;   }
  YourFunction.PointsAmount := 0;
  if YourFunction.StepX = 0 then
    Exit;
  XXMin := Min(YourFunction.MinX, YourFunction.MaxX);
  XXMax := Max(YourFunction.MinX, YourFunction.MaxX);
  X := XXMin;
  Y := X;
  PUp := Round((Abs(XXMax - X) / YourFunction.StepX) / 100);
  if PUp <= 0 then
    PUp := 1;
  PupInc := 0;
  while X <= XXMax do
  begin
    FormWait.ProgressBar1.Position := Round(PupInc / PUp);
Retry:
    Application.ProcessMessages;                                           //������ ����, ���� ������������ ����� ��������� (��� ����� �� ������� =))
    if DoCancel then                                                             //���������� �������� �������������
    begin
      YourFunction.Use := False;
      FormWait.Close;
      Exit;
    end;
    DoRetry := False;
    IsError := False;
    try
      Y := YourFunction.ExFunction(X);                                              //��������� �������� �� ���. �������
    except                                                                       //������ ��� ����������: ��������� ������������ (��������, ���������, ����������)
      begin
        case MessageBox(Application.Handle, PChar(Format('��������� ������ ��� ���������� ������� �������.'#13#10' ��� X = %g', [X])), '��������', MB_ICONEXCLAMATION or MB_ABORTRETRYIGNORE) of
          idAbort:                                                                  //������ ����������
            begin
              YourFunction.Use := False;
              FormWait.Close;
              Exit;
            end;
          idRetry:
            DoRetry := True;                                                   //���������
            idIgnore:
            IsError := True;                                                  //���������� �����
        end;
      end;
    end;
    if DoRetry then
      goto Retry;                                                  //���� ������ - ��������� ����� �����
    if not IsError then                                                          //���� ��� ������ ��������� �����
    begin
      i := Length(YourFunction.Points) + 1;                                          //��������� �����
      SetLength(YourFunction.Points, i);                                         //
      YourFunction.Points[i - 1] := ExtPoint(X, Y);                                  //
      Inc(YourFunction.PointsAmount);                                            //����������� ���-�� �����
    end;
    IncEx(X, YourFunction.StepX);                                                //����������� X �� �������� ���
    Inc(PupInc);                                                                 //�������� ����������
  end;
  FormWait.ProgressBar1.Position := 100;                                           //���������
  FormWait.Close;
  YourFunction.Computed := True;                                                   //������ �������� �������
  ShowInfo('������ �������� �������');
end;

procedure TFunctions.SetCount(Value: Word);
begin
  SetLength(FunctionsEngines, Value);
end;

function TFunctions.GetCount: Word;
begin
  Result := Length(FunctionsEngines);
end;

function TFunctions.Delete(FID: Integer): Boolean;
begin
  Result := False;
  if FID > Length(FunctionsEngines) then
    Exit;
  FunctionsEngines[FID].Use := False;
  Result := True;
  ShowInfo('������ ������');
end;

function TFunctions.Add(YourFunction: TFunctionEngine): Word;
var
  i: Word;
begin
  if Length(FunctionsEngines) > 0 then
    for i := 0 to Length(FunctionsEngines) - 1 do
    begin
      if FunctionsEngines[i].Use then
        Continue;
      YourFunction.Computed := False;
      YourFunction.ID := i;
      FunctionsEngines[i] := YourFunction;
      ShowInfo(Format('������ "%s" ��������', [YourFunction.Name]));
      ComputeFunction(FunctionsEngines[i]);
      Result := i;
      Exit;
    end;
  i := Length(FunctionsEngines);
  SetLength(FunctionsEngines, i + 1);
  YourFunction.ID := i;
  YourFunction.Computed := False;
  FunctionsEngines[i] := YourFunction;
  ShowInfo(Format('������ "%s" ��������', [YourFunction.Name]));
  ComputeFunction(FunctionsEngines[i]);
  Result := i;
end;

function ChangeSimToPoint(ACText: string): string;
var
  i: Byte;
begin
  Result := ACText;
  for i := 1 to Length(Result) do
    if Result[i] = ',' then
      Result[i] := '.';
end;

procedure IncEx(var I: Extended);
begin
  I := I + 1;
end;

procedure DecEx(var I: Extended);
begin
  I := I - 1;
end;

procedure IncEx(var I: Extended; B: Extended);
begin
  I := I + B;
end;

procedure DecEx(var I: Extended; B: Extended);
begin
  I := I - B;
end;

function TEngine.GetGID: Byte;
begin
  Result := FormMain.CheckListBoxPoints.ItemIndex + 1;
  if not (Result in [1..100]) then
    Result := 1;
  FormMain.LabelGID.Caption := Format('������ � %d', [Result]);
end;

function ExtPoint(AX, AY: Extended): TExtPoint;
begin
  with Result do
  begin
    X := AX;
    Y := AY;
  end;
end;

procedure TEngine.SetStep(Value: Word);
begin
  if Value >= 1800 then
    Value := 1800;
  AStep := Value;
end;

function TEnginePoints.UnderCursor(var ID, GID: Byte; var FindPoint: TUserPoint): Boolean;
var
  FID: Integer;
begin
  Result := False;
  ID := 0;
  GID := 0;
  FID := Exists(Engine.CursorPoint.Coord);
  if FID < 0 then
    Exit;
  ID := FID;
  GID := Engine.GID;
  FindPoint := Groups[GID].Points[FID];
  Result := True;
end;

function TEnginePoints.Exists(Coord: TExtPoint): Integer;
var
  i, AGID: byte;
  Diff, R: Extended;
  PID: Integer;
begin
  Result := -1;
  AGID := Engine.GID;
  R := 10 / Engine.Step;
  if Length(Groups[AGID].Points) <= 0 then
    Exit;
  Diff := Abs(Coord.X - Groups[AGID].Points[0].Coord.X) + Abs(Coord.Y - Groups[AGID].Points[0].Coord.Y);
  PID := 0;
  if Length(Groups[AGID].Points) = 1 then
  begin
   //Result:=Diff < R;
    if Diff < R then
      Result := PID;
    Exit;
  end;
  for i := Length(Groups[AGID].Points) - 1 downto 1 do
  begin
    if not Groups[AGID].Points[i].Used then
      Continue;
    if Diff > Abs(Coord.X - Groups[AGID].Points[i].Coord.X) + Abs(Coord.Y - Groups[AGID].Points[i].Coord.Y)
      then
    begin
      PID := i;
      Diff := Abs(Coord.X - Groups[AGID].Points[i].Coord.X) + Abs(Coord.Y - Groups[AGID].Points[i].Coord.Y);
    end;
  end;
  if Diff < R then
    Result := PID
  else
    Result := -1;
 //Result:=Diff < R;
end;

function TEnginePoints.Exists(AGID: Byte; Coord: TExtPoint): Integer;
var
  i: byte;
  Diff, R: Extended;
  PID: Integer;
begin
  Result := -1;
  R := 10 / Engine.Step;
  if Length(Groups[AGID].Points) <= 0 then
    Exit;
  Diff := Abs(Coord.X - Groups[AGID].Points[0].Coord.X) + Abs(Coord.Y - Groups[AGID].Points[0].Coord.Y);
  PID := 0;
  if Length(Groups[AGID].Points) = 1 then
  begin
   //Result:=Diff < R;
    if Diff < R then
      Result := PID;
    Exit;
  end;
  for i := Length(Groups[AGID].Points) - 1 downto 1 do
  begin
    if not Groups[AGID].Points[i].Used then
      Continue;
    if Diff > Abs(Coord.X - Groups[AGID].Points[i].Coord.X) + Abs(Coord.Y - Groups[AGID].Points[i].Coord.Y)
      then
    begin
      PID := i;
      Diff := Abs(Coord.X - Groups[AGID].Points[i].Coord.X) + Abs(Coord.Y - Groups[AGID].Points[i].Coord.Y);
    end;
  end;
  if Diff < R then
    Result := PID
  else
    Result := -1;
 //Result:=Diff < R;
end;

function TEnginePoints.DeletePointUnderCursor: Boolean;
begin
  Result := Delete(Engine.CursorPoint.Coord);
end;

function TEnginePoints.Delete(Coord: TExtPoint): Boolean;
var
  PID: Integer;
begin
  PID := Exists(Coord);
  if PID >= 0 then
  begin
    Result := True;
    Groups[Engine.GID].Points[PID].Used := False;
    ShowInfo(Format('����� "%s" �������.', [Groups[Engine.GID].Points[PID].Name]));
    OnChangePoints;
  end
  else
    Result := False;
end;

function TEnginePoints.Add(Name: string; Coord: TExtPoint; GID: Byte): TExtPoint;
var
  i: Integer;
begin
  if Length(Groups[GID].Points) > 0 then
    for i := 0 to Length(Groups[GID].Points) do
    begin
      if Groups[GID].Points[i].Used then
        Continue;
      Groups[GID].Points[i].Name := Name;
      Groups[GID].Points[i].Coord := ExtPoint(Coord.X, -Coord.Y);
      Groups[GID].Points[i].Used := True;
      Result := Groups[GID].Points[i].Coord;
      ShowInfo(Format('����� "%s" ���������.', [Name]));
    //OnChangePoints;
      Exit;
    end;
  i := Length(Groups[GID].Points);
  SetLength(Groups[GID].Points, i + 1);
  Groups[GID].Points[i].Used := True;
  Groups[GID].Points[i].Name := Name;
  Groups[GID].Points[i].Coord := ExtPoint(Coord.X, -Coord.Y);
  Result := Groups[GID].Points[i].Coord;
  ShowInfo(Format('����� "%s" ���������.', [Name]));
 //OnChangePoints;
end;

constructor TEngine.Create;
begin
  inherited;
  EngineFunctions := TFunctions.Create;
  EnginePoints := TEnginePoints.Create;
  Draw := TBitmap.Create;
  Draw.Canvas.Font.Name := 'Segoe UI';
  StepSize := 2;
  FissionCount := 2;
  Step := 20;
  CursorPoint.Name := '������';
  BordersOfTheMoving := 20;
  with Parameters do
  begin
    LineSize := 1;
    ShowCursor := True;
    ShowUserPoints := False;
    BackgroundColor := clWhite;
    AxisColor := clBlack;
    GridColor := $00EAEAEA;
    ZeroPoint := True;
    DrawGrid := True;
    ZeroPointColor := clBlack;
    FissColor := clBlack;
    FissFontColor := clBlack;
    InfoFontColor := $00333333;
    DrawFunction := False;
    ConnectPoints := False;
    PolyLineSize := 2;
    CursorLinesStyle := psDash;
    PointNamePen := $00226DA8;
    PointNameBrush := $0080DDFF;
    CursorPen := clBlue;
    CursorBrush := clYellow;
    CursorLines := True;
    CursorLinesColor := clBlue;
    CursorName := True;
    PointNameFont := clBlack;
    FunctionWidth := 2;
    DefaultFontSize := 8;
  end;
  ShowInfo('������� ���������');
end;

procedure TEngine.SetHeight(Value: Word);
begin
  AHeight := Value;
  Draw.Height := Value;
end;

procedure TEngine.SetWidth(Value: Word);
begin
  AWidth := Value;
  Draw.Width := Value;
end;

procedure TEngine.DrawExFunction(YourFunction: TFunctionEngine);
var
  i: Cardinal;
  RPoint: TPoint;
begin
  if not YourFunction.Computed then
    Exit;
  with TDirect2DCanvas.Create(Draw.Canvas, Rect(0, 0, Draw.Width, Draw.Height)) do
  begin
    BeginDraw;
    Pen.Width := Parameters.FunctionWidth;
    Pen.Color := YourFunction.LineColor;                                 //���� �������
    try
      MoveTo(Round(YourFunction.Points[0].X * Step) + CenterPos.X, -Round(YourFunction.Points[0].Y * Step) + CenterPos.Y);
    except
      begin
        YourFunction.Use := False;
        Exit;
      end;
    end;
    for i := 1 to YourFunction.PointsAmount - 1 do
    begin
      try
        LineTo(Round(YourFunction.Points[i].X * Step) + CenterPos.X, -Round(YourFunction.Points[i].Y * Step) + CenterPos.Y);
      except
        Continue;
      end;
    end;

   //�������
    Pen.Color := Parameters.PointNamePen;
    Brush.Color := Parameters.PointNameBrush;
    Pen.Width := 1;
    RPoint := Point(Round(YourFunction.Points[0].X * Step) + CenterPos.X, -Round(YourFunction.Points[0].Y * Step) + CenterPos.Y);
    if (RPoint.X < 0) or (RPoint.Y < 0) or (RPoint.X > Width - 100) or (RPoint.Y > Height - 20)
      then
      RPoint := Point(10, Height div 2);
    RPoint.Y := RPoint.Y + YourFunction.ID * 21;
    Rectangle(RPoint.X, RPoint.Y, RPoint.X + 100, RPoint.Y + 20);
    TextOut(RPoint.X + 3, RPoint.Y + 3, YourFunction.Name);
    Pen.Color := YourFunction.LineColor;
    Brush.Color := YourFunction.LineColor;
    Ellipse(RPoint.X + 80, RPoint.Y + 5, RPoint.X + 90, RPoint.Y + 15);
    EndDraw;
    Free;
  end;
end;

//---------������ �������� � �������, ��������������� �������� �� ������--------

procedure DrawingGrid;
var
  i: Integer;
begin
  with Engine, Engine.Parameters, EnginePoints, Engine.Draw.Canvas do
  begin
    Pen.Width := LineSize;                                             //������� �����
    Pen.Color := GridColor;                                            //���� �����
    i := CenterPos.X;
    repeat
      MoveTo(i, 0);
      LineTo(i, Height + 1);
      Dec(i, Step);
    until i <= 0;
    i := CenterPos.X;
    repeat
      MoveTo(i, 0);
      LineTo(i, Height + 1);
      Inc(i, Step);
    until i >= Width;
    i := CenterPos.Y;
    repeat
      MoveTo(0, i);
      LineTo(Width + 1, i);
      Dec(i, Step);
    until i <= 0;
    i := CenterPos.Y;
    repeat
      MoveTo(0, i);
      LineTo(Width + 1, i);
      Inc(i, Step);
    until i >= Height;
  end;
end;

procedure DrawingAxis;
begin
  with Engine, Engine.Parameters, Engine.Draw.Canvas do
  begin
    Pen.Width := LineSize;                                             //������� �����
    Pen.Color := AxisColor;                                            //���� ��. ����
   //������� ���
    MoveTo(0, CenterPos.Y);                                          //�����
    LineTo(Width, CenterPos.Y);                                      //������
    MoveTo(CenterPos.X, 0);                                          //�����
    LineTo(CenterPos.X, Height);                                     //����
   //������� �����
    MoveTo(CenterPos.X - 3, 7);
    LineTo(CenterPos.X, 0);
    LineTo(CenterPos.X + 4, 8);
   //������� ������
    MoveTo(Width - 7, CenterPos.Y + 3);
    LineTo(Width, CenterPos.Y);
    LineTo(Width - 8, CenterPos.Y - 3);
  end;
end;

procedure DrawingZeroPoint;
begin
  with Engine, Engine.Parameters, Engine.Draw.Canvas do
  begin
    Brush.Color := ZeroPointColor;                                     //���� ����� ������ ���������
    Ellipse(Rect(CenterPos.X - 2, CenterPos.Y - 2, CenterPos.X + 3, CenterPos.Y + 3));
  end;
end;

procedure DrawingInfo;
begin
  with Engine, Engine.Parameters, Engine.Draw.Canvas do
  begin
    Font.Color := InfoFontColor;                                       //���� ������ ���.
    Brush.Style := bsClear;                                            //����� ��� ����
    TextOut(CenterPos.X - 15, 0, 'Y');                                 //Y
    TextOut(Width - 10, CenterPos.Y - 20, 'X');                          //X
    TextOut(10, 10, 'FPS: ' + TextFPS);                                //FPS
    TextOut(10, 25, Format('X %g', [CurPoint.X]));
    TextOut(10, 40, Format('Y %g', [CurPoint.Y]));
    TextOut(10, 55, QuarterToStr(Quarter));
  end;
end;

procedure DrawingAdvInfo;
begin
  with Engine, Engine.Parameters, Engine.Draw.Canvas do
  begin
    Font.Color := InfoFontColor;                                       //���� ������ ���.
    Brush.Style := bsClear;                                            //����� ��� ����
    TextOut(10, 70, Format('������: %d:%d', [OldMousePos.X, OldMousePos.Y]));
    TextOut(10, 85, Format('������ ������: %dx%d', [Width, Height]));
    TextOut(10, 100, Format('��������� ���������� [0:0]: %d:%d', [CenterPos.X, CenterPos.Y]));
    TextOut(10, 115, Format('����� �� ����: %f ����� �� ��.', [Screen.PixelsPerInch * 2.54]));
    TextOut(10, 130, Format('���������� ������: %dx%d px.', [Screen.Width, Screen.Height]));
    TextOut(10, 145, Format('������ ������: %fx%f ��.', [GetDeviceCaps(Handle, HORZSIZE) / 10, GetDeviceCaps(Handle, VERTSIZE) / 10]));
  end;
end;

procedure DrawingFissinos;
var
  i, Count, di: Integer;
begin
  with Engine, Engine.Parameters, Engine.Draw.Canvas do
  begin
    Font.Color := FissFontColor;                                       //���� ������ �������� �������
    Pen.Color := FissColor;                                            //���� �������
    Pen.Width := LineSize;
    if Step >= 20 then
      TextOut(CenterPos.X - 9, CenterPos.Y + 3, '0');    //���� ������� ���������, ������ 0 � ������ ���������
    Count := 0;
    i := CenterPos.X - Step;                                                         //������� �����
    repeat
      Inc(Count);
      MoveTo(i, CenterPos.Y - StepSize);
      LineTo(i, CenterPos.Y + StepSize + 1);
      for di := 1 to FissionCount do
      begin
        MoveTo(i + Round(di * (Step / FissionCount)), CenterPos.Y - (StepSize div 2));
        LineTo(i + Round(di * (Step / FissionCount)), CenterPos.Y + (StepSize div 2) + Pen.Width);
      end;
      if Step >= 20 then
        TextOut(i - (TextWidth('-' + IntToStr(Count)) div 2), CenterPos.Y + StepSize + 5, '-' + IntToStr(Count));
      Dec(i, Step);
    until i < 0 - Step;
    i := CenterPos.X + Step;                                                         //������� ������
    Count := 0;
    repeat
      Inc(Count);
      MoveTo(i, CenterPos.Y - StepSize);
      LineTo(i, CenterPos.Y + StepSize + 1);
      for di := 1 to FissionCount do
      begin
        MoveTo(i - Round(di * (Step / FissionCount)), CenterPos.Y - (StepSize div 2));
        LineTo(i - Round(di * (Step / FissionCount)), CenterPos.Y + (StepSize div 2) + Pen.Width);
      end;
      if Step >= 20 then
        TextOut(i - (TextWidth(IntToStr(Count)) div 2), CenterPos.Y + StepSize + 5, IntToStr(Count));
      Inc(i, Step);
    until i >= Width + Step;
    i := CenterPos.Y - Step;                                                         //������� ������
    Count := 0;
    repeat
      Inc(Count);
      MoveTo(CenterPos.X - StepSize, i);
      LineTo(CenterPos.X + StepSize + 1, i);
      for di := 1 to FissionCount do
      begin
        MoveTo(CenterPos.X - (StepSize div 2), i + Round(di * (Step / FissionCount)));
        LineTo(CenterPos.X + (StepSize div 2) + Pen.Width, i + Round(di * (Step / FissionCount)));
      end;
      if Step >= 20 then
        TextOut(CenterPos.X + StepSize + 5, i - (TextWidth(IntToStr(Count)) div 2), IntToStr(Count));
      Dec(i, Step);
    until i <= 0 - Step;
    i := CenterPos.Y + Step;                                                         //������� �����
    Count := 0;
    repeat
      Inc(Count);
      MoveTo(CenterPos.X - StepSize, i);
      LineTo(CenterPos.X + StepSize + Pen.Width, i);
      for di := 1 to FissionCount do
      begin
        MoveTo(CenterPos.X - (StepSize div 2), i - Round(di * (Step / FissionCount)));
        LineTo(CenterPos.X + (StepSize div 2) + Pen.Width, i - Round(di * (Step / FissionCount)));
      end;
      if Step >= 20 then
        TextOut(CenterPos.X + StepSize + 5, i - (TextWidth('-' + IntToStr(Count)) div 2), '-' + IntToStr(Count));
      Inc(i, Step);
    until i >= Height + Step;
  end;
end;

procedure DrawingAutor;
begin
  with Engine, Engine.Draw.Canvas do
  begin
    Font.Color := clGrayText;                                          //���� ����
    TextOutAdv(Engine.Draw.Canvas, -90, Width, Height - 100, '�������� �������', 8); //� � ������ ������ ���� :)
  end;
end;

procedure DrawingFunction;
var
  i: Integer;
begin
  with Engine, Engine.Parameters, FormMain do
  begin
    try                                                                          //���� ���������� ������ ��� ��������� �������,
      for i := 0 to EngineFunctions.Count - 1 do                                      //�� ���������� ��������� � ���������� ��������
        if EngineFunctions.FunctionsEngines[i].Use then
          DrawExFunction(EngineFunctions.FunctionsEngines[i]);
    except                                                                       //������ �������, � ����� ��������� ������������
      begin
        DrawFunction := False;
        MessageBox(Handle, '��������� ������ ��� ��������� �������.'#13#10'�������� ���� ������� �������� �������� ������.', '��������', MB_ICONWARNING or MB_OK);
      end;
    end;
  end;
end;

procedure DrawingConnects;
var
  i, Count, di: Integer;
begin
  with Engine, Engine.Parameters, EnginePoints, Engine.Draw.Canvas do
  begin
    for di := 1 to 100 do
    begin
      if not Groups[di].Used then
        Continue;
      if not Groups[di].ConnectPoints then
        Continue;
      Count := 0;
     //SetLength(UPoints, 0);
      for i := 0 to Length(Groups[di].Points) - 1 do
      begin
        if not Groups[di].Points[i].Used then
          Continue;
       //SetLength(UPoints, Length(UPoints)+1);
        UPoints[Count] := Point(Round(Groups[di].Points[i].Coord.X * Step) + CenterPos.X, Round(Groups[di].Points[i].Coord.Y * Step) + CenterPos.Y);
        Inc(Count);
      end;
      Pen.Color := Groups[di].ConnectColor;                             //���� ����������
      Pen.Width := PolyLineSize;                                        //������� ����� ����������
      Windows.Polyline(Handle, PPoints(@UPoints)^, Count);            //������ ������� ������������ ����� ���������� ����� ������
    end;
  end;
end;

procedure DrawingPoints;
var
  i, di: Integer;
  PointRect: TRect;
begin
  with Engine, Engine.Parameters, EnginePoints do
  begin
    Draw.Canvas.Font.Color := PointNameFont;                                       //���� ������ ��������
    for di := 1 to 100 do
      if Groups[di].Used then
      begin
        for i := 0 to Length(Groups[di].Points) - 1 do
        begin
          if Groups[di].Points[i].Used then
          begin
            PointRect.Left := (Round(Groups[di].Points[i].Coord.X * Step) + CenterPos.X) - 3;
            PointRect.Top := (Round(Groups[di].Points[i].Coord.Y * Step) + CenterPos.Y) - 3;
            PointRect.Right := PointRect.Left + 7;
            PointRect.Bottom := PointRect.Top + 7;
            if (not ((Groups[di].Points[i].Coord.X = 0) or                       //���� �� �� ��� � ������ ����� �������� �����, �� ������ ��
              (Groups[di].Points[i].Coord.Y = 0))) and
              Groups[di].ShowPointsLines
              then
            begin
              Draw.Canvas.Brush.Color := BackgroundColor;
              Draw.Canvas.Pen.Width := LineSize;
              Draw.Canvas.Pen.Style := Groups[di].PointsLinesStyle;                 //��� ����� � ���� �� �����
              Draw.Canvas.Pen.Color := Groups[di].PointsLinesColor;                 //���� ����� � ���� �� �����
              Draw.Canvas.MoveTo(CenterPos.X, PointRect.Top + 3);                   //���� � Y
              Draw.Canvas.LineTo(PointRect.Left + 3, PointRect.Top + 3);              //������ � �����
              Draw.Canvas.LineTo(PointRect.Left + 3, CenterPos.Y);                  //������ � X
            end;
            if Groups[di].ShowPoint then                                         //���� �����, ������ �����
            begin
              Draw.Canvas.Pen.Color := Groups[di].PointPen;                         //������� �����
              Draw.Canvas.Pen.Style := psSolid;                                     //���������� ����� �� ��������
              Draw.Canvas.Brush.Color := Groups[di].PointBrush;                     //���� ������� �����
              Draw.Canvas.Ellipse(PointRect);                                     //������ �����
            end;
            if Groups[di].ShowPointsName then                                    //���� �����, ������ ������� ����� (���, ������, ����������)
            begin
              Draw.Canvas.Pen.Style := psSolid;                                     //���������� ����� �� ��������
              Draw.Canvas.Pen.Width := 1;                                           //������ ����� 1 ���.
              Draw.Canvas.Pen.Color := PointNamePen;                                //���� ����� �������
              Draw.Canvas.Brush.Color := PointNameBrush;                            //���� ������� �������
              Groups[di].Points[i].SelfInfoRect := Rect(PointRect.Left + 8, PointRect.Top - 22, PointRect.Left + 12 + Draw.Canvas.TextWidth(Groups[di].Points[i].Name + ' GID ' + IntToStr(di) + ' [' + FloatToStr(Groups[di].Points[i].Coord.X) + ':' + FloatToStr(-Groups[di].Points[i].Coord.Y) + ']'), PointRect.Top - 18 + Draw.Canvas.TextHeight(Groups[di].Points[i].Name + ' GID ' + IntToStr(di) + ' [' + FloatToStr(Groups[di].Points[i].Coord.X) + ':' + FloatToStr(-Groups[di].Points[i].Coord.Y) + ']'));
              Draw.Canvas.Rectangle(Groups[di].Points[i].SelfInfoRect);   //������ �����, � �� ��� ����� �����
              Draw.Canvas.TextOut(PointRect.Left + 10, PointRect.Top - 20, Groups[di].Points[i].Name + ' GID ' + IntToStr(di) + ' [' + FloatToStr(Groups[di].Points[i].Coord.X) + ':' + FloatToStr(-Groups[di].Points[i].Coord.Y) + ']');
            end;
          end;
        end;
      end;
    Draw.Canvas.Brush.Color := BackgroundColor;
  end;
end;

procedure DrawingCursor;
var
  PointRect: TRect;
begin
  with Engine, Engine.Parameters, Engine.Draw.Canvas do
  begin
    Pen.Width := LineSize;
    PointRect.Left := (OldMousePos.X) - 3;                                           //��������� � ������� �������
    PointRect.Top := (OldMousePos.Y) - 3;
    PointRect.Right := PointRect.Left + 7;
    PointRect.Bottom := PointRect.Top + 7;
    Pen.Color := CursorLinesColor;                                     //���� ����� �������
    if (not ((CursorPoint.Coord.X = 0) or                                        //���� �� �� ��� � ������ �����, �� ������ �����
      (CursorPoint.Coord.Y = 0))) and CursorLines
      then
    begin
      Pen.Style := CursorLinesStyle;                                   //��� ����� ������� = ��� ����� �����
      MoveTo(CenterPos.X, PointRect.Top + 3);
      LineTo(PointRect.Left + 3, PointRect.Top + 3);
      LineTo(PointRect.Left + 3, CenterPos.Y);
    end;
    Pen.Color := CursorPen;                                            //���� ������� �������
    Pen.Style := psSolid;                                              //���������� �������� �����
    Brush.Color := CursorBrush;                                        //���� ������� �������
    Ellipse(PointRect);                                              //������ ������
    if CursorName then                                                           //���� �����, ������ ������� �������
    begin
      Font.Color := PointNameFont;
      Pen.Width := 1;                                                  //������ ����� 1 ���.
      Pen.Color := PointNamePen;                                       //���� ����� ������� �������
      Brush.Color := PointNameBrush;                                   //���� ������� ������� �������
      CursorPoint.SelfInfoRect := Rect(PointRect.Left + 8, PointRect.Top - 22, PointRect.Left + 12 + TextWidth(CursorPoint.Name + ' - [' + FloatToStr(CursorPoint.Coord.X) + ':' + FloatToStr(-CursorPoint.Coord.Y) + ']'), PointRect.Top - 18 + TextHeight(CursorPoint.Name + ' - [' + FloatToStr(CursorPoint.Coord.X) + ':' + FloatToStr(-CursorPoint.Coord.Y) + ']'));
      Rectangle(CursorPoint.SelfInfoRect);                           //������ �����, � �� ��� ����� ����� (������, ����������)
      TextOut(PointRect.Left + 10, PointRect.Top - 20, CursorPoint.Name + ' - [' + FloatToStr(CursorPoint.Coord.X) + ':' + FloatToStr(-CursorPoint.Coord.Y) + ']');
    end;
  end;
end;

procedure DrawingEmpty;
begin
  with Engine, Engine.Parameters, Engine.Draw.Canvas do
  begin
    Pen.Width := LineSize;                                             //������� �����
    Brush.Color := BackgroundColor;                                    //���� ����
    Brush.Style := bsSolid;                                            //
    Pen.Style := psSolid;                                              //
    FillRect(ClipRect);                                  //������� �� ����������� �����
   //PatBlt(Draw.Canvas.Handle, 0, 0, Width, Height, WHITENESS);
  end;
end;

procedure DrawBlackly;
begin
  with Engine do
  begin
   //Draw.Canvas.StretchDraw(Rect(0, 0, Width, Height), PNGBlackly);
  end;
end;

procedure TFormMain.DrawPanelPaint(Sender: TObject);
begin
  with Engine.Parameters do                                                      //������, ��� ���������
  begin
    DrawingEmpty;                                                                //��������� �� ��������� � ������� ������
    if DrawGrid then
      DrawingGrid;                                                //���� �����, ������ �����
    DrawingAxis;                                                                 //������ ���
    if ZeroPoint then
      DrawingZeroPoint;                                          //���� �����, ������ ����� � ������
    DrawingInfo;                                                                 //������� ���. ���.
    if ShowAdvInfo then
      DrawingAdvInfo;                                          //���� �����, ���������� ���. ���.
    DrawingFissinos;                                                             //������ �������, �� ������� � ���� ������� ��������� - �������
   //DrawingAutor;                                                                //������ ����
    if DrawFunction then
      DrawingFunction;                                        //���� �����, ����������� � ������ ������ ��������� �������
    if ConnectPoints then
      DrawingConnects;                                       //���� �����, ��������� ���������������� �����, ����� ������� �����
    if ShowUserPoints then
      DrawingPoints;                                        //���� �����, ������ ���������������� ����� �����, ������� �����
    if ShowCursor then
      DrawingCursor;                                            //���� �����, ������ ������
    if not DrawPanel.Enabled then
      DrawBlackly;                                   //���� ����� �� �������, �� ��������� ��� (� ����������)
  end;
  DrawPanel.Canvas.Draw(0, 0, Engine.Draw);                                      //��������� ������, ������ �� ������ ��, ��� ����������
  Inc(FPS);                                                                      //FPS +1
end;

procedure TFormMain.DXTimerTimer(Sender: TObject);
begin
  DrawPanel.Repaint;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  Engine := TEngine.Create;
  Engine.Height := DrawPanel.Height;
  Engine.Width := DrawPanel.Width;
  Engine.SetCenter;
  Screen.Cursors[1] := LoadCursor(HInstance, 'SH');
  Screen.Cursors[2] := LoadCursor(HInstance, 'SD');
  Engine.GID;
  PanelPointTool.Brush.Bitmap := TBitmap.Create;
  PanelPointTool.Brush.Bitmap.Width := PanelPointTool.Width;
  PanelPointTool.Brush.Bitmap.Height := PanelPointTool.Height;
  PanelPointTool.Brush.Bitmap.Canvas.Font := Font;

  PanelPoints.Brush.Bitmap := TBitmap.Create;
  PanelPoints.Brush.Bitmap.Width := PanelPoints.Width;
  PanelPoints.Brush.Bitmap.Height := PanelPoints.Height;
  PanelPoints.Brush.Bitmap.Canvas.Font := Font;

  PanelInfo.Brush.Bitmap := TBitmap.Create;
  PanelInfo.Brush.Bitmap.Width := PanelInfo.Width;
  PanelInfo.Brush.Bitmap.Height := PanelInfo.Height;
  PanelInfo.Brush.Bitmap.Canvas.Font := Font;
  ShowInfo('��������� ���������');
end;

procedure TFormMain.SpinEditorStepChange(Sender: TObject);
begin
  Engine.Step := SpinEditorStep.Value;
end;

procedure SetPosPointsPanel(NW, NH: Integer);
begin
  with FormMain do
  begin
    if DrawPanel.Height - (PanelPoints.Top + PanelPoints.Height) < PanelPoints.Top then
      PanelPoints.Top := (NH - PanelPoints.Height) - (DrawPanel.Height - (PanelPoints.Top + PanelPoints.Height));
    if DrawPanel.Width - (PanelPoints.Left + PanelPoints.Width) < PanelPoints.Left then
      PanelPoints.Left := (NW - PanelPoints.Width) - (DrawPanel.Width - (PanelPoints.Left + PanelPoints.Width));
  end;
end;

procedure TFormMain.DrawPanelCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  SetPosPointsPanel(NewWidth, NewHeight);
  Resize := True;
  if Engine.Height <> NewHeight then
    Engine.Height := NewHeight;
  if Engine.Width <> NewWidth then
    Engine.Width := NewWidth;
  PanelPointsMouseMove(nil, [], 0, 0);
end;

procedure TFormMain.SpinEditorStepSizeChange(Sender: TObject);
begin
  Engine.StepSize := SpinEditorStepSize.Value;
end;

procedure TFormMain.DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  MPos: TPoint;
begin
  DrawPanel.SetFocus;
  case Button of
    mbLeft:
      begin
        Engine.Parameters.ShowUserPoints := True;
        if ssCtrl in Shift then
          EnginePoints.Add('�����', ExtPoint(Round((OldMousePos.X - Engine.CenterPos.X) / Engine.Step), Round(-(OldMousePos.Y - Engine.CenterPos.Y) / Engine.Step)), Engine.GID)
        else
          EnginePoints.Add('�����', ExtPoint((OldMousePos.X - Engine.CenterPos.X) / Engine.Step, (-(OldMousePos.Y - Engine.CenterPos.Y) / Engine.Step)), Engine.GID); //Point(Engine.CursorPoint.Coord.X, -Engine.CursorPoint.Coord.Y));
      end;
    mbRight:
      begin
        GetCursorPos(MPos);
        if EnginePoints.Exists(Engine.CursorPoint.Coord) >= 0 then
          PopupMenuPoint.Popup(MPos.X, MPos.Y)
        else
          PopupMenuContext.Popup(MPos.X, MPos.Y);
      end;
    mbMiddle:
      begin
        OldMousePos := Point(X, Y);
        MouseIsDown := True;
        Screen.Cursor := 2;
      end;
  end;
end;

procedure TFormMain.DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if (not DrawPanel.Focused) and (not EditPointName.Visible) then
    DrawPanel.SetFocus;
  if Engine.Parameters.ShowCursor then
    Engine.CursorPoint.Coord := ExtPoint(((X - Engine.CenterPos.X) / Engine.Step), ((Y - Engine.CenterPos.Y) / Engine.Step));
  if MouseIsDown then
    Engine.CenterPos := Point(Engine.CenterPos.X + (X - OldMousePos.X), Engine.CenterPos.Y + (Y - OldMousePos.Y));
  OldMousePos := Point(X, Y);
  TimerStartMove.Enabled := ((X <= Engine.BordersOfTheMoving) or (X >= DrawPanel.Width - Engine.BordersOfTheMoving) or (Y <= Engine.BordersOfTheMoving) or (Y >= DrawPanel.Height - Engine.BordersOfTheMoving)) and (not MouseIsDown);
  if not TimerStartMove.Enabled then
    TimerAutoMove.Enabled := False;
end;

procedure TFormMain.DrawPanelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  case Button of
    mbLeft:
      MouseIsDown := False;
    mbMiddle:
      begin
        MouseIsDown := False;
        Screen.Cursor := crDefault;
      end;
  end;
end;

procedure TFormMain.TimerUpSpeedTimer(Sender: TObject);
begin
  if DXTimer.Interval <= 1 then
    TimerUpSpeed.Enabled := False;
  DXTimer.Interval := DXTimer.Interval - 1;
end;

procedure TFormMain.SpinEditorPenSizeChange(Sender: TObject);
begin
  Engine.Parameters.LineSize := SpinEditorPenSize.Value;
end;

procedure TFormMain.DrawPanelMouseLeave(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  TimerAutoMove.Enabled := False;
  TimerStartMove.Enabled := False;
end;

procedure TFormMain.DrawPanelMouseEnter(Sender: TObject);
begin
  if MouseIsDown then
    Screen.Cursor := 2
  else
    Screen.Cursor := crDefault;
end;

procedure TFormMain.TimerFPSTimer(Sender: TObject);
begin
  if DrawFPS then
  begin
    Inc(CurAdd);
    if FPS > 0 then
      EnginePoints.Add('', ExtPoint(CurAdd / 100, FPS / 1000), 5)
    else
      EnginePoints.Add('', ExtPoint(CurAdd / 100, 0), 5);
  end;
  TextFPS := IntToStr(FPS);
  FPS := 0;
end;

procedure TFormMain.SpinEditorCFissionChange(Sender: TObject);
begin
  Engine.FissionCount := SpinEditorCFission.Value;
end;

procedure TFormMain.ButtonAddClick(Sender: TObject);
var
  A1, A2: Extended;
  i, Old_I: Integer;
  A3: string;
  AText: string;
  OA1, OA2, OA3: Boolean;

  function DeleteSpace(SText: string): string;
  begin
    Result := SText;
    while Pos(' ', Result) <> 0 do
      Delete(Result, Pos(' ', Result), 1);
  end;

  function ChangePointToSim(ACText: string): string;
  var
    i: Byte;
  begin
    Result := ACText;
    for i := 1 to Length(Result) do
      if Result[i] = '.' then
        Result[i] := ',';
  end;

begin
  AText := DeleteSpace(EditData.Text);
  if AText = '' then
    Exit;
  OA1 := False;
  OA2 := False;
  OA3 := False;
  A1 := 0;
  A2 := 0;
  Old_I := 0;
  for i := 1 to Length(AText) + 1 do
  begin
    if (AText[i + 1] = ';') or (i = Length(AText)) then
    begin
      if not OA1 then
      begin
        A1 := StrToFloat(ChangePointToSim(Copy(AText, Old_I + 1, (i) - Old_I)));
        OA1 := True;
      end
      else if not OA2 then
      begin
        A2 := StrToFloat(ChangePointToSim(Copy(AText, Old_I + 1, (i) - Old_I)));
        OA2 := True;
      end
      else if not OA3 then
      begin
        A3 := Copy(AText, Old_I + 1, (i) - Old_I);
        OA3 := True;
      end
      else
        Break;
      Old_I := i + 1;
    end;
  end;
  EnginePoints.Add(A3, ExtPoint(A1, A2), Engine.GID);
end;

procedure TFormMain.ButtonDeleteClick(Sender: TObject);
var
  A1, A2: Extended;
  i, Old_I: Integer;
  AText: string;
  OA1, OA2: Boolean;

  function DeleteSpace(SText: string): string;
  begin
    Result := SText;
    while Pos(' ', Result) <> 0 do
      Delete(Result, Pos(' ', Result), 1);
  end;

  function ChangePointToSim(ACText: string): string;
  var
    i: Byte;
  begin
    Result := ACText;
    for i := 1 to Length(Result) do
      if Result[i] = '.' then
        Result[i] := ',';
  end;

begin
  AText := DeleteSpace(EditData.Text);
  if AText = '' then
    Exit;
  OA1 := False;
  OA2 := False;
  A1 := 0;
  A2 := 0;
  Old_I := 0;
  for i := 1 to Length(AText) + 1 do
  begin
    if (AText[i + 1] = ',') or (i = Length(AText)) then
    begin
      if not OA1 then
      begin
        A1 := StrToFloat(ChangePointToSim(Copy(AText, Old_I + 1, (i) - Old_I)));
        OA1 := True;
      end
      else if not OA2 then
      begin
        A2 := StrToFloat(ChangePointToSim(Copy(AText, Old_I + 1, (i) - Old_I)));
        OA2 := True;
      end
      else
        Break;
      Old_I := i + 1;
    end;
  end;
  if not EnginePoints.Delete(ExtPoint(A1, -A2)) then
    MessageBox(Handle, '����� � ���������� ������� �� ����������!', '', MB_ICONWARNING or MB_OK);
end;

procedure TFormMain.TimerAutoMoveTimer(Sender: TObject);
begin
  if OldMousePos.X <= Engine.BordersOfTheMoving then
    Inc(Engine.CenterPos.X, Engine.Step div 2);
  if OldMousePos.Y <= Engine.BordersOfTheMoving then
    Inc(Engine.CenterPos.Y, Engine.Step div 2);
  if OldMousePos.X >= DrawPanel.Width - Engine.BordersOfTheMoving then
    Dec(Engine.CenterPos.X, Engine.Step div 2);
  if OldMousePos.Y >= DrawPanel.Height - Engine.BordersOfTheMoving then
    Dec(Engine.CenterPos.Y, Engine.Step div 2);
end;

procedure TFormMain.MenuItemDeletePointClick(Sender: TObject);
begin
  EnginePoints.DeletePointUnderCursor;
end;

procedure TFormMain.TimerStartMoveTimer(Sender: TObject);
begin
  TimerAutoMove.Enabled := True;
  TimerStartMove.Enabled := False;
end;

procedure TFormMain.MenuItemRenamePointClick(Sender: TObject);
var
  UserPoint: TUserPoint;
begin
  if IsRename then
    Exit;
  if not EnginePoints.UnderCursor(RenamedPoint, RenamedGroup, UserPoint) then
    Exit;
  PanelPointTool.Left := OldMousePos.X;
  PanelPointTool.Top := OldMousePos.Y;
  DrawPanel.Enabled := False;
  EditPointName.Text := UserPoint.Name;
  IsRename := True;
  PanelPointTool.Show;
  EditPointName.SetFocus;
  ShowInfo('����������������� �����');
end;

procedure TFormMain.EditPointNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PanelPointTool.Hide;
    DrawPanel.Enabled := True;
    Key := #0;
    if not IsRename then
      Exit;
    EnginePoints.Groups[RenamedGroup].Points[RenamedPoint].Name := EditPointName.Text;
    EditPointName.Clear;
    RenamedPoint := 0;
    IsRename := False;
    ShowInfo('����� ��������������');
  end;
  if Key = #27 then
  begin
    DrawPanel.Enabled := True;
    PanelPointTool.Hide;
    Key := #0;
    EditPointName.Clear;
    RenamedPoint := 0;
    IsRename := False;
  end;
end;

procedure TFormMain.DrawPanelMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
  VOld, NOld: TExtPoint;
begin
  if Engine.Step <= 1 then
    Exit;
  Engine.Step := Engine.Step - 1;
  SpinEditorStep.Value := Engine.Step;
  VOld := ExtPoint(Engine.CursorPoint.Coord.X, -Engine.CursorPoint.Coord.Y);
  DrawPanelMouseMove(Sender, Shift, OldMousePos.X, OldMousePos.Y);
  NOld := ExtPoint(Engine.CursorPoint.Coord.X, -Engine.CursorPoint.Coord.Y);
 {case Engine.Quarter of
  tqI:Engine.CenterPos:=Point(Engine.CenterPos.X-(Round(NOld.X*Engine.Step-VOld.X*Engine.Step)),
                              Engine.CenterPos.Y-(Round(NOld.Y*Engine.Step-VOld.Y*Engine.Step)));
  tqII:Engine.CenterPos:=Point(Engine.CenterPos.X-(Round(NOld.X*Engine.Step-VOld.X*Engine.Step)),
                              Engine.CenterPos.Y+(Round(NOld.Y*Engine.Step-VOld.Y*Engine.Step)));
  tqIII:Engine.CenterPos:=Point(Engine.CenterPos.X+(Round(NOld.X*Engine.Step-VOld.X*Engine.Step)),
                              Engine.CenterPos.Y+(Round(NOld.Y*Engine.Step-VOld.Y*Engine.Step)));
  tqIV:Engine.CenterPos:=Point(Engine.CenterPos.X+(Round(NOld.X*Engine.Step-VOld.X*Engine.Step)),
                              Engine.CenterPos.Y-(Round(NOld.Y*Engine.Step-VOld.Y*Engine.Step)));
 end;   }
end;

procedure TFormMain.DrawPanelMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
  VOld, NOld: TExtPoint;
begin
  if Engine.Step >= 1800 then
    Exit;
  Engine.Step := Engine.Step + 1;
  SpinEditorStep.Value := Engine.Step;
  VOld := ExtPoint(Engine.CursorPoint.Coord.X, -Engine.CursorPoint.Coord.Y);
  DrawPanelMouseMove(Sender, Shift, OldMousePos.X, OldMousePos.Y);
  NOld := ExtPoint(Engine.CursorPoint.Coord.X, -Engine.CursorPoint.Coord.Y);
end;

procedure TFormMain.DrawPanelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    83:
      Dec(Engine.CenterPos.Y, Engine.Step);
    87:
      Inc(Engine.CenterPos.Y, Engine.Step);
    65:
      Inc(Engine.CenterPos.X, Engine.Step);
    68:
      Dec(Engine.CenterPos.X, Engine.Step);
    VK_ESCAPE:
      if Assigned(Menu) then
        Menu := nil
      else
        Menu := MainMenu;
    VK_RETURN:
      if Shift = [ssAlt] then
        ActionFullScreen.Execute;
    Ord('F'):
      if Shift = [ssAlt, ssCtrl] then
        if DrawFPS then
        begin
          DrawFPS := False;
          CurAdd := 0;
        end
        else
          DrawFPS := True;
  end;
end;

procedure TFormMain.CheckListBoxPointsClickCheck(Sender: TObject);
var
  i: Byte;
begin
  for i := 1 to 100 do
  begin
    EnginePoints.Groups[i].Used := CheckListBoxPoints.Checked[i - 1];
  end;
end;

procedure TFormMain.CheckListBoxPointsClick(Sender: TObject);
var
  SelPoint: TGroupOfUserPoints;
begin
  Engine.GID;
  SelPoint := EnginePoints.Groups[Engine.GID];
  CheckBoxPointsLines.Checked := SelPoint.ShowPointsLines;
  CheckBoxPointsName.Checked := SelPoint.ShowPointsName;
  CheckBoxPointsPoint.Checked := SelPoint.ShowPoint;
  CheckBoxPointsConnect.Checked := SelPoint.ConnectPoints;
  ColorPickerEditorPBrush.ColorValue := SelPoint.PointBrush;
  ColorPickerEditorPFrame.ColorValue := SelPoint.PointPen;
  ColorPickerEditorPLines.ColorValue := SelPoint.PointsLinesColor;
end;

procedure TFormMain.ButtonCheckAllClick(Sender: TObject);
var
  i: Byte;
begin
  for i := 0 to CheckListBoxPoints.Count - 1 do
  begin
    CheckListBoxPoints.Checked[i] := True;
    EnginePoints.Groups[i + 1].Used := True;
  end;
end;

procedure TFormMain.ButtonUnCheckAllClick(Sender: TObject);
var
  i: Byte;
begin
  for i := 0 to CheckListBoxPoints.Count - 1 do
  begin
    CheckListBoxPoints.Checked[i] := False;
    EnginePoints.Groups[i + 1].Used := False;
  end;
end;

procedure TFormMain.PanelPointsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  ReleaseCapture;
  (Sender as TPanel).Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TFormMain.PanelPointsMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if PanelPoints.Left <= 0 then
    PanelPoints.Left := 0;
  if PanelPoints.Top <= 0 then
    PanelPoints.Top := 0;
  if PanelPoints.Top + PanelPoints.Height >= DrawPanel.Height then
    PanelPoints.Top := DrawPanel.Height - PanelPoints.Height;
  if PanelPoints.Left + PanelPoints.Width >= DrawPanel.Width then
    PanelPoints.Left := DrawPanel.Width - PanelPoints.Width;
end;

procedure TFormMain.MenuItemToolBarClick(Sender: TObject);
begin
  PanelSet.Visible := not PanelSet.Visible;
end;

procedure TFormMain.MenuItemCursorClick(Sender: TObject);
begin
  Engine.Parameters.ShowCursor := not Engine.Parameters.ShowCursor;
end;

procedure TFormMain.MenuItemGridClick(Sender: TObject);
begin
  Engine.Parameters.DrawGrid := not Engine.Parameters.DrawGrid;
end;

procedure TFormMain.MenuItemZeroPointClick(Sender: TObject);
begin
  Engine.Parameters.ZeroPoint := not Engine.Parameters.ZeroPoint;
end;

procedure TFormMain.MenuItemAdvInfClick(Sender: TObject);
begin
  Engine.Parameters.ShowAdvInfo := not Engine.Parameters.ShowAdvInfo;
end;

procedure TFormMain.CheckBoxPointsLinesClick(Sender: TObject);
begin
  if not (Sender is TCheckBox) then
    Exit;
  case (Sender as TCheckBox).Tag of
    1:
      EnginePoints.Groups[Engine.GID].ShowPointsLines := (Sender as TCheckBox).Checked;
    2:
      EnginePoints.Groups[Engine.GID].ShowPointsName := (Sender as TCheckBox).Checked;
    3:
      EnginePoints.Groups[Engine.GID].ShowPoint := (Sender as TCheckBox).Checked;
    4:
      EnginePoints.Groups[Engine.GID].ConnectPoints := (Sender as TCheckBox).Checked;
  end;
end;

procedure TFormMain.ButtonClosePointsPanelClick(Sender: TObject);
begin
  PanelPoints.Hide;
end;

procedure TFormMain.ButtonCloseRenamerClick(Sender: TObject);
var
  Key: Char;
begin
  Key := #27;
  EditPointNameKeyPress(nil, Key);
end;

procedure TFormMain.PanelPointToolPaint(Sender: TObject);
begin
  PanelPointTool.Brush.Bitmap.Canvas.Pen.Color := $00E7E0D9;
  PanelPointTool.Brush.Bitmap.Canvas.Brush.Color := $00F1EDE9;
  PanelPointTool.Brush.Bitmap.Canvas.FillRect(Rect(0, 0, PanelPointTool.Width, PanelPointTool.Height));
  PanelPointTool.Brush.Bitmap.Canvas.Rectangle(Rect(0, 0, PanelPointTool.Width, 27));
  PanelPointTool.Brush.Bitmap.Canvas.TextOut(5, 5, '��������������');
  PanelPointTool.Brush.Bitmap.Canvas.Brush.Color := clWindow;
  PanelPointTool.Brush.Bitmap.Canvas.Rectangle(Rect(0, 26, PanelPointTool.Width, PanelPointTool.Height));
end;

procedure TFormMain.PanelPointsPaint(Sender: TObject);
begin
  PanelPoints.Brush.Bitmap.Canvas.Pen.Color := $00E7E0D9;
  PanelPoints.Brush.Bitmap.Canvas.Brush.Style := bsSolid;
  PanelPoints.Brush.Bitmap.Canvas.Brush.Color := $00F1EDE9;
  PanelPoints.Brush.Bitmap.Canvas.FillRect(Rect(0, 0, PanelPoints.Width, PanelPoints.Height));
  PanelPoints.Brush.Bitmap.Canvas.Rectangle(Rect(0, 0, PanelPoints.Width, 27));
  PanelPoints.Brush.Bitmap.Canvas.Brush.Style := bsClear;
  PanelPoints.Brush.Bitmap.Canvas.TextOut(5, 5, '������ �����');
  PanelPoints.Brush.Bitmap.Canvas.Brush.Style := bsSolid;
  PanelPoints.Brush.Bitmap.Canvas.Rectangle(Rect(0, 26, PanelPoints.Width, PanelPoints.Height));
end;

procedure TFormMain.DrawPanelClick(Sender: TObject);
begin
  if not DrawPanel.Enabled then
    PlaySound(PChar('SYSTEMQUESTION'), 0, SND_ASYNC);
end;

procedure TFormMain.CheckListBoxPointsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  MPos: TPoint;
begin
  if (Button = mbRight) and (CheckListBoxPoints.SelCount > 0) then
  begin
    GetCursorPos(MPos);
    PopupMenuGroups.Popup(MPos.X, MPos.Y);
  end;
end;

procedure TFormMain.MenuItemToolsClick(Sender: TObject);
begin
  MenuItemShowPoints.Checked := Engine.Parameters.ShowUserPoints;
  MenuItemPolyPoints.Checked := Engine.Parameters.ConnectPoints;
end;

procedure TFormMain.MenuItemViewClick(Sender: TObject);
begin
  MenuItemCursor.Checked := Engine.Parameters.ShowCursor;
  MenuItemToolBar.Checked := PanelSet.Visible;
  MenuItemGrid.Checked := Engine.Parameters.DrawGrid;
  MenuItemZeroPoint.Checked := Engine.Parameters.ZeroPoint;
  MenuItemAdvInf.Checked := Engine.Parameters.ShowAdvInfo;
  MenuItemMM.Checked := Assigned(Menu);
  MenuItemFullScreen.Checked := IsFullScreen;
end;

procedure ShowTask;
var
  HTaskbar: HWND;
  OldVal: LongInt;
begin
  HTaskbar := FindWindow('Shell_TrayWnd', nil);
  SystemParametersInfo(97, Word(True), @OldVal, 0);
  EnableWindow(HTaskbar, False);
  ShowWindow(HTaskbar, SW_HIDE);
end;

function SetFullscreenMode: Boolean;
begin
  Result := True;
  try
    ShowTask;
  finally
    with FormMain do
    begin
      OldW := Width;
      OldH := Height;
      OldT := Top;
      OlDL := Left;
      BorderStyle := bsNone;
      Left := 0;
      Top := 0;
      Height := Screen.Height;
      Width := Screen.Width;
    end;
  end;
end;

procedure HideTask;
var
  HTaskbar: HWND;
  OldVal: LongInt;
begin
  HTaskbar := FindWindow('Shell_TrayWnd', nil);
  SystemParametersInfo(97, Word(False), @OldVal, 0);
  EnableWindow(HTaskbar, True);
  ShowWindow(HTaskbar, SW_SHOW);
end;

procedure RestoreDefaultMode;
begin
  try
    HideTask;
  finally
    with FormMain do
    begin
      BorderStyle := bsSizeable;
      Left := OldL;
      Top := OldT;
      Height := OldH;
      Width := OldW;
    end;
  end;
  IsFullScreen := False;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  if IsFullScreen then
    RestoreDefaultMode;
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  if IsFullScreen then
    HideTask;
end;

procedure TFormMain.FormDeactivate(Sender: TObject);
begin
  if IsFullScreen then
    ShowTask;
end;

procedure TFormMain.ActionScreenShotExecute(Sender: TObject);
begin
  if SavePictureDialogFrame.Execute then
    Engine.Draw.SaveToFile(SavePictureDialogFrame.FileName);
end;

procedure TFormMain.ActionExitExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMain.ActionFullScreenExecute(Sender: TObject);
begin
  if IsFullScreen then
    RestoreDefaultMode
  else
    IsFullScreen := SetFullscreenMode;
  ActionFullScreen.Checked := not IsFullScreen;
  if Engine.Height <> DrawPanel.Height then
    Engine.Height := DrawPanel.Height;
  if Engine.Width <> DrawPanel.Width then
    Engine.Width := DrawPanel.Width;
end;

procedure TFormMain.ActionPointGroupExecute(Sender: TObject);
begin
  ShowPointsPanel;
end;

procedure TFormMain.ActionPointGroupEditExecute(Sender: TObject);
begin
  FormChangeGroup.Show;
end;

procedure TFormMain.ActionShowPointsExecute(Sender: TObject);
begin
  Engine.Parameters.ShowUserPoints := not Engine.Parameters.ShowUserPoints;
  ActionShowPoints.Checked := Engine.Parameters.ShowUserPoints;
end;

procedure TFormMain.ActionPointConnectExecute(Sender: TObject);
begin
  Engine.Parameters.ConnectPoints := not Engine.Parameters.ConnectPoints;
  ActionPointConnect.Checked := Engine.Parameters.ConnectPoints;
end;

procedure TFormMain.ActionDeletePointsOfGroupExecute(Sender: TObject);
var
  i, gd: byte;
begin
  gd := Engine.GID;
  if Length(EnginePoints.Groups[gd].Points) <= 0 then
  begin
    MessageBox(Handle, PChar(Format('������ � %d �����.', [gd])), '', MB_ICONINFORMATION or MB_OK);
    Exit;
  end;
  if MessageBox(Handle, PChar(Format('�� ������������� ������ ������� ��� ����� ������ � %d?', [gd])), '', MB_ICONINFORMATION or MB_YESNO) <> ID_YES then
    Exit;
  for i := 0 to Length(EnginePoints.Groups[gd].Points) - 1 do
    EnginePoints.Groups[gd].Points[i].Used := False;
  if EnginePoints.Groups[gd].Name <> '' then
    ShowInfo(Format('������� ��� ����� ������ "%d"', [EnginePoints.Groups[gd].Name]))
  //ShowInfo('������� ��� ����� ������ "'+EnginePoints.Groups[gd].Name+'"')
  else
    ShowInfo(Format('������� ��� ����� ������ � %d', [gd]))
end;

procedure TFormMain.ActionFunctionsEditExecute(Sender: TObject);
begin
  FormCFunction.Show;
end;

procedure TFormMain.ActionDrawFunctionsExecute(Sender: TObject);
begin
  Engine.Parameters.DrawFunction := not Engine.Parameters.DrawFunction;
  ActionDrawFunctions.Checked := Engine.Parameters.DrawFunction;
end;

procedure TFormMain.ActionGoToCenterExecute(Sender: TObject);
begin
  Engine.SetCenter;
end;

procedure TFormMain.ActionSHMainMenuExecute(Sender: TObject);
begin
  if Assigned(Menu) then
    Menu := nil
  else
    Menu := MainMenu;
  ActionSHMainMenu.Checked := Assigned(Menu);
end;

procedure TFormMain.MenuItemAboutClick(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

procedure TFormMain.CheckBoxGridClick(Sender: TObject);
begin
  Engine.Parameters.DrawGrid := CheckBoxGrid.Checked;
end;

procedure TFormMain.CheckBoxZPointClick(Sender: TObject);
begin
  Engine.Parameters.ZeroPoint := CheckBoxZPoint.Checked;
end;

procedure TFormMain.CheckBoxCLinesClick(Sender: TObject);
begin
  Engine.Parameters.CursorLines := CheckBoxCLines.Checked;
end;

procedure TFormMain.CheckBoxCNameClick(Sender: TObject);
begin
  Engine.Parameters.CursorName := CheckBoxCName.Checked;
end;

procedure TFormMain.PNGButtonPanelHideClick(Sender: TObject);
begin
  PanelSet.Hide;
end;

procedure TFormMain.ActionGoToXYExecute(Sender: TObject);
begin
  FormGoTo.Show;
end;

procedure TFormMain.ColorPickerEditorBGColorChange(Sender: TObject);
begin
  Engine.Parameters.BackgroundColor := ColorPickerEditorBGColor.ColorValue;
end;

procedure TFormMain.TimerInfoTimer(Sender: TObject);
begin
  StatusBar.Panels[1].Text := FloatToStr(Engine.CursorPoint.Coord.X) + '; ' + FloatToStr(-Engine.CursorPoint.Coord.Y);
  StatusBar.Panels[2].Text := IntToStr(DrawPanel.Width) + ' x ' + IntToStr(DrawPanel.Height);
end;

procedure TFormMain.PanelInfoPaint(Sender: TObject);
begin
  if InfoText <> '' then
  begin
    PanelInfo.Width := PanelInfo.Brush.Bitmap.Canvas.TextWidth(InfoText) + 10;
    PanelInfo.Brush.Bitmap.Width := PanelInfo.Width + 10;
  end;
  PanelInfo.Brush.Bitmap.Canvas.Pen.Color := $00E7E0D9;
  PanelInfo.Brush.Bitmap.Canvas.Brush.Color := $00F1EDE9;
  PanelInfo.Brush.Bitmap.Canvas.FillRect(Rect(0, 0, PanelInfo.Width, PanelInfo.Height));
  PanelInfo.Brush.Bitmap.Canvas.Rectangle(Rect(0, 0, PanelInfo.Width, PanelInfo.Height));
  PanelInfo.Brush.Bitmap.Canvas.TextOut(5, ((PanelInfo.Height div 2) - (PanelInfo.Brush.Bitmap.Canvas.TextHeight(InfoText) div 2)), InfoText);
end;

procedure TFormMain.TimerHideInfoTimer(Sender: TObject);
begin
  TimerHideInfo.Enabled := False;
  PanelInfo.Hide;
  InfoText := '';
end;

procedure TFormMain.ColorPickerEditorPBrushChange(Sender: TObject);
begin
  if not (Sender is TsColorSelect) then
    Exit;
  case (Sender as TsColorSelect).Tag of
    1:
      EnginePoints.Groups[Engine.GID].PointBrush := (Sender as TsColorSelect).ColorValue;
    2:
      EnginePoints.Groups[Engine.GID].PointPen := (Sender as TsColorSelect).ColorValue;
    3:
      EnginePoints.Groups[Engine.GID].PointsLinesColor := (Sender as TsColorSelect).ColorValue;
  end;
end;

end.

