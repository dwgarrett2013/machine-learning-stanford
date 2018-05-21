function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       


%Order of this operation matters

% Determine the number of coefficients
numCoefficients=size(X,2);

% calculate an matrix of the means of each coefficient
mu=mean(X,[1,:]);

% build an equally sized array as the X_norm with the means
for i=1:length(X)-1,
  mu=[mu;mean(X,[1,:])];
end;

% subtract mean from every element of X_norm
X_norm=X_norm-mu;

% calculate an matrix of the stdevs of each coefficient
sigma=std(X,[1,:]);

% build an equally sized array as the X_norm with the stdevs
for i=1:length(X)-1,
  sigma=[sigma;std(X,[1,:])];
end;

% divide Xnorm by stdev of each by sigma
X_norm=X_norm./sigma;







%X_norm(:,1)==(-1*mu().*X_norm(:,1)









% ============================================================

end
