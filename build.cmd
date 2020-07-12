@echo off

msbuild /target:Build /property:config=Release /nologo Projects.groupproj

if %ERRORLEVEL% neq 0 exit /b 1
