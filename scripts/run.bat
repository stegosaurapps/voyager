@echo off
setlocal

set "SBCL=C:\Users\bonha\portacle\win\bin\sbcl.exe"
set "SCRIPT=%~dp0..\src\main.lisp"

REM sanity checks so errors are obvious
if not exist "%SBCL%" (
  echo ERROR: SBCL not found at "%SBCL%"
  pause
  exit /b 1
)
if not exist "%SCRIPT%" (
  echo ERROR: Lisp file not found at "%SCRIPT%"
  pause
  exit /b 1
)

"%SBCL%" --no-userinit --load "%SCRIPT%" --eval "(main)" --quit

echo.
