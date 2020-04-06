@echo off
title USE控制台
cls
:change_mirror
echo --------------
echo Which mirror will you choose?
set /p choice= [32mYour decision is[37m:
echo --------------

if "%choice%" == "npm" (
	call %~dp0npm.bat
	call %~dp0showMirror.bat
	goto end
)
if "%choice%" == "cnpm" (
	call %~dp0cnpm.bat
	call %~dp0showMirror.bat
	goto end
)
if "%choice%" == "taobao" (
	call %~dp0taobao.bat
	call %~dp0showMirror.bat
	goto end
)
if "%choice%" == "nj" (
	call %~dp0nj.bat
	call %~dp0showMirror.bat
	goto end
)
if "%choice%" == "rednpm" (
	call %~dp0rednpm.bat
	call %~dp0showMirror.bat
	goto end
)
if "%choice%" == "npmMirror" (
	call %~dp0npmMirror.bat
	call %~dp0showMirror.bat
	goto end
)
if "%choice%" == "edunpm" (
	call %~dp0edunpm.bat
	call %~dp0showMirror.bat
	goto end
)
if "%choice%" == "huawei" (
	call %~dp0huawei.bat
	call %~dp0showMirror.bat
	goto end
)


:use_listMirror
if "%choice%" == "list"(call %~dp0use\ulist.bat & goto change_mirror)
if "%choice%" == "ls" (call %~dp0use\ulist.bat & goto change_mirror)

:exit_use
if "%choice%" == "exit" (call %~dp0use\ulist.bat & goto end)
if "%choice%" == "close" (call %~dp0use\ulist.bat & goto end)
if "%choice%" == "nsf" (call %~dp0use\ulist.bat & goto end)

:other
call %~dp0use\uhelp.bat & goto change_mirror

:end
