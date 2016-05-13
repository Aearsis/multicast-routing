include "img/lib.asy";

unitsize(1cm);
rtr("B", (1.5,3), true, -1);
rtr("C", (7.5,3), false, -1);
rtr("A", (0,1), false, -1);
rtr("E", (3,1), true, -1);
rtr("F", (6,1), true);
rtr("D", (9,1), false);

node("S", (1.5, -1), Arrow);
node("R", (7.5, -1), BeginArrow);
node("RP", (4.5,5), BeginArrow, -1);

pen link = black + 1pt;
draw( (-0.5, 0) -- (3.5, 0), link );
draw( (5.5, 0) -- (9.5, 0), link);
draw( (-0.5, 2) -- (9.5, 2), link );
draw( (1, 4) -- (8, 4), link );
