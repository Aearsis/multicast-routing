include "img/unilib.asy";

draw(A--B^^C--D--B);
draw(A--C--B, dotted);

draw_networks();
network_labels();

draw(n_delta--D);
router(n_delta, "$R$");

void ptparr(pair f, pair t) {
	draw(f--f+(t-f)/2, Arrow);
}

void netarr(pair net, pair rtr) {
	pair dir = unit(net-rtr);
	draw(rtr+dir/3*2--rtr+dir/4, Arrow);
}

ptparr(A, B);
netarr(n_alfa, A);

ptparr(B, D);
netarr(n_beta, B);

ptparr(C, D);
netarr(n_gamma, C);

ptparr(D, n_delta);




draw_routers();
