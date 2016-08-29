for sigma=1:3:10
    hsize = 31;

    h = fspecial('gaussian', hsize, sigma);

    surf(h);
    pause;

    imagesc(h);
    pause;

    im = imread('lena.png');
    imshow(im);
    pause;

    outim = imfilter(im, h);
    imshow(outim);
    pause;
    close all
end
