clear all;
clc;
disp('                                   Name-Anikait Kaushal');
disp('                                    Roll No-21BEE032');
ch = input('Enter the IEEE-Bus system you would like to use: (14 or 30): ');
while ch ~= 14 &&  ch ~= 30 
    fprintf('Invalid Input try again\n');
    ch = input('Enter the IEEE-Bus system you would like to use: (14 or 30): ');
end
switch ch
    case 14
        data14bus
    case 30
        data30bus
end
met = input('Enter the method for load flow study (1 - GS, 2 - NR): ');
while met ~= 1 && met ~= 2
    fprintf('Invalid Input try again\n');
    met = input('Enter the method for load flow study (1 - GS, 2 - NR): ');
end
switch met
    case 1
        gauss
    case 2
        newton
end