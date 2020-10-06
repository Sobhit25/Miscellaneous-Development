%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: D:\matlab projects\Task1\daily_data.xls
%    Worksheet: full_data (1)
%
% Auto-generated by MATLAB on 07-May-2020 19:45:46

%% Setup the Import Options
opts = spreadsheetImportOptions("NumVariables", 6);

% Specify sheet and range
opts.Sheet = "full_data (1)";
opts.DataRange = "A7225:F7352";

% Specify column names and types
opts.VariableNames = ["date", "location", "new_cases", "new_deaths", "total_cases", "total_deaths"];
opts.VariableTypes = ["datetime", "categorical", "double", "double", "double", "double"];
opts = setvaropts(opts, 2, "EmptyFieldRule", "auto");

% Import the data
ditaly = readtable("D:\matlab projects\Task1\daily_data.xls", opts, "UseExcel", false);


%% Clear temporary variables
clear opts