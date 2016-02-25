# run_analysis.R
## This R script is run from the UCI HAR Dataset directory.

Using our given data from a wearable technology experiment, the script run_analysis.R creates one tidy data set
summarizing each variable.
It combines the test and train data together, and then extracts the columns that are means and standard deviations.

It breaks the data down by activity--walking, walking upstairs, walking downstairs, sitting,
standing, and laying--and labels the activities within the data set.
And then it is broken down by subject number (there were 30 subjects).

The means of the extracted data for each subject in each activity are what is shown in the output table.
codeBook.md contains explanantions of all the variables.

To read the output file back into R:
read.table("secondTidySet.txt", header=T, sep=" ")
