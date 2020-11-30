close all, clear all


%param

alpha=3;
beta=2;


xmax=8;
N=500;
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




%tracé de LV(alpha,beta)
%param
%{
alpha=3;
beta=2;
%}

x=1+rand(1,N);
alpham=8;
betam=5;
%g = GammaRND(alpha,1/beta,N,'verbose',1);
alpha_v=linspace(0,alpham,N);
beta_v=linspace(0,betam,N);

[X,Y] = meshgrid(alpha_v,beta_v);
Y=1./Y;
M=sum(X);
ML=sum(log(x));
LVPX=N*(X.*log(Y)-gammaln(X)+(X-1).*ML-Y.*M);
mesh(X,Y,LVPX);












%functions
%{
function LVX(somme,produit,alpha,beta,N)
    y=N*alpha*log(beta)-N*gammaln(alpha)+(alpha-1)*log(produit)-beta*somme;
end

function LVPX(somme,produit,alpha,beta,N,beta_m,alpha_m)
    y=LVX(somme,produit,alpha,beta,N)-log(beta_m*alpha_m);
end
%}
