difference() {
// scaled up to fit the parts inside the body 
// and the head on the front.
  scale(v = [1.35, 1.35, 1.35]) {
    import("Grasshopper_FDM.stl", convexity=3);
  }

// cut out for the arduino
    translate([0,42,7])
    cube([17.8,63,20], center=true);

// tidying up where the body meets the cutout
    translate([0,41,7])
    rotate([-10,0,0])
    cube([18.5,7,8.9], center=true);

//cutting off the head
    translate([0,-25,7])
    cube([24,60,50], center=true);

// cutting off the antennae :-(
    translate([0,-29,17])
    cube([54,60,20], center=true);

// cut out for the connection to the SR-501
    translate([0,8,9])
    cube([9,8,5], center=true);

}


// The bar at the front to screw on the SR-501
difference() {
    translate([0,2,0])
    cube([32,6,5], center=true);

// about right for M2 self tapping screws
    translate([-14.5,2,0])
    rotate([90,0,0])
    cylinder(d=1.9, h=20, center=true);
    translate([14.5,2,0])
    rotate([90,0,0])
    cylinder(d=1.9, h=20, center=true);
}


