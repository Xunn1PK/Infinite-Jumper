global.respawn_time = 60;
global.levels = get_levels();
load_localization("en-US");

//Initialize directories for custom levels
if (GM_build_type == "exe"){
    var dir = program_directory;
    if (os_android){
        directory_create_new("/strorage/emulated/0/", "Infinite Jumper");
        dir = "/strorage/emulated/0/Infinite Jumper/";
    }
    directory_create_new(dir, "Custom Levels");
}


scribble_font_set_default("fnt_main");