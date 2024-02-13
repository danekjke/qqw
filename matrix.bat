setlocal enabledelayedexpansion 
:: Отключаем вывод. 
echo off 
:: Задаём заголовок окошка. 
title It's Matrix 
color 02 
:: Отчищаем экран командной строки. 
cls 
:: Ставим метку для создания замкнутого цикла. 
:prodolgit 
:: Задаём цикл со сменой цветов в случайном порядке, но в заданном диапазое. 
set stroka= 
for /l %%i in (0,1,78) do ( 
set /a vremenno=!random!%%2 
set stroka=!stroka!!vremenno! 
) 
set /a generate=!random!% 
if %generate%==0 (color 0A) else (color 02) 
:: Выводим матрицу на экран. 
echo %stroka% 
:: Переходим по метке. 
goto prodolgit 