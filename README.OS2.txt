
                    Povray 3.1g for OS/2 - README file


---------------------------------------------------------------------------
What is Povray?

Povray is a so-called ray tracing program. Given a scene description in a
special language, the program is able to calculate impressive pictures
which include reflections, transparancy, textures and much more. To see
examples, visit http://www.povray.org/ or render the example scenes.

Since this is only a port specific README, I recommend to read the
information that is contained in the file povuni_d.zip :-) . The user
manual is also available in OS/2 help file format.


---------------------------------------------------------------------------
Changes to the official files

I didn't change anything in the files of povuni_d.zip. I only extracted
the files of povuni_d.tgz and packed them again as zip, since this is more
convenient for most OS/2 users and required for the upload to Hobbes. (The
file povlegal.doc states that re-archiving is only allowed with explicit
permission of the POV-Team, which I got from Chris Cason :-) .)

I made some minor changes to the source code files from the general Unix
distribution; you can find them in the source/ subdirectory. Each file
documents the changes I have made.


---------------------------------------------------------------------------
OS/2 specific properties of this port

WPS installation: There is a REXX script that will put a folder on the
desktop. You can drop *.pov files on the renderer object in this folder to
execute Povray on this scene file. Furthermore, this renderer object is
associated with *.pov files, so you may double-click on a scene file to
render it (with the default settings of your Povray init file, see below).

OS/2 help file: The HTML help files were translated to OS/2's native help
file format. So the whole user manual is in a single file and can be easily
searched. The official HTML help is available from http://www.povray.org/
(search for "documentation").

allscene script: I translated the Unix shell script allscene.sh to a Rexx
equivalent, allscene.cmd.

POVNOBEEP environment variable: This port uses an environment variable
named POVNOBEEP. Normally, Povray emits a double beep when it finishes the
rendering of a scene. If that annoys you, set POVNOBEEP to an arbitrary
value, e. g. 1. Otherwise, the program exhibits its default behaviour.


---------------------------------------------------------------------------
Installation

1. Extract povuni_d.zip and povos2_31g.zip in the same directory where the
files should be kept, that is, their final locations. You may use
Infozip's unzip program for this which can be found on Hobbes
(http://hobbes.nmsu.edu/). Both archives are extracted to a tree starting
with povray31/ in your chosen directory. The order of the unzip runs
doesn't matter.

2. Edit your CONFIG.SYS file so that it contains entries for POVINI, the
default initialization file for Povray, and optionally for POVNOBEEP (see
above). Use backslashes in your POVINI variable, for example
SET POVINI=e:\povray31\povray.ini
SET POVNOBEEP=1

For more on Povray's initialization procedure please consult the user's
manual.

3. If you have the Workplace Shell (WPS) running, change to the directory
where the file povinst.cmd is located and start it. (As an alternative,
start it from the WPS.) The script will generate a Povray folder on the
desktop with two program objects and a help file object in it. (Note: If
you call the script from the command line and supply a parameter /d, files
that aren't needed to run this OS/2 port will be deleted. This includes
original Unix shell scripts and my files to recompile the port.)

4. Reboot. (You may do without this step if you modify the render.cmd
script instead of your CONFIG.SYS.)


---------------------------------------------------------------------------
Compiling

I translated Povray's sources with the Watcom C 11b compiler (with
Pentium optimizations). If you use this compiler, too, you may use the
project file and the target files in the watcom/ directory. All is set up
so that the watcom/ directory has to be "parallel" to the source/
directory.

For other compilers, the IDE-generated makefiles may be helpful.

If you want to recompile the program, you have to get the file
povuni_s.tgz with the source code from http://www.povray.org/. If you want
to use my changes to the source files, extract povos2.zip once more *after*
you have extracted povuni_s.tgz to have some of the original files
overwritten.

===========================================================================
Then, change the file source/optout.h, so that it contains *your* name for
the new executable; I'm not responsible for your changes!
===========================================================================

Now you may change and compile the source. For consecutive distributions
take a look at your duties, especially in the file povlegal.doc.


---------------------------------------------------------------------------
To do

- graphical output while rendering (support of +D switch)
  Because I know almost nothing about PM programming, it would be much
  appreciated if someone else would do this. However, I consider to do it
  myself :-)


---------------------------------------------------------------------------
Credits

I want to thank the following companies, groups and individuals:

- IBM for their fantastic operating system :-)

- the POV-Team for a great program that can be distributed and used for
  free (given you follow povlegal.doc) and its permission concerning the
  repackaging of povuni_d.*

- Andrew Zabolotny and Ulrich M”ller for their html2ipf package which
  allowed me to convert the HTML help to the native OS/2 format

- Andy Key for his GBM tools package (used to convert the graphic files
  from the HTML help)

- Guido van Rossum and Jeff Rush for providing Python for OS/2. (Guido
  invented Python, Jeff did the OS/2 port.)

- all users and programmers who keep OS/2 alive :-)


---------------------------------------------------------------------------
Comments

The author of this file (and a few more) is Stefan Schwarzer
<s.schwarzer@ndh.net>. The version of this port is POVssPort 2.

If you encounter problems specific to this port, you may contact me via
the given email address. However, I assume, most of your problems will be
general Povray problems, so I would like you to read the user's manual
before asking questions :-) .  In addition, there are several newsgroups
concerning Povray; you can find out about them at http://www.povray.org/.

Feedback and suggestions are of course appreciated :-) .

