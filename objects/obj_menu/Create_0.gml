//Panel
var panel = new UIPanel("MainMenu", 0, 0, 500, 400, spr_baseui_panel, UI_RELATIVE_TO.MIDDLE_CENTER);
panel.setMovable(false);
panel.setResizable(false);

//Buttons
var button_start = new UIButton("ButtonMainMenuStart", 0, -75, 200, 75, "Start", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);
var button_exit = new UIButton("ButtonMainMenuExit", 0, 75, 200, 75, "Exit", spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);

//Add buttons to the panel
panel.add(button_start);
panel.add(button_exit);

//Configuring buttons
button_start.setSpriteMouseover(spr_baseui_button_hover);
button_start.setSpriteClick(spr_baseui_button_pressed);
button_start.setSpriteDisabled(spr_baseui_button_disabled);
button_start.setCallback(UI_EVENT.LEFT_CLICK, function(){
    room_goto(rm_debug);
    ui_get("MainMenu").destroy();
});

button_exit.setSpriteMouseover(spr_baseui_button_hover);
button_exit.setSpriteClick(spr_baseui_button_pressed);
button_exit.setSpriteDisabled(spr_baseui_button_disabled);
button_exit.setCallback(UI_EVENT.LEFT_CLICK, function(){
    game_end();
});

