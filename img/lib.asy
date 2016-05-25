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

import flowchart;

block rtable(string name, pair p)
{
  block b = rectangle("\tt " + name, p, minwidth=1cm, minheight=20pt);
  draw(b);
  return b;
}

block proto(string name, pair p)
{
  block b = circle(name, p);
  draw(b);
  return b;
}
