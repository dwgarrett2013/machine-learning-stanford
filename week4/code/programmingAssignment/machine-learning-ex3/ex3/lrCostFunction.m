function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%

%THESE ARE THE SAME AS IN THE OTHER FUNCTION, NOTE WE ARE USING REGULARIZED VERSIONS

%----------DEFINING THE COST FUNCTION----------


%Step 1: caclulate h(x)
% note that theta is initialized to zeroes so sigmoid(0)=0.5
predictions=sigmoid(X*theta);

%Step 2: Calculate the error portion of the cost equation
errors=((-y.*log(predictions))-((1.-y).*log(1.-predictions)));

%Step 3: Calculate the penalty portion fo the cost function
%Note that theta(2:length(theta)) is being used to not apply regularization to thetaZero (thetaZero shoudl not receive the penalty)
costPenalties=(lambda/(2*m)).*sum(theta(2:length(theta)).^2);

%Step 4: calculate the cost with the pentalites
%This is the Logistic working version with regularization for cost function
%Note that the penalties need to be added to each feature (hence the use of .+)
J=((1/m)*sum(errors)).+costPenalties;

%-----------FINDING THE GRADIENT---------------

%Step 1: Find the predicted outputs using the current theta matrix and store results in same format as the y output matrix
% must reverse the order of operations so X (an n x m matrix) * theta ( a m x 1 matrix) works and produces an n x 1 matrix

%predictions is already defined
    
%Step 2: Find the difference between the predicted outputs and the actual outputs
% since they have the same dimensionality (n x 1) they can be subtracted from each other
differences=predictions-y;
    
%Step 3: For each coefficient (M), multiple that coefficient's values by the difference value it contributed to (see notes for a detailed example)
% in order for this operation to work as intended, X needs to be transposed and then multiplied by the difference matrix
% the dimensionality of the product of (m x n) * (n x 1) is an (m x 1 matrix)
results=X'*differences;

%Step 4: Find the gradient without penalties
nonPenaltyGrad=((1/m).*results);

%Step 5: Calculate the penalties for each theta
penalties=(lambda/m).*theta;

%Step 6: Set theta of Zero penalty to Zero (do not regularize first theta)
penalties(1)=0;

%Step 7: add in penalites to calculate gradient
grad=nonPenaltyGrad+penalties;

end
