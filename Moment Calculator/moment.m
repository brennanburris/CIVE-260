function [moment] = moment(LOIa, ra, F, LOIb, rb)
%This function uses the Mixed Triple method to find the moment about a
%line of interest.

%This function requires: Line of interest (LOI), the vector from the LOI to
%the force (r) and the force (F)

%If only the points are known, they can be put in and the moment will be
%calculated anyway
if nargin ~= 3 || 5
    error('only 3 or 5 input arguments are allowed')
end

if nargin == 3
    LOI = unit(LOIa);
    A = [LOI; ra; F];
    disp(A);
    answer = det(A);
    disp(answer);
    moment = answer;
elseif nargin == 5
    LOI = [LOIb - LOIa];
    LOI = unit(LOI);
    r = [rb-ra];
    A = [LOI; r; F];
    answer = det(A);
    moment = answer;
end

end

