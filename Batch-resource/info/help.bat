cls
title NSF帮助手册
echo [33m^>^>[37m打开USE控制台
echo [36mnsf [-u ^| -use ^| --use][37m

echo [33m^>^>[37m直接更改下载镜像源
echo [36mnsf [-npm ^| -huawei ^| -taobao ^|...] [37m
echo [36mnsf [--npm ^| --huawei ^| --taobao ^|...][37m
echo [35m--^>  [32m相关参数是镜像名[37m
echo [35m--^>  [32m如果不清楚相关镜像名，可以打开 USE控制台,输入 list 或 ls 进行查看[37m

echo [33m^>^>[37m查看镜像列表
echo [36mnsf [-ls ^| -list ^| --list ^| list][37m

echo [33m^>^>[37m查看当前镜像地址
echo [36mnsf [-s ^| -show ^| --show ^| show][37m

echo [33m^>^>[37m查看 NSF 版本信息
echo [36mnsf [-v ^| -version ^| --version ^| version][37m

echo [33m^>^>[37m查看 NSF 帮助手册
echo [36mnsf [-h ^| -help ^| --help ^| help ^| ? ^| /?][37m
echo --------------
call %~dp0info.bat
