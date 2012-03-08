function S = horizontal_seam(I)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
energy = imenergy(I);
%M = zeros(size(energy, 1), size(energy, 2));
M = energy;
for i=1:size(energy, 2),
    for j=1:size(energy, 1),
       M(i, j) = energy(i, j) + min(M(i-1, j-1),M(i-1,j),M(i-1,j+1)); 
    end
end
end

