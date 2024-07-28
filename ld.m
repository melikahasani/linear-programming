function [val] = ld(a)
s = size(a);
c = zeros(s(2));
if a\c' == c'
    val = 1;
else
    val = 0;
end