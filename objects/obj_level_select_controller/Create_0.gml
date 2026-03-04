var selected_lvl = 0;

var panel = new UIPanel("LevelSelect", 0, -88, 912, 272, spr_baseui_panel);
var lvl_text = new UIText("Level_text", 0, -88, TID(global.levels[selected_lvl].Metadata.Name));
var button_left = new UIButton("LevelSelect_left", 16, 0, 64, 128, "<", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_LEFT);
var button_right = new UIButton("LevelSelect_right", -16, 0, 64, 128, ">", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_RIGHT);
set_button_sprites(button_left, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button_disabled);
set_button_sprites(button_right, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button_disabled);
