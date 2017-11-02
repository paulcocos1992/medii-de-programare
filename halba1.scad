module recipient(inaltime_recipient,raza_recipient)   
translate([4,4,0])
difference(){
cylinder (h=inaltime_recipient,r=raza_recipient,$fn=200);
    translate([0,0,inaltime_recipient-(inaltime_recipient-1.1)])
    cylinder (h=inaltime_recipient-1,r=raza_recipient-0.2,$fn=200);
}
recipient(5,2);
