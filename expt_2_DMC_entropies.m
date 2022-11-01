clc;
clear;
close all;
n=input("Enter the no of elements: ");
q=input("Enter the matrix p(y/x): "); %matrix P(y|x)
disp(q);
disp('');
N=1:n;
p=input("Enter the probability: "); %probabilities for X
px=diag(p,n,n); %matrix P(X)
disp("P(x) : ");
disp(px);
disp('');
pxy=px*q; % P(X,Y)=P(X)*P(Y|X)
disp("P(x,y) : ");
disp(pxy);
 disp('');
py=p*q; % P(Y))
disp('P(y):');
disp(py);
disp('');
%Entropy h(x)
Hx=0;

for i=1:n
Hx=Hx+(-(p(i)*log2(p(i))));
end;
disp('H(x): ');
disp(Hx);
disp('');
% H(y)
Hy=0;
for i=1:n
Hy=Hy+(-(py(i)*log2(py(i))));
end;
disp('H(y): ');
disp(Hy);
disp('');
% H(x,y)
hxy=0;
for i=1:n
  for j=1:n
hxy=hxy+(-pxy(i,j)*log2(pxy(i,j)));
end;
end;
disp('H(x,y): ');
disp(hxy);
disp('');
% H(y/x)
h1= hxy - Hx;
disp('H(x/y): ');
disp(h1);
disp('');
% H(x/y)

h2= hxy - Hy;
disp('H(y/x): ');
disp(h2);
disp('');
% I(x,y)
Ixy= Hx - h2;
disp('I(x,y): ');
disp(Ixy);
disp('');
if h2==0
disp("This channel is a lossless channel ");
end;
if Ixy==0
disp ("This channel is a useless channel ");
end;
if Hx==Hy
  if h1==0
disp("This channel is a noiseless channel ");
end;
endif;

