I = imread('cameraman.tif');

figure, imshow(I);
title('Original');

figure, imhist(I);
title('Original Color Data');

I = double(I);
[m,n] = size(I);

IThreshold = zeros(m,n);

for i = 1:m
    for j = i:n
        if I(i,j) > 75
            IThreshold(i,j) = 255;
        else
            IThreshold(i,j) = 0;
        end
    end
end

IThreshold = uint8(IThreshold);

figure, imshow(IThreshold);
title('Threshold');
figure, imhist(IThreshold);

