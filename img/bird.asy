include "img/lib.asy";

size(6cm);

block master = rtable("master4", (0, 0));

block bgp = proto("BGP", (-3, 0));
block ospf = proto("OSPF", (3, 0));
block krt = proto("kernel", (0, -2.5));

add(new void(picture pic, transform t) {
    blockconnector operator --=blockconnector(pic,t);
    ospf--Arrow--master--Right--Arrow--ospf;
    bgp--Arrow--master--Arrow--bgp;
    krt--Arrow--master--Arrow--krt;
  });
