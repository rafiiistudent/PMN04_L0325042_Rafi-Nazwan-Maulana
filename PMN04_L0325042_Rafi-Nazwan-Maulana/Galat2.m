##L0325042_Rafi Nazwan Maulana
eksak_akar_2 = sqrt(2);

x = 1;
e = 1;
n = 0;

do
    y = x;
    x = (y+2/y)/2;
    e = abs(x - y);

    if (e >= 0.00001)
        n = n+1;
        fprintf('Iterasi ke-%i\n', n);
        fprintf('x = %.15f\n', x);
        fprintf('e = %.15f\n\n', e);
    endif
until (e < 0.00001);

galat = abs(eksak_akar_2 - y);

fprintf('Eksak\t\t= %.15f\n', eksak_akar_2);
fprintf('Jumlah iterasi\t= %i\n', n);
fprintf('Pendekatan\t= %.15f\n', y);
fprintf('Error\t\t= %.15f\n', galat);
