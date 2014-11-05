%%------------RAndom forests--------------------------%%
clear all, close all; 
rng default;   %controlling the random number generator 

%% creating the training data
trainData = [ ...
    [6,  30,  1];
    [3,  40,  0];
    [8,  50,  1];
    [11, 20, 0];
    [3,  10,  0];
    [6,  30, 0];
    ];

 
features = trainData(:,1:2);

classLabels = trainData(:,3);

%% visualise the data
plotData(features,classLabels);
legend('class 1','class 0')
hold on;

% number of trees desired in the forest
nTrees = 20;

%% training the treebagger(decision forest)
B = TreeBagger(nTrees, features, classLabels,'Method', 'classification');


%% predicting the class label for a new individual with feature values

newData = [7, 30];

predChar1 = B.predict(newData);

predictClass = str2double(predChar1) %converting from string to number

