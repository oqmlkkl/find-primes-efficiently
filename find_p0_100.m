p = [2 3 5 7];
i = 10:100;
n = length(p);
for j = 1:n;
    i(find(rem(i, p(j)) == 0)) = [];
end
p1 = [p i];
save('p1', 'p1');

