% Input x and weights w
x1 = [1 1 1 1; 2 2 2 2; 3 3 3 3; 4 4 4 4]; % feature map c=1
x2 = [5 5 5 5; 6 6 6 6; 7 7 7 7; 8 8 8 8]; % feature map c=2
w1 = [1 1 1; 0 0 0 ; 1 1 1];              % filter weights for channel c=1
w2 = [0 0 0; 1 1 1; 0 0 0];               % filter weights for channel c=2
b = 1;                                   % bias term

% Evaluate the output z for i=1, j=1
z = conv2(x1, w1, 'valid') + conv2(x2, w2, 'valid') + b;
disp(z);
