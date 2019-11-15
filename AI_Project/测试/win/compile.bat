setlocal enabledelayedexpansion
call "C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\vcvarsall.bat"
for /d %%i in (.\Sourcecode\*) do (
cl %%i\*.cpp /O2 /Oi /GL /openmp /D "WIN32" /D "NDEBUG" /D " _CONSOLE" /D "_WINDLL" /D "_UNICODE" /D "UNICODE" /FD /EHsc /MD /Gy /Fo".\\TempResult\\" /Fd".\\TempResult\vc100.pdb" /W3 /c /Zi /TP /nologo /errorReport:prompt
link .\TempResult\*.obj /OUT:".\\TempResult\\Strategy.dll" /INCREMENTAL:NO /DLL /MANIFEST /MANIFESTFILE:".\\TempResult\\Strategy.dll.intermediate.manifest" /MANIFESTUAC:"level='asInvoker' uiAccess='false'" /DEBUG /PDB:".\\TempResult\\Strategy.pdb" /SUBSYSTEM:CONSOLE /OPT:REF /OPT:ICF /LTCG /DYNAMICBASE /NXCOMPAT /MACHINE:X86 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /NOLOGO /ERRORREPORT:PROMPT
copy .\TempResult\Strategy.dll .\dll\
mt /outputresource:".\dll_error\Strategy.dll;#2" /manifest .\TempResult\Strategy.dll.intermediate.manifest /nologo
set a=%%i
ren .\dll\Strategy.dll !a:.\Sourcecode\=!.dll
del /q .\TempResult\*.*
)