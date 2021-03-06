function [data] = calcMyoEjectionFractions(data)

for i = 1:401
    %find all the myocardium stroke volumes (SVs) and ejection fractions (EFs)
    data(i).myoSV = data(i).diastolic.epiMinusEndoVolume - data(i).systolic.epiMinusEndoVolume;
    data(i).myoEF = (data(i).myoSV/data(i).diastolic.epiMinusEndoVolume)*100;
end

%from the full set of EFs and SVs, extract those of the two classes
for d = data(1).DETERMINE_indices'   
%     data(d).DETERMINE.myoSV = data(d).diastolic.myoVolume - data(d).systolic.myoVolume;
%     data(d).DETERMINE.myoEF = (data(d).DETERMINE.myoSV / data(d).diastolic.myoVolume )*100;

data(d).DETERMINE.myoSV = data(i).myoSV;
data(d).DETERMINE.myoEF = data(i).myoEF;

end
for m = data(1).MESA_indices'
%     data(m).MESA.myoSV = data(m).diastolic.myoVolume - data(m).systolic.myoVolume;
%     data(m).MESA.myoEF = (data(m).MESA.myoSV / data(m).diastolic.myoVolume )*100;
    
data(d).MESA.myoSV = data(i).myoSV;
data(d).MESA.myoEF = data(i).myoEF;
end

end