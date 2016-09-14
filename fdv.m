function k = fdv(a, p)
p = gpuArray(p);
n = length(p);
k = gpuArray(ones(1,n));
r = rem(a, p);
k1 = rem(r, 2);
k(r1 == 0) = 1 + (2.* p(r1 == 0) - r(r1 == 0)) * 0.5;
k(r1 ~= 0) = 1 + (p(r1 ~= 0) - r(r1 ~= 0)) * 0.5;
k(r == 0) = 1;
k = gather(k);
