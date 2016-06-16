void cloud(pair p, real r = 1) {
  label(scale(r/2)*graphic("img/cloud.eps"), p);
}

unitsize(40);
dot((6, 5), white);
dot((-2, -2), white);

cloud((2,2), 2);
cloud((4,0));
cloud((0, 0));
layer();

label("Internet", (2,2));

pair A = (0,0) + (1,1) / sqrt(2);
pair B = (4,0) + (-1,1) / sqrt(2);


draw(B--(4,0), Arrow(Relative(0.75)));
draw((0,0)--A, Arrow(Relative(0.75)));

draw(A..(2, 1)..B, dashed, Arrow(Relative(0.9)));

filldraw(circle((0,0), 0.25), white, black);
label("$S$", (0,0));

filldraw(circle((4,0), 0.25), white, black);
label("$R$", (4,0));

filldraw(circle(A, 0.25), white, black);
filldraw(circle(B, 0.25), white, black);
