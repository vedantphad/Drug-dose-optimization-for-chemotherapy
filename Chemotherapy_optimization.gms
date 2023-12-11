Parameters
    s influx rate (0 < s < 0.5) /0.33/,
    rho rate of immune response per capita (0 ≤ ρ ≤ 1) /0.01/,
    alpha threshold rate (0 ≤ α ≤ 0.5) /0.3/,
    r1 logistic growth /1.5/
    r2 /1/,
    a1 cell death response coefficients a2 ≥ a1 ≥ a3 /0.2/,
    a2 /0.3/,
    a3 /0.1/,
    b1 carrying capacities per capita /1/,
    b2 /1.5/,
    c1 competition terms Tumor cells and normal cells vie for space and resources /1/,
    c2 /0.5/,
    c3 /1/,
    c4 /1/,
    d1 Mortality rate /1.2/,
    
    N0 Initial Number of natural cells /0.9/,
    T0 Initial Number of tumer cells /0.25/,
    I0 Initial Number of immune cells /0.25/;
    
Variables N,I,T,t,Z1,Z2;
Positive Variable u;

***Equations***
Equations eq1,eq2,eq3,eq4,eq5,eq6;

eq1.. N =e= (((r2-c4*T)/2*b2*r2)+sqrt((a3*u/r2*b2)-((r2-c4*T)/b2*r2)**2)*tan(-r2*b2*t+arctan((N0-((r2-c4*T)/2*b2*r2))/sqrt((a3*u/r2*b2)-((r2-c4*T)/b2*r2)**2))))/sqrt((a3*u/r2*b2)-((r2-c4*T)/b2*r2)**2);
eq2.. T =e= ((r1*c2*I-c3*N)+2*r1*b1*tan(-r1*b1*t+arctan((T0-(r1*c2*I-c3*N))/2*r1*b1)))/2*r1*b1;
eq3.. I =e= (exp(log(I0+((s-a1*u)/((rho*T/alpha+T)-c1*T-d1)))-t/((rho*T/alpha+T)-c1*T-d1))-(s-a1*u))/((rho*T/alpha+T)-c1*T-d1);
eq4.. u =e= r1*b1*(((r1-c2*I-c3*N)/2*r1*b1)**2+((T-(r1*c2*I-c3*N))**2)/(tan(-r1*b1*t+arctan(((T0-(r1*c2*I-c3*N))**2)/2*r1*b1)))**2)/a2;
eq5.. Z1 =e= T;
eq6.. Z2 =e= u;

***Boundary Conditions***
N.lo = 0.75;
T.lo = 0;
u.lo = 5;
u.up = 75;
I.lo=0;
t.lo=0;
 


model drug_dose /all/;
model Tumor /all/;

solve drug_dose using MINLP minimizing Z2;
solve Tumor using NLP minimizing Z1;

display z1.l,z2.l;