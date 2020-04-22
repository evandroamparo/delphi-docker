@echo off

cd tests\bin\

powershell ".\CalculadoraTests.exe | tee tests.txt"

type tests.txt | findstr OK
