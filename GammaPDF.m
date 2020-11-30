function y = GammaPDF(x,alpha,beta)

% === Gamma probability density function ===

y = x.^(alpha-1) .* exp(-x/beta) / ( beta^(alpha) * gamma(alpha) );
y( x<=0 ) = 0;

end