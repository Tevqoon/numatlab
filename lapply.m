function res = lapply(list, operation)
    res = list(1);
    for i = 2:length(list)
        res = operation(res, list(i));
    end
end