function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

%This is how you do for linear
%predictions=X*theta; % this takes mx2 X times 2x1 theta 
% note that theta is initialized to zeroes

%caclulate h(x)
% note that theta is initialized to zeroes so sigmoid(0)=0.5
predictions=sigmoid(X*theta)



%This is how you do for linear
%sqrErrors=(predictions-y).^2; %takes the element-squared difference


errors=((-y.*log(predictions))-((1.-y).*log(1.-predictions)));

%This is how you do for linear
%J=1/(2*m)*sum(sqrErrors); % finds the sum of the squared errors and applies to cost function

%Logistic working version
J=(1/m)*sum(errors)


%Step 1: Find the predicted outputs using the current theta matrix and store results in same format as the y output matrix
% must reverse the order of operations so X (an n x m matrix) * theta ( a m x 1 matrix) works and produces an n x 1 matrix
predictions=sigmoid(X*theta)
    
%Step 2: Find the difference between the predicted outputs and the actual outputs
% since they have the same dimensionality (n x 1) they can be subtracted from each other
differences=predictions-y;
    
%Step 3: For each coefficient (M), multiple that coefficient's values by the difference value it contributed to (see notes for a detailed example)
% in order for this operation to work as intended, X needs to be transposed and then multiplied by the difference matrix
% the dimensionality of the product of (m x n) * (n x 1) is an (m x 1 matrix)
results=X'*differences;

grad=(1/m).*results






% =============================================================

end
