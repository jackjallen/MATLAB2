
figure
for i = sort(concatIndices')
    i
subplot 121
hold on
% plot3(dia_myo_reference(:,1), dia_myo_reference(:,2), dia_myo_reference(:,3),'go');
 plot3(data(i).systolic.endo.xyz(:,1), data(i).systolic.endo.xyz(:,2), data(i).systolic.endo.xyz(:,3),'.'); 
% plot3(data(i).systolic.epi.xyz(:,1), data(i).systolic.epi.xyz(:,2), data(i).systolic.epi.xyz(:,3),'.'); 
% plot3(data(i).systolic.myo.xyz(:,1), data(i).systolic.myo.xyz(:,2), data(i).systolic.myo.xyz(:,3),'.'); 

% plot3D(systolic_myo_reshaped(i).xyz)

title 'patient i, whole LV, systolic'
subplot 122
hold on
% plot3(dia_myo_reference(:,1), dia_myo_reference(:,2), dia_myo_reference(:,3),'go');
%  plot3(data(i).diastolic.endo.xyz(:,1), data(i).diastolic.endo.xyz(:,2), data(i).diastolic.endo.xyz(:,3),'.'); 
% plot3(data(i).diastolic.epi.xyz(:,1), data(i).diastolic.epi.xyz(:,2), data(i).diastolic.epi.xyz(:,3),'.');
% plot3(data(i).diastolic.myo.xyz(:,1), data(i).diastolic.myo.xyz(:,2), data(i).diastolic.myo.xyz(:,3),'.'); 
plot3D(diastolic_myo_shapes(i).xyz)

title 'patient i, whole LV, systolic'

end


