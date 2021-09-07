function[UnitV] = unit(A,B)

prompt='Are A and B points, or do you already have the vector?' ...
 ... '1 for points,0 for one vector'; %this might be fucked sorry lol
    
answer = input(prompt);

if answer == 0;
 UnitV = A/(norm(A));

 disp(UnitV);

elseif answer == 1;
    Vector = B-A;
    UnitV = Vector/(norm(Vector));
end

prompt = 'Would you like to multiply by a force? 0 for no, any n for force'
answer = input(prompt);

if answer == 0
    disp(UnitV);
else
    UnitV = answer*UnitV;
    disp(UnitV);
end

end
