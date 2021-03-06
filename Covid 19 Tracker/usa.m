%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: D:\matlab projects\Task1\daily_data.xls
%    Worksheet: full_data (1)
%
% Auto-generated by MATLAB on 07-May-2020 18:12:46

%% Setup the Import Options
opts = spreadsheetImportOptions("NumVariables", 0);

% Specify sheet and range
opts.Sheet = "full_data (1)";
opts.DataRange = "@14644:F14771";

% Specify column names and types
opts.VariableNames = ["date", "location", "new_cases", "new_deaths", "total_cases", "total_deaths"];
opts.VariableTypes = [""];

% Import the data
dusa = readtable("D:\matlab projects\Task1\daily_data.xls", opts, "UseExcel", false);


%% Clear temporary variables
clear opts