img = imread('saturn.png');
imshow(img);
plot(img(205,:))
figure;

noise = randn(size(img)) .* 5;
output = double(img) + noise;
imshow(output, 'DisplayRange', [min(output(:)) max(output(:))]);
line([1 512], [205 205], 'color', 'r');
plot(output(205,:))

figure;
imshow(uint8(output))
figure;
imshow(output, [])
pause
close all