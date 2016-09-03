img = imread('images/shapes.png');
figure, imshow(img);

grays = rgb2gray(img);
figure, imshow(grays);

edges = edge(grays, 'canny');
figure, imshow(edges);

[accum theta rho] = hough(edges);
figure, imagesc(accum, 'XData', theta, 'YData', rho);

%peaks = houghpeaks(accum, 100);
%% Alternate.: More precise lines
peaks = houghpeaks(accum, 100, 'Threshold', ceil(0.6 * max(accum(:))), 'NHoodSize', [5,5]);
hold on; plot(theta(peaks(:,2)), rho(peaks(:,1)), 'rs'); hold off;

%line_segs = houghlines(edges, theta, rho, peaks);
%% Alternate: FillGap and MinLength options
line_segs = houghlines(edges, theta, rho, peaks, 'FillGap', 50, 'MinLength', 100);
line_segs

figure, imshow(img);
hold on;
for k = 1: length(line_segs)
    endpoints = [line_segs(k).point1; line_segs(k).point2];
    plot(endpoints(:,1), endpoints(:,2), 'LineWidth', 2', 'Color', 'green');
end
hold off;

pause;
close all;
