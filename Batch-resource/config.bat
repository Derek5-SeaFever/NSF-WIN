@echo off
REG EXPORT "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" %~dp0bkp\backup.reg /y
echo �ļ�����·��:%~dp0bkp\backup.reg
echo ���Ժ�...
for /f "tokens=3"  %%i in (' REG QUERY "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path ') do ( set cPath=%%i )
set newPath=%cPath%%~dp0;
wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%newPath%"
echo �����������!�밴������˳�������
pause >nul
del %~dp0config.bat