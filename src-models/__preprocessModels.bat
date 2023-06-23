
for /R ..\input\fsh\models %%f in (*.fsh) do (
	echo %%f
 CALL :processFshFile %%f  
)


:processFshFile

 fart %~1  \"Description: Description:
 fart %~1  \"Title: Title:
 fart %~1  "\"* " "* "
 fart %~1  ##334#\" \"\"\"
 fart %~1  ##334# \"\"\"
 fart %~1  ##34#\" \"
 fart %~1  ##34# \" 
 
 GOTO :EOF


