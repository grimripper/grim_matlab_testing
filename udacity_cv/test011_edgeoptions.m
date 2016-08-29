%% Read an image
img = imread('fall-leaves.png');
imshow(img);
pause;

%% Create a gaussian filter
filter_size = 21;
filter_sigma = 3;
filter = fspecial('gaussian', filter_size, filter_sigma);

%% Apply it, specifying an edge parameter
smoothed = imfilter(img, filter, 'replicate');
imshow(smoothed);
pause;
close all;
