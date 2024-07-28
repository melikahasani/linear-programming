a = input('enter matrix A: ');
b = input('enter matrix b: ');
s = size(a);
v = 1:s(1);
x = nchoosek(v, s(2));
xs = size(x);
ans = [];
for i = 1:xs(1)
    h = [];
    b1 = [];
    for j = 1:xs(2)
        h = [h; a(x(i ,j), :)];
        b1 = [b1; b(x(i, j))];
    end
    if ld(h) == 1
        h = h\b1;
            if a*h <= b
                ans = [ans h];
            end       
    end
end
ans