function [x3, step] = ridders(f,x0,x2,arg1,arg2)

difference = -inf;
accuracy = -inf;

switch nargin
    case 4
        steps = arg1;
        target_val = 0;
    case 5
        steps = inf;
        target_val = arg2;
        if arg2 == 0
            accuracy = arg1;
        else
            difference = arg1;
        end
end
    
x3 = 0;
step = 0;
while step < steps
    if abs(x3 - target_val) < difference
        break
    elseif abs(x2 - x0) < accuracy
        break
    end
    x1 = (x0 + x2) / 2;
    fx0 = f(x0);
    fx2 = f(x2);
    fx1 = f(x1);
    x3 = x1 + (x1 - x0) * (sign(fx0) * fx1)/(sqrt(fx1^2 - fx0 * fx2));
    fx3 = f(x3);
    
    s0 = sign(fx0);
    s1 = sign(fx1);
    s3 = sign(fx3);
    if s3 ~= s1
        x0 = x1;
        x2 = x3;
    elseif s1 ~= s0
        x2 = x3;
    else
        x0 = x3;
    end
    step = step + 1;
end