% Add two images
dunham = imread('dunham.jpg');
disp(size(dunham))
dunham = dunham(1:480, 1:480,:);
disp(size(dunham))


lena = imread('lena.png');
disp(size(lena))
lena = lena(1:480, 1:480, :);
disp(size(lena))

% halve before summing, otherwise would Saturate
% to 255 and then halving it would make it darker
summed = lena/2.0 + dunham/2.0;
imshow(summed)
waitforbuttonpress

summed_after_the_fact = (lena + dunham)/2.0;
imshow(summed_after_the_fact)
