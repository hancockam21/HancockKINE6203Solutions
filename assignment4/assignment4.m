
% Assignment 4 KINE 6203 
%
% Last Updated -- October 28th, 2023
% Written on Matlab R2023a. 
% Tested on 2021 Macbook Air
%
% This file will be the master script that will run the data analysis.
% Several functions have been written to run the analysis but they will be
% called from this master file. 
% 
% This file is intended to analyze a set of isometric strength data. 

% First function called (importfile) will import the data file as column
% vectors that can then be used for data analysis. 

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

% Uses genderIsoCalc function to create a vector of the male mean
% isokinetic values from across the 3 days, the female isokinetic values
% from across the 3 days, and then the average of the individual means for
% both the male group and female group. 
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

[day1toDay2] = dayComparer(SubjectID, Day1, Day2) ; 
% This produces a  column vector that compares Day 1 and Day 2 strength values
% Only those with increases between the two days will be included. 
                                                      
[day2toDay3] = dayComparer(SubjectID, Day2, Day3) ; 
% % This produces a  column vector that compares Day 2 and Day 3 strength values
% Only those with increases between the two days will be included. 

normDay1mean = normWeight(Weight, Day1) ; 
normDay2mean = normWeight(Weight, Day2) ; 
normDay3mean = normWeight(Weight, Day3) ; 
% This function normalizes the isokinetic data values for the day inputted
% when calling the function to the subject's weight and then finds the
% average of each day for all the subjects. 

maleGroupIsoMean(2:25,1) = NaN; 
femaleGroupIsoMean(2:25,1) = NaN ;  
normDay1mean(2:25,1) = NaN ; 
normDay2mean(2:25,1) = NaN ; 
normDay3mean(2:25,1) = NaN ; 
% this creates a 25 by 1 matrix of all the values. I know that not all values
% variables will have 25 values but this ensures that all are included, and
% not accidentally left out of the resulting data sheet. Any places where variables
% don't have a value will be displayed as NaN in the resulting data sheet. 

everything = table(maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, ...
    day1toDay2, day2toDay3, normDay1mean, normDay2mean, normDay3mean);
% This creates a matrix with all of the data that has been calculated and
% processed throughout the script in order to be able to export it as a
% csv. This puts all the data into a single place so that it can be
% exported together in a single function rather than indivdiually. 
% Because the variables are called to the table with their desired titles as the
% variable names, there isn't a need to run a function to name the columns.

% writetable(everything,isok_results.csv) 
writetable(everything,'isok_results.csv','Delimiter',',')
% exports the data in a csv file titled isok_results. 