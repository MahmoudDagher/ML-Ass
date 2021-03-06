clc
clear all

ds = datastore('heart_DD.csv','TreatAsMissing','NA',.....
    'MissingValue',0,'ReadSize',25000);
T = read(ds);
[r,c]=size(T)
%%Alpha=.01;
Y= T{:,14};   Y_normalized=Y;
m=length(Y);
feature1=T(:,1);  feature1=table2array(feature1);   feature1Normalized= feature1/max(feature1);
feature2=T(:,2);  feature2=table2array(feature2);   feature2Normalized= feature2/max(feature2);
feature3=T(:,5); feature3=table2array(feature3);   feature3Normalized= feature3/max(feature3);
feature4=T(:,8); feature4=table2array(feature4);   feature4Normalized= feature4/max(feature4);

X=[ones(m,1) feature1Normalized feature2Normalized feature3Normalized feature4Normalized];

%hypothesis1
[J1,theta]=LogisticGrad(X,Y_normalized,2);  
%hypthesis2
[J2,theta]=LogisticGrad(X,Y_normalized,3);  
%hypthesis3
[J3,theta]=LogisticGrad(X,Y_normalized,4);  
%hypthesis4
[J4,theta]=LogisticGrad(X,Y_normalized,5);  

plot(J1);
hold on;
plot(J2);
hold on;
plot(J3);
hold on;
plot(J4);
