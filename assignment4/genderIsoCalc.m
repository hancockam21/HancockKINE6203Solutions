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

maleIsoIndMeans = zeros(25,1);
femaleIsoIndMeans = zeros(25,1);  % This inputs a column of zeros in for the two variables 
                                  % so that they're defined outside the for
                                  % loop and can therefore be used outside
                                  % the for loop. 

for i = 1:length(Gender)
    if Gender(i) == "M" 
        maleIsoIndMeans(maleIsoIndMeans == 0) = NaN; 
        % this is intended to turn any zero in the matrix associated with a column that
        % isn't M into a NaN so that it is ignored in the overall average
        % calcualtion. 
        % issue is causing male and female group iso means to be NaN. 
                            
        maleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3 
        
    else  
        femaleIsoIndMeans(femaleIsoIndMeans == 0) = NaN;
        femaleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3
    end 
end

maleGroupIsoMean = mean(maleIsoIndMeans)
femaleGroupIsoMean = mean(femaleIsoIndMeans)
end 