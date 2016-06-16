include "img/unilib.asy";

draw(A--B--C^^D--B);
draw(A--C--D, dotted);

draw_networks();
network_labels();

draw(n_alfa--A);

void ptparr(pair f, pair t) {
	draw(f--(t+f)/2, Arrow);
}

ptparr(A, B);
ptparr(n_alfa, A);
router(n_alfa, "$S$");

ptparr(B, C);
ptparr(B, D);
ptparr(B, n_beta);

ptparr(C, n_gamma);

ptparr(D, n_delta);



draw_routers();
