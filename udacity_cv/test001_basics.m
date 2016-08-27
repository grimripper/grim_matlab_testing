im = imread('lena.png');
%Get green channel
imgreen = im(:,:,2); % not zero indexing
%Show the image
imshow(imgreen);
%line([1 512], [256 256], 'color', 'r')
%waitforbuttonpress

% Image size
disp(size(imgreen));

% Image class or data type
disp(class(imgreen));

%%See data at row=256
%plot(imgreen(256,:));

X = 100;
Y = 100;
%At a given location (row, col)
row = Y
col = X
disp(imgreen(row, col))

%For a given row (row)
disp(imgreen(row, :))

% Plot
plot(imgreen(row, :))

%Extract row and col slices
disp(imgreen(101:103, 201:203))