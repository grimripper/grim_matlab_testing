function I = compute_integral(img)
    %TODO: Compute I so that I(y,x) = sum of img(1,1) to img(y,x)
    %I(1,1) = img(1,1);
    %img_dims = size(img)
    %for x = 2:img_dims(2)
    %    I(1,x) = I(1,x-1) + img(1,x);
    %end
    %for y = 2:img_dims(1)
    %    I(y,1) = I(y-1,1) + img(y,1);
    %end
    
    %for y = 2:img_dims(1)
    %    for x = 2:img_dims(2)
    %        I(y,x) = I(y,x-1) + I(y-1,x) - I(y-1,x-1);
    %    end
    %end
    I=cumsum(img,1);
    %I=cumsum(cumsum(img,1),2);
end
