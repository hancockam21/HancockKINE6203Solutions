function [sum1, diff1, prod1, max1] = Problem2(num1,num2)
% This function is going to take two numerical inputs (num1 and num2) and
% can find the sum, difference and product of the two numbers. The last
% output is going to display the max number of the two. 

%   The user will need to specify which outputs they want to be displayed
%   by typing the output names desired into [  ] prior to calling the
%   function. Set the desired outputs equal to code calling the function
%   and input the two numbers desired seperated by a comma. 

sum1 = num1 + num2 ; 
diff1 = (num1 - num2) ;
prod1 = num1 * num2 ;
max1 = max(num1, num2) ;

end

