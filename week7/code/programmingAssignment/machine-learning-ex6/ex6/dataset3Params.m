function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
%modifying these variables
C = 10;
sigma = 0.01;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%store the c and sigma values in vectors to iterate on later
c_vals=[0.01 0.03 0.1 0.3 1 3 10 30];
sigma_vals=[0.01 0.03 0.1 0.3 1 3 10 30];

predictionErrors=ones(length(c_vals),length(sigma_vals));

%run the model for every c and every s
for c=1:length(c_vals),
  for s=1:length(sigma_vals),
    %Train the test model using the svmTrain optimization function
    %svmTrain uses the gaussian kernal we specified earlier and we don't use the x1 and X2 values
    %This creates teh model that we will use to test
    test_model= svmTrain(X, y, c_vals(c), @(x1, x2) gaussianKernel(x1, x2, sigma_vals(s)));
    
    %get hte predictions using the test_model
    predictions=svmPredict(test_model,Xval);

    %find the error in the predictions
    predictionError=mean(double(predictions ~= yval));    
    
    %store the prediction error for the appropriac c and sigma value in the prediction error arry
    predictionErrors(c,s)=predictionError;
    
  end;
end;

%Show  the prediction errors for all executions
%predictionErrors

%get the indexes of the c and sigma that produce the minimum predictionError
[minval, row] = min(min(predictionErrors,[],2));
[minval, col] = min(min(predictionErrors,[],1));

%display the results
disp('universal min');
disp(minval);
disp('min row');
disp(row);
disp(c_vals(row));
disp('min col');
disp(col);
disp(sigma_vals(col));

%set C and sigma to the minimum values
C=c_vals(row);
sigma=sigma_vals(col);


% =========================================================================

end
