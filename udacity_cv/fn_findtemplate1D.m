function index = fn_findtemplate1D(t,s)
    c = normxcorr2(t, s);
    [maxValue index] = max(c);
    index = index - size(t,2) + 1;
end
