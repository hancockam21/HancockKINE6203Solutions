function [textOut] = problem3(number1,number2)
% This function takes two numbers as inputs and gives a specific text output 
% based on if the sum of the two numbers is even or odd. 
% The user will need to input two numbers when calling the function. When
% the function is run, the code will add the two numbers to find the total.
% If this total is divided by 2 and there is no remainder (meaning it is an
% even number), the output is equal to 'Woo.' If the total is divided by 2
% and there is a remainder (meaning the total is not even), the output is
% equal to 'Hah.'
total = number1 + number2 ; 

if rem(total, 2) == 0
   textOut = 'Woo';
else 
   textOut = 'Hah';
end
end