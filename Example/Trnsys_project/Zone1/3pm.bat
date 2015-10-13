@REM sky generation and Matrix multiplication with dctimestep
SET RAYPATH=.;C:\Trnsys17\Radiance\lib;%RAYPATH%
SET PATH=.;C:\Trnsys17\Radiance\bin\;%PATH%
c:
cd /d %~dp0
gendaylit 1 1 +11 -L 43900 15900 -a 41.8 -o -12.2333 -i 60 | genskyvec.pl -m 4 -c 1 1 1 > temp/skysun.skv
rlam "!dctimestep data/grid_window_south.vmx data/bsdf/0.xml data/window_south.dmx temp/skysun.skv" | rcalc -e "$1=179*(($1)*0.265+($2)*0.670+($3)*0.0065)" > data/ill_wind.dat