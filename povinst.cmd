/* REXX procedure to install a Povray folder on the WPS */
/* Copyright (C) 2000, Stefan Schwarzer                 */
call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

/* determine some paths */
olddir = DIRECTORY()

/* determine installation path */
PARSE SOURCE command
command = WORD(command,3)

instdir = FILESPEC("drive",command)FILESPEC("path",command)
instdir = DELSTR(instdir,LENGTH(instdir))
CALL DIRECTORY instdir

/* set icons for povray.exe and render.cmd */
cmdpath = instdir'\'povray.exe
povicon = instdir'\'povray.ico
CALL SysSetIcon cmdpath, povicon

cmdpath = instdir'\'render.cmd
CALL SysSetIcon cmdpath, povicon

/* create desktop folder */
IF \SysCreateObject("WPFolder","Povray 3.1g for OS/2",,
  "<WP_DESKTOP>","OBJECTID=<WP_POVFOLDER>","replace") THEN
    SAY "Warning: can't create Povray folder"

/* create renderer object */
cmdpath = instdir'\'render.cmd
povicon = instdir'\'povray.ico
IF \SysCreateObject("WPProgram","Render scene","<WP_POVFOLDER>",,
  "EXENAME="cmdpath";ICONFILE="povicon";ASSOCFILTER=*.POV","replace") THEN
    SAY "Warning: can't create renderer object"

/* create help object */
infpath = instdir'\'povuser.inf
IF \SysCreateObject("WPProgram","Povray user's manual","<WP_POVFOLDER>",,
  "EXENAME=view.exe;PARAMETERS="infpath,"replace") THEN
    SAY "Warning: can't create help object"

/* create object to render all example scenes */
cmdpath = instdir'\'allscene.cmd
IF \SysCreateObject("WPProgram","Render all samples","<WP_POVFOLDER>",,
  "EXENAME="cmdpath,"replace") THEN
    SAY "Warning: can't create render samples object"


/* if requested, delete some files */
PARSE UPPER ARG option
IF \(option = '/D') & \(option = '-D') THEN
    EXIT

/* delete the files */
files = 'allscene.ini allscene.sh htm2html install povray.1 povuser.txt ',
    'rerunpov.sh runpov.sh xpovicon.xpm source\* source\os2\* tools\*',
    'watcom\*'

DO i = 1 TO WORDS(files)
    file = WORD(files,i)
    SAY 'Deleting' file
    '@del' file '/N'
END

dirs = 'source\os2 source tools watcom'

DO i = 1 TO WORDS(dirs)
    dir = WORD(dirs,i)
    SAY 'Deleting' dir
    CALL SysRmDir(dir)
END

/* set old directory */
CALL DIRECTORY olddir

