include "img/lib.asy";

size(145mm);

real h = 0.5;

block master = rtable("master4", (0, 0));
block mreq   = rtable("mreq4",   (2.5, h));
block mroute = rtable("mroute4", (4, 0));

block jp = proto("JP", (1.5, h));
block df = proto("DF", (1, 0));
block fw = proto("FW", (3, 0));

object channel(string name,real pos = 0.4, pair p = (0, 0.5)) {
  return Label("\footnotesize\tt " + name, pos, p);
}

add(new void(picture pic, transform t) {
    blockconnector operator --=blockconnector(pic,t);
    master--channel("ipv4")--Arrow--df--Arrow--fw--channel("mgrp4")--Arrow--mroute;
    df--Up--Right--Arrow--jp;
    jp--channel("mreq4", 0.5)--Arrow--mreq--Arrow--jp;
    mreq--Right--Down--channel("mreq4",1,2SE)--Arrow--fw;

  });
