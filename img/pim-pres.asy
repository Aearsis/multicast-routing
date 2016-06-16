include "img/lib.asy";

size(8cm);

block master = rtable("master4", (0, 2));
block mreq   = rtable("mreq4",   (-1, 0));
block mroute = rtable("mroute4", (2.5, 0));

block jp = proto("JP", (-1, 1));
block df = proto("DF", (0, 1));
block fw = proto("FW", (1, 0));

add(new void(picture pic, transform t) {
    blockconnector operator --=blockconnector(pic,t);
    master--Arrow--df--Right--Down--Arrow--fw--Arrow--mroute;
    df--Left--Arrow--jp;
    jp--Arrow--mreq--Arrow--jp;
    mreq--Arrow--fw;

  });
