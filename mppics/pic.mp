input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
\begin{document}
etex

filenametemplate "%j-%1c.eps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(10) 
save u,p;
path p[];
u:=1cm;

z.o=origin;
z.x=(-.8,0)*u;
z.y=1.2*z.x rotated -120;
z.z=.9*z.x rotated 120;
z.s=.3*z.y;

draw z.x--z.o;
draw z.y--z.o--z.z penbold;

dOt z.x,z.y,z.z,z.s;



label.lft (btex $x$ etex,  z.x);
label.rt (btex $y$ etex,  z.y);
label.rt (btex $z$ etex,  z.z);
label.rt (btex $s$ etex,  z.s);
endfig;



end
