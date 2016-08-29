img = imread('saturn.png');
imshow(img);
figure;

noise = randn(size(img)) .* 100;
output = double(img) + noise;
imshow(output, 'DisplayRange', [min(output(:)) max(output(:))]);
figure;
imshow(uint8(output))
figure;
imshow(output, [])
