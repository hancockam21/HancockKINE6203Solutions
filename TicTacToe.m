% Tic Tac Toe Game
% Amber Hancock 

% Detailed Description 
% What should a user do 

% Tested using Matlab R2023a
% Tested on Macbook Air 

% Last updated 09/07/2023

% Welcome message 

disp("Welcome to Tic Tac Toe. Play well and good luck!")

userInput = input("Do you want to play? Y/N: (Enter a Y or a N and press return) ", "s")
if (userInput == "Y")
    % play game 
    disp('playing game')

    gameboard = ["A" "B" "C"; "D" "E" "F"; "G" "H" "I"];
    disp('gameboard')

    userMove = input("Enter the letter of the square you'd like to place your first move; ", "s")
    % put if user inputs ____, change that square to X. and so on. 
else 
    disp('quitting game')
    % quit game 
end 
