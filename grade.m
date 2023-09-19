function [average, letterGrade] = grade(grade1,grade2, grade3)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
average = ((grade1 + grade2 + grade3)/3);
    
    if (average >= 90)
        letterGrade = "A" ;
    elseif (average <= 80) && (average < 90)
        letterGrade = "B" ; 
    elseif (average <= 70) && (average <80)
        letterGrade = "C" ; 
    else
        letterGrade = "F" ; 
    end
end
