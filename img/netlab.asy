
size(145mm);

pair router(pair p, string name, pair align=(4, -5)) {
  label("\tt " + name, p, align);
  label(graphic("img/router.eps"), p, align=(0,0));
  return p;
}

pair switch(pair p, string name, pair align=(4, -5)) {
  label("\tt " + name, p, align);
  label(graphic("img/switch.eps"), p, align=(0,0));
  return p;
}

pair computer(pair p, string name, pair align = (0, -5)) {
  label("\tt " + name, p, align);
  label(graphic("img/workstation.eps"), p+(0,0.05), align=(0,0));
  return p;
}

real h = 0.6;

pair rp = (0, 0.35);

pair r1   = router((0,0), "r1", (0, -5));
pair r1n1 = router((-1,h), "r1n1");
pair r1n2 = router((-1,-h), "r1n2");

pair r2   = router((2,0), "r2", (0, -5));
pair r2n1 = router((1,h), "r2n1");
pair r2n2 = router((1,-h), "r2n2");

pair br0  = switch((-1,0), "br0");
pair br1  = switch((1,0), "br1");

pair send = computer((-2,h), "send");
pair recv = computer((3,0), "recv");

draw(send--r1n1--br0--r1n2);
draw(br0--r1--r2n2--br1);
draw(r1--r2n1--br1--r2--recv);

draw(rp--r1);
filldraw(circle(rp, 0.1), white, black);
label("\tiny $RP$", rp);
