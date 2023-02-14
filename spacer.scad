
color("purple") cube([208, 77.8, 2]);
color("yellow") {
    translate([0, 75.8, 0]) cube([208, 2, 11.5]);
    translate([0, 53.8, 0]) cube([2, 23, 11.5]);
    translate([206, 53.8, 0]) cube([2, 23, 11.5]);
}

color("green")
translate([0, 0, 1.9999])
    difference() {
        cube([208, 26, 9.5]);
        translate([39, 3, 3]) cube([20, 13, 45]);
        translate([54, 20, -3]) cube([100, 10, 14]);
    }
color("blue")
translate([0, 0, 11.4998])
    difference() {
        cube([208, 20, 41]);
        translate([59, -1, 16]) cube([211, 22, 41]);
        translate([59, 1, 12]) cube([90, 18, 32]);
        translate([10, 5.1, 0.001]) cube([25, 15, 41]);
        translate([173, 5.1, 0.001]) cube([25, 15, 41]);
        translate([39, 3, 0.001]) cube([130, 13, 45]);
        translate([39, 3, -8]) cube([20, 13, 45]);
    };
    
