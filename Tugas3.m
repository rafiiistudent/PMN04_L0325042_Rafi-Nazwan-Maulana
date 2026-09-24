##L0325042_Rafi Nazwan Maulana
%Menghitung galat atau error pada perhitungan sin(x)

x = 1;

eksak = sin(x);

for n = 1:5
    p = 0;

    for i = 0:n
        p = p + ((-1)^i * x^(2*i+1)) / factorial(2*i+1);
    end

    galat = abs(eksak - p);

    fprintf('n = %d\n', n);
    fprintf('Eksak\t\t= %.15f\n', eksak);
    fprintf('Pendekatan\t= %.15f\n', p);
    fprintf('Error\t\t= %.15f\n\n', galat);
end
