unit CFunction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, sSpeedButton, sColorSelect,
  Vcl.Samples.Spin;

type
  TFormCFunction = class(TForm)
    LabelAmplitude: TLabel;
    LabelLen: TLabel;
    LabelXStep: TLabel;
    EditXStep: TEdit;
    CheckBoxFix: TCheckBox;
    Bevel1: TBevel;
    Label1: TLabel;
    ComboBoxFunctions: TComboBox;
    Label2: TLabel;
    Panel1: TPanel;
    ButtonAddFunc: TButton;
    ButtonCancel: TButton;
    ButtonChange: TButton;
    ButtonRefresh: TButton;
    Label3: TLabel;
    EditName: TEdit;
    CheckBoxUse: TCheckBox;
    GroupBoxFunction: TGroupBox;
    LabelSelFunc: TLabel;
    LabelSelfFunction: TLabel;
    ComboBoxSimple: TComboBox;
    EditSelfFunction: TEdit;
    ButtonNewCompile: TSpeedButton;
    ButtonCheckDll: TSpeedButton;
    ButtonCorrect: TButton;
    ButtonDelete: TButton;
    SpinEditorMin: TSpinEdit;
    SpinEditorMax: TSpinEdit;
    ColorPickerEditor: TsColorSelect;
    procedure ButtonAddFuncClick(Sender: TObject);
    procedure ButtonRefreshClick(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonChangeClick(Sender: TObject);
    procedure ButtonNewCompileClick(Sender: TObject);
    procedure ComboBoxSimpleChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxFunctionsChange(Sender: TObject);
    procedure ButtonCheckDllClick(Sender: TObject);
    procedure ButtonCorrectClick(Sender: TObject);
    procedure SpinEditorMinChange(Sender: TObject);
    procedure SpinEditorMaxChange(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FormCFunction: TFormCFunction;
  FList:TStrings;

implementation
 uses Main, Functions, CompileFunctUnit;

{$R *.dfm}

procedure TFormCFunction.ButtonAddFuncClick(Sender: TObject);
var TFunc:TFunction;
    CustomFunct:TFunction;
    HandleDll:HWND;
    FunctName:string;
begin
 TFunc:=nil;
 HandleDll:=0;
 case ComboBoxSimple.ItemIndex of
  0:
  begin
   if FileExists(EditSelfFunction.Text) then
    HandleDll:=LoadLibrary(PChar(EditSelfFunction.Text))
   else
   if FileExists(ExtractFilePath(ParamStr(0))+EditSelfFunction.Text) then
    HandleDll:=LoadLibrary(PChar(ExtractFilePath(ParamStr(0))+EditSelfFunction.Text))
   else
    begin
     MessageBox(Handle, 'Указанный файл не найден.', '', MB_ICONSTOP or MB_OK);
     Exit;
    end;
   try
    @CustomFunct:=GetProcAddress(HandleDll, 'funct');       { получаем указатель на необходимую функцию}
    TFunc:=CustomFunct;
   except
    MessageBox(Handle, 'Произошла ошибка при загрузке dll.', '', MB_ICONSTOP or MB_OK);
   end;
  end;
  1:TFunc:=FCos;
  2:TFunc:=FSin;
  3:TFunc:=FExp;
  4:TFunc:=FTan;
  5:TFunc:=FCotan;
  6:TFunc:=FArcCot;
  7:TFunc:=FFloor;
  8:TFunc:=FCosecant;
  9:TFunc:=FSecant;
  10:TFunc:=Example1;
  11:TFunc:=Example2;
  12:TFunc:=Example3;
  13:TFunc:=Example4;
  14:TFunc:=Example5;
  15:TFunc:=Example6;
  16:TFunc:=Example7;
 else Exit;
 end;
 if EditName.Text = '' then FunctName:=ComboBoxSimple.Text else FunctName:=EditName.Text;
 EngineFunctions.Add(EFun(FunctName, TFunc, SpinEditorMin.Value, SpinEditorMax.Value, StrToFloat(EditXStep.Text), ColorPickerEditor.ColorValue, CheckBoxUse.Checked));
 try
  FreeLibrary(HandleDll);
 except
 end;
 ButtonRefreshClick(nil);
end;

procedure TFormCFunction.ButtonRefreshClick(Sender: TObject);
var i:Word;
begin
 ComboBoxFunctions.Clear;
 FList.Clear;
 if EngineFunctions.Count = 0 then Exit;
 for i:=0 to EngineFunctions.Count-1 do
  begin
   ComboBoxFunctions.Items.Add(EngineFunctions.FunctionsEngines[i].Name);
   FList.Add(IntToStr(i));
  end;
end;

procedure TFormCFunction.ButtonCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TFormCFunction.ButtonChangeClick(Sender: TObject);
var TFunc:TFunction;
    CustomFunct:TFunction;
    HandleDll:HWND;
    FunctName:string;
begin
 if ComboBoxFunctions.ItemIndex < 0 then
  begin
   MessageBox(Handle, 'График не выбран.', '', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 TFunc:=nil;
 HandleDll:=0;
 case ComboBoxSimple.ItemIndex of
  0:
  begin
   if FileExists(EditSelfFunction.Text) then
    HandleDll:=LoadLibrary(PChar(EditSelfFunction.Text))
   else
   if FileExists(ExtractFilePath(ParamStr(0))+EditSelfFunction.Text) then
    HandleDll:=LoadLibrary(PChar(ExtractFilePath(ParamStr(0))+EditSelfFunction.Text))
   else
    begin
     MessageBox(Handle, 'Указанный файл не найден.', '', MB_ICONSTOP or MB_OK);
     Exit;
    end;
   try
    @CustomFunct:=GetProcAddress(HandleDll, 'funct');       { получаем указатель на необходимую функцию}
    TFunc:=CustomFunct;
   except
    MessageBox(Handle, 'Произошла ошибка при загрузке dll.', '', MB_ICONSTOP or MB_OK);
   end;
  end;
  1:TFunc:=FCos;
  2:TFunc:=FSin;
  3:TFunc:=FExp;
  4:TFunc:=FTan;
  5:TFunc:=FCotan;
  6:TFunc:=FArcCot;
  7:TFunc:=FFloor;
  8:TFunc:=FCosecant;
  9:TFunc:=FSecant;
  10:TFunc:=Example1;
  11:TFunc:=Example2;
  12:TFunc:=Example3;
  13:TFunc:=Example4;
  14:TFunc:=Example5;
  15:TFunc:=Example6;
  16:TFunc:=Example7;
 end;
 if EditName.Text = '' then FunctName:=ComboBoxSimple.Text else FunctName:=EditName.Text;
 EngineFunctions.FunctionsEngines[StrToInt(FList.Strings[ComboBoxFunctions.ItemIndex])]:=
  EFun(FunctName, TFunc, SpinEditorMin.Value, SpinEditorMax.Value,
   StrToFloat(EditXStep.Text), ColorPickerEditor.ColorValue, CheckBoxUse.Checked);

 EngineFunctions.FunctionsEngines[ComboBoxFunctions.ItemIndex].Computed:=False;
 EngineFunctions.ComputeFunction(EngineFunctions.FunctionsEngines[ComboBoxFunctions.ItemIndex]);
 try
  FreeLibrary(HandleDll);
 except
 end;
 ButtonRefreshClick(nil);
end;


procedure TFormCFunction.ButtonNewCompileClick(Sender: TObject);
begin
 FormCompileFunct.Show;
end;

procedure TFormCFunction.ComboBoxSimpleChange(Sender: TObject);
begin
 EditSelfFunction.Enabled:=ComboBoxSimple.ItemIndex = 0;
 ButtonNewCompile.Enabled:=EditSelfFunction.Enabled;
end;

procedure TFormCFunction.FormCreate(Sender: TObject);
begin
 FList:=TStringList.Create;
end;

procedure TFormCFunction.ComboBoxFunctionsChange(Sender: TObject);
var CurFunct:TFunctionEngine;
begin
 if ComboBoxFunctions.ItemIndex < 0 then Exit;
 try
  CurFunct:=EngineFunctions.FunctionsEngines[StrToInt(FList.Strings[ComboBoxFunctions.ItemIndex])];
 except
  begin
   MessageBox(Handle, 'Нажмите "Обновить" и выберите график снова.', '', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 end;
 SpinEditorMin.Value:=Round(CurFunct.MinX);
 SpinEditorMax.Value:=Round(CurFunct.MaxX);
 EditXStep.Text:=FloatToStr(CurFunct.StepX);
 EditName.Text:=CurFunct.Name;
 CheckBoxUse.Checked:=CurFunct.Use;
 ColorPickerEditor.ColorValue:=CurFunct.LineColor;
end;

procedure TFormCFunction.ButtonCheckDllClick(Sender: TObject);
var CustomFunct:TFunction;
    GetName:function():PChar; //stdcall;
    HandleDll:HWND;
    FName:string;
begin
 if FileExists(EditSelfFunction.Text) then
  HandleDll:=LoadLibrary(PChar(EditSelfFunction.Text))
 else
 if FileExists(ExtractFilePath(ParamStr(0))+EditSelfFunction.Text) then
  HandleDll:=LoadLibrary(PChar(ExtractFilePath(ParamStr(0))+EditSelfFunction.Text))
 else
  begin
   MessageBox(Handle, 'Указанный файл не найден.', '', MB_ICONSTOP or MB_OK);
   Exit;
  end;

 @CustomFunct:=GetProcAddress(HandleDll, 'funct');
 if Addr(CustomFunct) = nil then
  begin
   MessageBox(Handle, 'Произошла ошибка при загрузке dll.', '', MB_ICONSTOP or MB_OK);
   Exit;
  end;

 @GetName:=GetProcAddress(HandleDll, 'get_name');
 if Addr(GetName) = nil then
  begin
   MessageBox(Handle, 'Произошла ошибка при загрузке dll.', '', MB_ICONSTOP or MB_OK);
   Exit;
  end;
 FName:=GetName();
 if EditName.Text = '' then EditName.Text:=FName;
 FreeLibrary(HandleDll);
 MessageBox(Handle, PChar('Загрузка прошла успешно, имя функции: "'+FName+'"'), '', MB_ICONINFORMATION or MB_OK);
end;

procedure TFormCFunction.ButtonCorrectClick(Sender: TObject);
begin
 if ComboBoxFunctions.ItemIndex < 0 then
  begin
   MessageBox(Handle, 'График не выбран.', '', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 EngineFunctions.FunctionsEngines[StrToInt(FList.Strings[ComboBoxFunctions.ItemIndex])].Name:=EditName.Text;
 EngineFunctions.FunctionsEngines[StrToInt(FList.Strings[ComboBoxFunctions.ItemIndex])].LineColor:=ColorPickerEditor.ColorValue;
 EngineFunctions.FunctionsEngines[StrToInt(FList.Strings[ComboBoxFunctions.ItemIndex])].Use:=CheckBoxUse.Checked;
end;

procedure TFormCFunction.SpinEditorMinChange(Sender: TObject);
begin
 if CheckBoxFix.Checked then SpinEditorMax.Value:=SpinEditorMin.Value;
end;

procedure TFormCFunction.SpinEditorMaxChange(Sender: TObject);
begin
 if CheckBoxFix.Checked then SpinEditorMin.Value:=SpinEditorMax.Value;
end;

procedure TFormCFunction.ButtonDeleteClick(Sender: TObject);
begin
 if ComboBoxFunctions.ItemIndex < 0 then
  begin
   MessageBox(Handle, 'График не выбран.', '', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 EngineFunctions.Delete(StrToInt(FList.Strings[ComboBoxFunctions.ItemIndex])); 
end;

end.
