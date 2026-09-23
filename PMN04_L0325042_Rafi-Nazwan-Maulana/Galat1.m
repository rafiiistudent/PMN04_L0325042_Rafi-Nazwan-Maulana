##L0325042_Rafi Nazwan Maulana

eksak_akar_2 = sqrt(2);

x = 1;
n = input('Masukkan n = ');

for i = 1:n
    y = x;
    x = (y+2/y)/2;
end

galat = abs(eksak_akar_2 - x);

fprintf('Pendekatan\t= %f\n', x);
fprintf('Eksak\t\t= %f\n', eksak_akar_2);
fprintf('Error\t\t= %f\n', galat);
fprintf('Error Relatif\t= %f\n', galat/x);
