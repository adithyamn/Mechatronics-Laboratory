%% Mechatronics Lab - Exercise 1 : Mathematical Modelling of a Pendulum over a Cart
%% Creating the Modelling Parameters 
M = 0.5; %Mass of the Cart
m = 0.2; %Mass o fthe Pendulum
b = 0.1; %Damping Coef
g = 9.8; %Gravity
I = 0.006; %Inertia
l = 0.3; %Length of Pendulum
disp("Created the Modelling Parameters")
%% Task 1: Deriving the Transfer Function and State Space model and representing in MATLAB
%% Task 1.1: Transfer Functions Model
s = tf('s'); %Creating the 's' variable required in a transfer function
q = (M+m)*(I+m*l^2)-(m*l)^2; %Creating a 'q' variable for easy calculations

%Delcaring the Transfer Functions of the Inverted Pendulum System

%Transfer Function of the Cart
P_cart = (((I+m*l^2)/q)*s^2-(m*g*l/q))/(s^4+(b*(I+m*l^2))*s^3/q-((M+m)*m*g*l)*s^2/q-b*m*q*l*s/q); 

%Transfer function of the Pendulum
P_pend = (m*l*s/q)/(s^3 + (b*(I+m*l^2))*s^2/q -((M+m)*m*g*l)*s/q-b*m*g*l/q);

%Visulalising the Transfer Function
sys_tf=[P_cart;P_pend];
inputs={'u'};
outputs={'x';'phi'};
set(sys_tf,'InputName',inputs);
set(sys_tf,'OutputName',outputs);
disp("The complete TF Equation is : ");
sys_tf

%% Task 1.2: State Space Model
p=I*(M+m)+M*m*l^2; %Creating a 'p' variable to replace all denominators in State Matrix.

%State Equation
A=[0 1 0 0;0 -((I+m*l^2)*b)/p (m^2*g*l^2)/p 0;0 0 0 1;0 -(m*l*b)/p (m*g*l*(M+m))/p 0]; %State Equation
B=[0;(I+m*l^2)/p;0;(m*l)/p]; %Input Equation

%Output Equation
C=[1 0 0 0;0 0 1 0];
D=[0;0];

states = {'x' 'x_dot' 'phi' 'phi_dot'}; %Where, x = Position
                                        %       x_dot = velocity
                                        %       phi = Angle of Pendulum
                                        %       phi_dot = derivative of phi

% Visualising the State Space Equations                                        
inputs = {'u'};
outputs = {'x'; 'phi'};
sys_ss = ss(A,B,C,D,'statename', states,'InputName', inputs,'OutputName', outputs);
disp("The state space model is:")
sys_ss
%% Task 2: Open Loop Impulse Response and Step Response of the System
t=0:0.01:1; %Specifying Time steps

disp("Plotting the responses")
%Impulse Response
figure('Name','Open Loop Response of Inverted Pendulum');
subplot(2,1,1);
impulse(sys_tf,t)
%Step Response
subplot(2,1,2);
step(sys_tf,t)

%{ Inference : From the graphs shown we can clearly understand that the system is not stable. Hence we go for a Closed Loop PID control. %}

%% Task 3: PID Controller Design
%Initialise the Parameters.
disp("Implementing the PID Controller")
kp = str2double(inputdlg('Enter the Proportional Constant Value:'));
ki = str2double(inputdlg('Enter the Integral Constant Values:'));
kd = str2double(inputdlg('Enter the Derivative Constant Value:'));

%Visualise the PID Controller.
cntr = pid(kp,ki,kd)

%Checking the stability of the system with given PID control Parametrs.
clsys= feedback(P_pend,cntr)

figure('Name','Response after Implementing PID Control');
impulse(clsys)

%{Inference : We can say that the system (now closed loop) after the implementation of a PID controller is stable. %}
disp("End")
publish('D:\College & Language Files\Academics\4th Year\Lab1 - Mechatronics Lab\Ex1\Ex1_MathematicalModelling.m','evalCode',false);
