function [time] = practice1(number,timeUnit)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

user = nargin ; 

if user == 1
   time = number * 365
  
elseif user == 2 && timeUnit == "days"
    time = (number * 365) ;
    time = [num2str(time), "days"] ; 
    disp(time) 
    

elseif user == 2 && timeUnit == "seconds"
    time = (number * 3.154e+7);
    time = [num2str(time), "seconds"] ; 
    disp(time)
    
elseif user == 2 && timeUnit == "minutes"
    time = (number * 525600) ; 
    time = [num2str(time), "minutes"] ; 
    disp(time)
    
end
end