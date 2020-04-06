@echo off
title NSF¿ØÖÆÌ¨

:show_current
if "%1" == "-s" (call %~dp0bin\showMirror.bat & goto end)
if "%1" == "-show" (call %~dp0bin\showMirror.bat & goto end)
if "%1" == "--show" (call %~dp0bin\showMirror.bat & goto end)
if "%1" == "show" (call %~dp0bin\showMirror.bat & goto end)

:get_version
if "%1" == "-v" (call %~dp0info\version.bat & goto end)
if "%1" == "-version" (call %~dp0info\version.bat & goto end)
if "%1" == "--version" (call %~dp0info\version.bat & goto end)
if "%1" == "version" (call %~dp0info\version.bat & goto end)

:get_help
if "%1" == "-h" (call %~dp0info\help.bat & goto end)
if "%1" == "-help" (call %~dp0info\help.bat & goto end)
if "%1" == "--help" (call %~dp0info\help.bat & goto end)
if "%1" == "help" (call %~dp0info\help.bat & goto end)
if "%1" == "?" (call %~dp0info\help.bat & goto end)
if "%1" == "/?" (call %~dp0info\help.bat & goto end)

:get_list
if "%1" == "-ls" (call %~dp0bin\use\ulist.bat & goto end)
if "%1" == "-list" (call %~dp0bin\use\ulist.bat & goto end)
if "%1" == "--list" (call %~dp0bin\use\ulist.bat & goto end)
if "%1" == "list" (call %~dp0bin\use\ulist.bat & goto end)

:changeMirror
	:-parameter
	if "%1" == "-npm" (call %~dp0bin\npm.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "--npm" (call %~dp0bin\npm.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "-cnpm" (call %~dp0bin\cnpm.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "--cnpm" (call %~dp0bin\cnpm.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "-taobao" (call %~dp0bin\taobao.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "--taobao" (call %~dp0bin\taobao.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "-nj" (call %~dp0bin\nj.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "--nj" (call %~dp0bin\nj.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "-rednpm" (call %~dp0bin\rednpm.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "--rednpm" (call %~dp0bin\rednpm.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "-npmMirror" (call %~dp0bin\npmMirror.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "--npmMirror" (call %~dp0bin\npmMirror.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "-edunpm" (call %~dp0bin\edunpm.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "--edunpm" (call %~dp0bin\edunpm.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "-huawei" (call %~dp0bin\huawei.bat & call %~dp0bin\showMirror.bat & goto end)
	if "%1" == "--huawei" (call %~dp0bin\huawei.bat & call %~dp0bin\showMirror.bat & goto end)
	:use_xxx
	if "%1" == "-u" (call %~dp0bin\use.cmd & goto end)
	if "%1" == "-use" (call %~dp0bin\use.cmd & goto end)
	if "%1" == "--use" (call %~dp0bin\use.cmd & goto end)

:no_parameter
if "%1" == "" (call %~dp0info\help.bat & goto end)

:error_parameter
call %~dp0info\error.bat

:end