function [answer] = problem5(array)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

updated = sort(array) ; 
if ((updated(1) + updated(2)) > updated(3))
answer = true ; 
else 
    answer = false ; 
end