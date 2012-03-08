%Erin Rasmussen
%rasmusse
%Fall 2011
clc; 
clear;
img = imread('P1-bridge.jpg');
J = myhisteq(img);
figure;
imshow(J);
imwrite(J, 'bridge_eq.jpg', 'jpg');
img = imread('P1-snow.jpg');
J = myhisteq(img);
figure;
imshow(J);
imwrite(J, 'snow_eq.jpg', 'jpg');
