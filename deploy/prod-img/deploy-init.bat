rmdir backend /s/q
rmdir frontend /s/q
rmdir startup /s/q
xcopy ..\..\src\backend backend /s/e/i
xcopy ..\..\src\frontend\dist frontend\dist /s/e/i
xcopy ..\..\src\frontend\public frontend\public /s/e/i
xcopy ..\..\src\frontend\src frontend\src /s/e/i
copy ..\..\src\frontend\*.* frontend\ /y
xcopy ..\..\startup startup /s/e/i
pause
