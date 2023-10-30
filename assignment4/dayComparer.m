function [day1toDay2,day2toDay3] = dayComparer(SubjectID, DayA, DayB)
%  This function is intended to analzye isokinetic data and look at which
%  subjects were able to increase their values between two days. 
%  User will need to specify which subject they are looking to compare days
%  of by using their subject ID and then select which days they are looking
%  to compare (Day1 and Day2 or Day2 and Day3).

% Last Updated -- October 28th, 2023
% Tested on 2021 Macbook Air
% Written on Matlab R2023a. 
day1toDay2 = [] ; 
day2toDay3 = [] ; 

for i = 1:length(SubjectID)
    improvement = DayB - DayA ; 
    if improvement(i) > 0 
        improvement(i) = SubjectID(i) ;
        placeholder(i) = improvement(i) ; 
        placeholder2(i) = improvement(i) ; 
    elseif improvement(i) <= 0 
        improvement(i:25,1) = NaN ; 
        placeholder(i) = improvement(i) ; 
        placeholder2(i) = improvement(i) ; 
        % the Placeholder and placeholder2 variables allow the subject IDs
        % to be saved into an array in the proper category that they fit,
        % and be used later to transpose into a column vector. If
        % day1toDay2 and day2toDay3 were used in this place, it would not
        % be able to transpose into the correct column vector as desired. 
  
     end
  day1toDay2 = placeholder' ; 
  day2toDay3 = placeholder2' ; 
end
    % This allows it to save the subject IDs with an increase between
        % the two days whether it is looking at Day1 to Day2 or Day2 to
        % Day3. The one that is given will be based on which output the
        % user inputs when calling the function. 