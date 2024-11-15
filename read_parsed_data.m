close all
dataset = csvread("sample.csv");
figure()

breath_wave = dataset(:,end-1);
subplot(4,1,1)
plot(breath_wave)
title("Truth-Breath")

heart_wave = dataset(:,end);
subplot(4,1,2)
plot(heart_wave)
title("Truth-Heart")


uwb_mat = dataset(:, 7:end-2);
uwb_mat = uwb_mat(:, 1:120) + 1j* uwb_mat(:, 121:end);

target_bin = 26; % subject to change
uwb_wave = uwb_mat(:, target_bin);

subplot(4,1,3)
plot(real(uwb_wave))
title("In-pahse")
subplot(4,1,4)
plot(imag(uwb_wave))
title("Quadrature")

figure()
acc_x = dataset(:,1);
subplot(6,1,1)
plot(acc_x)
title("Acc-x")

acc_y = dataset(:,2);
subplot(6,1,2)
plot(acc_y)
title("Acc-y")

acc_z = dataset(:,3);
subplot(6,1,3)
plot(acc_z)
title("Acc-z")

gyro_x = dataset(:,4);
subplot(6,1,4)
plot(gyro_x)
title("Gyro-x")

gyro_y = dataset(:,5);
subplot(6,1,5)
plot(gyro_y)
title("Gyro-y")

gyro_z = dataset(:,6);
subplot(6,1,6)
plot(gyro_z)
title("Gyro-z")
