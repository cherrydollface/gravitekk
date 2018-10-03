// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // o_player
global.__objectDepths[1] = 0; // o_gravipad
global.__objectDepths[2] = 0; // o_window
global.__objectDepths[3] = 0; // o_novel_window
global.__objectDepths[4] = 0; // o_novel_world
global.__objectDepths[5] = 10000; // o_bg
global.__objectDepths[6] = 100; // o_tilesurfacer
global.__objectDepths[7] = 0; // o_solid
global.__objectDepths[8] = 0; // o_mission_world
global.__objectDepths[9] = 0; // o_dialog_portraiit
global.__objectDepths[10] = 0; // o_pager
global.__objectDepths[11] = 0; // o_bloodsack
global.__objectDepths[12] = 0; // o_beacon_crystal
global.__objectDepths[13] = 0; // o_building1
global.__objectDepths[14] = 0; // o_button
global.__objectDepths[15] = 0; // o_skip_button
global.__objectDepths[16] = 0; // o_slime
global.__objectDepths[17] = 0; // o_death
global.__objectDepths[18] = -1;// o_global_listener


global.__objectNames[0] = "o_player";
global.__objectNames[1] = "o_gravipad";
global.__objectNames[2] = "o_window";
global.__objectNames[3] = "o_novel_window";
global.__objectNames[4] = "o_novel_world";
global.__objectNames[5] = "o_bg";
global.__objectNames[6] = "o_tilesurfacer";
global.__objectNames[7] = "o_solid";
global.__objectNames[8] = "o_mission_world";
global.__objectNames[9] = "o_dialog_portraiit";
global.__objectNames[10] = "o_pager";
global.__objectNames[11] = "o_bloodsack";
global.__objectNames[12] = "o_beacon_crystal";
global.__objectNames[13] = "o_building1";
global.__objectNames[14] = "o_button";
global.__objectNames[15] = "o_skip_button";
global.__objectNames[16] = "o_slime";
global.__objectNames[17] = "o_death";
global.__objectNames[18] = "o_global_listener";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for