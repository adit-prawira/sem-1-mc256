I = imread('cameraman.tif');
figure, imshow(I);

title('Original');

I = double(I);
[m,n] = size(I);

Imedian = zeros(m,n);

for i = 2:m-1
    for j = 2:n-1
        Imedian(i,j) = median([I(i-1, j-1), I(i-1, j), I(i-1, j+1)...
            , I(i, j-1), I(i, j), I(i, j+1)...
            , I(i+1, j-1), I(i+1, j), I(i+1, j+1)]);
    end
end

Imedian = uint8(Imedian);
figure, imshow(Imedian);
title('Median Filter');