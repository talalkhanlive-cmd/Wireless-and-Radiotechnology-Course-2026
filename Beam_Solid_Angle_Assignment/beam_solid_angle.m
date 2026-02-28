clc;
close all;
clear all;

% Input bounds
tmin = input('The lower bound of theta in degree=');
tmax = input('The upper bound of theta in degree=');

pmin = input('The lower bound of phi in degree=');
pmax = input('The upper bound of phi in degree=');

% Theta and Phi vectors (degree to radian)
theta = (tmin:tmax) * pi/180;
phi   = (pmin:pmax) * pi/180;

% Differential elements
dth = theta(2) - theta(1);
dph = phi(2) - phi(1);

% Meshgrid
[THETA, PHI] = meshgrid(theta, phi);

% Field pattern input
x = input('The field pattern : E(THETA,PHI)=','s');
x = eval(x);

% Power pattern input
v = input('The power pattern: P(THETA,PHI)=','s');
P = eval(v);

% Normalized power pattern
Pn = x.^2;

% Beam solid angle calculation
Prad = sum(sum(Pn .* sin(THETA))) * dth * dph;

% Display input parameters
fprintf('\n Input Parameters: \n-------------------- ');
fprintf('\n Theta = %2.0f : %2.0f : %2.0f', tmin, dth*180/pi, tmax);
fprintf('\n Phi   = %2.0f : %2.0f : %2.0f', pmin, dph*180/pi, pmax);
fprintf('\n POWER PATTERN : %s', v);

% Display output
fprintf('\n \n Output Parameters: \n-------------------- ');
fprintf('\n BEAM AREA (steradians) = %3.2f \n', Prad);
