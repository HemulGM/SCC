library F_2x2+3x+6;

uses SysUtils, Classes, Math;

{
�� ������� ������� �� �����

 �������:
 **********************
 function funct(x:Extended):Extended; stdcall;
 begin
  Result:=Sin(x);
 end;
 **********************
 ������������������ �������
 Cos(x) - �������
 Sin(x) - �����
 Tan(x) - �������
 Cotan(x) - ���������
 ArcCot(x) - ������������
 Cosecant(x) - ��������
 Secant(x) - ������
 **********************
 Floor(x) - �������
 Exp(x) - ����������
 Power(x) - ���������� � �������
 Abs(x) - ��������� ������
 Round(x) - ����������
 Trunc(x) - ��������� ������� �����
 Inc(x) - ��������� x �� 1
 Inc(x, n) - ��������� x �� n
 Dec(x) - ��������� x �� 1
 Dec(x, n) - ��������� x �� n
 Sqr(x) - ������� x
 Sqrt(x) - ������ ����� x
 **********************
 ������ �������: ���������� ���������

 function funct(x:Extended):Extended; stdcall;
 begin
  //2x^2+3x+6 -- ��� x � ��������, ���� ��� x, ���� �����
  Result:=(2*Power(x, 2))+(3*x)+6;
 end;
 
 ���������:
  := - ���������
  + - �������   (X+1)
  - - �������   (X-1)
  * - ��������  (X*2)
  / - ��������� (X/2)
 �������� �����������: if then else (����, ��, � ��������� ������) 
 ��������: 
  if x = 2 then x:=x+3; (���� x ����� 2, �� ����������� x �� 3)
  if x = 2 then x:=x+3 else x:=x-2; (���� x ����� 2, �� ����������� x �� 3, � ��������� ������ ��������� x �� 2)
  if (x < 2) or (x = 3) then Dec(x, 3.4); (���� x ������ 2 ��� x ����� 3, �� ��������� x �� 3.4)
  
  or - ���������� "���" 
  and - ���������� "�"
  not - ���������� "��"
  mod - ������� �� �������
  div - ������� ������
  < - ������
  > - ������
  = - �����
  <> - �������
  <= - ������ ���� �����
  >= - ������ ���� �����

  ���, ���� ����������� ��������� ����� ������ ��� ���������� ������� � Delphi.
}


function funct(x:Extended):Extended; stdcall;
begin
 //������� �������������� ���������, ����������� �������,
 //��������� ����������� ������� � ��������� ����� Pascal - Delphi
 //�� �������� ������� ���������: ��������� Result ��������� ����� �������.
 //Result:=Power(x, 2);
 //Result:=Sqrt(x);
 Result:=Sin(x)*(x+2)+6;
end;

exports funct;

begin

end.
