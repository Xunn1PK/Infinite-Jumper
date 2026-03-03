//Panel
var panel = new UIPanel("MainMenu", 0, 0, 500, 400, undefined, UI_RELATIVE_TO.MIDDLE_CENTER);
panel.setMovable(false).setResizable(false);

//Buttons
var button_start = new UIButton("ButtonMainMenuStart", 0, -75, 200, 75, TID("start"), spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);
var button_exit = new UIButton("ButtonMainMenuExit", 0, 75, 200, 75, TID("exit"), spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);

//Add buttons to the panel
panel.add(button_start);
panel.add(button_exit);

//Configuring buttons
set_button_sprites(button_start, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button);
button_start.setCallback(UI_EVENT.LEFT_RELEASE, function(){
    room_goto(rm_debug);
    ui_get("MainMenu").destroy();
});

set_button_sprites(button_exit, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button);
button_exit.setCallback(UI_EVENT.LEFT_RELEASE, function(){
    var panel_exit = new UIPanel("MainMenuExit", 0, 0, 600, 250, spr_baseui_panel, UI_RELATIVE_TO.MIDDLE_CENTER);
    panel_exit.setDraggable(false).setResizable(false);
    var text = new UIText("exit_dialog", 0, -50, $"[fa_center][fa_middle]{TID("exit_confirm_dialog")}", UI_RELATIVE_TO.MIDDLE_CENTER);
    panel_exit.setVisible(true).setModal(true);
    var button_yes = new UIButton("button_exit_yes", -150, 50, 200, 75, TID("yes"), spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);
    var button_no = new UIButton("button_exit_no", 150, 50, 200, 75, TID("no"), spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);
    set_button_sprites(button_yes, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button);
    set_button_sprites(button_no, spr_baseui_button_hover, spr_baseui_button_pressed, spr_baseui_button);
    button_yes.setCallback(UI_EVENT.LEFT_RELEASE, function(){
        game_end();
    });
    button_no.setCallback(UI_EVENT.LEFT_RELEASE, function(){
        ui_get("MainMenuExit").destroy();
    });
    panel_exit.add(button_yes);
    panel_exit.add(button_no);
    panel_exit.add(text);
});

