%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MOLTO-3BP TEST CASES
% The example consists on a transfer from GEO Earth orbit to a Moon orbit
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load_params;
addpath('../molto_3bp');
addpath('../nsga-ii');

%% Initial Data
R_e  = 6378;                                   % [km] Mean Earth's radius
R_m  = 1738;                                   % [km] Mean Moon's radius
h_i  = 35786;                                  % [km] Altitude of departure orbit
h_f  = 4000-R_m;                               % [km] Altitude of arrival orb
%
r0   = h_i+R_e;      
rf   = h_f+R_m;
%
% Save to input structure
%
input.r0  = r0;
input.rf  = rf;
%
% Genetic algorithm parameters
%
input.pop = 1000;     % NSGA-II population number
input.gen = 200;      % NSGA-II generation number
input.init_file     = [];
input.output_file   = 'Example1.txt'; % Output file name
input.useParallel   = 'yes'; % (yes/no) Compute fitness function in parallel
%
% CALL MOLTO
%
output = molto_3bp(input);


