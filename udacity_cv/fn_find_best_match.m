% Find best match
% function best_x = fn_find_best_match(patch, strip)
%    c = normxcorr2(patch, strip);
%    [yRaw xRaw] = find(c == max(c(:)));
%    best_x = xRaw - size(patch, 2) + 1;
% end

function best_x = fn_find_best_match(patch, strip)
    min_diff = Inf;
    best_x = 0; % haven't found it yet
    for x = 1:(size(strip,2) - size(patch,2) + 1)
        patch_test = strip(...
            :, ...
            (x:(x + size(patch,2)-1)));
        %disp(size(patch_test));
        diff = patch - patch_test;
        sq_diff = diff * diff;
        sum_sq_diff = sum(sq_diff(:));
        if (sum_sq_diff < min_diff)
            min_diff = sum_sq_diff;
            best_x = x;
        end
    end
    
end
