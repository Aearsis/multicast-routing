void cloud(pair p, real r = 1) {
  label(scale(r/2)*graphic("img/cloud.eps"), p);
}

unitsize(40);
dot((6, 5), white);
dot((-2, -2), white);

cloud((2,2), 2);
cloud((4.5,-0.5), 1.5);
cloud((0, 0));
layer();

label("Internet", (2,2));

pair A = (0,0) + (1,1) / sqrt(2);
pair B = (4,0) + (-1,1) / sqrt(2);

draw((0,0)--A, Arrow(Relative(0.75)));
draw(A..(2, 1)..B, dashed, Arrow(Relative(0.9)));


filldraw(circle((0,0), 0.25), white, black);
label("$S$", (0,0));

path g;
g = B--(5,0);
draw(g, Arrow(Relative(0.85)));
filldraw(circle((5, 0), 0.25), white, black);
label("$R_1$", (5, 0));

g = B--(5,-1);
draw(g, Arrow(Relative(0.9)));
filldraw(circle((5,-1), 0.25), white, black);
label("$R_2$", (5,-1));

g = B--(4,-1);
draw(g, Arrow(Relative(0.85)));
filldraw(circle((4,-1), 0.25), white, black);
label("$R_3$", (4,-1));

filldraw(circle(A, 0.25), white, black);
filldraw(circle(B, 0.25), white, black);
