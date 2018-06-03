function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

%Notes: theta is already in a vertical vector, and X is standard

%Step 1: Fidn the predictions
predictions=X*theta;

%Step 2: find the differences between the predctions and y
differences=predictions-y;

%Step 1: Compute the unregularized cost
part1=(sum(differences.^2))*(1/(2*m));

%Step 2: Compute the regularized portion of the cost function.  Note that the bias terms are removed from theta since theta 0 is not regularized
part2=(sum(theta(2:length(theta)).^2))*(lambda/(2*m));

%Step 3: add the components to create a regularized linear cost function
J=part1+part2;

%-----------FINDING THE GRADIENT---------------

%Step 1: Find the predicted outputs using the current theta matrix and store results in same format as the y output matrix
% must reverse the order of operations so X (an n x m matrix) * theta ( a m x 1 matrix) works and produces an n x 1 matrix

%predictions is already defined

%Step 2: Find the difference between the predicted outputs and the actual outputs
% since they have the same dimensionality (n x 1) they can be subtracted from each other

% differences have already been calculated

%Step 3: For each provided X value, multiply x by the difference to get the unscaled unregularized gradient
%This operation ultimately results in the sum of the X times the differences for every x term
results=X'*differences;

%Step 4: Find the gradient without penalties.  These are the summed interiors multiplied element wise by (1/m)
nonPenaltyGrad=((1/m).*results);

%Step 5: Calculate the penalties for each theta coefficient (the grad the gradient).  We will eventually set the pentalies for the unbiased terms to be 0, so they will ultimatley not be included
%we can just add them to the cost function since the unbiased multiplication will result in 0s
penalties=(lambda/m).*theta;

%Step 6: Set theta of Zero penalty to Zero (do not regularize first theta)
penalties(1)=0;

%Step 7: add in penalites to calculate gradient
grad=nonPenaltyGrad+penalties;


% =========================================================================

grad = grad(:);

end
