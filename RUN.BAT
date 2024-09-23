@ECHO OFF
REM LOCAL.BAT is a batch file that isn't checked in and sets the x16 variable. For example:
REM SET x16=D:\Emulated Systems\Commander x16\x16emu.exe

CALL LOCAL.BAT
START "" "%x16%" -prg "%cd%\swreck.prg" -run -rtc -joy1
