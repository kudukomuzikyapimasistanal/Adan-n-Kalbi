@echo off
cd /d "%~dp0"
call npm install || goto err
if not exist lib mkdir lib
copy /Y node_modules\three\build\three.min.js lib\three.min.js || goto err
call npm start
exit /b 0
:err
echo HATA olustu. Node.js kurulu mu? https://nodejs.org
pause
