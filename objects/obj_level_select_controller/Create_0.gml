selected_lvl = 0;

var panel_level = new UIPanel("LevelSelect_level", 0, -16, 912, 272, spr_baseui_panel);
var panel_inv = new UIPanel("LevelSelect_inv", 0, 0, 1280, 720, undefined, UI_RELATIVE_TO.TOP_LEFT);

panel_level.setResizable(false).setMovable(false);
panel_inv.setResizable(false).setMovable(false);

scribble_font_force_bilinear_filtering("fnt_main", false);
var lvl_text = new UIText("Level_text", 0, -64, $"{global.levels[selected_lvl].Metadata.Name}");
var lvl_num_text = new UIText("LevelNum_text", 0, -106, $"[scale, 0.75]{TID("UI", "level")} {selected_lvl}[/scale]");

var button_left = new UIButton("LevelSelect_left", 16, 0, 64, 128, "<", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_LEFT);
var button_right = new UIButton("LevelSelect_right", -16, 0, 64, 128, ">", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_RIGHT);
var button_start = new UIButton("LevelSelect_start", 0, 200, 150, 75, $"[scale, 1.25]{TID("UI", "start")}[/scale]", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);

set_button_sprites(button_left, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button_disabled);
set_button_sprites(button_right, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button_disabled);
set_button_sprites(button_start, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button_disabled);

button_left.setCallback(UI_EVENT.LEFT_RELEASE, function(){
    selected_lvl -= 1;
    selected_lvl = wrap(selected_lvl, 0, array_length(global.levels) - 1);
    ui_get("Level_text").setText($"{global.levels[selected_lvl].Metadata.Name}");
    ui_get("LevelNum_text").setText($"[scale, 0.75]{TID("UI", "level")} {selected_lvl}[/scale]");
});
button_right.setCallback(UI_EVENT.LEFT_RELEASE, function(){
    selected_lvl += 1;
    selected_lvl = wrap(selected_lvl, 0, array_length(global.levels) - 1);
    ui_get("Level_text").setText($"{global.levels[selected_lvl].Metadata.Name}");
    ui_get("LevelNum_text").setText($"[scale, 0.75]{TID("UI", "level")} {selected_lvl}[/scale]");
});
button_start.setCallback(UI_EVENT.LEFT_RELEASE, function(){
    transition(global.levels[selected_lvl].Room);
    ui_get("LevelSelect_level").destroy();
    ui_get("LevelSelect_inv").destroy();
})


panel_level.add(lvl_text);
panel_level.add(lvl_num_text);
panel_inv.add(button_left);
panel_inv.add(button_right);
panel_inv.add(button_start);