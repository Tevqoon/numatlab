function p = inbounds(left,right)
    p = @(x)((left <= x) & (x <= right) & (abs(imag(x)) < 10e-5));
end