img = imread('moon.png');
imshow(img);
pause;

%% add salt+pepper noise
noisy_img = imnoise(img, 'salt & pepper', 0.02);
imshow(noisy_img);
pause;

%% Apply a median filter
median_filtered = medfilt2(noisy_img);
imshow(median_filtered);
pause;
close all;