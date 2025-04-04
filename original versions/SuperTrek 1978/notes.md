User functions
    FNR = Random number between 1 and 8 ??
    FND = ??

Arrays:
    G(8,8) = Quadrant packed data of Klingons
    C(9,2) = Looks like a vector array of relative positions?
    K(3,3) =
    N(3)   = 
    Z(8,8) = 
    D(8)   = ?? Initialized to 0's

Vars
    T  = (this may be the random starting stardate)
    T0 = Stardate: T (?)
    T9 = Days to win. 25 + Random between 1 and 10
    D0 = 
    E  = 3000 (?)
    E0 = E (?)
    G2$ = Galactic Quadrant name
    P  =
    P0 =
    S  =
    S9 =
    B3 = # of Starbases
    B9 =
    K3 = # of Klingons 
    K9 = ?? Klingon counters during galaxy generation
    X$  = "" (Starbase name?)
    X0$ = " IS "
    Z$  = "                 " (blank line?)
    Q1  = Initial enterprize position X?Y? (random between 1-8)
    Q2  = Initial enterprize position X?Y? (random between 1-8)
    S1  = Another set of XY random between 1-8
    S2  = Another set of XY random between 1-8
    S3  = # of Stars


Initial plot of C array where a box:

| 0,1   | -1,1 | -1,0 |
| -1,-1 | 0,-1 | 1,-1 |
| 1,0   | 1,1  | 0,1  |

## Game logic

820  Start two loops. Each quadrant has 8 sectors 
       - First loop cycles the quadrants (variable I)
       - Second the sectors (variable J)
     Set R1 to random 0.0-1.0
850  If R1 is > 0.98
       - Set K3 (klingons) to 3
     Set K9 += 3 then GOTO 980

860  If R1 is > 0.95
       - Set K3 (klingons) to 2
     Set K9 += 2 then GOTO 980

870  If R1 is > 0.80
       - Set K3 (klingons) to 1
     Set K9 += 1

980  Set B3 to 0
     If RND 0.0-1.0 > 0.96
       - Set B3 = 1
     B9 += 1

1040 Set G(I,J) (Galaxy) and pack the data Klingons/Starbases
       - Klingons set straight up
       - Starbases set but +  .....

