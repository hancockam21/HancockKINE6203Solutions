function [totalCoins] = Problem4(quarters, dimes, nickels, pennies)
% This function takes a 4 inputs of numbers of certain coins and finds the
% total amount of money the coins are worth. 
% This function requires four inputs representing the number of quarters,
% dimes, nickels, and pennies respectively. When these inputs are given,
% the function calcualtes the dollar amount associated with each input by
% multiplying the percentage of a dollar each coin is worth by the number
% of coins inputted. These products will then be added together to find the
% total amount of money represented by the coins and displayed as the
% output of totalCoins. 
% Be sure to input a zero to "skip" the coin value. For example, if you
% don't have any dimes, input the number of quarters followed by 0 before
% inputting the number of nickels and pennies. This ensures the inputs are
% properly assoicated with the correct coin. 
totalCoins = (0.25*quarters) + (0.10*dimes) + (0.05*nickels) + (0.01*pennies);
end
