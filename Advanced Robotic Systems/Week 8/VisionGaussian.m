I = imread('cameraman.tif');
figure, imshow(I);

title('Original');

I = double(I);
[m,n] = size(I);

IGaussian = zeros(m,n);

for i = 2:m-1
    for j = 2:n-1
        IGaussian(i,j) = (I(i-1, j-1) + 2*I(i-1, j) + I(i-1, j+1)...
            + 2*I(i, j-1) + 4*I(i, j) + 2*I(i, j+1)...
            + I(i+1, j-1) + 2*I(i+1, j) + I(i+1, j+1))/16;
    end
end

IGaussian = uint8(IGaussian);

figure, imshow(IGaussian);
title('Gaussian Filter');