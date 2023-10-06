function [figure] = problem7(vector1,vector2)
%This function takes two vectors and plots them both on the same graph and
%gives the graph a title as well as axes labels. 
% The user will need to input two vectors as their inputs represented by 
% vector1 and vector 2 and the function will create a graph with the two
% vectors on it when the function is called. 
figure = plot(vector1, vector2)
title('Title')
xlabel('X-Axis')
ylabel('Y-Axis')
end