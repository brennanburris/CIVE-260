function[UnitV] = unit(A,B,C,D,E) %input these as different vars
if nargin == 5
    Vector = E-D-C-B-A;
    answer = 1;
elseif nargin == 4
    E = [0,0,0];
    Vector = D-C-B-A;
    answer = 1;
elseif nargin == 3
    E = [0, 0, 0];
    D = [0, 0, 0];
    Vector = C-B-A;
    answer = 1;
elseif nargin == 2
    E = [0, 0, 0];
    D = [0, 0, 0];
    C = [0, 0, 0];
    Vector = B-A;
    answer = 1;
elseif nargin == 1
    E = [0, 0, 0];
    D = [0, 0, 0];
    C = [0, 0, 0];
    B = [0, 0, 0];
    answer = 0;
end

if answer == 0;
    UnitV = A/(norm(A));

    disp(UnitV);

elseif answer == 1;
    UnitV = Vector/(norm(Vector));
    
    disp(UnitV);

end

prompt = 'Would you like to multiply by a force? 0 for no, any # for force'
answer = input(prompt);

if answer == 0
    disp(UnitV);
else
    UnitV = answer*UnitV;
    disp(UnitV);
end

end
