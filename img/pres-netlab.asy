size(4cm);

pair router(pair p, string name, pair align=(0, -5)) {
  label("\tt " + name, p, align);
  label(graphic("img/router.eps"), p, align=(0,0));
  return p;
}

pair r1   = router((0,0), "r1");
pair r2   = router((2,0), "r2");

draw(r1--r2);

