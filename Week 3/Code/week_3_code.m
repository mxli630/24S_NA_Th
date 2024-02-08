A = [3 3 0; 6 4 7; -6 -8 9];
m = 3;
U = A; L = eye(m);
for k = 1:m-1
    for j = k+1:m
        L(j,k) = U(j,k)/U(k,k);
        U(j,k:m) = U(j,k:m) - L(j,k).*U(k,k:m);
    end
end
%%
b = [1;0;0];
y = L\b;
x = U\y;
