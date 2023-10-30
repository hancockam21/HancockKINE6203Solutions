function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
% The first set of outputs of this function (maleIsoIndMeans, and 
% femaleIsoIndMeans) will return a matrix with the individual mean average 
% (mean) strength values from all three days for each subject from each 
% gender (males and females). (column of values) 
% The second set of outputs (maleGroupIsoMeans and femaleGroupIsoMeans) 
% will return the single average isometric strength values for each group 
% (the average of the first two outputs / average of the individual means) 
% for each gender. (a single value) 


% The for loops are checking the Gender columns to see which gender each
% subject is. If the gender is 'M' the average from the 3 days of isometric
% data is calculated and stored as maleIsoIndMeans. If the gender is 'F' the
% average from the 3 days is also calculated but stored as femaleIsoIndMeans. 
% Once the averages are calculated, the average of these averages is taken
% to find the male and female GroupIsoMean. 
% Last Updated -- October 28th, 2023
% Written on Matlab R2023a. 

maleIsoIndMeans = zeros(25,1);
femaleIsoIndMeans = zeros(25,1);  % This inputs a column of zeros in for the two variables 
                                  % so that they're defined outside the for
                                  % loop and can therefore be used outside
                                  % the for loop. 

for i = 1:length(Gender)
    if Gender(i) == "M"
                            
        maleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3 ; % This calculates the mean of the 3 days for each male. 
        
    elseif Gender(i) == "F"
        femaleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3 ; % This calculates the mean of the 3 days for each female. 
    end 
end

maleGroupIsoMean = mean(nonzeros(maleIsoIndMeans)) ; 
femaleGroupIsoMean = mean(nonzeros(femaleIsoIndMeans)) ; 
% Each of these finds the average from the previous calcualted indivdual
% averages for each group (male and female). 
% The function previously created a matrix that includes zeros for the
% values of male/female Iso Ind Means and then the rows with their respective 
% gender column (male or female) were then turned to their appropriate
% average. This doesn't affect the zeros in the opposite gender columns, so
% the function is finding the average of all the numbers that are nonzeros.
% If this specification wasn't included, it would include zeros and
% nonzeros in the group averages, which would produce incorrect results. 
                                                      
end 
