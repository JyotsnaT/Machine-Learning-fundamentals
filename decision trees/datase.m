Data = csvread('contest_train.csv');
N = size(Data,2);
M = size(Data,1);
Data2 = zeros(M,1);
Data2(:,1)  = Data(:,N);
csvwrite('file.csv',Data2);
