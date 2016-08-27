% Color planes
im = imread('lena.png');
disp(size(im))

img_red = im(:,:,1);
imshow(img_red)

plot(img_red(150, :))
