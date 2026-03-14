global.respawn_time = 60;
global.levels = load_levels();
global.strings = load_localization("en-US");

scribble_font_set_default("fnt_main");
scribble_font_force_bilinear_filtering("fnt_main", false);