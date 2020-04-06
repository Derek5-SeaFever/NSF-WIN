@echo off
REG EXPORT "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" %~dp0bkp\backup.reg /y
echo 文件备份路径:%~dp0bkp\backup.reg
echo 请稍后...
for /f "tokens=3"  %%i in (' REG QUERY "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path ') do ( set cPath=%%i )
set newPath=%cPath%%~dp0;
wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%newPath%"
echo 程序运行完毕!请按任意键退出本程序！
pause >nul
del %~dp0config.bat