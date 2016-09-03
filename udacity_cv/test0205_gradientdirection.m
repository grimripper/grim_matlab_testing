img = double(imread('octagon.png')) / 255.;
imshow(img); % assumes [0,1] range for double images
pause;

% Compute x,y gradients
[gx gy] = imgradientxy(img, 'sobel');
imshow(gx/8 + 0.5); %to get it back to [0,1] range
pause;

imshow(gy/8 + 0.5); %to get it back to [0,1] range
pause;

[gmag gdir] = imgradient(gx, gy);
imshow(gmag / (4*sqrt(2))); 
%[so because gx and gy is in -4 -> 4]
%[gmag is in [0, 4*sqrt(2))]
pause;

imshow((gdir + 180.0)/360.0);
% angle in range (-180 -> 180)
% 0 corresponds to gray
% -180 corresponds to black
% 180 corresponds to white
pause;

img2 = fn_select_gdir(gmag, gdir, 1, -15, 15);
imshow(img2);
pause;

close all;