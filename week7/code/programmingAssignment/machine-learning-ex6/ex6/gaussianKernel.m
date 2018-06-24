function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%

%x2 represents landmarks
%x1 represents a sete of x values taht we are looking to test
%sigma represents the variance of

%for each get the euclidian distance between them 
%sigma is just a value provided for now

%Step 1: since we are using column vectors, we subtract them and take the elementwise squared
%Step 2: Divide the sum by 2*sigma^2
%Step 3: then we multiply result by -1
%Step 4: take the exp of it

sim=exp((-1)*(sum((x1-x2).^2)/(2*(sigma^2))));


% =============================================================
    
end
