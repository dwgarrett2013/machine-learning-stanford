function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

%computing projection on the top K eigenvectors (this is what we are trying to reduce to)
Ureduce=U(:,1:K);

%Apply the Ureduce values onto X to get the new projected data
%this is simply a matter of applying this new matrix onto X which results in fewer dimentions

% X (50x2) * Ureduce' (2x1)= new Z (50x1) whis is the reduced set of dimentions
Z=X*Ureduce;

% =============================================================

end
