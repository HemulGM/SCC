unit Functions;

interface
 uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
      Forms, Dialogs, ExtCtrls, StdCtrls, Math;


procedure TextOutAdv(Canvas:TCanvas; Angle:Smallint; X, Y:Integer; Text:string; Size:Byte); overload;
procedure TextOutAdv(Canvas:TCanvas; Angle:Smallint; X, Y:Integer; Text:string); overload;
function Darker(Color:TColor; Percent:Byte):TColor;


//Примеры функций графиков
function FSecant(x:Extended):Extended;
function FCos(x:Extended):Extended;
function FSin(x:Extended):Extended;
function FExp(x:Extended):Extended;
function FTan(x:Extended):Extended;
function FCotan(x:Extended):Extended;
function FArcCot(x:Extended):Extended;
function FFloor(x:Extended):Extended;
function FCosecant(x:Extended):Extended;
function Example1(x:Extended):Extended;
function Example2(x:Extended):Extended;
function Example3(x:Extended):Extended;
function Example4(x:Extended):Extended;
function Example5(x:Extended):Extended;
function Example6(x:Extended):Extended;
function Example7(x:Extended):Extended;


implementation

function Example1(x:Extended):Extended;
begin
 try
  Result:=2 * Sin(x) * exp(x / 5);
 except
  Result:=x;
 end;
end;

function Example2(x:Extended):Extended;
begin
 try
  Result:=Power(x, 3);
 except
  Result:=x;
 end;
end;

function Example3(x:Extended):Extended;
begin
 try
  Result:=Power(X, 3)-5*Power(X, 2)+20;
 except
  Result:=x;
 end;
end;

function Example4(x:Extended):Extended;
begin
 try
  Result:=Power(X, 3)+X+1;
 except
  Result:=x;
 end;
end;

function Example5(x:Extended):Extended;
begin
 try
  Result:=2*Power(X, 3);
 except
  Result:=x;
 end;
end;

function Example6(x:Extended):Extended;
begin
 try
  Result:=2*Power(X, 2)+3*x+4;
 except
  Result:=x;
 end;
end;

function Example7(x:Extended):Extended;
begin
 try
  Result:=sin(x * 0.5);
 except
  Result:=x;
 end;
end;

function FCos(x:Extended):Extended;
begin
 try
  Result:=Cos(x);
 except
  Result:=x;
 end;
end;

function FSin(x:Extended):Extended;
begin
 try
  Result:=Sin(x);
 except
  Result:=x;
 end;
end;

function FExp(x:Extended):Extended;
begin
 try
  Result:=Exp(x);
 except
  Result:=x;
 end;
end;

function FTan(x:Extended):Extended;
begin
 try
  Result:=Tan(x);
 except
  Result:=x;
 end;
end;

function FCotan(x:Extended):Extended;
begin
 try
  Result:=Cotan(x);
 except
  Result:=x;
 end;
end;

function FArcCot(x:Extended):Extended;
begin
 try
  Result:=ArcCot(x);
 except
  Result:=x;
 end;
end;

function FFloor(x:Extended):Extended;
begin
 try
  Result:=Floor(x);
 except
  Result:=x;
 end;
end;

function FCosecant(x:Extended):Extended;
begin
 try
  Result:=Cosecant(x);
 except
  Result:=x;
 end;
end;

function FSecant(x:Extended):Extended;
begin
 try
  Result:=Secant(x);
 except
  Result:=x;
 end;
end;

function Darker(Color:TColor; Percent:Byte):TColor;
var
  r, g, b: Byte;
begin
  Color:=ColorToRGB(Color);
  r:=GetRValue(Color);
  g:=GetGValue(Color);
  b:=GetBValue(Color);
  r:=r-muldiv(r,Percent,100);  //процент% уменьшения яркости
  g:=g-muldiv(g,Percent,100);
  b:=b-muldiv(b,Percent,100);
  result:=RGB(r,g,b);
end;

procedure TextOutAdv(Canvas:TCanvas; Angle:Smallint; X, Y:Integer; Text:string); overload;
var logfont: TLogFont;
 haFont:HFONT;
begin
 logfont.lfheight:=Canvas.Font.Height;                                          //
 logfont.lfWidth:=0;
 logfont.lfweight:=0;
 if fsBold in Canvas.Font.Style then logfont.lfweight:=FW_BOLD;                 //Жирный
 StrPCopy(logfont.lfFaceName, Canvas.Font.Name);                                //Шрифт
 logfont.lfItalic:=Ord(fsItalic in Canvas.Font.Style);                          //Курсив
 logfont.lfUnderline:=Ord(fsUnderline in Canvas.Font.Style);                    //Подчеркивание
 logfont.lfStrikeOut:=Ord(fsStrikeOut in Canvas.Font.Style);                    //Перечеркивание
 LogFont.lfEscapement := 10*(Angle);                                            //Угол
 logfont.lfcharset := DEFAULT_CHARSET;                                          //Набор символов
 logfont.lfoutprecision := OUT_DEFAULT_PRECIS;                                  //Точность
 logfont.lfquality := ANTIALIASED_QUALITY;                                      //Качество
 logfont.lfpitchandfamily := FF_DONTCARE;                                       //
 haFont:=createfontindirect(logfont);
 Selectobject(canvas.handle, haFont);
 textout(canvas.handle, X, Y, PChar(Text), Length(Text));
 Deleteobject(haFont);
