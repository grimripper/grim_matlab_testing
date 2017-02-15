left = imread('flowers-left.png');
right = imread('flowers-right.png');
figure, imshow(left);
figure, imshow(right);

%%Convert to grayscale, double, [0,1] range
left_gray = double(rgb2gray(left))/255.0;
right_gray = double(rgb2gray(right))/255.0;

patch_loc = [120 170];
patch_size = [100 100];

patch_left = left_gray( ...
    patch_loc(1):(patch_loc(1)+patch_size(1)-1), ...
    patch_loc(2):(patch_loc(2)+patch_size(2)-1));
figure, imshow(patch_left);



