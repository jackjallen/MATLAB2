function plotVolumeHistograms(sys_epi_volumes, sys_endo_volumes, dia_epi_volumes, dia_endo_volumes)

%% plot volume histograms - comparing DETERMINE with MESA
% 1mm^3 = 0.001ml
%diastolic endocardium volumes

figure
hold on
nbins = 25;
histogram((dia_endo_volumes)*0.001),nbins)
histogram(MESA_diastolic_endoVolumes*0.001,nbins)
legend 'DETERMINE' ' MESA'
title 'diastolic endocardium volumes'
xlabel 'endocardium volume (ml)'
ylabel 'frequency'
print('compare diastolic endocardium volumes','-dpng')

% systolic endocardium volumes
figure
hold on
nbins = 25;
histogram(DETERMINE_systolic_endoVolumes*0.001,nbins)
histogram(MESA_systolic_endoVolumes*0.001,nbins)
legend 'DETERMINE' ' MESA'
title 'systolic endocardium volumes'
xlabel 'endocardium volume (ml)'
ylabel 'frequency'
print('compare systolic endocardium volumes','-dpng')

%calculate endocardium ejection fractions EF
% SV = diastolic volume - systolic volume
% EF = (SV/(diastolic volume))*100