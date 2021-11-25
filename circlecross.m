function [inner, outer, curv] = circlecross(x,y,c)

if nargin == 2
    c = 1;
end

distance = conv(x, x) + conv(y, y);
n = length(distance);
coeff = zeros(1,n);
coeff(n) = 1;
inner = lfilter(roots(distance - 0.25 * coeff), inbounds(0,1));
outer = lfilter(roots(distance - coeff), inbounds(0,1));

dx = polyder(x);
dy = polyder(y);
ddx = polyder(dx);
ddy = polyder(dy);

top = sum_poly_coeff(conv(dx, ddy), -conv(dy, ddx));
bot = sum_poly_coeff(conv(dx, dx), conv(dy,dy));

curv = lfilter(roots(sum_poly_coeff(conv(top, top), -c * conv(bot, conv(bot, bot)))), inbounds(0,1));

end