function [sides] = calcTriSides(faces, vertices);
% Function to calcuate the sides of triangle using Heron's method.
% Receives matrices 'faces' and 'vertices'.
% returns matrix 'sides' with 3 columns, one for each side of the triangle.
% number of columns in 'sides' equals number of triangles

[trifac_rows, ~] = size(faces);
sides = zeros(trifac_rows,3);
%side a
sides(:,1) = sqrt(...
    (vertices(faces(:,1),1) - vertices(faces(:,2),1)).^2 + ... % sqrt((x1 - x2)^2) 
    (vertices(faces(:,1),2) - vertices(faces(:,2),2)).^2 + ... % sqrt((y1 - y2)^2)
    (vertices(faces(:,1),3) - vertices(faces(:,2),3)).^2); % sqrt((z1 - z2)^2)
%side b
sides(:,2) = sqrt(...
    (vertices(faces(:,2),1) - vertices(faces(:,3),1)).^2 + ...
    (vertices(faces(:,2),2) - vertices(faces(:,3),2)).^2 + ...
    (vertices(faces(:,2),3) - vertices(faces(:,3),3)).^2);
%side c
sides(:,3) = sqrt(...
    (vertices(faces(:,1),1) - vertices(faces(:,3),1)).^2 + ...
    (vertices(faces(:,1),2) - vertices(faces(:,3),2)).^2 + ...
    (vertices(faces(:,1),3) - vertices(faces(:,3),3)).^2);

end