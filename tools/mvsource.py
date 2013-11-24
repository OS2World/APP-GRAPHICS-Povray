#!python

# Copyright (C) 2000, Stefan Schwarzer <s.schwarzer@ndh.net>
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
# - Redistributions of source code must retain the above copyright
#   notice, this list of conditions and the following disclaimer.
#
# - Redistributions in binary form must reproduce the above copyright
#   notice, this list of conditions and the following disclaimer in the
#   documentation and/or other materials provided with the distribution.
#
# - Neither the name of the above author nor the names of the
#   contributors to the software may be used to endorse or promote
#   products derived from this software without specific prior written
#   permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# Additional disclaimer:
# I know that for most OS/2 users a Rexx script is more convenient than
# a Python script. However, I am much more used to Python than to Rexx.
# (Python is a freely available powerful scripting language. The scripts
# are very portable. You can get an OS/2 version if you go to
# http://www.python.org/ and proceed further to "Download".)
#
# If you want to port this script to Rexx, please contact me via the
# email address above.


import os, sys, re, string, glob

__version__ = '0.5.5'

usage = '''\
mvsource.py - modify Watcom target files to allow relative paths on OS/2
Usage: python mvsource old_dir new_dir watcom_target [watcom_targets]
old_dir         directory string that is present in the target file
new_dir         directory string you wish to set instead
watcom_target   the tgt-file created by the Watcom IDE
watcom_targets  more target files
Example:
python mvsource.py "sourcedir" "..\sourcedir" myexe.tgt
'''

def exit():
    print usage
    sys.exit( 1 )


def sub_func( matchobj ):
    old_length = matchobj.group( 1 )
    new_length = string.atoi( old_length ) + growth
    return 'MItem\n' + `new_length` + '\n' + new_dir


def change_target( target_name ):
    # read old target file
    try:
        target_file = open( target_name, 'r' )
        old_contents = target_file.read()
        target_file.close()
    except IOError:
        print "Error: can't read target file", target_name
        exit()

    # change directories and their (string) lengths
    pattern = r'(?m)^MItem\012(\d+)\012(' + re.escape( old_dir ) + ')'
    new_contents = re.sub( pattern, sub_func, old_contents )

    # write a temporary file with the changes
    temp_name = target_name + '.$$$'
    try:
        target_file = open( temp_name, 'w' )
        target_file.write( new_contents )
        target_file.close()
    except IOError:
        print "Error: can't write temperary file (target file unchanged)"
        # try to remove the temporary file
        try:
            os.unlink( temp_name )
        except OSError:
            pass
        exit()

    # delete old target file and rename the temporary file
    os.unlink( target_name )
    os.rename( temp_name, target_name )


def main():

    print "This is mvsource.py", __version__
    print "Copyright (C) 2000, Stefan Schwarzer"

    global old_dir, new_dir, growth

    # display only help if ...
    if( len( sys.argv ) == 1 or     # ... called without arguments
      sys.argv[ 1 ] == '-h' ):      # ... called with '-h' as first argument
        exit()
    
    # get arguments
    try:
        old_dir, new_dir, wildcards = \
          sys.argv[ 1 ], sys.argv[ 2 ], sys.argv[ 3: ]
        growth = len( new_dir ) - len( old_dir )
    except IndexError:
        print "Error: invalid number of arguments"
        exit()
    
    # expand wildcards
    target_names = []
    for wildcard in wildcards:
        target_names = target_names + glob.glob( wildcard )
    
    # do the actual conversion
    for target_name in target_names:
        # don't cause the impression that dir names aren't global
        change_target( target_name )


main()

