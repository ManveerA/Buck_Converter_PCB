% General Buck Converter
f_sw = 10000;
T_sw = 1/f_sw;
V_i = 50; % 36 to 50 V
R_o = 300; % 57 to 300 Ω
L = (6.8E-3)*3; % Three 6.8 mH inductors in series
C = 4.7E-6;
V_o = 5;
D = V_o/V_i;

% LPF
R1 = 20E3;
R4 = R1;
R2 = 1E3;
R3 = R2;
C1 = 1.5E-6;
R_C1 = 0.1; % none from datasheet

% Non-idealities
V_D = 0.85; % from datasheet
R_D_on = 1E-3; % none from datasheet
R_DS_on = 50E-3; % from datasheet, 44 mΩ
R_L = 2.3*3; % from datasheet
R_C = 0.1; % none from datasheet

s = tf("s");
G = V_i/(s^2*L*C+s*L/R_o+1);

K = 0.4;
T_i = 1/(5E3);

C_TF = K*(T_i*s+1)/s;
K_p = 8E-5;
K_i = 0.4;