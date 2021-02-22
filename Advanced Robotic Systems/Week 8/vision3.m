I = imread('cameraman.tif');

figure, imshow(I);
title('Original');

figure, imhist(I);
title('Orignal Histogram');

I = double(I);

[m,n] = size(I);

Inegative = ones(m,n)*255 - I;

Inegative = uint8(Inegative);

figure, imshow(Inegative);
title('New Image');
title('New Histogram');