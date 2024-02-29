t = 1:1:10; 
y = [14; 20; 21; 24; 15; 45; 67; 150; 422; 987];
m = length(t);

f_quad = @(x) [ones(size(x)), x, x.^2];
f_exp = @(x) [ones(size(x)), x, exp(x)];

A1 = f_quad(t'); A2 = f_exp(t');

x1_bs = A1\y;
x1_normal = (transpose(A1)*A1)\(transpose(A1)*y);

x2_bs = A2\y;
x2_normal = (transpose(A2)*A2)\(transpose(A2)*y);
%%
y_fit_x = @(x,p,f) f(x')*p;
%%
figure(1); clf; grid on; 
plot(t, y, 'sk'); hold on;

plot_t = 1:0.1:10;
plot(plot_t, y_fit_x(plot_t, x1_bs, f_quad), 'r-'); hold on
plot(plot_t, y_fit_x(plot_t, x2_bs, f_exp), 'b--'); hold on;

%%
residual_quad = norm(y - A1*x1_bs,2)^2
residual_exp = norm(y - A2*x2_bs,2)^2


