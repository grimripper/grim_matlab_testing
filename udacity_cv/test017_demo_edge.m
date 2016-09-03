lena = imread('lena.png');
figure, imshow(lena), title('original image, color');
lenaMono = rgb2gray(lena);
figure, imshow(lenaMono), title('grayscale image');

h = fspecial('gaussian', [11 11], 4);
figure, surf(h);

lenaSmooth = imfilter(lenaMono, h);
figure, imshow(lenaSmooth), title('smoothed');

%% METHOD 1: Shift left and right, and show diff image
% Difference of gaussians
lenaL = lenaSmooth;
lenaL(:, [1:(end-1)]) = lenaL(:, [2:end]);
lenaR = lenaSmooth;
lenaR(:, [2:(end)]) = lenaR(:, [1:(end-1)]);
lenaDiff = double(lenaR) - double(lenaL);
figure, imshow(lenaDiff, []), title('diff');

%% METHOD 2: Canny edge detector
cannyEdges = edge(lenaMono, 'canny');
figure, imshow(cannyEdges), title('canny on original');

cannyEdges = edge(lenaSmooth, 'canny');
figure, imshow(cannyEdges), title('canny on smooth');

%% METHOD 3: Laplacian of Gaussian
logEdges = edge(lenaMono, 'log');
figure, imshow(logEdges), title('log on original');

logEdges = edge(lenaSmooth, 'canny');
figure, imshow(logEdges), title('log on smooth');



pause;
close all;