@echo off

%~d0

cd %~dp0

set folder=%cd%
set input=
:begin
echo �������ļ���ע�͵����ݣ��˳�����Q
set tip=
set /p tip=:
set tip2=%tip: =_%
rem echo %tip2%
if /i %tip2%==q (goto quit) else (
		if exist Desktop.ini (attrib -s -h Desktop.ini)
		echo [.ShellClassInfo] > Desktop.ini
		echo InfoTip=%tip% >> Desktop.ini
		attrib +s +h Desktop.ini
		echo %folder%
		attrib +r %folder%
		echo ������ɣ��˳�������Q
		goto begin
)
:quit
exit
