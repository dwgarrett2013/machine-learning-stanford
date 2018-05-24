function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

%Step 1: Add bias term of 1 to X to create a1
a1=[ones(m,1),X];

%Step 2: Calculate z2 and a2 values using a1 and Theta1 to make predictions
z2=a1*Theta1';
a2=sigmoid(z2);

%Step 3: Add bias term of 1 to a2 to create a2
a2=[ones(m,1),a2];

%Step 4: Calculate z3 and a3 values using a2 and Theta2 to make predictions
z3=a2*Theta2';
a3=sigmoid(z3);

%Step 5: set p to the max of each result set.  This is the classification that wins
[a,p]=max(a3,[],2);

% =========================================================================


end
