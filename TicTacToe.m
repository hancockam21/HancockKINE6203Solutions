% Tic Tac Toe Game
% Amber Hancock 

% This code is intended to produce a Tic-Tac-Toe game that is able to be
% played by the user through their input and has a computer generated
% opponent. 

% The user will be prompted various times to input a response such as yes I
% would like to play or where would the user like to place a move. Once the
% user hits return after inputting their answer, the computer will also
% generate a move. 

% Tested using Matlab R2023a
% Tested on Macbook Air 

% Last updated 09/11/2023

% Welcome message 

disp("Welcome to Tic Tac Toe. Play well and good luck!")

userInput = input("Do you want to play? Y/N: (Enter a Y or a N and press return) ", "s")
if (userInput == "Y")

    % gameboard is shown to user
    disp(gameboard)


    % Player's first move. 
    userMoveOne = input("Enter the letter of the square you'd like to place your first move. ", "s")
    % put if user inputs ____, change that square to X. and so on. 
    
        if(userMoveOne == "A")
           
           gameboard = ["X" "B" "C"; "D" "E" "F"; "G" "H" "I"];
           disp(gameboard)

        elseif(userMoveOne == "B")
            gameboard = ["A" "X" "C"; "D" "E" "F" ; "G" "H" "I"]
            disp(gameboard)
        elseif(userMoveOne == "C")
            gameboard = ["A" "B" "X"; "D" "E" "F" ; "G" "H" "I"]
            disp(gameboard)
        elseif(userMoveOne == "D")
            gameboard = ["A" "B" "C"; "X" "E" "F" ; "G" "H" "I"]
            disp(gameboard)
        elseif(userMoveOne == "E")
            gameboard = ["A" "B" "C"; "D" "X" "F" ; "G" "H" "I"]
            disp(gameboard)
        elseif(userMoveOne == "F")
            gameboard = ["A" "B" "C"; "D" "E" "X" ; "G" "H" "I"]
        elseif(userMoveOne == "G")
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "X" "H" "I"]
            disp(gameboard)
        elseif(userMoveOne == "H")
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "G" "X" "I"]
            disp(gameboard)
        elseif(userMoveOne == "I")
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "G" "H" "X"]
        else
            disp("invalid user input")
        end
    % generate a value of "O" in one of the matrix entries that is not 
    % already equal to X (any matrix location that is still a letter)

        % computerMoveOne = rand(gameboard) ????

    % for when a matrix has a value not equal to X, computer needs to
    % randomly select a element to change to O. 

   
    
    
% After 5 moves (minimum number of moves possible), you'll need to code for
% if there is 3 X or O in a row. (diagonal or across or down) 
% if there is 3 X in a row, disp 'you won!'. If there are 3 O in a row,
% disp 'game over' 
    

else 
    disp("quitting game")
    % quit game 
        end
        