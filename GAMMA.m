close all, clear all
%param
alpha=3;
beta=2;

xmax=8;
N=5000;
n=1:N;

%tracé de la densité
%valeurs  dans 0,xmax
x = linspace(0,xmax,N);

y= GammaPDF(x,alpha,1/beta);

figure(1);
plot(x,y);
xlabel("valeurs de x");
ylabel('valeurs de y');
title("distribution gamma");
grid;


%histogram
g = GammaRND(alpha,1/beta,N,'verbose',1);
bins=20;
[h,nh]=hist(g,bins);
delta=nh(2)-nh(1);
hn=h/(delta*N);
figure(2);
hold on;
plot(x,y);
bar(nh,hn);
grid;

variance = std(g);
moyenne = mean(g);

%VALEURS ESTIMÉES
vrai_beta=moyenne/variance;
vai_beta1=1/vrai_beta;
vrai_alpha=moyenne^2 / variance;










