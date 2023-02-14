module rounded_cube(size = [1, 1, 1], radius = 0.5) {

	translate([radius, radius, radius])
	minkowski() {
		cube([
			size[0] - (radius * 2),
			size[1] - (radius * 2),
			size[2] - (radius * 2)
		]);
		sphere(r = radius);
	}
}