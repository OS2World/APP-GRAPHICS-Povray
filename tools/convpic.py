import glob, os, string

pics = glob.glob( '*.gif' )

for pic in pics:
    bmp = string.replace( pic, '.gif', '.bmp' )
    print 'Converting', pic
    os.system( 'gbmsize ' + pic + ' ' + bmp + ',1.2' )

pics = glob.glob( '*.jpg' )

for pic in pics:
    bmp = string.replace( bmp, '.jpg', '.bmp' )
    print 'Converting', pic
    os.system( 'gbmsize ' + pic + ' ' + bmp + ',1.2' )
    os.system( 'gbmbpp -m freq8:8:8:256 ' + bmp + ' ' + bmp + ',1.2' )
