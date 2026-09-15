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

beginfig(20)

save u,p;
path p[];
u:=1.2cm;

z.o=origin;
z.r0=(.7,.4)*u;
z.r2=z.r0+(2,0)*u;
z.r1=z.r2+(1,-.2)*u;
z.r3=z.r1+(.3,0)*u;

p1=z.o{right}..z.r0..z.r2..z.r1..z.r3;
p2 =p1 yscaled -1;

p10=z.r0{(.2,-1)}..{(-.2,-1)}(z.r0 yscaled -1);
p12=z.r2{(-.2,-1)}..{(.2,-1)}(z.r2 yscaled -1);

z.l0=(-arclength subpath (0,1) of p1,0);
z.l2=(-arclength subpath (0,2) of p1,0);
z.l1=(-arclength subpath (0,3) of p1,0);
z.l3=(-arclength p1,0);

p0=z.l3..z.l1..z.l2..z.l0..z.o;



draw p0;
draw p1;
draw p2;
draw p10;
draw p12;

%drawarrow subpath (1,1.9) of p1;
%drawarrow subpath (1,1.9) of p2;
%drawarrow subpath (2,2.9) of p0;

rimmark(subpath (0,1) of p1);
rimmark(subpath (0,1) of p2);
rimmark(subpath (3,4) of p0);
rimmark2(subpath (1,2) of p1);
rimmark2(subpath (1,2) of p2);
rimmark2(subpath (2,3) of p0);
rimmark3(p10);
rimmark3(p12);

dOt z.o,z.r0,z.r1,z.r2,z.r0 yscaled -1,z.r1 yscaled -1,z.r2 yscaled -1,z.l0,z.l2;

label.top (btex $w$ etex,  z.o);
label.top (btex $\sigma_0(r_0)$ etex,  z.l0);
label.top (btex $\sigma_0(r_2)$ etex,  z.l2);
label.top (btex $\sigma_1(r_0)$ etex,  z.r0+(-6,1));
label.bot (btex $\sigma_2(r_0)$ etex,  z.r0 yscaled -1+(-6,-1));
label.top (btex $\sigma_1(r_1)$ etex,  z.r1);
label.bot (btex $\sigma_2(r_1)$ etex,  z.r1 yscaled -1);
label.top (btex $\sigma_1(r_2)$ etex,  z.r2);
label.bot (btex $\sigma_2(r_2)$ etex,  z.r2 yscaled -1);

endfig;

end
