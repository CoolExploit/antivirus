REM ENABLE COMPLETE MEMORY DUMP

REG ADD HKLM\SYSTEM\CurrentControlSet\Control\CrashControl /v CrashDumpEnabled /t REG_DWORD /d 0x1 /f

REM ENABLE DUMP VIA PS/2

REG ADD “HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters” /v CrashOnCtrlScroll /t REG_DWORD /d 1 /f

REM ENABLE DUMP VIA USB

REG ADD “HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters” /v CrashOnCtrlScroll /t REG_DWORD /d 1 /f