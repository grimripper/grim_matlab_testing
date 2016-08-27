% Crop an image
im = imread('lena.png');
imbw = rgb2gray(im);
%imshow(im);
%waitforbuttonpress
%imshow(imbw);

imshow(imbw)
waitforbuttonpress
cropped = imbw(110:310, 10:160);
imshow(cropped)
disp(size(cropped))

