module placa_snowbord(grosime, raza, lungime)
{

cylinder(h=grosime,r=raza);

translate([lungime - 2 * raza,0,0])
cylinder(h=grosime,r=raza);
   translate([0, -raza, 0]) cube([lungime - 2 * raza, 2*raza,grosime]);
}
placa_snowbord(grosime=10, raza=20, lungime=100);