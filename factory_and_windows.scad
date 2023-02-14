include <boardgame_insert_toolkit_lib.2.scad>;
include <rounded_cube.scad>;


// determines whether lids are output.
g_b_print_lid = 1;

// determines whether boxes are output.
g_b_print_box = 1;             
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;



data =
[
    [   "Factory + Windows",
        [
            [ BOX_SIZE_XYZ, [162, 162, 16.5] ],
            
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 159, 159, 15] ],
                    [ POSITION_XY, [0, 0] ],
                ]
            ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, f],
                    [ LID_SOLID_B, t],
                ]
            ]
        ]    
    ],
];

difference() {
    MakeAll();
    translate([61, 61, -10]) rounded_cube([40, 40, 30], radius=5, $fn=100);
}
