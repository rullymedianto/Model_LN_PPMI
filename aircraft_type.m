function [ta] = aircraft_type()

AA = 0.45; % 1 == A320
AB = 0.45; % 2 == B737NG
AC = 0.034;% 3 == A330
AD = 0.033;% 4 == B777
AE = 0.033;% 5 == B787

AAB = AA+AB;
BB = (AAB-AA)/AAB;

if BB <= rand()
    medium1 = 1; 
else 
    medium1 = 2;
end

AAC = AAB + AC;
CC = (AAC-AAB)/AAC;

if CC <= rand()
    medium2 = medium1; 
else 
    medium2 = 3;
end

AAD = AD + AE;
DD = (AAD-AD)/AAD;

if DD <= rand()
    heavy = 4; 
else 
   heavy = 5;
end


AAE = AAB+AC+AAD;
EE = (AAE-(AAB+AC))/AAE;
if EE <= rand()
    select = medium2 ; 
else 
    select = heavy;
end

ta=select;


