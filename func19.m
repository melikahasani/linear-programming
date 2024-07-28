function [val] = func19(a, b)
s = size(a);
v = 1:s(1);
if s(1) < s(2)
    val = [];
else
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
        ans = [ans h];
    end
end
val = ans;
end