function [yIndex xIndex] = fn_findtemplate2D(template, img)
    c = normxcorr2(template, img);
    [yRaw xRaw] = find(c == max(c(:)));
    yIndex = yRaw - size(template, 1) + 1;
    xIndex = xRaw - size(template, 2) + 1;
end
