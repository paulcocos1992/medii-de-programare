module recipient(inaltime_recipient,raza_recipient)   
translate([4,4,0])
difference(){
cylinder (h=inaltime_recipient,r=raza_recipient,$fn=200);
    translate([0,0,inaltime_recipient-(inaltime_recipient-1.1)])
    cylinder (h=inaltime_recipient-1,r=raza_recipient-0.2,$fn=200);
}

module toarta(raza_toarta)
difference(){
difference(){
difference(){
difference(){
sphere(raza_toarta);
    translate([0.8,-4,-5])
    cube([10,10,10]);
}
translate([-10.8,-4,-5])
    cube([10,10,10]);
}
sphere(raza_toarta-0.5);
}
translate([-2,2,-5])
cube([10,10,10]);
}


module suport(lungime_suport,latime_suport,inaltime_suport)
cube([lungime_suport,latime_suport,inaltime_suport]);

suport(8,8,0.2);
toarta(4);
recipient(5,2);

