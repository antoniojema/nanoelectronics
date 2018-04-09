f = @(x,sigma)exp(-0.25*(x./sigma).^2);
a = @(sigma)1/integral(@(x)f(x,sigma),-inf,+inf);
sigma = linspace(0,10,101);
h=figure;
plot(sigma,arrayfun(a,sigma));
waitfor(h);

x = linspace(-10,10,101);
fe = @(x,sigma) a(sigma).*exp(-0.25.*(x./sigma).^2);

for sigma = 1:5
    hold on
    plot(x,fe(x,sigma));
    integral_value = integral(@(x) fe(x,sigma),-inf,+inf)
    drawnow;
end
hold off