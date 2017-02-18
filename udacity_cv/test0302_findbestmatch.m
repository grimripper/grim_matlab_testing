%%%% BUGGY %%%%% - doesn't produce a good result

left = imread('images/flowers-left.png');
right = imread('images/flowers-right.png');
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

strip_right = right_gray( ...
    patch_loc(1):(patch_loc(1) + patch_size(1) - 1), ...
    :);
figure, imshow(strip_right);

%% Now look for the patch in the strip and report the best position (column index of top-left corner)
best_x = fn_find_best_match(patch_left, strip_right);
disp(best_x);

patch_right = right_gray( ...
    patch_loc(1):(patch_loc(1) + patch_size(1) - 1), ...
    best_x:(best_x + patch_size(2)-1));
figure, imshow(patch_right);



