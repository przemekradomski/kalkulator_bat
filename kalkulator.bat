@echo off

setlocal enabledelayedexpansion
title kalkulator

:menu
set /p num1=Podaj 1 liczbe: 
set /p num2=Podaj 2 liczbe: 

echo Wybierz dzialanie matematyczne
echo 1: Dodawanie
echo 2: Odejmowanie
echo 3: Mnozenie
echo 4: Dzielenie

set /p choice=Wybierz opcje 1,2,3 lub 4: 

if %choice% EQU 1 (
	call :add
	echo !result1!
	pause
) else if %choice% EQU 2 (
	call :subtraction
	echo !result2!
	pause
) else if %choice% EQU 3 (
	call :multiplication
	echo !result3!
	pause
) else if %choice% EQU 4 (
	call :division
	echo !result4!
	pause
) else (
	echo Nieprawidlowa opcja!
)

:add
set /a result1=%num1%+%num2%
exit /b 
:subtraction
set /a result2=%num1%-%num2%
exit /b
:multiplication
set /a result3=%num1%*%num2%
exit /b 
:division
set /a result4=%num1%/%num2%
exit /b


goto menu

:end
echo Koniec prgramu
exit