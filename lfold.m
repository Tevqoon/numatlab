function start = lfold(list, start, operation)
    for i = 1:length(list)
        start = operation(start, list(i));
    end
end