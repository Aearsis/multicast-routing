
unitsize(48pt);

pair router(pair p, string l) {
    filldraw(circle(p, 0.25), white, black);
	label(l, p);
	return p;
}

pair A = (0, 0);
pair B = (1, 1);
pair C = (1,-1);
pair D = (2, 0);

pair n_alfa  = (-1, 0);
pair n_beta  = (2, 1.2);
pair n_gamma = (2, -1.2);
pair n_delta = (3, 0);

void network(pair p) {
	label(scale(0.4)*graphic("img/cloud.eps"), p);
}

void nlabel(string l, pair p) {
	pen big = fontsize(24pt) + gray;
	label(l, p, big);
}

void draw_routers() {
	router(A, "$A$");
	router(B, "$B$");
	router(C, "$C$");
	router(D, "$D$");
}

void draw_networks() {
	network(n_alfa);
	network(n_beta);
	network(n_gamma);
	network(n_delta);
	layer();
}

void network_labels() {
	nlabel("$\alpha$", n_alfa);
	nlabel("$\beta$",  n_beta);
	nlabel("$\gamma$", n_gamma);
	nlabel("$\delta$", n_delta);
	layer();
}
