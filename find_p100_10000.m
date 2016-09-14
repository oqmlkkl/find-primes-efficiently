load p1;
i = 101;2;10000;
n = length(p1);
for j = 2:n;
    i(find (rem( i, p(j)) == 0)) = [];
end
p2 = [p1 i];
save('p2', 'p2');
