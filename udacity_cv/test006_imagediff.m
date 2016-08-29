dolphin = imread('dolphin.png');
bicycle = imread('bicycle.png');

diff = bicycle - dolphin;
imshow(diff)
pause

abs_diff = abs(bicycle - dolphin);
imshow(abs_diff)
pause

%: Better use image package
import image.*;

abs_diff2 = imabsdiff(dolphin, bicycle);
imshow(abs_diff2);
pause
