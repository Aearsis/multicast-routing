void rtr(string l, pair p, bool df = false, int dir = 1, arrowbar arr = Arrow)
{
  if (df) {
    filldraw(circle(p, 0.5), white, black);
    draw(shift(dir*S/2) * p -- shift(dir*S) * p, arr);
  } else {
    filldraw(circle(p, 0.5), white, black + dotted);
    draw(shift(dir*S/2) * p -- shift(dir*S) * p, dotted);
  }
  label("$" + l + "$", p);
  draw(shift(dir*N) * p -- shift(dir*N/2) * p, arr);
}

void node(string l, pair p, arrowbar arr = None, int dir = 1)
{
  filldraw(circle(p, 0.5), white, black);
  draw(shift(dir*N/2) * p -- shift(dir*N) * p, arr);
  label("$" + l + "$", p);
}
