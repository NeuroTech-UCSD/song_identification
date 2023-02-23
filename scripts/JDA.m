load('ImageryData.mat')
%PCA on X
X=eeg{1, 1}{1, 1}{1, 1};
C=X'*X;
[P,D]=eig(C);
P=normalize(P);
N=D^(-1/2);
Z=X*P*N; 
%plot(Z,'DisplayName','Z')
%apply bias filter L
L=zeros(64,1803);
B=Z*L;
%covariance of filtered data
Cfilt = Z'*Z;
plot (Z, 'DisplayName', 'Z')
