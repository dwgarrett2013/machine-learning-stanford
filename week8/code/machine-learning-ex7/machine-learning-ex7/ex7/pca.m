function [U, S] = pca(X)
%PCA Run principal component analysis on the dataset X
%   [U, S, X] = pca(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%

% Useful values
[m, n] = size(X);

% You need to return the following variables correctly.
U = zeros(n);
S = zeros(n);

% ====================== YOUR CODE HERE ======================
% Instructions: You should first compute the covariance matrix. Then, you
%               should use the "svd" function to compute the eigenvectors
%               and eigenvalues of the covariance matrix. 
%
% Note: When computing the covariance matrix, remember to divide by m (the
%       number of examples).
%

%X is of size 50x2 (mxn)

%compute coovariance matrix X'(nxm) * X (mxn)=(nxn) coovariance matrix
cov=(X'*X)./m;

%computer the eigenvectors of the coovariance matrix
%U contains the principal components
% S contains the diagnoal matrix
[U,S,V]=svd(cov);

%we are ultimately finding the values that minimize the distance from a graph of the 2 dimentions to a new dimention line







% =========================================================================

end
