function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    
    %Good test values: X=[1 1; 1 2; 1 3], y=[4;5;6],theta=[0;0], alpha=0.1, num_iters=2
    
    %Process to reason through
    
    %Step 1: Find the predicted outputs using the current theta matrix and store results in same format as the y output matrix
    % must reverse the order of operations so X (an n x m matrix) * theta ( a m x 1 matrix) works and produces an n x 1 matrix
    predictions=X*theta;
    
    %Step 2: Find the difference between the predicted outputs and the actual outputs
    % since they have the same dimensionality (n x 1) they can be subtracted from each other
    differences=predictions-y;
    
    %Step 3: For each coefficient (M), multiple that coefficient's values by the difference value it contributed to (see notes for a detailed example)
    % in order for this operation to work as intended, X needs to be transposed and then multiplied by the difference matrix
    % the dimensionality of the product of (m x n) * (n x 1) is an (m x 1 matrix)
    results=X'*differences;
   
    %Step 4: Do the elementwise product of 1/m*alpha*(results matrix)
    % there is no need to do the sum function because the results matrix already does this and is in the desired format for theta (m x 1 matrix)
    deltas=(1/m)*alpha.*results;
    
    %Step 5: Subtract the deltas from theta and reassign theta's value
    % both matrices are of size (m x 1) so they can be subtracted directly
    theta=theta-deltas
    
    disp('This is the cost');
    computeCost(X, y, theta)

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
