load p2
load p1

i = 10001; 2; 10^8;
i = gpuArray(i);
 for j = 2:25;
     i(rem(i, p1(j)) == 0) = [];
 end
 n = length(p2);
 m = length(i);
 a = gpuArray(ones(1,m));
 for j = 26:n;
     a = a.*(rem(i, p2(j)));
 end
 i(a == 0) = [];
 a(a == 0) = [];
 a = isnan(a);
 i(a == 1) = [];
 p3 = [p2 i];
 save('p3', 'p3');
 