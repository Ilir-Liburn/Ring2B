@echo off
if exist "backup" goto restore
mkdir backup
cd backup
mkdir tools
cd tools
mkdir ring2exe
copy ..\..\tools\ring2exe\ring2exe.ring ring2exe
cd ..
mkdir libraries
cd libraries
mkdir stdlib
copy ..\..\libraries\stdlib\stdlibcore.ring stdlib
cd ..
mkdir lib
copy ..\lib\ring.exp lib
copy ..\lib\ring.lib lib
copy ..\lib\ringstatic.lib lib
mkdir bin
copy ..\bin\ring.dll bin
copy ..\bin\ring.exe bin
copy ..\bin\ringw.exe bin
copy ..\bin\ring2exe.exe bin
copy ..\bin\ringpm.exe bin
cd ..
goto end
:restore
cd backup
copy tools\ring2exe\ring2exe.ring ..\tools\ring2exe
copy libraries\stdlib\stdlibcore.ring ..\libraries\stdlib
copy lib\ring.exp ..\lib
copy lib\ring.lib ..\lib
copy lib\ringstatic.lib ..\lib
copy bin\ring.dll ..\bin
copy bin\ring.exe ..\bin
copy bin\ringw.exe ..\bin
copy bin\ring2exe.exe ..\bin
copy bin\ringpm.exe ..\bin
cd ..
del bin\sign2b.exe
del lib\ring.exe
del lib\ringw.exe
del lib\ringpm.exe
del lib\ring2exe.exe
gcc 2>NUL && del lib\ring_static.lib
gcc 2>NUL && del lib\ring_dll.lib
:end
