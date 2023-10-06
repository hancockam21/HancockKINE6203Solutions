function Problem8(number1,number2)
% This function will take 2 numbers as inputs and will display all the
% numbers counting by 1 from the lower number to the higher number. 
% The user will need to input 2 numbers as their 2 inputs when calling the
% function and the counter will be displayed in the command window. The
% code is also written to automatically count from the smaller number to
% the larger number no matter what order they are inputted whenc alling the
% function. 

if number1 > number2
    disp(number2:1:number1)
elseif number2 > number1 
    disp(number1:1:number2)
end

end