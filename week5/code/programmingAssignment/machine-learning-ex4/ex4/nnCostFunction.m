function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m

%This part is non-regularized

%Step 1: Predict the results into a matrix for each layer and store in h2
h1 = sigmoid([ones(m, 1) X] * Theta1');
h2 = sigmoid([ones(m, 1) h1] * Theta2');

%Step 2: create a vectorized version of matrix Y to use to calculate values
updatedY=zeros(length(y),num_labels);
for i=1:length(y),
  updatedY(i,y(i))=1;
end;

%Step 3: Calculate the cost by looping thorugh
for i=1:m,
  for k=1:num_labels,
    part1=(((-1)*updatedY(i,k))*log(h2(i,k)));
    part2=((1-updatedY(i,k))*log(1-h2(i,k)));
    J=J+(part1-part2);
  end;
end;  

%Step 4: Calculate the finalized cost by dividing by m
J=J*(1/m);

% -------------Begin the regularization portion of the cost function

%Step 5: Create unbiased thetas by setting first column of theta1 and theta2 to 0
unbiasedTheta1=Theta1;
unbiasedTheta1(:,1)=0;
unbiasedTheta2=Theta2;
unbiasedTheta2(:,1)=0;     

%Step 6: Create a variable that holds the regularization values
secondHalf=0;

%Step 7: Square each element in both unbiasedtheta matrices according to regularization function
unbiasedTheta1=unbiasedTheta1.^2;
unbiasedTheta2=unbiasedTheta2.^2;

%Step 8: Add unbiased thetas into the cost function
for i=1:size(unbiasedTheta1,1),
  for k=1:size(unbiasedTheta1,2),
    secondHalf=secondHalf+unbiasedTheta1(i,k);
  end;
end;


for i=1:size(unbiasedTheta2,1),
  for k=1:size(unbiasedTheta2,2),
    secondHalf=secondHalf+unbiasedTheta2(i,k);
  end;
end;

%Step 9:  multiply result of added regularization terms by lambda/2m
secondHalf=secondHalf*(lambda/(2*m));

%Step 10: add regularization portion of cost function into the cost function
J=J+secondHalf;

%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.

%disp('This is the size of updatedY');
%size(updatedY)
%updatedY

%Note: We will be using updatedY which contains the binary vector of the y examples

%Solving this problem with a vectorized implementation

a1 = X;
z2=([ones(m, 1) a1] * Theta1');
a2=sigmoid(z2);
z3 = ([ones(m, 1) a2] * Theta2');
a3=sigmoid(z3);

delta3=a3-updatedY;
size(delta
%disp('size of delta3');
%a3
%delta3
%updatedY
%disp('size delta2');
%delta2=((Theta2')*delta3).*sigmoidGradient(z2);
%size(delta2)




%disp('This is example 1 of a3');
%a3
%disp('This is example 1 of y');
%updatedY


%for t=1:m,
%  disp('This is a1');
%  disp(t);
%  a1=X(t,:);
%  z2=Theta1'
%  h1 = sigmoid([ones(m, 1) X] * Theta1');
  %h2 = sigmoid([ones(m, 1) h1] * Theta2');
  %disp(1);
%end;

%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%



















% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
