%% MARKOV MATRICES %%

u0 = [1; 0]
A = [.8 .3; .2 .7]
u1 = A*u0
u2 = A*u1
u3 = A*u2
u4 = A*u3
u5 = A*u4
u6 = A*u5
u7 = A*u6

v0 = [0; 1]
v1 = A*v0
v2 = A*v1
v3 = A*v2
v4 = A*v3
v5 = A*v4
v6 = A*v5
v7 = A*v6

A*A*A*A*A*A*A*A*A*A*A*A*A*A*A
%= [.6 .6
%   .4  .4]
