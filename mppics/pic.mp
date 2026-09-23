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

z.rr= point 1.4 of p1;

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

dOt z.o,z.r0,z.r1,z.r2,z.r0 yscaled -1,z.r1 yscaled -1,z.r2 yscaled -1,z.l0,z.l2,z.rr,z.rr yscaled -1;

label.top (btex $w$ etex,  z.o);
label.top (btex $\sigma_0(r)$ etex,  z.l0);
label.top (btex $\sigma_0(r')$ etex,  z.l2);
label.top (btex $\sigma_1(r)$ etex,  z.r0+(-6,1));
label.bot (btex $\sigma_2(r)$ etex,  z.r0 yscaled -1+(-6,-1));
label.top (btex $\sigma_1(r_0)$ etex,  z.rr);
label.bot (btex $\sigma_2(r_0)$ etex,  z.rr yscaled -1);
label.top (btex $\sigma_1(r_1)$ etex,  z.r1);
label.bot (btex $\sigma_2(r_1)$ etex,  z.r1 yscaled -1);
label.top (btex $\sigma_1(r')$ etex,  z.r2);
label.bot (btex $\sigma_2(r')$ etex,  z.r2 yscaled -1);

endfig;

beginfig(30)

save u,p;
path p[];
u:=1cm;

z.w1=(-4,0)*u;
z.w2=-z.w1;
z.p1=.3*z.w1;
z.p2=-z.p1;
z.v1=.5*z.w1;
z.v2=.6*z.w2;
z.q1=z.p2 zscaled (0,.5);
z.q2=-z.q1;

p1=z.w1{(1,0)}..z.p1{(1,0)}..z.q1{(1,0)}..z.p2{(1,0)}..z.w2{(1,0)};

z.qq1= point 1.5 of p1;
z.qq2=z.qq1 yscaled -1;


draw p1;
draw subpath (1,3) of p1 yscaled -1;

draw z.q1--z.q2 dashed evenly;
draw z.qq1{(.6,-1)}..{(-.6,-1)}z.qq2 dashed evenly;

dOt z.w1,z.w2,z.p1,z.p2,z.q1,z.q2,z.qq1,z.qq2,z.v1,z.v2;


label.lft (btex $w_1$ etex,z.w1);
label.rt (btex $w_2$ etex,z.w2);
label.top (btex $p_1$ etex,z.p1);
label.top (btex $p_2$ etex,z.p2);
label.top (btex $q_1$ etex,z.q1);
label.bot (btex $q_2$ etex,z.q2);
label.top (btex $q'_1$ etex,z.qq1);
label.bot (btex $q'_2$ etex,z.qq2);
label.top (btex $v_1$ etex,z.v1);
label.top (btex $v_2$ etex,z.v2);

endfig;

beginfig(40)

save u,p;
path p[];
u:=1.4cm;

z.a=(0,.7)*u;

z.s=(1,0)*u;
z.p=(0,0);
z.pp=z.p+z.s;
z.u=z.pp+z.s;
z.x1= z.u+ z.s +0*z.a;
z.x2= z.u+ z.s + 1*z.a;
z.y=z.u+ z.s -1*z.a;
z.v=2*z.x2-z.u;
z.w=2*z.x1-z.u;
z.vv=2*z.y-z.u;
z.uu=2*z.w-z.u;

p1=z.p..z.vv+(0,-25)..z.uu;
p2=z.u{(1,-.5)}..{(1,.5)}z.w;
p3=z.w{(.5,1)}..{(-.5,1)}z.v;

draw z.x1--z.v;
draw z.x2--z.w withpen pencircle scaled 3bp withcolor 1;
draw z.x2--z.w;
draw z.x1--z.w;
draw z.x2--z.v;
draw z.p--z.u;
draw z.u--z.y;
draw z.y--z.vv;
draw z.vv--z.uu;
draw z.uu--z.w;
draw z.w--z.y;
draw z.uu--z.v;
draw z.x1--z.u;
draw z.u--z.x2;
draw z.x2--z.u;
draw p1;
drawarrow subpath (.2,.8) of p2 dashed evenly scaled .5;
drawarrow subpath (.2,.8) of p3 dashed evenly scaled .5;


rimmark(z.y--z.u,z.y--z.vv,z.y--z.w,z.x1--z.w,z.x2--z.w,z.x1--z.v,z.x2--z.v,z.x1--z.u,z.x2--z.u);
rimmark2(z.u--z.p,z.uu--z.w,z.uu--z.v,z.uu--z.vv);
rimmark6(p1);

dOt z.p,z.u,z.v,z.uu,z.vv,z.w;

Dot z.x1,z.x2,z.y;


label.lft (btex $z$ etex,z.p);
label.bot (btex $p$ etex,z.u);
label.rt (btex $p'$ etex,z.uu);
label.llft (btex $y$ etex,z.y+(0,-1));
label.urt (btex $x_1$ etex,z.x1+(-13,1));
whitelabel.urt (btex $x_{n-1}$ etex,z.x2+(-13,2));
label.top (btex $q$ etex,z.v);
label.bot (btex $q'$ etex,z.vv);
label.urt (btex $w$ etex,z.w);
label(btex $\vdots$ etex,.5[z.x1,z.x2]+(0,2));
label.bot (btex $\iota$ etex, point .5 of p2);
label.rt (btex $\iota'$ etex, point .5 of p3);
endfig;

beginfig(50)

save u,p;
path p[];
u:=1.4cm;


z.x=origin;
z.q1=(1,.6)*u;
z.q2=z.q1 yscaled -1;

p1=z.x{(1,0)}..tension 2..z.q1;
z.p=(-arclength p1,0);
z.qq1= point .7 of p1;
z.qq2=z.qq1 yscaled -1;
p10=z.qq1{(.6,-1)}..{(-.6,-1)}z.qq2;

draw z.p--z.x;
draw p1;
draw p1 yscaled -1;
draw p10 dashed evenly;

dOt z.p,z.q1,z.q2,z.qq1,z.qq2,z.x;

label.lft (btex $p$ etex,z.p);
label.rt (btex $q_1$ etex,z.q1);
label.rt (btex $q_2$ etex,z.q2);
label.bot (btex $x$ etex,z.x);
label.ulft (btex $\sigma_1(t)$ etex, z.qq1);
label.llft (btex $\sigma_2(t)$ etex, z.qq2);
label.rt (btex $s(t)$ etex, point .5 of p10);

endfig;

beginfig(60)

save u,p;
path p[];
u:=1.4cm;


z.x=origin;
z.q1=(1,.6)*u;
z.q2=z.q1 yscaled -1;

p1=z.x{(1,0)}..tension 2..z.q1;
z.p=(-arclength p1,0);
z.qq1= point .7 of p1;
z.qq2=z.qq1 yscaled -1;
p10=z.qq1{(.6,-1)}..{(-.6,-1)}z.qq2;

draw z.p--z.x;
draw subpath (0,.7) of p1;
draw p1 yscaled -1;
draw p10 dashed evenly;

z.xr=.6[z.p,z.x];

dOt z.p,z.q2,z.qq1,z.qq2,z.x,z.xr;

label.lft (btex $p$ etex,z.p);
label.lrt (btex $y$ etex,z.q2);
label.top (btex $w$ etex,z.x);
label.urt (btex $x$ etex, z.qq1);
label.llft (btex $y_a$ etex, z.qq2+(2,0));
label.top (btex $x_r$ etex, z.xr);
label.bot (btex $y_r$ etex, z.xr);

endfig;

end
