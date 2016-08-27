function img  = fn_blend( img_a, img_b, alpha )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    img = fn_scaleimages(img_a, alpha) + fn_scaleimages(img_b, 1-alpha);
end
