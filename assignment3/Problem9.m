function [lengthOfString, firstCharacter, lastCharacter] = Problem9(userInput)
% This function takes a string as the input and will produce an output that
% is equal to the length of the string, as well as show the first and last
% character of the inputted string. 
% The user will need to input their string value and the function will turn
% that input into a string. It will then find the length of the string and
% display the first and last character of the string. 
% Also be sure to specify in brackets which outputs are desired when
% calling the function to ensure the correct outputs are given, If not,
% only the first output of lengthOfString will be shown after running the
% function. 
userInput = str(userInput);
lengthOfString = strlength(userInput);
firstCharacter = userInput(1);
disp(firstCharacter)
lastCharacter = userInput(lengthofString);
disp(lastCharacter)

end