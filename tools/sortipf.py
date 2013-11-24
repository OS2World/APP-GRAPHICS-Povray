import string, re

pattern = r'^\.\* Source filename: pov(\d+)\.htm$(.*?)' \
          r'(?=^\.\* Source filename: pov|\Z)'

pattern = re.compile( pattern, re.MULTILINE | re.DOTALL )

def main():

    # read the ipf file
    file = open( 'povuser.ipf', 'r' )
    all = file.read()
    file.close()

    # split it at pattern
    groups = pattern.findall( all )
    
    # sort
    groups.sort( lambda a, b: cmp( int(a[0]), int(b[0]) ) )

    # write file
    file = open( 'povuser.ipf', 'w' )
    for number, content in groups:
        part = string.join( [
          '.* Source filename: pov',
          number,
          '.htm',
          content ], '' )
        file.write( part )
    file.close()


main()

