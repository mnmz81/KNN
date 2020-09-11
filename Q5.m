%% Q5
clc;clear
%% A + B
load fisheriris
%the learning data
Xtrain(1:35,:) = meas(1:35,3:4);
Xtrain(36:70,:) = meas(51:85,3:4);
Xtrain(71:105,:) = meas(101:135,3:4);
Ytrain(1:35,:) = species(1:35,:);
Ytrain(36:70,:) = species(51:85,:);
Ytrain(71:105,:) = species(101:135,:);
%the test data
Xtest(1:15,:) = meas(36:50,3:4);
Xtest(16:30,:) = meas(86:100,3:4);
Xtest(31:45,:) = meas(136:150,3:4);
Ytest(1:15,:) =  species(36:50,:);
Ytest(16:30,:) = species(86:100,:);
Ytest(31:45,:) = species(136:150,:);
for i=1:length(Xtest)
    predict{i} = KNN(Xtrain,Xtest(i,:),Ytrain,1);
end
err=sum(~strcmp(predict',Ytest));
accuracy=(1-err/length(Ytest))*100;
fprintf(sprintf("KNN with 1 neighbors have accuracy of: %4.f \n",accuracy));

%% C
%% 3
for i=1:length(Xtest)
    predict{i} = KNN(Xtrain,Xtest(i,:),Ytrain,3);
end
err=sum(~strcmp(predict',Ytest));
accuracy=(1-err/length(Ytest))*100;
fprintf(sprintf("KNN with 3 neighbors have accuracy of: %4.f \n",accuracy));
%% 5
for i=1:length(Xtest)
    predict{i} = KNN(Xtrain,Xtest(i,:),Ytrain,5);
end
err=sum(~strcmp(predict',Ytest));
accuracy=(1-err/length(Ytest))*100;
fprintf(sprintf("KNN with 5 neighbors have accuracy of: %4.f \n",accuracy));
%% 7
for i=1:length(Xtest)
    predict{i} = KNN(Xtrain,Xtest(i,:),Ytrain,7);
end
err=sum(~strcmp(predict',Ytest));
accuracy=(1-err/length(Ytest))*100;
fprintf(sprintf("KNN with 7 neighbors have accuracy of: %4.f \n",accuracy));
%% 10
for i=1:length(Xtest)
    predict{i} = KNN(Xtrain,Xtest(i,:),Ytrain,10);
end
err=sum(~strcmp(predict',Ytest));
accuracy=(1-err/length(Ytest))*100;
fprintf(sprintf("KNN with 10 neighbors have accuracy of: %4.f \n",accuracy));

