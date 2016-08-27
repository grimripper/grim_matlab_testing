img1 = imread('lena.png');
img1 = img1(1:480, 1:480, :);
img2 = imread('dunham.jpg');
img2 = img2(1:480, 1:480, :);
blend1 = fn_blend(img1, img2, 0.5);
imshow(blend1)
waitforbuttonpress

blend1 = fn_blend(img1, img2, 0.1);
imshow(blend1)
waitforbuttonpress

blend1 = fn_blend(img1, img2, 0.9);
imshow(blend1)
waitforbuttonpress
