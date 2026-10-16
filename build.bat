@echo off
cd /d "%~dp0"
call npm install || goto err
if not exist lib mkdir lib
copy /Y node_modules\three\build\three.min.js lib\three.min.js || goto err
call npm run dist || goto err
echo.
echo BITTI: dist klasorundeki "Adanin Kalbi *.exe" dosyasi oyununuz.
pause
exit /b 0
:err
echo HATA olustu. Node.js kurulu mu? https://nodejs.org
pause
