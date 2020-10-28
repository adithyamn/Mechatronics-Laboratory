%% Mechatronics Lab - Exercise 2 : Modelling of a Position Controlled Planar Mechanism Method 2

%% Task 1: Modelling of the Pivot Link in SimMechanics

open_system('Ex_3_Task_1.slx')
disp("Opened Task 1 in Simulink");

%% Task 2: Modelling of the Pivot link and the Driven Link in SimMechanics

open_system('Ex_3_Task_2.slx')
disp("Opened Task 2 in Simulink");

%% Task 3: Analysis of the Dynamic Responses of the system
open_system('Ex_3_Task_3.slx')
disp("Opened Task 3 in Simulink");

%% Task 4: Actuation to the Planar Mechanism
open_system('Ex_3_Task_4.slx')
disp("Opened Task 4 in Simulink");

publish('Ex_3_Planar_Mechanism_Modelling.m', 'evalCode', false);