end;

procedure TextOutAdv(Canvas:TCanvas; Angle:Smallint; X, Y:Integer; Text:string; Size:Byte); overload;
var logfont: TLogFont;
 haFont:HFONT;
begin
 LogFont.lfheight:=-MulDiv(Size, Canvas.Font.PixelsPerInch, 72);
 logfont.lfWidth:=0;
 logfont.lfweight:=0;
 if fsBold in Canvas.Font.Style then logfont.lfweight:=FW_BOLD;                 //Жирный
 StrPCopy(logfont.lfFaceName, Canvas.Font.Name);                                //Шрифт
 logfont.lfItalic:=Ord(fsItalic in Canvas.Font.Style);                          //Курсив
 logfont.lfUnderline:=Ord(fsUnderline in Canvas.Font.Style);                    //Подчеркивание
 logfont.lfStrikeOut:=Ord(fsStrikeOut in Canvas.Font.Style);                    //Перечеркивание
 LogFont.lfEscapement := 10*(Angle);                                            //Угол
 logfont.lfcharset := DEFAULT_CHARSET;                                          //Набор символов
 logfont.lfoutprecision := OUT_DEFAULT_PRECIS;                                  //Точность
 logfont.lfquality := ANTIALIASED_QUALITY;                                      //Качество
 logfont.lfpitchandfamily := FF_DONTCARE;                                       //
 haFont:=createfontindirect(logfont);
 Selectobject(canvas.handle, haFont);
 textout(canvas.handle, X, Y, PChar(Text), Length(Text));
 Deleteobject(haFont);
end;

//Пережитки прошлого =)

{function TEngine.DrawFunction(Func:TFunction; LineColor:TColor):Cardinal;
var X, Y, XXMax, XXMin, TMPMin, TMPMax:Extended;
begin
 Result:=0;
 if XStep = 0 then Exit;
 //left Trunc((0-CenterPos.X) / Step)-1
 //right Trunc((Width-CenterPos.X) / Step)+1
 TMPMin:=Min(MinX, MaxX);
 TMPMax:=Max(MinX, MaxX);
 if TMPMax > Trunc((Width-CenterPos.X) / Step)+1 then XXMax:=Trunc((Width-CenterPos.X) / Step)+1 else XXMax:=TMPMax;
 if TMPMin < Trunc((0-CenterPos.X) / Step)-1 then XXMin:=Trunc((0-CenterPos.X) / Step)-1 else XXMin:=TMPMin;
 X:=XXMin;
 Y:=Func(X);                                                                    //Вычисляем первое значение по зад. функции
 Draw.Canvas.Pen.Color:=LineColor;                                              //Цвет графика
 Draw.Canvas.MoveTo(Round(X * Step)+CenterPos.X, -Round(Y* Step)+CenterPos.Y);  //Рисуем
 IncEx(X, XStep);                                                               //Увеличиваем X на зад. шаг
 Result:=1;                                                                     //Кол-во исп. точек
 while X < XXMax do
  begin
   IncEx(X, XStep);                                                             //Увеличиваем X на зад. шаг
   Y:=Func(X);                                                                  //Вычисляем значение по зад. функции
   Draw.Canvas.LineTo(Round(X * Step)+CenterPos.X, -Round(Y* Step)+CenterPos.Y);//Рисуем точку
   Inc(Result);                                                                 //Увелич. кол-во исп. точек
  end;
end;  }

{procedure TEngine.CalculateGraph(What:Byte);
var xRangePixels, yRangePixels: Integer;
   radian, interval: Double;
   i: Integer;
begin
 //FPoints:array [0..255] of TPoint;                                            //Полигон для графика функции
 //procedure CalculateGraph(What:Byte);                                         //Вычислить функцию и построить полигон точек
 xRangePixels:=(Round(Step*MaxX*2) - 2) div 4;
 yRangePixels:=(Round(Step*MinX*2) - 2) div 2;
 radian:= -2.0 * Pi;
 interval:= 4.0 * Pi / 255.0;
 for i := 0 to High(FPoints) do
  begin
   FPoints[i].X:=CenterPos.X + Round(radian * xRangePixels / Pi);
   case What of
    1:FPoints[i].Y:=CenterPos.Y - Round(Cos(radian)      * yRangePixels);
    2:FPoints[i].Y:=CenterPos.Y - Round(Sin(radian)      * yRangePixels);
    3:FPoints[i].Y:=CenterPos.Y - Round(Exp(radian)      * yRangePixels);
    4:FPoints[i].Y:=CenterPos.Y - Round(Tan(radian)      * yRangePixels);
    5:FPoints[i].Y:=CenterPos.Y - Round(Cotan(radian)    * yRangePixels);
    6:FPoints[i].Y:=CenterPos.Y - Round(ArcCot(radian)   * yRangePixels);
    7:FPoints[i].Y:=CenterPos.Y - Round(Floor(radian)    * yRangePixels);
    8:FPoints[i].Y:=CenterPos.Y - Round(Cosecant(radian) * yRangePixels);
    9:FPoints[i].Y:=CenterPos.Y - Round(Secant(radian)   * yRangePixels);
   10:FPoints[i].Y:=CenterPos.Y - Round(f(radian)        * yRangePixels);
   end;
   radian:=radian+interval;
  end;
end; }

end.
 