function [normDay1mean, normDay2mean, normDay3mean] = normWeight(Weight, Day)
% This function is taking weight values and the isokienetic data from the
% specified day and normalizes the isokinetic data based on their weight.
% After doing this for all the subject's weights, the function will
% calculate the average of the weight-normalized data and store it as the
% requested output (normDay1mean, normDay2mean, normDay2mean). 
%
% Last Updated -- October 28th, 2023
% Tested on 2021 Macbook Air
% Written on Matlab R2023a. 

normDayMean = [] ; % this creates an empty matrix so that the variable 
                 % normDayMean is expressed outside of the loop so that it
                 % can be used and changed outside of the loop. 
for i = 1:length(Weight) 
        normDayMean = [normDayMean; Day(i)/Weight(i)] ;
        % This is finding the weight normalized average isometric values
        % for the day inputted. 
end
normDay1mean = mean(normDayMean) ; 
normDay2mean = mean(normDayMean) ; 
normDay3mean = mean(normDayMean) ;  
% This will find the average of the previously calculated weight normalized
% day mean and will store it as the output that was selected when calling
% the function. 
end 