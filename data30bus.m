%        IEEE 30-BUS TEST SYSTEM
%        Bus Bus  Voltage Angle   ---Load---- -------Generator----- Static Mvar
%        No  code Mag.     Degree     MW    Mvar  MW       Mvar   Qmin Qmax  +Qc/-Ql
busdata=[1   1    1.0500     0.0     0.0    0.0   138.48  -2.79     0    0    0
         2   2    1.0338  -2.7339   21.70  12.7    57.56   2.47   -20   60    0
         3   0    1.0313  -4.6815    2.4    1.2     0.0    0.0      0    0    0
         4   0    1.0263  -5.6077    7.6    1.6     0.0    0.0      0    0    0
         5   2    1.0058  -8.9930   94.2   19.0    24.56  22.57   -15  62.5   0
         6   0    1.0208  -6.4547    0.0    0.0     0.0    0.0      0    0    0
         7   0    1.0069  -8.0244   22.8   10.9     0.0    0.0      0    0    0
         8   2    1.0230  -6.4733   30.0   30.0    35.00  34.84   -15   50    0
         9   0    1.0332   -8.03     0.0    0.0     0.0    0.0      0    0    0
        10   0    1.0183  -9.9268    5.8    2.0     0.0    0.0      0    0   19
        11   2    1.0913  -6.1345    0.0    0.0    17.93  30.78   -10   4     0
        12   0    1.0399  -9.4036   11.2    7.5     0.0    0.0     0    0     0
        13   2    1.0883  -8.2049    0.0    0.0    16.91  37.83   -15   4     0
        14   0    1.0236 -10.3086    6.2    1.6     0.0    0.0     0    0     0
        15   0    1.0179 -10.3600    8.2    2.5     0.0    0.0     0    0     0
        16   0    1.0235  -9.9028    3.5    1.8     0.0    0.0     0    0     0
        17   0    1.0144 -10.1356    9.0    5.8     0.0    0.0     0    0     0
        18   0    1.0057 -10.9253    3.2    0.9     0.0    0.0     0    0     0
        19   0    1.0017 -11.0615    9.5    3.4     0.0    0.0     0    0     0
        20   0    1.0051 -10.8310    2.2    0.7     0.0    0.0     0    0     0
        21   0    1.0061 -10.4047   17.5   11.2     0.0    0.0     0    0     0
        22   0    1.0069 -10.3936    0.0    0.0     0.0    0.0     0    0     0
        23   0    1.0053 -10.7221    3.2    1.6     0.0    0.0     0    0     0
        24   0    0.9971 -10.8465    8.7    6.7     0.0    0.0     0    0   4.3
        25   0    1.0086 -10.9074    0.0    0.0     0.0    0.0     0    0     0
        26   0    0.9908 -11.3345    3.5    2.3     0.0    0.0     0    0     0
        27   0    1.0245 -10.6624    0.0    0.0     0.0    0.0     0    0     0
        28   0    1.0156  -6.8671    0.0    0.0     0.0    0.0     0    0     0
        29   0    1.0047 -11.8893    2.4    0.9     0.0    0.0     0    0     0
        30   0    0.9932 -12.7699   10.6    1.9     0.0    0.0     0    0     0];
%                                        Line code
%         Bus bus   R      X     1/2 B   = 1 for lines
%         nl  nr  p.u.   p.u.   p.u.     > 1 or < 1 tr. tap at bus nl
linedata=[1   2   0.0192   0.0575   0.02640    1
          1   3   0.0452   0.1852   0.02040    1
          2   4   0.0570   0.1737   0.01840    1
          3   4   0.0132   0.0379   0.00420    1
          2   5   0.0472   0.1983   0.02090    1
          2   6   0.0581   0.1763   0.01870    1
          4   6   0.0119   0.0414   0.00450    1
          5   7   0.0460   0.1160   0.01020    1
          6   7   0.0267   0.0820   0.00850    1
          6   8   0.0120   0.0420   0.00450    1
          6   9   0        0.2080   0.0   1.0155
          6  10   0        0.5560   0     0.9629
          9  11   0        0.2080   0          1
          9  10   0        0.1100   0          1
          4  12   0        0.2560   0     1.0129
         12  13   0        0.1400   0          1
         12  14   0.1231   0.2559   0          1
         12  15   0.0662   0.1304   0          1
         12  16   0.0945   0.1987   0          1
         14  15   0.2210   0.1997   0          1
         16  17   0.0824   0.1932   0          1
         15  18   0.1070   0.2185   0          1
         18  19   0.0639   0.1292   0          1
         19  20   0.0340   0.0680   0          1
         10  20   0.0936   0.2090   0          1
         10  17   0.0324   0.0845   0          1
         10  21   0.0348   0.0749   0          1
         10  22   0.0727   0.1499   0          1
         21  22   0.0116   0.0236   0          1
         15  23   0.1000   0.2020   0          1
         22  24   0.1150   0.1790   0          1
         23  24   0.1320   0.2700   0          1
         24  25   0.1885   0.3292   0          1
         25  26   0.2544   0.3800   0          1
         25  27   0.1093   0.2087   0          1
         28  27   0        0.3960   0     0.9581
         27  29   0.2198   0.4153   0          1
         27  30   0.3202   0.6027   0          1
         29  30   0.2399   0.4533   0          1
          8  28   0.0636   0.2000   0.0214     1
          6  28   0.0169   0.0599   0.0065     1];