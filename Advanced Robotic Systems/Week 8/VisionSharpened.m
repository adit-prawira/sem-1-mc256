I = imread('cameraman.tif');
figure, imshow(I);

title('Original');

I = double(I);
[m,n] = size(I);

Isharp = zeros(m,n);

for i = 2:m-1
    for j = 2:n-1
        Isharp(i,j) = (-1*I(i-1, j-1) - I(i-1, j) - I(i-1, j+1)...
            - I(i, j-1) + 17*I(i, j) - I(i, j+1)...
            - I(i+1, j-1) - I(i+1, j) - I(i+1, j+1))/9;
    end
end

Isharp = uint8(Isharp);
figure, imshow(Isharp);
title('Sharpened');