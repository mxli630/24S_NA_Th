g_1 = @(x) x.^2-2;
g_2 = @(x) sqrt(x+2);
f = @(x) x.^2-x-2;
%%
x = 0:0.01:3;

%%
figure
plot(x,g_1(x),DisplayName="g_1(x)",LineWidth = 2)
hold on
plot(x,g_2(x),DisplayName="g_2(x)",LineWidth = 2)
plot(x,x,'k',DisplayName="y=x",LineWidth = 2)

legend show
xlabel("$x$")
ylabel("$y$")






