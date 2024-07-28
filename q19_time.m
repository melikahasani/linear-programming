n = 2:5:25;
m = 2:5:25;
time = ones(25, 1);
k = 1;
for i = n
    for j = m
        t1= cputime;
        a = rand(i ,j);
        b = rand(i);
        func19(a, b);
        t = cputime - t1;
        time(k) = t;
        k = k + 1;
    end
end
plot(1:25, time);
