function J = costFunctionJ(X, y, theta)
  
  % X is the 'design matrix' containing training examples
  % Y is the class labels
  
  m=size(X,1) % this is the number of training examples (gets the first element of size matrix)
  %Takes X matrix times theta matrix
  predictions=X*theta; % predictions of hypothesis on all m.
  sqrErrors=(predictions-y).^2; %does the element wise squared eerrors
  
  J=1/(2*m)*sum(sqrErrors);
 