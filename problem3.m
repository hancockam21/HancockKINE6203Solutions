function [textOut] = problem3(number1,number2)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
total = number1 + number2 ; 

if rem(total, 2) == 0
   textOut = 'Woo';
else 
   textOut = 'Hah';
end

end