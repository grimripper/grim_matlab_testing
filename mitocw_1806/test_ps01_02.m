a = [1 0 0 0; 1 1 0 0; 1 2 1 0; 1 3 3 1];
E1 = [1 0 0 0; -1 1 0 0; 0 -1 1 0;0 0 -1 1];
E2 = [1 0 0 0; 0 1 0 0; 0 -1 1 0; 0 0 -1 1];
E3 = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 -1 1];

E1*a
E2*E1*a
E3*E2*E1*a

E3*E2*E1
