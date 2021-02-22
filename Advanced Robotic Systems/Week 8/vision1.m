I = imread('board.tif');

IRed = double(I(:,:,1));
IGreen = double(I(:,:,2));
IBlue = double(I(:,:,3));

IGrey = (IRed+IGreen+IBlue)/3;

I = uint8(IGrey);
figure, imshow(I)