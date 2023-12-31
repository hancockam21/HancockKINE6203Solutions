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

% Last updated 09/25/2023

% Welcome Message
disp("Welcome to Tic Tac Toe. Play well and good luck!")

for userInput = input("Do you want to play? Y/N: (Enter a Y or a N and press return) ", "s")
while (userInput == "Y") % This while loop makes is so that when the user is 
                         % asked to play again, it can loop back to the beginning 
                         % in order to run back through the game. 

    gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"];
    disp(gameboard)  % gameboard is shown to user

avail = ["A" "B" "C" "D" "E" "F" "G" "H" "I"];
% indicates possible choices the user can input
    % Player's first move. 
    userMoveOne = input("Enter the capital letter of the square you'd like to place your first move. ", "s");
    % if user inputs ____, change that square to X. and so on. 
    
        if(userMoveOne == "A" )
           gameboard = ["X" "B" "C"; "D" "E" "F"; "G" "H" "I"];
           disp(gameboard)
           unavail = "A" ;

        elseif(userMoveOne == "B")
            gameboard = ["A" "X" "C"; "D" "E" "F" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "B" ;

        elseif(userMoveOne == "C" )
            gameboard = ["A" "B" "X"; "D" "E" "F" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "C" ;

        elseif(userMoveOne == "D" )
            gameboard = ["A" "B" "C"; "X" "E" "F" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "D" ;

        elseif(userMoveOne == "E")
            gameboard = ["A" "B" "C"; "D" "X" "F" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "E" ;

        elseif(userMoveOne == "F")
            gameboard = ["A" "B" "C"; "D" "E" "X" ; "G" "H" "I"];
            disp(gameboard)
            unavail = "F" ;

        elseif(userMoveOne == "G")
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "X" "H" "I"];
            disp(gameboard)
            unavail = "G" ;

        elseif(userMoveOne == "H")
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "G" "X" "I"];
            disp(gameboard)
            unavail = "H" ;

        elseif (userMoveOne) == "I"
            gameboard = ["A" "B" "C"; "D" "E" "F" ; "G" "H" "X"];
            disp(gameboard)
            unavail = "I" ;

        else 
        disp("Invalid Input. Starting Game Over")
        continue

        end


 avail = setdiff(avail, unavail); % this updates the available entries to 
                                  % not include what was chosen in the
                                  % first move. 
    disp("Computer's Turn!")
   compMoveOne = randi(length(avail), 1); % picks a random available letter 
                                          % by choosing a location in the
                                          % 'available' vector. 

    if avail(1, compMoveOne) == "A"
        gameboard(1,1) = "O" ; 
        unavail = "A" ;
        disp(gameboard) 

    elseif avail(1, compMoveOne) == "B"
        gameboard(1,2) = "O" ; 
        unavail = "B"; 
        disp(gameboard)
        
    elseif avail(1, compMoveOne) == "C" 
        gameboard(1,3) = "O";
        unavail = "C" ; 
        disp(gameboard)

    elseif avail(1, compMoveOne) == "D"
        gameboard(2,1) = "O" ; 
        unavail = "D"; 
        disp(gameboard)

    elseif avail(1, compMoveOne) == "E"
        gameboard(2,2) = "O" ; 
        unavail = "E"; 
        disp(gameboard)
    
    elseif avail(1, compMoveOne) == "F"
        gameboard(2,3) = "O" ; 
        unavail = "F"; 
        disp(gameboard)

    elseif avail(1, compMoveOne) == "G"
        gameboard(3,1) = "O" ; 
        unavail = "G"; 
        disp(gameboard)

    elseif avail(1, compMoveOne) == "H" 
        gameboard(3,2) = "O" ; 
        unavail = "H"; 
        disp(gameboard)
    
    else 
        avail(1, compMoveOne) = "I" ; 
        gameboard(3,3) = "O" ; 
        unavail = "I"; 
        disp(gameboard)
    
    end 

    avail = setdiff(avail, unavail) ; % updating available characters after move. 


  userMoveTwo = input("Where would you like to place your second move? Remember: Capital letters only. ", "s");

    if userMoveTwo == "A" 
        gameboard(1,1) = "X" ;
        unavail = "A" ; 
        disp(gameboard)

    elseif userMoveTwo == "B" 
        gameboard(1,2) = "X" ;
        unavail = "B" ;
        disp(gameboard)
   
    elseif userMoveTwo == "C" 
        gameboard(1,3) = "X" ;
        unavail = "C" ;
        disp(gameboard)

    elseif userMoveTwo == "D" 
        gameboard(2,1) = "X" ;
        unavail = "D" ;
        disp(gameboard)
      
    elseif userMoveTwo == "E" 
        gameboard(2,2) = "X" ;
        unavail = "E" ;
        disp(gameboard)
      
    elseif userMoveTwo == "F"
        gameboard(2,3) = "X" ;
        unavail = "F" ;
        disp(gameboard)

    elseif userMoveTwo == "G" 
        gameboard(3,1) = "X" ;
        unavail = "G" ;
        disp(gameboard)

    elseif userMoveTwo == "H" 
        gameboard(3,2) = "X" ;
        unavail = "H" ;
        disp(gameboard)

    elseif userMoveTwo == "I" 
        gameboard(3,3) = "X" ;
        unavail = "I" ;
        disp(gameboard)
    
    else 
        disp("Invalid Input. Starting Game Over")
        continue
    end

    avail = setdiff(avail, unavail) ;

    disp("Computer's Turn!")
    compMoveTwo = randi(length(avail), 1); % choosing a random point of vector
                                           % 'avail' to place the
                                           % computer's move
    
    if avail(1, compMoveTwo) == "A"
        gameboard(1,1) = "O" ; 
        unavail = "A" ;
        disp(gameboard) 

    elseif avail(1, compMoveTwo) == "B"
        gameboard(1,2) = "O" ; 
        unavail = "B"; 
        disp(gameboard)
        
    elseif avail(1, compMoveTwo) == "C" 
        gameboard(1,3) = "O";
        unavail = "C" ; 
        disp(gameboard)

    elseif avail(1, compMoveTwo) == "D"
        gameboard(2,1) = "O" ; 
        unavail = "D"; 
        disp(gameboard)

    elseif avail(1, compMoveTwo) == "E"
        gameboard(2,2) = "O" ; 
        unavail = "E"; 
        disp(gameboard)
    
    elseif avail(1, compMoveTwo) == "F"
        gameboard(2,3) = "O" ; 
        unavail = "F"; 
        disp(gameboard)

    elseif avail(1, compMoveTwo) == "G"
        gameboard(3,1) = "O" ; 
        unavail = "G"; 
        disp(gameboard)

    elseif avail(1, compMoveTwo) == "H"
        gameboard(3,2) = "O" ; 
        unavail = "H"; 
        disp(gameboard)
    
    else 
        avail(1, compMoveTwo) = "I" ; 
        gameboard(3,3) = "O" ; 
        unavail = "I"; 
        disp(gameboard)
    
    end 

   avail = setdiff(avail, unavail) ;  % updating available moves based on 
                                     % computer's second move. 
    
   userMoveThree = input("Where would you like to place your third move? Remember: Capital letters only and be strategic. ", "s") ; 

    if userMoveThree == "A" 
        gameboard(1,1) = "X" ;
        unavail = "A" ; 
        disp(gameboard)

    elseif userMoveThree == "B" 
        gameboard(1,2) = "X" ;
        unavail = "B" ;
        disp(gameboard)
   
    elseif userMoveThree == "C"
        gameboard(1,3) = "X" ;
        unavail = "C" ;
        disp(gameboard)

    elseif userMoveThree == "D" 
        gameboard(2,1) = "X" ;
        unavail = "D" ;
        disp(gameboard)
      
    elseif userMoveThree == "E" 
        gameboard(2,2) = "X" ;
        unavail = "E" ;
        disp(gameboard)
      
    elseif userMoveThree == "F" 
        gameboard(2,3) = "X" ;
        unavail = "F" ;
        disp(gameboard)

    elseif userMoveThree == "G" 
        gameboard(3,1) = "X" ;
        unavail = "G" ;
        disp(gameboard)

    elseif userMoveThree == "H" 
        gameboard(3,2) = "X" ;
        unavail = "H" ;
        disp(gameboard)

    elseif userMoveThree == "I" 
        gameboard(3,3) = "X" ;
        unavail = "I" ;
        disp(gameboard)

    else  
        disp("Invalid Input. Starting Game Over")
        continue

    end
    
% After 5 moves (minimum number of moves possible), you'll need to code for
% if there is 3 X or O in a row. (diagonal or across or down) 
% if there is 3 X in a row, disp 'you won!'. If there are 3 O in a row,
% disp 'game over' 
    
    posA = gameboard(1,1);
    posB = gameboard(1,2);
    posC = gameboard(1,3);
    posD = gameboard(2,1);
    posE = gameboard(2,2);
    posF = gameboard(2,3);
    posG = gameboard(3,1);
    posH = gameboard(3,2);
    posI = gameboard(3,3);    % specifiying which position of the gamebaord 
                              % each character is so that the code can check 
                              % if there is a winner. 

% Lines 331-338 are checking for a user win. If there is 3 in a row of X,
% it displays that the user won. LInes 349-357 are checking for a
% computerwin. If there is 3 in a row of O, it displays that the user lost.
% 

    if posA == "X" && posB == "X" && posC == "X" || ... % the ... continues the code into the next line
          posD == "X" && posE == "X" && posF == "X" || ...
          posG == "X" && posH == "X" && posI == "X" || ...
          posA == "X" && posD == "X" && posG == "X" || ...
          posB == "X" && posE == "X" && posH == "X" || ... 
          posC == "X" && posF == "X" && posI == "X" || ...
          posA == "X" && posE == "X" && posI == "X" || ...
          posC == "X" && posE == "X" && posG == "X" 

         newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
        end 

    elseif posA == "O" && posB == "O" && posC == "O" || ... % the ... continues the code into the next line
        posD == "O" && posE == "O" && posF == "O" || ...
        posG == "O" && posH == "O" && posI == "O" || ... 
        posA == "O" && posD == "O" && posG == "O" || ...
        posB == "O" && posE == "O" && posH == "O" || ...
        posC == "O" && posF == "O" && posI == "O" || ...
        posA == "O" && posE == "O" && posI == "O" || ...
        posC == "O" && posE == "O" && posG == "O" 
        disp("Oh No! You Lost!!!") 

        newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
       end 
    end 

     %%%% if any of the while loops are true, continue statement keeps it from
    %%%% repeating 'you won!!' or 'oh no! you lost!!! over and over. 
    

    disp("Computer's Turn!")
    avail = setdiff(avail, unavail) ; 
    compMoveThree = randi(length(avail), 1); % choosing a random point of vector
                                           % 'avail' to place the
                                           % computer's move
    
    if avail(1, compMoveThree) == "A"
        gameboard(1,1) = "O" ; 
        unavail = "A" ;
        disp(gameboard) 

    elseif avail(1, compMoveThree) == "B"
        gameboard(1,2) = "O" ; 
        unavail = "B"; 
        disp(gameboard)
        
    elseif avail(1, compMoveThree) == "C" 
        gameboard(1,3) = "O";
        unavail = "C" ; 
        disp(gameboard)

    elseif avail(1, compMoveThree) == "D"
        gameboard(2,1) = "O" ; 
        unavail = "D"; 
        disp(gameboard)

    elseif avail(1, compMoveThree) == "E"
        gameboard(2,2) = "O" ; 
        unavail = "E"; 
        disp(gameboard)
    
    elseif avail(1, compMoveThree) == "F"
        gameboard(2,3) = "O" ; 
        unavail = "F"; 
        disp(gameboard)

    elseif avail(1, compMoveThree) == "G"
        gameboard(3,1) = "O" ; 
        unavail = "G"; 
        disp(gameboard)

    elseif avail(1, compMoveThree) == "H"
        gameboard(3,2) = "O" ; 
        unavail = "H"; 
        disp(gameboard)
    
    else
        avail(1, compMoveThree) = "I" ;
        gameboard(3,3) = "O" ; 
        unavail = "I"; 
        disp(gameboard)
    
    end 
    
        % checking win conditions

    posA = gameboard(1,1);
    posB = gameboard(1,2);
    posC = gameboard(1,3);
    posD = gameboard(2,1);
    posE = gameboard(2,2);
    posF = gameboard(2,3);
    posG = gameboard(3,1);
    posH = gameboard(3,2);
    posI = gameboard(3,3); 

    if posA == "X" && posB == "X" && posC == "X" || ... % the ... continues the code into the next line
          posD == "X" && posE == "X" && posF == "X" || ...
          posG == "X" && posH == "X" && posI == "X" || ...
          posA == "X" && posD == "X" && posG == "X" || ...
          posB == "X" && posE == "X" && posH == "X" || ... 
          posC == "X" && posF == "X" && posI == "X" || ...
          posA == "X" && posE == "X" && posI == "X" || ...
          posC == "X" && posE == "X" && posG == "X" 
        disp("You Won!!!") 

        newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
        end 

    elseif posA == "O" && posB == "O" && posC == "O" || ... % the ... continues the code into the next line
        posD == "O" && posE == "O" && posF == "O" || ...
        posG == "O" && posH == "O" && posI == "O" || ... 
        posA == "O" && posD == "O" && posG == "O" || ...
        posB == "O" && posE == "O" && posH == "O" || ...
        posC == "O" && posF == "O" && posI == "O" || ...
        posA == "O" && posE == "O" && posI == "O" || ...
        posC == "O" && posE == "O" && posG == "O" 
        disp("Oh No! You Lost!!!") 

         newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
       end 

    end
  
    avail = setdiff(avail, unavail);   % updating available moves based on 
                                       % computer's third move. 
    
   userMoveFour = input("Where would you like to place your fourth move? Remember: Be Strategic. ", "s") ;
    if userMoveFour == "A" 
        gameboard(1,1) = "X" ;
        unavail = "A" ; 
        disp(gameboard)

    elseif userMoveFour == "B" 
        gameboard(1,2) = "X" ;
        unavail = "B" ;
        disp(gameboard)
   
    elseif userMoveFour == "C" 
        gameboard(1,3) = "X" ;
        unavail = "C" ;
        disp(gameboard)

    elseif userMoveFour == "D" 
        gameboard(2,1) = "X" ;
        unavail = "D" ;
        disp(gameboard)
      
    elseif userMoveFour == "E" 
        gameboard(2,2) = "X" ;
        unavail = "E" ;
        disp(gameboard)
      
    elseif userMoveFour == "F" 
        gameboard(2,3) = "X" ;
        unavail = "F" ;
        disp(gameboard)

    elseif userMoveFour == "G" 
        gameboard(3,1) = "X" ;
        unavail = "G" ;
        disp(gameboard)

    elseif userMoveFour == "H" 
        gameboard(3,2) = "X" ;
        unavail = "H" ;
        disp(gameboard)

    elseif userMoveFour == "I" 
        gameboard(3,3) = "X" ;
        unavail = "I" ;
        disp(gameboard)

    else 
    disp("Invalid Input. Starting Game Over")
        continue
    end

    % checking win conditions

    posA = gameboard(1,1);
    posB = gameboard(1,2);
    posC = gameboard(1,3);
    posD = gameboard(2,1);
    posE = gameboard(2,2);
    posF = gameboard(2,3);
    posG = gameboard(3,1);
    posH = gameboard(3,2);
    posI = gameboard(3,3); 

    if posA == "X" && posB == "X" && posC == "X" || ... % the ... continues the code into the next line
          posD == "X" && posE == "X" && posF == "X" || ...
          posG == "X" && posH == "X" && posI == "X" || ...
          posA == "X" && posD == "X" && posG == "X" || ...
          posB == "X" && posE == "X" && posH == "X" || ... 
          posC == "X" && posF == "X" && posI == "X" || ...
          posA == "X" && posE == "X" && posI == "X" || ...
          posC == "X" && posE == "X" && posG == "X" 
        disp("You Won!!!") 
        
            newGame = questdlg("Would you like to play again?"); 
            switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
            end 
      

    elseif posA == "O" && posB == "O" && posC == "O" || ... % the ... continues the code into the next line
        posD == "O" && posE == "O" && posF == "O" || ...
        posG == "O" && posH == "O" && posI == "O" || ... 
        posA == "O" && posD == "O" && posG == "O" || ...
        posB == "O" && posE == "O" && posH == "O" || ...
        posC == "O" && posF == "O" && posI == "O" || ...
        posA == "O" && posE == "O" && posI == "O" || ...
        posC == "O" && posE == "O" && posG == "O" 
        disp("Oh No! You Lost!!!") 

         newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
       end 
  
    end

    avail = setdiff(avail, unavail);

    compMoveFour = randi(length(avail), 1); % choosing a random point of vector
                                           % 'avail' to place the
                                           % computer's move
    
    if avail(1, compMoveFour) == "A" 
        gameboard(1,1) = "O" ; 
        unavail = "A" ;
        disp(gameboard) 

    elseif avail(1, compMoveFour) == "B" 
        gameboard(1,2) = "O" ; 
        unavail = "B"; 
        disp(gameboard)
        
    elseif avail(1, compMoveFour) == "C" 
        gameboard(1,3) = "O";
        unavail = "C" ; 
        disp(gameboard)

    elseif avail(1, compMoveFour) == "D"
        gameboard(2,1) = "O" ; 
        unavail = "D"; 
        disp(gameboard)

    elseif avail(1, compMoveFour) == "E" 
        gameboard(2,2) = "O" ; 
        unavail = "E"; 
        disp(gameboard)
    
    elseif avail(1, compMoveFour) == "F" 
        gameboard(2,3) = "O" ; 
        unavail = "F"; 
        disp(gameboard)

    elseif avail(1, compMoveFour) == "G"
        gameboard(3,1) = "O" ; 
        unavail = "G"; 
        disp(gameboard)

    elseif avail(1, compMoveFour) == "H" 
        gameboard(3,2) = "O" ; 
        unavail = "H"; 
        disp(gameboard)
    
    else 
        avail(1, compMoveFour) = "I" ;
        gameboard(3,3) = "O" ; 
        unavail = "I"; 
        disp(gameboard)
    
    end 

    posA = gameboard(1,1);
    posB = gameboard(1,2);
    posC = gameboard(1,3);
    posD = gameboard(2,1);
    posE = gameboard(2,2);
    posF = gameboard(2,3);
    posG = gameboard(3,1);
    posH = gameboard(3,2);
    posI = gameboard(3,3); 

    % checking win conditions
    if posA == "X" && posB == "X" && posC == "X" || ... % the ... continues the code into the next line
          posD == "X" && posE == "X" && posF == "X" || ...
          posG == "X" && posH == "X" && posI == "X" || ...
          posA == "X" && posD == "X" && posG == "X" || ...
          posB == "X" && posE == "X" && posH == "X" || ... 
          posC == "X" && posF == "X" && posI == "X" || ...
          posA == "X" && posE == "X" && posI == "X" || ...
          posC == "X" && posE == "X" && posG == "X" 
        disp("You Won!!!") 

        newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
       end  

    elseif posA == "O" && posB == "O" && posC == "O" || ... % the ... continues the code into the next line
        posD == "O" && posE == "O" && posF == "O" || ...
        posG == "O" && posH == "O" && posI == "O" || ... 
        posA == "O" && posD == "O" && posG == "O" || ...
        posB == "O" && posE == "O" && posH == "O" || ...
        posC == "O" && posF == "O" && posI == "O" || ...
        posA == "O" && posE == "O" && posI == "O" || ...
        posC == "O" && posE == "O" && posG == "O" 
        disp("Oh No! You Lost!!!") 
        
        newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
       end 

    end

    avail = setdiff(avail, unavail) ;  % updating available moves based on 
                                     % computer's second move. 
    
   userMoveFive = input("Where would you like to place your fifth and final move? Remember: Be Strategic. ", "s");

    if userMoveFive == "A"
        gameboard(1,1) = "X" ;
        unavail = "A" ; 
        disp(gameboard)

    elseif userMoveFive == "B" 
        gameboard(1,2) = "X" ;
        unavail = "B" ;
        disp(gameboard)
   
    elseif userMoveFive == "C"
        gameboard(1,3) = "X" ;
        unavail = "C" ;
        disp(gameboard)

    elseif userMoveFive == "D"
        gameboard(2,1) = "X" ;
        unavail = "D" ;
        disp(gameboard)
     
    elseif userMoveFive == "E" 
        gameboard(2,2) = "X" ;
        unavail = "E" ;
        disp(gameboard)
      
    elseif userMoveFive == "F"
        gameboard(2,3) = "X" ;
        unavail = "F" ;
        disp(gameboard)

    elseif userMoveFive == "G"
        gameboard(3,1) = "X" ;
        unavail = "G" ;
        disp(gameboard)

    elseif userMoveFive == "H"
        gameboard(3,2) = "X" ;
        unavail = "H" ;
        disp(gameboard)

    elseif userMoveFive == "I" 
        gameboard(3,3) = "X" ;
        unavail = "I" ;
        disp(gameboard)

    else 
        disp("Invalid Input. Starting Game Over")
        continue

    end

  posA = gameboard(1,1);
    posB = gameboard(1,2);
    posC = gameboard(1,3);
    posD = gameboard(2,1);
    posE = gameboard(2,2);
    posF = gameboard(2,3);
    posG = gameboard(3,1);
    posH = gameboard(3,2);
    posI = gameboard(3,3); 

    % checking win conditions
    if posA == "X" && posB == "X" && posC == "X" || ... % the ... continues the code into the next line
          posD == "X" && posE == "X" && posF == "X" || ...
          posG == "X" && posH == "X" && posI == "X" || ...
          posA == "X" && posD == "X" && posG == "X" || ...
          posB == "X" && posE == "X" && posH == "X" || ... 
          posC == "X" && posF == "X" && posI == "X" || ...
          posA == "X" && posE == "X" && posI == "X" || ...
          posC == "X" && posE == "X" && posG == "X" 
        disp("You Won!!!") 

         newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
       end  

    elseif posA == "O" && posB == "O" && posC == "O" || ... % the ... continues the code into the next line
        posD == "O" && posE == "O" && posF == "O" || ...
        posG == "O" && posH == "O" && posI == "O" || ... 
        posA == "O" && posD == "O" && posG == "O" || ...
        posB == "O" && posE == "O" && posH == "O" || ...
        posC == "O" && posF == "O" && posI == "O" || ...
        posA == "O" && posE == "O" && posI == "O" || ...
        posC == "O" && posE == "O" && posG == "O" 
        disp("Oh No! You Lost!!!") 

        newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
       end 
       
        
    else 
        disp('Oh No! There was a tie! No winner!')
        newGame = questdlg("Would you like to play again?"); 
        switch newGame
                case 'Yes'
             gameboard = ["A" "B" "C" ; "D" "E" "F" ; "G" "H" "I"]; 
             continue
                 case 'No'
                  disp("Quitting Game! Goodbye!")
                  break
       end 

    end
end
      
end 
while (userInput == "N")
        disp("Quitting Game! Goodbye!")
        break
end 
        