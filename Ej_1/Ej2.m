m=1;
hbar=1;
E=1
syms psi(x,E)
ode = diff(psi,x,2) == (2*m/(hbar*hbar))*(V(x)-E)*psi;
psiSol = bvp4c(ode)
