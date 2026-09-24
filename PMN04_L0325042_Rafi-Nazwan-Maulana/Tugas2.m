##L0325042_Rafi Nazwan Maulana
%Menghitung galat atau error pada perhitungan 1/1 + 1/2 + ... + 1/20

n = 20;

%a. Perhitungan secara eksak
p1 = 0;

for i = 1:n
    p1 = p1 + (1/i);
end

%b. Masing-masing pembagian dibulatkan
p2 = 0;

for i = 1:n
    p2 = p2 + round((1/i)*100)/100;
end

%c. Tanpa looping (menggunakan fungsi sum)
p3 = sum(1./(1:n));

galat_pembulatan = abs(p1 - p2);
galat_sum = abs(p1 - p3);

fprintf('Perhitungan secara eksak\n');
fprintf('Hasil\t\t= %.15f\n\n', p1);

fprintf('Masing-masing pembagian dibulatkan\n');
fprintf('Hasil\t\t= %.15f\n', p2);
fprintf('Error\t\t= %.15f\n\n', galat_pembulatan);

fprintf('Tanpa looping (menggunakan fungsi sum)\n');
fprintf('Hasil\t\t= %.15f\n', p3);
fprintf('Error\t\t= %.15f\n', galat_sum);
