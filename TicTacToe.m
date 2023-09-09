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

    gameboard = ["A" "B" "C"; "D" "E" "F" ; "G" "H" "I"];
    disp(gameboard)

    userMove = input("Enter the letter of the square you'd like to place your first move; ", "s")
    % put if user inputs ____, change that square to X. and so on. 

        if(userInput == "A")
           
           gameboard = ["X" "B" "C"; "D" "E" "F"; "G" "H" "I"];
           disp(gameboard)

        elseif(userInput == "B")
            gameboard = ["A" "X" "C"; "D" "E" "F" ; "G" "H" "I"]
            disp(gameboard)
        elseif(userInput == "C")
            gameboard = ["A" "B" "X"; "D" "E" "F" ; "G" "H" "I"]
            disp(gameboard)
        elseif(userInput == "D")
            gameboard = ["A" "B" "C"; "X" "E" "F" ; "G" "H" "I"]
            disp(gameboard)
        elseif(userInput == "E")
            gameboard = ["A" "B" "C"; "D" "X" "F" ; "G" "H" "I"]
            disp(gameboard)
        else if(userInput == "F")
            gameboard = ["A" "B" "C"; "D" "E" "X" ; "G" "H" "I"]
        else if(userInput == "G")
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "X" "H" "I"]
            disp(gameboard)
        else if(userInput == "H")
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "G" "X" "I"]
            disp(gameboard)
        elseif(userInput == "I")
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "G" "H" "X"]
        else 
            disp('invalid user input')
        end
        
else 
    disp('quitting game')
    % quit game 
end 
