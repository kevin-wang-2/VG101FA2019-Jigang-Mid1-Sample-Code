function ret = LpNorm(x, p)
    % REQUIRES: None-empty vector x, positive integer p
    % RETURNS: p-norm of x
    % p-norm is a generalized norm, and the 2-norm is so-called Eucilidian
    % norm. The calculation formula of p-norm is $sqrt[p]{\sum_i{x_i^p}}$.
    % Using .^ operation, we could let all elements in x to be p-th squared.
    % Then, er could use sum function to add them up and take the p-th
    % root of the sum to get the norm. 
    ret = sum(abs(x) .^ p) ^ (1 / p);
end