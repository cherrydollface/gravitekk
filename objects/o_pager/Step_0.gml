/// @description  Scroll text

if(global.gamestate == STATE_PAUSE) return 0;

offset = offset + 2;
if(offset > string_width(string_hash_to_newline(message)) + width) {
    offset = 0;
}

