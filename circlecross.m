function [inner, outer, pos_curv, neg_curv] = circlecross(x,y)

distance = conv(x, x) + conv(y, y);
n = length(distance);
coeff = zeros(1,n);
coeff(n) = 1;
inner = roots(distance - 0.25 * coeff);
outer = roots(distance - coeff);

dx = polyder(x);
dy = polyder(y);
ddx = polyder(dx);
ddy = polyder(y);

top = sum_poly_coeff(conv(dx, ddy), -conv(dy, ddx));
bot = sum_poly_coeff(conv(dx,dx), conv(dy,dy));

pos_curv = roots(sum_poly_coeff(conv(top, top), -conv(bot, conv(bot, bot))));
neg_curv = roots(sum_poly_coeff(conv(top, top), conv(bot, conv(bot, bot))));

end