close all
clc

fp=fopen('resultsm.txt','r');
matlab = fscanf(fp,'%g');
fclose(fp);

fp=fopen('results_hdl.txt','r');
hdl = fscanf(fp,'%g');
fclose(fp);

fp=fopen('results_c.txt','r');
c_no_opt = fscanf(fp,'%g');
fclose(fp);

fp=fopen('results_c_opt.txt','r');
c_opt = fscanf(fp,'%g');
fclose(fp);

fp=fopen('results_pipe.txt','r'); 
hdl_pipe = fscanf(fp,'%g');
fclose(fp);

fp=fopen('results_hdl_opt.txt','r');
hdl_opt = fscanf(fp,'%g');
fclose(fp);

fs = 10000;
T=1/500; %% maximum period
tt=0:1/fs:10*T; %% time samples

matlab=matlab';
% hdl_pipe=hdl_pipe';
hdl_opt=hdl_opt';
c_no_opt = c_no_opt';

figure (1)
plot(tt,hdl,'r*')
hold on
plot(tt,c_no_opt, 'b')
hold on
plot(tt,matlab, 'g--')
xlim([0 0.012])
title("Filter result without optimization") 
xlabel("Time [s]")
ylabel("FIR output signal")
legend('VHDL','C','MATLAB')

% figure (2)
% plot(tt,hdl_opt,'ro')
% hold on
% plot(tt,c_opt, 'k')
% hold on
% plot(tt,matlab, 'g--')
% xlim([0 0.012])
% title("Filter result optimized") 
% xlabel("Time [s]")
% ylabel("FIR output signal")
% legend('VHDL','C','MATLAB')

% figure (6)
% plot(tt,hdl_pipe,'r*')
% hold on
% plot(tt,c_no_opt, 'b')
% hold on
% plot(tt,matlab, 'g--')
%xlim([0 0.012])
% title("Filter result without optimization") 
% xlabel("Time [s]")
% ylabel("FIR output signal")
% legend('VHDL','C','MATLAB')

% figure (3)
% thd(hdl)
% title("THD without optimization") 
% 
% figure (4)
% thd(hdl_opt)
% title("THD with optimization") 
% 
% figure (5)
% thd(hdl_pipe)
% title("THD with unfolded") 