REM =======================================================================================
## BASLOAD ISO CRLF 
##
## Commander X16 version of the 40+ year old classic Star Trek Main Frame game
## Converted - Written in Sept 2024 to keep some programmers sane... 
## BASE CODE: https://github.com/philspil66/Super-Star-Trek
##
## (C)HUMANKIND 2024 -  If you have arms and legs...  FREEWARE 
REM =======================================================================================
#CONTROLCODES 1
#SYMFILE "@:SWRECK.SYM"
REM #SAVEAS "@:SWRECK.PRG"

GOSUB INIT1TIME

START_RESTART:
	CLS	
	PRINT "PRESS ANY KEY"
	GOSUB KB_JOY_KEYS_GET
	
	GOTO END_PRG
	
INIT1TIME:	
	GOSUB SAVE_ENV : SCREEN $80 : POKE $030C,4 : SYS $FF62 	: REM --- CHANGE TO THIN PET UPPER/GRAPHICS
	GOSUB INIT_COLORS
	DIM TMP : DIM TMP$ 			: REM --- JUST TMP VARS THAT CAN BE USED
	DIM KB_STR$					: REM --- RETURNED FROM KB_JOY_KEYS_GET SUB
	GOSUB DETECT_IF_JOYSTICK : RETURN
		
END_PRG:	
	GOTO CLOSE_APP


	
	
rem FUNCTION strCenterString AS STRING * 96 (xText AS STRING * 94, xWidth AS BYTE) STATIC SHARED
rem	mTMP = (xWidth - LEN(xText)) / 2
rem	RETURN (strSTRINGS(mTMP," ") + xText + strSTRINGS(mTMP," "))
rem END FUNCTION	
	
REM =======================================================================================	
	
REM ----------------  INCLUDE FILES HERE ----
REM -- GENERIC KB / MOUSE ROUTINES, CALL THESE FOR ANY-ALL INPUT
#INCLUDE "\INCLUDE_SRC\KEYS-MOUSE.BL" 

REM -- GENERIC SAVES / RESTORES ENV
#INCLUDE "\INCLUDE_SRC\ENV-SAVE-LOAD.BL" 
#INCLUDE "\INCLUDE_SRC\SYSTEM.BL" 
#INCLUDE "\INCLUDE_SRC\COLORS.BL"

REM #INCLUDE "\include_src\SW-MENU.BAS"
