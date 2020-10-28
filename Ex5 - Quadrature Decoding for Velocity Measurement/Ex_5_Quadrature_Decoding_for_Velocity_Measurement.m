%% Mechatronics Lab - Exercise 5 : Quadrature Decoding for Velocity Measurement.

%% Task 1: Angular Velocity in X1 Encoding

open_system('Ex_5_Task_1.slx')
disp("Opened Task 1 in Simulink");

%% Task 2: Angular Velocity in X2 Encoding

open_system('Ex_5_Task_2.slx')
disp("Opened Task 2 in Simulink");

%% Task 3: Angular Velocity in X4 Encoding

open_system('Ex_5_Task_3.slx')
disp("Opened Task 3 in Simulink"); 

publish('Ex_5_Quadrature_Decoding_for_Velocity_Measurement.m', 'evalCode', false);