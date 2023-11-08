function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: 
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end
% Bug Found -- Using || created a loop that was always true. Instead, 
% using && allows it to show the desired error message
% when the wrong input is used but will continue to the next line of code
% when the correct input is used. 
% Could also rewrite as 
%   while level <1 or || level > 3 since input is intended to be a number. 

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      
   % checking for equality so need == rather than =. 
highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else

highest = advancedhighest; 
% Bug Found -- Need to capitalize the H in highest. advancedhighest (no
% capital letter) is not previously named. The previously named variable is
% advancedHighest (captital H) so in order to use it, it must have a
% capital letter. 
end

% randomly select secret number between 1 and highest for level of play
secretNumber = randi([1 highest]) ;  
% Bug Found -- This now picks a random integer between 1 and the highest 
% number possible based on the level chosen. 

% initialize number of guesses and User_guess

numOfTries = 0;
% Bug Found -- need to set number of tries equal to zero. 
% If it was set = 1, it would be adding 1 to the total number of tries. 
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest
% Bug Found -- If the loop is only when userGuess<1 || userGuess >= highest,
% the user's guess is able to be equal to the highest number so should be > 
% rather than only >. 
fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% Now it will update the number of tries to be used in the if else statements below. 

numOfTries = (numOfTries + 1) ; 

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber % userGuess > secretNumber creates a duplicate 
    % case seen in the next line. If the number guess is less than the
    % secret number, it will say it's too low. Previously stated if the
    % number guessed was higher than the secret number that the number was
    % too high. 
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);
% Bug Found -- When number was guessed it wasn't stating how many tries it
% took. Added numOfTries to the statement to be in place of %d tries. 
end 
% Bug -- Need an additional end statement to end the if else sstatement. 
 
end  % of guessing while loop

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
% Bug Found -- Need to put this after the end of the while loop so that it doesn't
% display after every single guess by the user. 
% end of game