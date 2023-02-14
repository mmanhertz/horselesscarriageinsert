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
g_wall_thickness = 1;


player_box_x = 55.9;
player_box_y = 81;
player_box_z = 25;
label_rotation = 56;
label_size = 12;

data =
[
    [   "Purple Player",
        [
            [ BOX_SIZE_XYZ, [player_box_x, player_box_y, player_box_z] ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, 
                        [
                            player_box_x - 3,
                            player_box_y - 3,
                            player_box_z - 1.5
                        ]
                    ],
                    [ POSITION_XY, [0, 0] ],
                ]
            ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, f],
                    [ LID_SOLID_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Peugeot"],
                            [ LBL_SIZE,     label_size ],
                            [ ROTATION,     label_rotation ],
                            [LBL_FONT, "OctinPrisonRg:style=regular"],
                        ]
                    ],
                ]
            ]  
        ]
    ],
    [   "Green Player",
        [
            [ BOX_SIZE_XYZ, [player_box_x, player_box_y, player_box_z] ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, 
                        [
                            player_box_x - 3,
                            player_box_y - 3,
                            player_box_z - 1.5
                        ]
                    ],
                    [ POSITION_XY, [0, 0] ],
                ]
            ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, f],
                    [ LID_SOLID_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Wilson"],
                            [ LBL_SIZE,     label_size ],
                            [ ROTATION,     label_rotation ],
                            [LBL_FONT, "OctinPrisonRg:style=regular"],
                        ]
                    ],

                ]
            ]  
        ]
    ],
    [   "Blue Player",
        [
            [ BOX_SIZE_XYZ, [player_box_x, player_box_y, player_box_z] ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, 
                        [
                            player_box_x - 3,
                            player_box_y - 3,
                            player_box_z - 1.5
                        ]
                    ],
                    [ POSITION_XY, [0, 0] ],
                ]
            ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, f],
                    [ LID_SOLID_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Ford"],
                            [ LBL_SIZE,     label_size ],
                            [ ROTATION,     label_rotation ],
                            [LBL_FONT, "OctinPrisonRg:style=regular"],
                        ]
                    ],

                ]
            ]  
        ]
    ],
    [   "Yellow Player",
        [
            [ BOX_SIZE_XYZ, [player_box_x, player_box_y, player_box_z] ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, 
                        [
                            player_box_x - 3,
                            player_box_y - 3,
                            player_box_z - 1.5
                        ]
                    ],
                    [ POSITION_XY, [0, 0] ],
                ]
            ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, f],
                    [ LID_SOLID_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Benz"],
                            [ LBL_SIZE,     label_size ],
                            [ ROTATION,     label_rotation ],
                            [LBL_FONT, "OctinPrisonRg:style=regular"],
                        ]
                    ],

                ]
            ]  
        ]
    ],
    [   "Red Player",
        [
            [ BOX_SIZE_XYZ, [player_box_x, player_box_y, player_box_z] ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, 
                        [
                            player_box_x - 3,
                            player_box_y - 3,
                            player_box_z - 1.5
                        ]
                    ],
                    [ POSITION_XY, [0, 0] ],
                ]
            ],
            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B, f],
                    [ LID_SOLID_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Agnelli"],
                            [ LBL_SIZE,     label_size ],
                            [ ROTATION,     label_rotation ],
                            [LBL_FONT, "OctinPrisonRg:style=regular"],
                        ]
                    ],

                ]
            ]  
        ]
    ],    
];


MakeAll();
