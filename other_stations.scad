include <boardgame_insert_toolkit_lib.2.scad>;



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
box_height = stack_of_10 + 1.5;


data =
[
    [   "Other Stations",
        [
            [ BOX_SIZE_XYZ, [220, 84, box_height] ],[ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, t],
                    [ LID_SOLID_B, t],
                ]
            ],
            
            // Research
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [3, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 41, 39.5, stack_of_10] ],
                    [ POSITION_XY, [0.5, 0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ CMP_PADDING_XY, [ 2, 0 ] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Research"],
                            [LBL_SIZE, 5],
                            [ROTATION, 0],
                            [POSITION_XY, [0, 0]],
                         
                        ]
                    ],
                ]
            ],
            
            
            // Planning
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [3, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 27.5, 39.5, stack_of_10] ],
                    [ POSITION_XY, [0.5, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                    [ CMP_PADDING_XY, [ 2, 0 ] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Planning"],
                            [LBL_SIZE, 5],
                            [ROTATION, 90],
                            [POSITION_XY, [-3, 0]],
                         
                        ]
                    ],
                ]
            ],
            
            // Main Lines
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 53.5, 39.5, stack_of_10] ],
                    [ POSITION_XY, [94, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 40 ],
                    //[ CMP_MARGIN_FBLR, [ 0, 1, 0, 0 ] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Car"],
                            [LBL_SIZE, 5],
                            [ROTATION, 0],
                            [POSITION_XY, [0, 0]],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 67, 39.5, stack_of_10] ],
                    [ POSITION_XY, [MAX, MAX] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 30 ],
                    [ CMP_MARGIN_FBLR, [ 0, 0, 0, 0.5 ] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Sports Car"],
                            [LBL_SIZE, 5],
                            [ROTATION, 0],
                            [POSITION_XY, [0, 0]],
                         
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 81.5, 39.5, stack_of_10] ],
                    [ POSITION_XY, [MAX, 0] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                    [ CMP_CUTOUT_DEPTH_PCT, 5 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 25 ],
                    [ CMP_MARGIN_FBLR, [ 0, 0, 0, 0.5 ] ],
                    [ LABEL, 
                        [
                            [LBL_TEXT, "Truck"],
                            [LBL_SIZE, 5],
                            [ROTATION, 0],
                            [POSITION_XY, [0, 0]],
                         
                        ]
                    ],
                ]
            ],
        ],    
    ],    
];


MakeAll();
