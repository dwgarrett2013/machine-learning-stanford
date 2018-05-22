function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


%find returns indices in a vector that match a given condition

%find the positive indices of y
positiveYIndicies=find(y==1);
negativeYIndicies=find(y==0);

%Plot examples with X axis being X1 values and Y Axis being X2 values
plot(X(positiveYIndicies,1),X(positiveYIndicies,2),'k+', 'LineWidth',2, 'MarkerSize', 7)
plot(X(negativeYIndicies,1),X(negativeYIndicies,2),'ko', 'MarkerFaceColor', 'y','LineWidth',2, 'MarkerSize', 7)

% =========================================================================



hold off;

end
