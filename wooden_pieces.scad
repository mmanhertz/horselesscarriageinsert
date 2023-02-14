include <boardgame_insert_toolkit_lib.2.scad>;
include <custom_fillet.scad>;


// determines whether lids are output.
g_b_print_lid = 1;

// determines whether boxes are output.
g_b_print_box = 1;            

// Used to visualize how all of the boxes fit together. 
g_b_visualization = f;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

box_height = 25;
box_width = 299;
box_depth = 128;
car_width = 166;
truck_width = 86;
sport_width = 42;
cars_depth = 56;
inner_wall_thickness = 1;
cubes_depth = box_depth - cars_depth - 2*g_wall_thickness - inner_wall_thickness;
cubes_width = (box_width - 2*g_wall_thickness - 4*inner_wall_thickness) / 5;
compartment_height = box_height - 1.5;

data =
[
    [   "Wooden Pieces",
        [
            [ BOX_SIZE_XYZ, [box_width, box_depth, box_height] ],
            
            // Cars
            
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ car_width, cars_depth, compartment_height] ],
                    [ POSITION_XY, [0, MAX] ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ truck_width, cars_depth, compartment_height] ],
                    [ POSITION_XY, [car_width + inner_wall_thickness, MAX] ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ sport_width, cars_depth, compartment_height] ],
                    [ POSITION_XY, [MAX, MAX] ],
                ]
            ],
            
            // Cubes
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [5, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ cubes_width, cubes_depth, compartment_height] ],
                    [ POSITION_XY, [0, 0] ],
                    [ CMP_PADDING_XY, [ inner_wall_thickness, 0 ] ],
                ]
            ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, t],
                    [ LID_SOLID_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Horseless"],
                            [ LBL_SIZE,     20 ],
                            [ LBL_SPACING,     1.1 ],
                            [ POSITION_XY,     [25, 6 ]],
                            [ ROTATION, 15],
                            [LBL_FONT, "OctinPrisonRg:style=regular"],
                        ]
                    ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Carriage"],
                            [ LBL_SIZE,     20 ],
                            [ LBL_SPACING,     1.1 ],
                            [ POSITION_XY,     [-25, -6 ]],
                            [ ROTATION, 15],
                            [LBL_FONT, "OctinPrisonRg:style=regular"],
                        ]
                    ],
                ]
            ]
        ]    
    ]    
];

difference() {
    MakeAll();
    translate([10, 18, box_height - 2.5]) cube([280, 17, 4]);
    translate([10, 40, box_height - 2.5]) cube([280, 17, 4]);
}
$fn=100;
radius=13;
fillet_width = box_width - 2*g_wall_thickness + 0.002;
wall_offest = g_wall_thickness - 0.001;
translate([wall_offest, wall_offest, wall_offest]) custom_fillet(fillet_width, radius);
translate([wall_offest+fillet_width, box_depth-wall_offest, wall_offest]) rotate([0,0,180]) custom_fillet(fillet_width, radius);



