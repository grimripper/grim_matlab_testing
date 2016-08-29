img = imread('saturn.png');
imshow(img);
pause;

%%Add some noise
noise_sigma = 25;
noise = randn(size(img)) .* noise_sigma;
noisy_img = double(img) + noise;
imshow(uint8(noisy_img));
pause;

%%Create a gaussian filter
filter_size = 11;
filter_sigma = 2;
filter = fspecial('gaussian', filter_size, filter_sigma);

%%Apply it to remove noise
smoothed = imfilter(noisy_img, filter);
imshow(uint8(smoothed));
pause;
close all;
