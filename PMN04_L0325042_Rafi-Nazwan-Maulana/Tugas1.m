##L0325042_Rafi Nazwan Maulana
% Cari nilai e^ pakai deret taylor
x = input("Input nilai x : ");
eksak = exp(x);

for n = 0:4
    p = 0;

    for i = 0:n
        p = p + (x^i / factorial(i));
    end

    galat = abs(eksak - p);

    fprintf("n = %d\n", n);
    fprintf("Eksak      = %.15f\n", eksak);
    fprintf("Pendekatan = %.15f\n", p);
    fprintf("Error      = %.15f\n\n", galat);
end
