clear all; close all; clc
disp('----------Ybus formation program--------');
%line data for IEEE-14 Bus system
%COL 1.-  From bus
%COL 2.-  to bus
%COL 3.-  R P.U.
%COL 4.-  Xl P.U.
%COL 5.-  Xc (parallel) P.U.
%COL 6.-  Type of line: 0==Line ; tap value if its a transformer
%COL 7.-  phase shifter angle
line=[1  2   0.01938   0.05917   0.02640    0.000   0.00;
      2  3   0.04699   0.19797   0.02190    0.000   0.00;
      2  4   0.05811   0.17632   0.01870    0.000   0.00;
      1  5   0.05403   0.22304   0.02460    0.000   0.00;
      2  5   0.05695   0.17388   0.01700    0.000   0.00;
      3  4   0.06701   0.17103   0.01730    0.000   0.00;
      4  5   0.01335   0.04211   0.00640    0.000   0.00; 
      5  6   0.00000   0.25202   0.00000    0.932   0.00;
      4  7   0.00000   0.20912   0.00000    0.978   0.00;
      7  8   0.00000   0.17615   0.00000    0.000   0.00;
      4  9   0.00000   0.55618   0.00000    0.969   0.00;
      7  9   0.00000   0.11001   0.00000    0.000   0.00;
      9  10  0.03181   0.08450   0.00000    0.000   0.00;
      6  11  0.09498   0.19890   0.00000    0.000   0.00;
      6  12  0.12291   0.25581   0.00000    0.000   0.00;
      6  13  0.06615   0.13027   0.00000    0.000   0.00;
      9  14  0.12711   0.27038   0.00000    0.000   0.00;
      10 11  0.08205   0.19207   0.00000    0.000   0.00;
      12 13  0.22092   0.19988   0.00000    0.000   0.00;
      13 14  0.17093   0.34802   0.00000    0.000   0.00];
% Information about the bus matrix (Topology of power system)
  % nd   V     Ang.    Pg        Qg       PL        QL      Gs       jBs   Type
  % (1) (2)    (3)     (4)      ( 5)      (6)       (7)     (8)      (9)   (10)
  % Colum 11: if the bus has shunt element =1, if it hasnt shunt element =0
bus=[1  1.00  0.000   0.2324    -0.169    0.000    0.000    0.000    0.000  1   0.0;
     2  1.00  0.000   0.4000    0.4240    0.217    0.127    0.000    0.000  2   0.0;
     3  1.00  0.000   0.0000    0.2340    0.942    0.190    0.000    0.000  2   0.0;
     4  1.00  0.000   0.0000    0.0000    0.478    0.039    0.000    0.000  3   0.0;
     5  1.00  0.000   0.0000    0.0000    0.076    0.016    0.000    0.000  3   0.0;
     6  1.00  0.000   0.0000    0.1220    0.112    0.075    0.000    0.000  2   0.0;
     7  1.00  0.000   0.0000    0.0000    0.000    0.000    0.000    0.000  3   0.0;
     8  1.00  0.000   0.0000    0.1740    0.000    0.000    0.000    0.000  2   0.0;
     9  1.00  0.000   0.0000    0.0000    0.295    0.166    0.000    0.190  3   1.0;
     10 1.00  0.000   0.0000    0.0000    0.090    0.058    0.000    0.000  3   0.0;
     11 1.00  0.000   0.0000    0.0000    0.035    0.018    0.000    0.000  3   0.0;
     12 1.00  0.000   0.0000    0.0000    0.061    0.016    0.000    0.000  3   0.0;
     13 1.00  0.000   0.0000    0.0000    0.135    0.058    0.000    0.000  3   0.0;
     14 1.00  0.000   0.0000    0.0000    0.149    0.050    0.000    0.000  3   0.0];
nbuses=max([max(line(:,1)) max(line(:,2))]); % number of buses of the power network
orden=zeros(1,nbuses); 
Y=zeros(nbuses);
for k=1:nbuses
    orden(k)=k; % vector which contains the order of building according to the bus information
end
for p=1:length(line(:,1))
      BusP=find(orden==line(p,1));
    BusQ=find(orden==line(p,2));
    a=line(p,6); %Tap value for the  p iteration
     %% If its a transformer
    if a>0 % for transformers
        yl=(1/((line(p,3)+j*line(p,4)))); % line admittance
    Ad=(j*line(p,5)/2); % line charging
    Y(BusP,BusQ)=Y(BusP,BusQ)-yl/a; % a non diagonal element
    Y(BusQ,BusP)=Y(BusP,BusQ); % symmetry is  declared for elements out of the diagonal
    Y(BusP,BusP)=Y(BusP,BusP)+(yl/a)+((1/a)*(1/a-1)*yl)+Ad; %Equivalent admittance at the P-terminal plus line charging
    Y(BusQ,BusQ)=Y(BusQ,BusQ)+(yl/a)+(1-1/a)*yl+Ad; %Equivalent admittance at the Q-terminal plus line charging
    yl=(1/((line(p,3)+j*line(p,4)))); % line admittance
    Ad=(j*line(p,5)/2); % line charging
    Y(BusP,BusQ)=Y(BusP,BusQ)-yl/a; % a non diagonal element
    Y(BusQ,BusP)=Y(BusP,BusQ); % symmetry is  declared for elements out of the diagonal
    Y(BusP,BusP)=Y(BusP,BusP)+(yl/a)+((1/a)*(1/a-1)*yl)+Ad; %Equivalent admittance at the P-terminal plus line charging
    Y(BusQ,BusQ)=Y(BusQ,BusQ)+(yl/a)+(1-1/a)*yl+Ad; %Equivalent admittance at the Q-terminal plus line charging
    end
end
    %% Add the susceptance and conductance of shunt elements to YBUS
for m=1:nbuses
    dir=find(orden==bus(m,1));
    Y(dir,dir)=Y(dir,dir)+bus(m,8)+j*bus(m,9); % add the shunt admittance 
end
%% Results
disp('Admittance Matrix')
Y % admittance matrix