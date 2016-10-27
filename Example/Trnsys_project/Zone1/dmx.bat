@REM Daylighting Matrix batch file
SET RAYPATH=.;C:\Radiance\lib;%RAYPATH%
SET PATH=.;C:\Radiance\bin\;%PATH%
c:
cd /d %~dp0
oconv Zone1.rad temp/sky_white1.rad > temp/model_dmx.oct
genklemsamp.pl -c 1000 -vd -0 -1 -0 -vu 0 0 1 window/window_south.rad | rcontrib -c 1000 -e MF:4 -f reinhart.cal -b rbin -bn Nrbins -o data/window_south.dmx -m sky_glow -faa temp/model_dmx.oct
