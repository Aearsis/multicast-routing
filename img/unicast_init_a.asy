include "img/unilib.asy";

draw(B--A--C, dotted);


network(n_alfa);
nlabel("$\alpha$", n_alfa);
layer();

void ptparr(pair f, pair t) {
	draw(f--f+(unit(t-f)/3*2), Arrow);
}

ptparr(A, B);
ptparr(A, C);
ptparr(A, n_alfa);


router(A, "$A$");
router(B, "$B$");
router(C, "$C$");
