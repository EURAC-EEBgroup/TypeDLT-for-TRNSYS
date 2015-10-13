@REM View Matrix batch file
SET RAYPATH=.;C:\Trnsys17\Radiance\lib;%RAYPATH%
SET PATH=.;C:\Trnsys17\Radiance\bin\;%PATH%
c:
cd /d %~dp0
oconv Zone1.rad window/window_south.rad > temp/model_vmx.oct
rcontrib -f klems_int.cal -bn Nkbins -o data/grid_%%s.vmx -b "kbin(0,1,0,0,0,1)" -m window_south -I+ -ab 12 -ad 50000 -lw 2e-5 temp/model_vmx.oct < data/grid.pts