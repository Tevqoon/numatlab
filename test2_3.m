rng(0); A = rand(100);

% 1. del
x = potencna(A' * A,  0.1 * ones(100, 1), 10);
sigma1 = sqrt(rayleigh(A' * A, x))

% 2. del
x = potencna(inv(A' * A),  0.1 * ones(100, 1), 10);
sigman = sqrt(rayleigh(A' * A, x))

% 3. del
sigma1 / sigman
