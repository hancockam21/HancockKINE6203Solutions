
% Assignment 4 KINE 6203 
%
% This file will be the master script that will run the data analysis.
% Several functions have been written to run the analysis but they will be
% called from this master file. 
% 
% This file is intended to analyze a set of isometric strength data. 

% First function called (importfile) will import the data file as column
% vectors that can then be used for data analysis. 

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');


[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);
