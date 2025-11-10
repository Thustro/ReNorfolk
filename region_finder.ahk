#SingleInstance Force
CoordMode, Mouse, Screen
SetTitleMatchMode, 2

MsgBox, 64, Region Finder, Hover your mouse over the **TOP-LEFT** corner of the thermodynamics box, then press **F1**.

F1::
MouseGetPos, x1, y1
MsgBox, 64, Region Finder, Now hover your mouse over the **BOTTOM-RIGHT** corner of the thermodynamics box, then press **F2**.
return

F2::
MouseGetPos, x2, y2
w := x2 - x1
h := y2 - y1
msg =
(
Thermodynamics Region:
X=%x1%
Y=%y1%
W=%w%
H=%h%

These values were also saved to thermo_region.txt
)
MsgBox, 64, Region Finder, %msg%
FileAppend, Thermodynamics Region:`nX=%x1%`nY=%y1%`nW=%w%`nH=%h%`n, thermo_region.txt
ExitApp
return
