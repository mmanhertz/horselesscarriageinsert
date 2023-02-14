include <boardgame_insert_toolkit_lib.2.scad>;
include <rounded_cube.scad>;


// determines whether lids are output.
g_b_print_lid = 1;

// determines whether boxes are output.
g_b_print_box = 1;        

// Used to visualize how all of the boxes fit together. 
g_b_visualization = f;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

stack_of_6 = 12.5;
stack_of_10 = 20;
layer_1_box_height = stack_of_10 + 1.5;
row_1_y = 52;
row_2_y = 40;
row_3_y = 26;


data =
[
    [   "Tech Stations",
        [
            [ BOX_SIZE_XYZ, [220, 125, layer_1_box_height] ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, t],
                    [ LID_SOLID_B, t],
                ]
            ],
            
            // Row 1
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 15.4, row_1_y, stack_of_10] ],
                    [ POSITION_XY, [0.3, 0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 40 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Bumper"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                            [POSITION_XY, [0, -3]],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 41, row_1_y, stack_of_6] ],
                    [ POSITION_XY, [17.2, 0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ CMP_PADDING_XY, [ 2, 0 ] ],
                    [ CMP_PADDING_HEIGHT_ADJUST_XY, [ 20, 0 ] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Chassis"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 41, row_1_y, stack_of_6] ],
                    [ POSITION_XY, [60, 0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Gears"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 54, row_1_y, stack_of_6] ],
                    [ POSITION_XY, [102.8, 0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 40 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Engine"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 28, row_1_y, stack_of_10] ],
                    [ POSITION_XY, [158.6, 0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Windshield"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 28, row_1_y, stack_of_6] ],
                    [ POSITION_XY, [MAX, 0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                    [ CMP_MARGIN_FBLR, [ 0, 0, 0, 0.3 ] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Dashboard"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            
            //Row 2
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 27, row_2_y, stack_of_10] ],
                    [ POSITION_XY, [0.3, 54] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Radiator"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 40, row_2_y, stack_of_6] ],
                    [ CMP_PADDING_XY, [20, 0] ],
                    [ POSITION_XY, [28.8, 54] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, t ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 15 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Body"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 40, row_2_y, stack_of_6] ],
                    [ CMP_PADDING_XY, [20, 0] ],
                    [ POSITION_XY, [88.5, 54] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, t ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 15 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Steering Wheel"],
                            [LBL_SIZE, 4],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 40, row_2_y, stack_of_6] ],
                    [ CMP_PADDING_XY, [20, 0] ],
                    [ POSITION_XY, [148.2, 54] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 15 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Tire"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 27, row_2_y, stack_of_10] ],
                    [ POSITION_XY, [MAX, 54] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, t ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ CMP_MARGIN_FBLR, [ 0, 0, 0, 0.3 ] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Paint"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                         
                        ]
                    ],
                ]
            ],
            
            // Row 3
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 27, row_3_y, stack_of_10] ],
                    [ POSITION_XY, [0.3, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Door"],
                            [LBL_SIZE, 5],                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 54.5, row_3_y, stack_of_6] ],
                    [ POSITION_XY, [29.2, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 40 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Fuel Tank"],
                            [LBL_SIZE, 5],                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 28, row_3_y, stack_of_10] ],
                    [ POSITION_XY, [85.4, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                    [ CMP_PADDING_XY, [3, 0] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Brakes"],
                            [LBL_SIZE, 5],                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 28, row_3_y, stack_of_10] ],
                    [ POSITION_XY, [115.5, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                    [ CMP_PADDING_XY, [3, 0] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Claxon"],
                            [LBL_SIZE, 5],                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 42.6, row_3_y, stack_of_6] ],
                    [ POSITION_XY, [145.4, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Headlight"],
                            [LBL_SIZE, 5],                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 27, row_3_y, stack_of_10] ],
                    [ POSITION_XY, [MAX, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                    [ CMP_MARGIN_FBLR, [ 0, 0, 0, 0.3 ] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Battery"],
                            [LBL_SIZE, 5],                         
                        ]
                    ],
                ]
            ],
            
        ]
    ],
    
];


difference() {
    MakeAll();
    translate([69, 166, -20]) rounded_cube([22, 21, 40], radius=5);
    translate([129, 166, -20]) rounded_cube([22, 21, 40], radius=5);
}

