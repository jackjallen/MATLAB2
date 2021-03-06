%% ONBI Short project 1
% Jack Allen
% Supervisor: Vicente Grau
%
clear all
close all
clc
%%
% read data (adapted from VG code)
%patient 1, endocardium
pat1_endo=xlsread('C:\Users\jesu2687\Documents\stacom-training-pack-clean\stacom-training-pack-clean\output-stacom-clean\output-stacom-clean\SSM0001.ED.endo.vertices.csv');
endo = pat1_endo;
%epicardium
pat1_epi=xlsread('C:\Users\jesu2687\Documents\stacom-training-pack-clean\stacom-training-pack-clean\output-stacom-clean\output-stacom-clean\SSM0001.ED.epi.vertices.csv');
epi = pat1_epi;
%triangle faces
trifac=xlsread('C:\Users\jesu2687\Documents\stacom-training-pack-clean\stacom-training-pack-clean\TriangleFaces.csv');
p.vertices=endo;
p.faces=trifac;

%allocate matrix to store side lengths of triangles

%% calculate triangle side lengths
[trifac_rows ~] = size(trifac);
sides = zeros(trifac_rows,3);
%side a
sides(:,1) = sqrt(...
    (endo(trifac(:,1),1) - endo(trifac(:,2),1)).^2 + ... % sqrt((x1 - x2)^2) 
    (endo(trifac(:,1),2) - endo(trifac(:,2),2)).^2 + ... % sqrt((y1 - y2)^2)
    (endo(trifac(:,1),3) - endo(trifac(:,2),3)).^2); % sqrt((z1 - z2)^2)
%side b
sides(:,2) = sqrt(...
    (endo(trifac(:,2),1) - endo(trifac(:,3),1)).^2 + ...
    (endo(trifac(:,2),2) - endo(trifac(:,3),2)).^2 + ...
    (endo(trifac(:,2),3) - endo(trifac(:,3),3)).^2);
%side c
sides(:,3) = sqrt(...
    (endo(trifac(:,1),1) - endo(trifac(:,3),1)).^2 + ...
    (endo(trifac(:,1),2) - endo(trifac(:,3),2)).^2 + ...
    (endo(trifac(:,1),3) - endo(trifac(:,3),3)).^2);

%% Area calculation (heron's forumla)
% semiperimetre s
s = (sides(:,1) + sides(:,2) + sides(:,3))./2;
% list of triangle areas
areas = sqrt(s.*(s-sides(:,1)).*(s-sides(:,2)).*(s-sides(:,3)));
total_area = sum(areas);


