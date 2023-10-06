function  Problem9(userInput)
% This function takes a string as the input and will display values that
% are equal to the length of the string, as well as show the first and last
% character of the inputted string. 
% The user will need to input their string value and the function will turn
% that input into a string. It will then find the length of the string and
% display the first and last character of the string. 
% 

lengthOfString = strlength(userInput);
disp(lengthOfString);
firstCharacter = extract(userInput,1);
disp(firstCharacter);
lastCharacter = extract(userInput, lengthOfString);
disp(lastCharacter);


end