include "img/unilib.asy";

draw(C--A--B--C--D--B, dotted);

draw_networks();
network_labels();

void ptparr(pair f, pair t) {
	draw(f--f+(unit(t-f)/3*2), Arrow);
}

ptparr(A, B);
ptparr(A, C);
ptparr(A, n_alfa);

ptparr(B, A);
ptparr(B, C);
ptparr(B, D);
ptparr(B, n_beta);

ptparr(C, A);
ptparr(C, B);
ptparr(C, D);
ptparr(C, n_gamma);

ptparr(D, B);
ptparr(D, C);
ptparr(D, n_delta);



draw_routers();
