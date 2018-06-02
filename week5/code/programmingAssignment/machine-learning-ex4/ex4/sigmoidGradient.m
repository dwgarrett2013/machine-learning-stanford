function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   g = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.

g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the gradient of the sigmoid function evaluated at
%               each value of z (z can be a matrix, vector or scalar).

%Step 1: Calculate hte gradient for a set of Z values.  These Z values will correspond to derivative of a given set of z values
%on the 2nd half note that to do 1-g(z) for each, g(z) is converted to a negative value, and is then 1 is added to each

g=sigmoid(z).*(sigmoid(z).*(-1).+1);

% =============================================================




end
