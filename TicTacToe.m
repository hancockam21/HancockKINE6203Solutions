% Tic Tac Toe Game
% Amber Hancock 

% This code is intended to produce a Tic-Tac-Toe game that is able to be
% played by the user through their input and has a computer generated
% opponent. 

% The user will be prompted various times to input a response such as yes I
% would like to play or where the user would like to place a move. Once the
% user hits return after inputting their answer, the computer will also
% generate a move. 

% Tested using Matlab R2023a
% Tested on Macbook Air 

% Last updated 09/11/2023

% Welcome message 

disp("Welcome to Tic Tac Toe. Play well and good luck!")
% user is then asked if they would like to play. 
userInput = input("Do you want to play? Y/N: (Enter a Y or a N and press return) ", "s");

    if (userInput == "Y")
    % gameboard is shown to user
    gameboard = ["A" "B" "C"; "D" "E" "F"; "G" "H" "I"];
    disp(gameboard)

avail = ["A" "B" "C" "D" "E" "F" "G" "H" "I"];

    % Player's first move. 
    userMoveOne = input("Enter the letter of the square you'd like to place your first move. ", "s");
    % put if user inputs ____, change that square to X. and so on. 
    
   % avail = ["A" "B" "C"; "D" "E" "F"; "G" "H" "I"];  
    % this is indicating the available inputs the user can choose from to
    % place their first move.

        if(userMoveOne == "A")
           posUserMoveOne = [1,1]; % setting location of that move to a position 
                               % in the matrix 
           gameboard = ["X" "B" "C"; "D" "E" "F"; "G" "H" "I"];
           disp(gameboard)
           unavail = "A" ;

        elseif(userMoveOne == "B")
            posUserMoveOne = [1,2];
            gameboard = ["A" "X" "C"; "D" "E" "F" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "B" ;

        elseif(userMoveOne == "C")
             posUserMoveOne = [1,3];
            gameboard = ["A" "B" "X"; "D" "E" "F" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "C" ;

        elseif(userMoveOne == "D")
             posUserMoveOne = [2,1];
            gameboard = ["A" "B" "C"; "X" "E" "F" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "D" ;

        elseif(userMoveOne == "E")
            posUserMoveOne = [2,2];
            gameboard = ["A" "B" "C"; "D" "X" "F" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "E" ;

        elseif(userMoveOne == "F")
            posUserMoveOne = [2,3];
            gameboard = ["A" "B" "C"; "D" "E" "X" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "F" ;

        elseif(userMoveOne == "G")
            posUserMoveOne = [3,1];
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "X" "H" "I"];
            disp(gameboard)
            unavail = "G" ;

        elseif(userMoveOne == "H")
             posUserMoveOne = [3,2];
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "G" "X" "I"];
            disp(gameboard)
            unavail = "H" ;


        elseif(userMoveOne == "I")
             posUserMoveOne = [3,3];
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "G" "H" "X"];
            disp(gameboard)
            unavail = "I" ;

        else
            disp("invalid user input")
        end

avail = setdiff(avail, unavail); % only allow spaces that weren't used in 
                                 % move one to be available. 

compMoveOne = randsample(avail,1);

while compMoveOne == "A"
    old = "A" ;
    new = "O" ;
    newStr = replace(gameboard, old, new)
end
disp(gameboard)
 %   if (compMoveOne ~= userMoveOne)
        % need to change the value of compMoveOne in the gameboard to O. 
    


    % generate a value of "O" in one of the matrix entries that is not 
    % already equal to X (any matrix location that is still a letter)

% userMoveTwo = input("Where would you like to place your second move?" "s")
       


   
    
    
% After 5 moves (minimum number of moves possible), you'll need to code for
% if there is 3 X or O in a row. (diagonal or across or down) 
% if there is 3 X in a row, disp 'you won!'. If there are 3 O in a row,
% disp 'game over' 
    


else 
    disp("quitting game")
    % quit game 
    end
        