img = im2double(imread('images\blood-cells.png'));
imshow(img);

I = fn_computeintegral(img);
%I=img;
imshow(I / max(I(:)));

x1 = 150; y1 = 100;
x2 = 350; y2 = 200;

img2 = img(y1:y2, x1:x2);
disp(sum(img2(:)));
disp(I(y2,x2) - I(y1-1,x2) - I(y2,x1-1) + I(y1-1,x1-1));
