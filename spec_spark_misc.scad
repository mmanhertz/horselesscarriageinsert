include <boardgame_insert_toolkit_lib.2.scad>;


// determines whether lids are output.
g_b_print_lid = 1;

// determines whether boxes are output.
g_b_print_box = 1; 

// Focus on one box
g_isolated_print_box = "";           

// Used to visualize how all of the boxes fit together. 
g_b_visualization = f;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;



data =
[
    [
        "Spark Markers",
        [
            [ BOX_SIZE_XYZ, [149, 48, 16.5] ],
            
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 70, 45, 15] ],
                    [ POSITION_XY, [0, 0] ],
                    [ CMP_SHAPE, FILLET ],
                    [ CMP_SHAPE_ROTATED_B, t ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 43, 45, 15] ],
                    [ POSITION_XY, [71.5, 0] ],
                    [ CMP_SHAPE, FILLET ],
                    [ CMP_SHAPE_ROTATED_B, t ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 30, 45, 15] ],
                    [ POSITION_XY, [116, 0] ],
                    [ CMP_SHAPE, FILLET ],
                    [ CMP_SHAPE_ROTATED_B, t ],
                ]
            ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, t],
                    [ LID_SOLID_B, t],
                ]
            ]
        ]
    ],
    [
        "Spec Indicators",
        [
            [ BOX_SIZE_XYZ, [58, 162, 16.5] ],
            
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 55, 159, 15] ],
                    [ POSITION_XY, [0, 0] ],
                    [ CMP_SHAPE, FILLET ],
                    [ CMP_SHAPE_ROTATED_B, f ],
                ]
            ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, t],
                    [ LID_SOLID_B, t],
                ]
            ]
        ]
    ],
    [
        "Neutral",
        [
            [ BOX_SIZE_XYZ, [48, 71, 16.5] ],
            
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 45, 68, 15] ],
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


MakeAll();
