function [SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile(filename, dataLines)
%IMPORTFILE Import data from a text file
%  [SUBJECTID, AGE, GENDER, WEIGHT, DAY1, DAY2, DAY3] =
%  IMPORTFILE(FILENAME) reads data from text file FILENAME for the
%  default selection.  Returns the data as column vectors.
%
%  [SUBJECTID, AGE, GENDER, WEIGHT, DAY1, DAY2, DAY3] = IMPORTFILE(FILE,
%  DATALINES) reads data for the specified row interval(s) of text file
%  FILENAME. Specify DATALINES as a positive scalar integer or a N-by-2
%  array of positive scalar integers for dis-contiguous row intervals.
%
%  Example:
%  [SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("/Users/amberburns/Documents/GitHub/HancockKINE6203Solutions/assignment4/isok_data_6803 (4).csv", [2, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 19-Oct-2023 08:51:19

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [2, Inf];
end

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 7);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["SubjectID", "Age", "Gender", "Weight", "Day1", "Day2", "Day3"];
opts.VariableTypes = ["double", "double", "categorical", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, "Gender", "EmptyFieldRule", "auto");
opts = setvaropts(opts, "SubjectID", "TrimNonNumeric", true);
opts = setvaropts(opts, "SubjectID", "ThousandsSeparator", ",");

% Import the data
tbl = readtable(filename, opts);

%% Convert to output type
SubjectID = tbl.SubjectID;
Age = tbl.Age;
Gender = tbl.Gender;
Weight = tbl.Weight;
Day1 = tbl.Day1;
Day2 = tbl.Day2;
Day3 = tbl.Day3;
end