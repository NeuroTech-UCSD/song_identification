load('ImageryData.mat')
%PCA on X
X = eeg{1, 1}{1, 1}{1, 1};
C = X'*X;

[P,D] = eig(C);
P = normalize(P);
N = D^(-1/2);
Z = X * P * N; 
[Zx,Zy] = size(Z);

%apply bias filter L
%L = ones(Zy,Zx);
L = eye(Zx);

Zline = L * Z;
%covariance of filtered data
C1 = Zline' * Zline;


%A = PDP^-1
%AP = PD
%C1 * Q = Q * Dz
[Q,Dz] = eig(C1);

Yline = Zline * Q;
Y = X * P * N * Q;
W = P * N * Q;

plot(Yline,'DisplayName','Yline')



