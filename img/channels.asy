include "img/lib.asy";

size(145mm);

block master = rtable("master4", (0, 0.6));
block mreq = rtable("mreq4", (-1, 0));
block mroute = rtable("mroute4", (1, 0));

block igmp = proto("IGMP", (-2, 0));
block pim = proto("PIM", (0, 0));
block mkrt = proto("mkernel", (2, 0));

object channel(string name,real pos = 0.4, pair p = (0, 0.5)) {
  return Label("\footnotesize\tt " + name, pos, p);
}

add(new void(picture pic, transform t) {
    blockconnector operator --=blockconnector(pic,t);
    igmp--channel("mreq4")--Arrow--mreq--channel("mreq4", 0.5)--Arrow--pim;
    pim--Arrow--mreq;
    pim--channel("mgrp4")--Arrow--mroute--channel("mgrp4")--Arrow--mkrt;
    master--channel("ipv4", p=E)--Arrow--pim;
  });
