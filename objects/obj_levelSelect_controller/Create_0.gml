selected_lvl = 0;
first_lvl = 0;

update_text = function(){
    ui_get("Level_text").setText($"{global.levels[selected_lvl].Name}");
    ui_get("LevelNum_text").setText($"[scale, 0.75]{TID("UI", "level")} {selected_lvl}[/scale]");
}

var panel_level = new UIPanel("LevelSelect_level", 0, -16, 912, 272, spr_baseui_panel);
var panel_inv = new UIPanel("LevelSelect_inv", 0, 0, 1280, 720, undefined, UI_RELATIVE_TO.TOP_LEFT);

panel_level.setResizable(false).setMovable(false);
panel_inv.setResizable(false).setMovable(false);

scribble_font_force_bilinear_filtering("fnt_main", false);
var lvl_text = new UIText("Level_text", 0, -64, "");
var lvl_num_text = new UIText("LevelNum_text", 0, -106, "");

var button_left = new UIButton("LevelSelect_left", 16, 0, 64, 128, "<", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_LEFT);
var button_right = new UIButton("LevelSelect_right", -16, 0, 64, 128, ">", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_RIGHT);
var button_start = new UIButton("LevelSelect_start", 0, 200, 150, 75, $"[scale, 1.25]{TID("UI", "start")}[/scale]", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);

set_button_sprites(button_left, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button_disabled);
set_button_sprites(button_right, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button_disabled);
set_button_sprites(button_start, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button_disabled);

update_text();

button_left.setCallback(UI_EVENT.LEFT_RELEASE, function(){
    selected_lvl -= 1;
    selected_lvl = wrap(selected_lvl, first_lvl, array_length(global.levels) - 1);
    update_text();
});

button_right.setCallback(UI_EVENT.LEFT_RELEASE, function(){
    selected_lvl += 1;
    selected_lvl = wrap(selected_lvl, first_lvl, array_length(global.levels) - 1);
    update_text();
});

button_start.setCallback(UI_EVENT.LEFT_RELEASE, function(){
    transition(asset_get_index(global.levels[selected_lvl].Room));
    ui_get("LevelSelect_level").destroy();
    ui_get("LevelSelect_inv").destroy();
})


panel_level.add(lvl_text);
panel_level.add(lvl_num_text);
panel_inv.add(button_left);
panel_inv.add(button_right);
panel_inv.add(button_start);