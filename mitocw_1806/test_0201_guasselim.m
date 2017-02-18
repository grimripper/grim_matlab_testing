m = [1 2 1; 3 8 1; 0 4 1];
a = [1 0 0; -3 1 0; 0 0 1];
%% Gauss elim step 1
disp(a * m);
b = [1 0 0; 0 1 0; 0 -2 1];

%% Gauss elim step 2
disp(b * a * m);
