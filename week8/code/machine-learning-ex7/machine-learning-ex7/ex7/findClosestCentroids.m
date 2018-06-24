function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%


%Remember K means is about finding similar types of examples based on their X values, not their Y results
%so we are comparing x1 and x2 and ...

distances=zeros(size(X,1),K);

%for every X, calculate the distnace from each centroid (columns)
%distance is the sum of the u values (centroids) minus the X values (X) squared
for c=1:K,
  for i=1:size(X,1),
    distances(i,c)=sum((centroids(c,:)-X(i,:)).^2);
  end;
end;


%for each element i in X, set  the idx(i) equal to the centroid id with the lowest distance
for i=1:size(distances,1)
  [minVal, minIndex] = min(distances(i,:));
  idx(i)=minIndex;
end;


% =============================================================

end

