%% Mechatronics Lab - Exercise 2 : Modelling of a Position Controlled Planar Mechanism Method 1

%% Creating Model Parameters :
m = 4; % Mass of the Link
l = 0.25; % Length of the link
g = 9.81; % Gravity
disp("Created Model Parameters");

%% Task 1: Modelling of a 1 Dof planar mechanism using an Ideal Torque Source :

open_system('Ex_2_Task1.slx')
disp("Opened Task 1 in Simulink");
% INFERENCE : We can say that the system is unstable as there is no
% feedback

%% Task 2: Modelling of a 1 Dof planar mechanism using an PID Controlled Torque Source :

open_system('Ex_2_Task2.slx')
disp("Opened Task 2 in Simulink");
%INFERENCE : The system is now stable which we can infer from the graph
%ploted by looking the refernece and generated output signal

%% Task 3: Modelling of a 1Dof planar mechanism using a PID controlled DC motor.

open_system('Ex_2_Task3.slx')
disp("Opened Task 3 in Simulink");

%INFERENCE : The system with the help of an auto-tuned PID controller gives
%out a similar output compared to the PID controller Torque Source.

publish('Ex_2ModellingPositionControlledPlanarMechanism', 'evalCode', false);