/* REXX procedure to render all scenes  */
/* Copyright (C) 2000, Stefan Schwarzer */
call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

/* determine this dir */
olddir = DIRECTORY()

/* determine installation path */
PARSE SOURCE command
command = WORD(command,3)

instdir = FILESPEC("drive",command)FILESPEC("path",command)
instdir = DELSTR(instdir,LENGTH(instdir))
CALL DIRECTORY instdir

'@echo . >> complete.lst'

CALL render "scenes\advanced\chess2"
CALL render "scenes\advanced\desk"
CALL render "scenes\advanced\diffract"
CALL render "scenes\advanced\float5"
CALL render "scenes\advanced\lamppost"
CALL render "scenes\advanced\mist"
CALL render "scenes\advanced\mtmand"
CALL render "scenes\advanced\quilt1"
CALL render "scenes\advanced\skyvase"
CALL render "scenes\advanced\sombrero"
CALL render "scenes\advanced\sunsethf"
CALL render "scenes\advanced\swirlbox"
CALL render "scenes\advanced\wg6"
CALL render "scenes\advanced\whiltile"
CALL render "scenes\advanced\woodbox"
CALL render "scenes\advanced\drums2\drums"
CALL render "scenes\advanced\fish13\fish13"
CALL render "scenes\advanced\ionic5\ionic5"
CALL render "scenes\advanced\newltpot\teapot2"
CALL render "scenes\advanced\newltpot\teapot3"
CALL render "scenes\advanced\newltpot\teapot4"
CALL render "scenes\advanced\ntreal\ntreal"
CALL render "scenes\advanced\piece2\piece2"
CALL render "scenes\advanced\piece3\piece3"
CALL render "scenes\advanced\teapot\teapot"
CALL render "scenes\animate\clockd"
CALL render "scenes\animate\ambient\ambient"
CALL render "scenes\animate\boing\boing1"
CALL render "scenes\animate\boing\bounce"
CALL render "scenes\animate\boing\glsbng"
CALL render "scenes\animate\camera2\camera2"
CALL render "scenes\animate\diffuse\diffuse"
CALL render "scenes\animate\float1\float1"
CALL render "scenes\animate\float2\float2"
CALL render "scenes\animate\float3\float3"
CALL render "scenes\animate\float4\float4"
CALL render "scenes\animate\life\life"
CALL render "scenes\animate\l_o\l_o"
CALL render "scenes\animate\pentmap\pentmap"
CALL render "scenes\animate\quilted\plotqlt"
CALL render "scenes\animate\raddem\raddem"
CALL render "scenes\animate\reflect\reflect"
CALL render "scenes\animate\slinky\slnk"
CALL render "scenes\animate\speclr\speclr"
CALL render "scenes\animate\vect1\vect1"
CALL render "scenes\animate\vect2\vect2"
CALL render "scenes\arrays\array1"
CALL render "scenes\arrays\array2"
CALL render "scenes\arrays\array3"
CALL render "scenes\camera\basicvue"
CALL render "scenes\camera\camera1a"
CALL render "scenes\camera\camera1b"
CALL render "scenes\camera\camera1c"
CALL render "scenes\camera\camera1d"
CALL render "scenes\camera\camera1e"
CALL render "scenes\camera\camera1f"
CALL render "scenes\camera\camera3a"
CALL render "scenes\camera\camera3b"
CALL render "scenes\camera\camera3c"
CALL render "scenes\camera\camera3d"
CALL render "scenes\camera\fisheye"
CALL render "scenes\camera\focalb1"
CALL render "scenes\csg\cliptst2"
CALL render "scenes\csg\granite"
CALL render "scenes\csg\hfclip"
CALL render "scenes\csg\intee1"
CALL render "scenes\fileio\fileio"
CALL render "scenes\incdemo\chars"
CALL render "scenes\incdemo\colors"
CALL render "scenes\incdemo\finish"
CALL render "scenes\incdemo\shapes"
CALL render "scenes\incdemo\shapes2"
CALL render "scenes\incdemo\texture1"
CALL render "scenes\incdemo\texture2"
CALL render "scenes\incdemo\texture3"
CALL render "scenes\incdemo\glasses\glasses"
CALL render "scenes\incdemo\metals\brasses"
CALL render "scenes\incdemo\metals\chromes"
CALL render "scenes\incdemo\metals\coppers"
CALL render "scenes\incdemo\metals\golds"
CALL render "scenes\incdemo\metals\silvers"
CALL render "scenes\incdemo\stones\benediti"
CALL render "scenes\incdemo\stones\marbteal"
CALL render "scenes\incdemo\stones\pinkmarb"
CALL render "scenes\incdemo\stones\rdgranit"
CALL render "scenes\incdemo\stones\stones1"
CALL render "scenes\incdemo\stones\stones2"
CALL render "scenes\incdemo\woods\ash"
CALL render "scenes\incdemo\woods\bubinga"
CALL render "scenes\incdemo\woods\cedar"
CALL render "scenes\incdemo\woods\orngwood"
CALL render "scenes\incdemo\woods\teak"
CALL render "scenes\incdemo\woods\whiteash"
CALL render "scenes\incdemo\woods\woods1"
CALL render "scenes\incdemo\woods\woods2"
CALL render "scenes\incdemo\woods\wood_1"
CALL render "scenes\incdemo\woods\wood_10"
CALL render "scenes\incdemo\woods\wood_11"
CALL render "scenes\incdemo\woods\wood_12"
CALL render "scenes\incdemo\woods\wood_13"
CALL render "scenes\incdemo\woods\wood_14"
CALL render "scenes\incdemo\woods\wood_15"
CALL render "scenes\incdemo\woods\wood_16"
CALL render "scenes\incdemo\woods\wood_17"
CALL render "scenes\incdemo\woods\wood_18"
CALL render "scenes\incdemo\woods\wood_19"
CALL render "scenes\incdemo\woods\wood_2"
CALL render "scenes\incdemo\woods\wood_3"
CALL render "scenes\incdemo\woods\wood_4"
CALL render "scenes\incdemo\woods\wood_5"
CALL render "scenes\incdemo\woods\wood_6"
CALL render "scenes\incdemo\woods\wood_7"
CALL render "scenes\incdemo\woods\wood_8"
CALL render "scenes\incdemo\woods\wood_9"
CALL render "scenes\interior\atten1"
CALL render "scenes\interior\atten2"
CALL render "scenes\interior\ballbox1"
CALL render "scenes\interior\caustic2"
CALL render "scenes\interior\crystal"
CALL render "scenes\interior\foglayr"
CALL render "scenes\interior\foglyr2"
CALL render "scenes\interior\fog_f"
CALL render "scenes\interior\fog_ft"
CALL render "scenes\interior\fog_std"
CALL render "scenes\interior\iortest"
CALL render "scenes\interior\magglass"
CALL render "scenes\interior\nufog2"
CALL render "scenes\interior\rainbow1"
CALL render "scenes\interior\skysph1"
CALL render "scenes\interior\skysph2"
CALL render "scenes\interior\media\galaxy"
CALL render "scenes\interior\media\hollow1"
CALL render "scenes\interior\media\hollow2"
CALL render "scenes\interior\media\hollow3"
CALL render "scenes\interior\media\media1"
CALL render "scenes\interior\media\media2"
CALL render "scenes\interior\media\media3"
CALL render "scenes\interior\media\media4"
CALL render "scenes\interior\media\media5"
CALL render "scenes\lights\arealit1"
CALL render "scenes\lights\arealit2"
CALL render "scenes\lights\arealit3"
CALL render "scenes\lights\fillite"
CALL render "scenes\lights\laser"
CALL render "scenes\lights\shadows"
CALL render "scenes\lights\soft"
CALL render "scenes\lights\spotlite"
CALL render "scenes\macros\local"
CALL render "scenes\macros\macro1"
CALL render "scenes\macros\macro2"
CALL render "scenes\macros\macro3"
CALL render "scenes\macros\macro4"
CALL render "scenes\macros\pyramid"
CALL render "scenes\macros\pyramid2"
CALL render "scenes\objects\blob"
CALL render "scenes\objects\blob1a"
CALL render "scenes\objects\blob1b"
CALL render "scenes\objects\blob1c"
CALL render "scenes\objects\box"
CALL render "scenes\objects\chesmsh"
CALL render "scenes\objects\crater"
CALL render "scenes\objects\crat_dat"
CALL render "scenes\objects\fractal1"
CALL render "scenes\objects\fractal2"
CALL render "scenes\objects\fractal3"
CALL render "scenes\objects\fractal4"
CALL render "scenes\objects\lathe1a"
CALL render "scenes\objects\lathe1b"
CALL render "scenes\objects\lathe1c"
CALL render "scenes\objects\lathe2"
CALL render "scenes\objects\pawns"
CALL render "scenes\objects\polygon"
CALL render "scenes\objects\primitiv"
CALL render "scenes\objects\prism1"
CALL render "scenes\objects\prism2"
CALL render "scenes\objects\prism3a"
CALL render "scenes\objects\prism3b"
CALL render "scenes\objects\prism3c"
CALL render "scenes\objects\sor1"
CALL render "scenes\objects\superel1"
CALL render "scenes\objects\superel2"
CALL render "scenes\objects\superel3"
CALL render "scenes\objects\torus1"
CALL render "scenes\objects\ttf1"
CALL render "scenes\objects\wtorus"
CALL render "scenes\objects\math\bezier"
CALL render "scenes\objects\math\bicube"
CALL render "scenes\objects\math\folium"
CALL render "scenes\objects\math\grafbic"
CALL render "scenes\objects\math\helix"
CALL render "scenes\objects\math\hyptorus"
CALL render "scenes\objects\math\lemnisc2"
CALL render "scenes\objects\math\lemnisca"
CALL render "scenes\objects\math\monkey"
CALL render "scenes\objects\math\partorus"
CALL render "scenes\objects\math\piriform"
CALL render "scenes\objects\math\quarcyl"
CALL render "scenes\objects\math\quarpara"
CALL render "scenes\objects\math\steiner"
CALL render "scenes\objects\math\tcubic"
CALL render "scenes\objects\math\teardrop"
CALL render "scenes\objects\math\torus"
CALL render "scenes\objects\math\trough"
CALL render "scenes\objects\math\witch"
CALL render "scenes\radios\rad2"
CALL render "scenes\textures\pigments\blkhole"
CALL render "scenes\textures\pigments\cantelop"
CALL render "scenes\textures\pigments\checker2"
CALL render "scenes\textures\pigments\crack1"
CALL render "scenes\textures\pigments\dodec2"
CALL render "scenes\textures\pigments\eight"
CALL render "scenes\textures\pigments\filtfun"
CALL render "scenes\textures\pigments\interp"
CALL render "scenes\textures\pigments\irid"
CALL render "scenes\textures\pigments\mapper"
CALL render "scenes\textures\pigments\mappr2"
CALL render "scenes\textures\pigments\matmap"
CALL render "scenes\textures\pigments\pigmap"
CALL render "scenes\textures\pigments\pigment"
CALL render "scenes\textures\pigments\planet"
CALL render "scenes\textures\pigments\spiral1a"
CALL render "scenes\textures\pigments\txtravg"
CALL render "scenes\textures\pigments\txtrmap"
CALL render "scenes\textures\pigments\warp1"
CALL render "scenes\textures\pigments\warp2"
CALL render "scenes\textures\pigments\skies\stars"
CALL render "scenes\textures\pigments\skies\s_cloud1"
CALL render "scenes\textures\pigments\skies\s_cloud2"
CALL render "scenes\textures\pigments\skies\s_cloud3"
CALL render "scenes\textures\pigments\skies\s_cloud4"
CALL render "scenes\textures\pigments\skies\s_cloud5"
CALL render "scenes\textures\surfaces\agate"
CALL render "scenes\textures\surfaces\arches"
CALL render "scenes\textures\surfaces\bozo"
CALL render "scenes\textures\surfaces\brick"
CALL render "scenes\textures\surfaces\bumpmap"
CALL render "scenes\textures\surfaces\bumps"
CALL render "scenes\textures\surfaces\cluster"
CALL render "scenes\textures\surfaces\crackle"
CALL render "scenes\textures\surfaces\densfile"
CALL render "scenes\textures\surfaces\dents"
CALL render "scenes\textures\surfaces\gradient"
CALL render "scenes\textures\surfaces\granite"
CALL render "scenes\textures\surfaces\hexagon"
CALL render "scenes\textures\surfaces\leopard"
CALL render "scenes\textures\surfaces\mandel"
CALL render "scenes\textures\surfaces\marble"
CALL render "scenes\textures\surfaces\normal"
CALL render "scenes\textures\surfaces\normavg"
CALL render "scenes\textures\surfaces\normmap"
CALL render "scenes\textures\surfaces\onion"
CALL render "scenes\textures\surfaces\quilt2"
CALL render "scenes\textures\surfaces\quilted"
CALL render "scenes\textures\surfaces\radial"
CALL render "scenes\textures\surfaces\ripples"
CALL render "scenes\textures\surfaces\slopemap"
CALL render "scenes\textures\surfaces\spiral1"
CALL render "scenes\textures\surfaces\spiral2"
CALL render "scenes\textures\surfaces\spotted"
CALL render "scenes\textures\surfaces\waves"
CALL render "scenes\textures\surfaces\wrinkles"

CALL DIRECTORY olddir

EXIT

render:
    povname = arg(1)'.pov'
    tganame = 'allscene\'FILESPEC("name",arg(1))'.tga'
    CALL SysFileSearch tganame, 'complete.lst', stat
    IF stat.0 = 0 THEN          /* filename not in list */
    DO
        SAY 'Rendering' tganame
        '@povray allscene_os2.ini +i 'povname' +o 'tganame '2>nul'
        IF \ ( rc = 2 ) THEN    /* 2 = user abort */
            '@echo 'tganame' >>complete.lst'
        ELSE
            SAY tganame 'interrupted'
    END
RETURN

