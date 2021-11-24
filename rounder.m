function [r] = rounder(v, base, prec)
r = round(v*base^(prec - 1 - floor(abs(log(v)/log(base)))))/(base^(prec - 1 - floor(abs(log(v)/log(base)))));
end