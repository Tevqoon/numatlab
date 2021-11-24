function rounder = @(v, base, prec) round(v*base^(prec - 1 - floor(abs(log(v)/log(base)))))/(base^(prec - 1 - floor(abs(log(v)/log(base)))));
