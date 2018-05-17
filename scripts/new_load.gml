// Load
// Game level
ini_open(CURRENT_SAVE_SLOT + "Save.ini");
// Game instance
game_load(CURRENT_SAVE_SLOT+ ".dat");

// Set pause instance // If skip instance game will drop error
scr_pause_game();

