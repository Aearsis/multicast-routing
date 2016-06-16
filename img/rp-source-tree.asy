include "img/lib.asy";

unitsize(1cm);
rtr("B", (1.5,3), true);
rtr("C", (7.5,3), false);
rtr("A", (0,1), false);
rtr("E", (3,1), false);
rtr("F", (6,1), false);
rtr("D", (9,1), true);

void sqnode(string l, pair p) {
  pair dx = (0.5, 0);
  pair dy = (0, 0.5);
  draw((p + dx + dy) -- (p + dx - dy) -- (p - dx - dy) -- (p - dx + dy) -- cycle);
  label("$" + l + "$", p);
}

sqnode("R", (7.5, -1));
draw((7.5, -0.5)--(7.5, 0));
sqnode("S", (4.5, 5));
draw((4.5, 4)--(4.5,4.5));




pen link = black + 1pt;
draw( (-0.5, 0) -- (3.5, 0), link );
draw( (5.5, 0) -- (9.5, 0), link);
draw( (-0.5, 2) -- (9.5, 2), link );
draw( (1, 4) -- (8, 4), link );

label("$\alpha$", (-1.5, 4), fontsize(18pt));
label("$\beta$", (-1.5, 2), fontsize(18pt));
label("$\gamma$", (-1.5, 0), fontsize(18pt));
label("$\delta$", (10.5, 0), fontsize(18pt));
