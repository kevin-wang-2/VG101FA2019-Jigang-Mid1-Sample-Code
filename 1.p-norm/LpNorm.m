function ret = LpNorm(x, p)
    ret = sum(x .^ p) ^ (1 / p);
end