function coeff_sum = sum_poly_coeff(x1, x2)

x1_order = length(x1);
x2_order = length(x2);

dif = x1_order - x2_order;
if dif > 0
    new_x1 = x1;
    new_x2 = [zeros(1, dif) x2];
else
    new_x1 = [zeros(1, -dif) x1];
    new_x2 = x2;
end

coeff_sum = new_x1 + new_x2;

return