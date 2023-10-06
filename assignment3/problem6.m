function [answer] = problem6(number)
% This function evaluates whether a single numerical input is a prime
% number or not. 
% A single numerical input is inputted when calling the function, and is
% evaluted using the isprime function to see if the number is a prime
% number or not. If the number is a prime number, a logical value of 1 is
% shown indicating a true statement. If the number is not a prime number, a
% logical value of 0 is shown indicating a false statment. 
answer = isprime(number) ;
end