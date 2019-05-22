library CustomFunction;

uses SysUtils, Classes, Math;

{
 Здесь вы можете редактировать код (текст библиотеки)
 как угодно, но придерживаясь правил программирования Pascal.

 Примеры:
 **********************
 function funct(x:Extended):Extended; stdcall;
 begin
  Result:=Sin(x);
 end;
 **********************
 Тригонометрические функции
 Cos(x) - Косинус
 Sin(x) - Синус
 Tan(x) - Тангенс
 Cotan(x) - Катангенс
 ArcCot(x) - Арккотангенс
 Cosecant(x) - Косеканс
 Secant(x) - Секанс
 **********************
 Floor(x) - Лесница
 Exp(x) - Экспанента
 Power(x) - Возведение в степень
 **********************
 Квадратное уравнение

 function funct(x:Extended):Extended; stdcall;
 begin
  //2x^2+3x+6 -- Два x в квадрате, плюс три x, плюс шесть
  Result:=(2*Power(x, 2))+(3*x)+6;
 end;
}
function funct(x:Extended):Extended; stdcall;
begin
 Result:=Sin(x);
end;

exports funct;

begin

end.
