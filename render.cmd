/* REXX procedure to render a Povray scene file */
/* Copyright (C) 2000, Stefan Schwarzer                 */
call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

options = ''
PARSE ARG povfile
olddir = DIRECTORY()

/* execute if called without argument */
IF povfile = '' THEN DO
    SAY 'Povray scene file (with drive and full path):'
    PULL povfile
    SAY 'Options:'
    PULL options
END

fullpath = FILESPEC("drive",povfile)FILESPEC("path",povfile)
fullpath = DELSTR(fullpath,LENGTH(fullpath))
CALL DIRECTORY fullpath

'@povray 'options' +i 'povfile

CALL DIRECTORY olddir

