frizzy = imread('frizzy.png');
froomer = imread('froomer.png');
imshow(frizzy);
imshow(froomer);

frizzy_gray = rgb2gray(frizzy);
froomer_gray = rgb2gray(froomer);

% default = 'sobel' doesn't work as well
frizzy_edges = edge(frizzy_gray, 'canny');
imshow(frizzy_edges);
pause;

froomer_edges = edge(froomer_gray, 'canny');
imshow(froomer_edges);
pause;

imshow(frizzy_edges & froomer_edges);
pause;
close all;