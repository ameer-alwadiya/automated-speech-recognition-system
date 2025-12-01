%% QUESTION 3

% constant parameters
epsilon = 0.001;
rho1 = 0.9;
rho2 = 0.999;


% initial variable values
g = 10;
v = 10;
r = 10;
theta = 0;

% Update biased first moment estimate
v = rho1 * v + (1 - rho1) * g;

% Update biased second raw moment estimate
r = rho2 * r + (1 - rho2) * (g.^2);

% Update parameters
theta = theta - (epsilon ./ (sqrt(r))) * v;

%% QUESTION 4
% set random number generator and seed for repeatable results
rng(0,'twister');

% initial variables
x = [1; 1; 1];
w = [1; 2; 3];
p = 0.5;

% Implementation of dropout regularization
r = rand(size(x)) <= p; % Generating Bernoulli random variables
x_tilde = r .* x; % Applying dropout to input
z = w' * x_tilde; % Applying dropout to the weighted sum

z % Displaying the value of z
