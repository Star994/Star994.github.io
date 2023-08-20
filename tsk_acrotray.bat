@echo off
tasklist | findstr acrotray.exe && echo return code %errorlevel%
tasklist | findstr adobe && echo return code %errorlevel%
if %errorlevel%==0 ( 
taskkill  /F /IM acrotray.exe /t 
taskkill  /F /IM adobe /t 
) else (
 echo acrotray.exe is not running.
)
 pause > nul
timeout /t 3