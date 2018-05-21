function [jVal, gradient]=costFunction(theta)
  
  %find the jvals for the functions
  jVal=(theta(1)-5)^2 + (theta(2)-5)^2;
  
  %find the gradient using the derivative of the cost function
  gradient=zeros(2,1);
  
  %note that octave starts indexes as 1 for vectors
  gradient(1)=2*(theta(1)-5);
  gradient(2)=2*(theta(2)-5);
  