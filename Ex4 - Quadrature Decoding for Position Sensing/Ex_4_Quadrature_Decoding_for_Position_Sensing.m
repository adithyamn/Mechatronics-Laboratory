%% Mechatronics Lab - Exercise 4 : QUADRATURE DECODING FOR POSITION SENSING

%% Task 1: Angular POsition in X1 Encoding

open_system('Ex_4_Task_1.slx')
disp("Opened Task 1 in Simulink");

%% Task 2: Angular Position in X2 Encoding

open_system('Ex_4_Task_2.slx')
disp("Opened Task 2 in Simulink");

%% Task 3: Angular Position in X4 Encoding

open_system('Ex_4_Task_3.slx')
disp("Opened Task 3 in Simulink");

publish('Ex_4_Quadrature_Decoding_for_Position_Sensing.m', 'evalCode', false);