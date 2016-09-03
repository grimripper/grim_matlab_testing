noise = randn([1 10000000]);
size(noise)

[n,x] = hist(noise, linspace(-3,3,21))
%disp([x; n])
plot(x,n)
