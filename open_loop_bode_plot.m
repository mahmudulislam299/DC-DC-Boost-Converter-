clc; close all; clear;


%% boost converter

R = 4;
L = 35e-6;
C = 78e-6;
D = .25;
Vin = 15;
Il = Vin/((1-D)^2*R);
s = tf('s');
open_sys = (Vin - s*Il*L)/(s*s*L*C+s*L/R+(1-D)^2);
bode(open_sys)
%step(sys)