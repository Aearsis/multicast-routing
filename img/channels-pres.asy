include "img/lib.asy";

size(9cm);

block master = rtable("master4", (0, 0.6));
block mreq = rtable("mreq4", (-1, 0));
block mroute = rtable("mroute4", (1, 0));

block igmp = proto("IGMP", (-1, -0.6));
block pim = proto("PIM", (0, 0));
block mkrt = proto("mkernel", (1, -0.6));

add(new void(picture pic, transform t) {
    blockconnector operator --=blockconnector(pic,t);
    igmp--Arrow--mreq--Arrow--pim;
    pim--Arrow--mreq;
    pim--Arrow--mroute--Arrow--mkrt;
    master--Arrow--pim;
  });
