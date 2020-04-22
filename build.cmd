@echo off

msbuild /target:Build /property:config=Release /verbosity:quiet /nologo tests\CalculadoraTests.dproj

if %ERRORLEVEL% neq 0 exit /b 1
