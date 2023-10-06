function [answer] = problem5(array)
% This function takes a 3-elemement array as an input and evaluates whether the three
% elements would be appicable to make a valid triangle. 
% This function requires a 3 element array as the input and sorts the 3
% elements in ascending order once inputted. If the sum of the two smaller
% numbers is larger than the third number of the sorted array, it displays
% a logical value of 1, indicating a true value. A true value means that
% the 3 numbers in the array do form a valid triangle. 
% If the sum of the two smaller numbers is not larger than the third number
% of the sorted array, a logical value of 0 is displayed, indicating a
% false value. A false value means that the 3 numbers in the array do not
% form a valid triangle. 
updated = sort(array) ; 
if ((updated(1) + updated(2)) > updated(3))
answer = true ; 
else 
    answer = false ; 
end