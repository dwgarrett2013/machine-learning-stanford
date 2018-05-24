function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%ONEVSALL trains multiple logistic regression classifiers and returns all
%the classifiers in a matrix all_theta, where the i-th row of all_theta 
%corresponds to the classifier for label i
%   [all_theta] = ONEVSALL(X, y, num_labels, lambda) trains num_labels
%   logistic regression classifiers and returns each of these classifiers
%   in a matrix all_theta, where the i-th row of all_theta corresponds 
%   to the classifier for label i

% Some useful variables
m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(num_labels, n + 1);
%disp('all_theta size');
%size(all_theta)

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the following code to train num_labels
%               logistic regression classifiers with regularization
%               parameter lambda. 
%
% Hint: theta(:) will return a column vector.
%
% Hint: You can use y == c to obtain a vector of 1's and 0's that tell you
%       whether the ground truth is true/false for this class.
%
% Note: For this assignment, we recommend using fmincg to optimize the cost
%       function. It is okay to use a for-loop (for c = 1:num_labels) to
%       loop over the different classes.
%
%       fmincg works similarly to fminunc, but is more efficient when we
%       are dealing with large number of parameters.
%
% Example Code for fmincg:
%
%     % Set Initial theta
%     initial_theta = zeros(n + 1, 1);
%     
%     % Set options for fminunc
%     options = optimset('GradObj', 'on', 'MaxIter', 50);
% 
%     % Run fmincg to obtain the optimal theta
%     % This function will return theta and the cost 
%     [theta] = ...
%         fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
%                 initial_theta, options);
%

%Step 1: Set Initial Theta


%set the fminunc option set
options = optimset('GradObj', 'on', 'MaxIter', 50);


%Need to set initial theta 

%Explanation:
%1.  for each classification type, have a row in all_theta with a theta for each pixel representing the intenstity
%2.  when looping: set an initial theta value to zero for that example, in this example that will be 401 cells (1st cell is a bias theta, last 400 are for each of the pixels)
%3.  for each type of example.  for each pixel, determine the theta(intenstity) that likely says that pixel is part of a blank object
%4.  fminunc returns a vector of the thetas,
%y==c makes a y array to be test of the values that match a given classification type
%5.  The lowest cost probability will be the most likely class

for(c=1:num_labels),
  initial_theta = zeros(n + 1, 1);
  all_theta(c,:)=fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), initial_theta, options);  
end;






% =========================================================================


end
