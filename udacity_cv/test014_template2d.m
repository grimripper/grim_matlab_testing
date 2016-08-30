tablet = imread('tablet.png');
imshow(tablet);
pause;

glyph = tablet(75:165, 150:185);
imshow(glyph);
pause;

[y x] = fn_findtemplate2D(glyph, tablet);
disp([y x]);

colormap('gray'); imagesc(tablet);
hold on;
plot(x, y, 'r+', 'markersize', 16);
hold off;
pause;

close all;
