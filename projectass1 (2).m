%% Calculating the thermal efficiency of Rankine Cycle
clc
clear all
h1 = input('Enter the value of enthalpy : h1');
h2 = input('Enter the value of enthalpy : h2');
h3 = input('Enter the value of enthalpy : h3');
h4 = input('Enter the value of enthalpy : h4');

Qin = h3-h2;
Qin

Qout = h4-h1;
Qout

Wnet = Qin - Qout;
Wnet

Nthermalefficiency = Wnet/Qin;
Nthermalefficiency

%% Efficiency using work of turbine and pump 

clc
clear all

h1 = input('Enter the value of enthalpy : h1');
h2 = input('Enter the value of enthalpy : h2');
h3 = input('Enter the value of enthalpy : h3');
h4 = input('Enter the value of enthalpy : h4');

W_pumpin = h2-h1;
W_pumpin

W_turbout = h4-h1;
W_turbout

Wnet = W_turbout-W_pumpin;
Wnet

Qin = h3-h2;
Qin

Nthermalefficiency = Wnet/Qin;
Nthermalefficiency


%% thermal efficiency using isentropic effciency of pump and isentropic efficiecny of turbine

clc
clear all

H1 = input('Enter the value of enthalpy : H1');
H2s = input('Enter the value of enthalpy : H2s');
H2a = input('Enter the value of enthalpy : H2a');
%h4 = input('Enter the value of enthalpy : h4');

Ws_pump = H2s - H1; % isentropic for the pump
Ws_pump

Wa_pump = H2a - H1; % isentropic for the turbine
Wa_pump

Nisentrpicofpump = Ws_pump/Wa_pump;
Nisentrpicofpump

h4 = input('Enter the value of enthalpy : h4');
H3 = input('Enter the value of enthalpy : H3');
H4a = input('Enter the value of enthalpy : H4a');
H4s = input('Enter the value of enthalpy : H4s');

Wa_turbine = H3 - H4a;
Wa_turbine

Ws_turbine = H3 - H4s;
Ws_turbine

Nisentrpicofturbine = Wa_turbine/Ws_turbine;

Wpumpin = Ws_pump/Nisentrpicofpump;
Wpumpin

Wturbinein = Nisentrpicofturbine*Ws_turbine;
Wturbinein

Wnetout = Wturbinein - Wpumpin;
Wnetout

Qnetin = h4 - h3;
Qnetin

N_thermalefficiency = Wnetout/Qnetin;




