module custom_fillet(width = 100, radius = 10) {
    difference() {
        cube([width, radius, radius]);
        translate([-0.5, radius, radius]) rotate([0,90,0]) cylinder(width+1, radius, radius);
    }
};