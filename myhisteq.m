function J = myhisteq(I)
%This function takes an image, examines its histogram,
%and equalizes the histogram to balance the colors of
%the image. Unlike MatLab's histeq, this function allows
%for the equalization of color images.
%
%Erin Rasmussen
%rasmusse
%Fall 2011
img = rgb2hsv(I);
V = img(:,:,3);
figure;
imhist(V);
[Hist,val] = imhist(V);
CumHist = cumsum(Hist);
CumMin = CumHist(1);
Vprime = zeros(size(V,1), size(V,2));
%Each color intensity value must be traversed. While doing
%this, each pixel in the image with that particular value
%receives a new value based on the histogram equalization
%equation.
for i=1:length(Hist),
    pair = V==val(i);        
    temp = floor(255*(CumHist(i) - CumMin) / ((size(V,1) * size(V, 2)) - CumMin));
    Vprime(pair) = temp;
end
figure;
imhist(Vprime);
img = img.*255;
img(:,:,3) = Vprime;
img = uint8(img);
img = im2double(img);
J = hsv2rgb(img);
end

