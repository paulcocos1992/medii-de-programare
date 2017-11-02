module placa_snowbord(grosime, raza, lungime)
{

cylinder(h=grosime,r=raza);

translate([lungime - 2 * raza,0,0])
cylinder(h=grosime,r=raza);
   translate([0, -raza, 0]) cube([lungime - 2 * raza, 2*raza,grosime]);
}
placa_snowbord(grosime=10, raza=20, lungime=100);
//.......
module podium(grosime, raza, lungime)
{
    hull(){

cylinder(h=grosime,r=raza);

translate([lungime - 2 * raza,0,0])
cylinder(h= 2 *grosime, r = raza);
   translate([(lungime - raza) / 2, lungime-2*raza, 0])
        cylinder(h=3*grosime,r=raza);
   
}
}
//placa_snowbord(grosime=10, raza=20, lungime=100);
podium(grosime=10,raza=20,lungime=100);