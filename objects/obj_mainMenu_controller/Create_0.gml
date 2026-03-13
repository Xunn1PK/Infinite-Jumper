//Panel
var panel = new UIPanel("MainMenu_panel", 0, 0, 500, 400, undefined, UI_RELATIVE_TO.MIDDLE_CENTER);
panel.setMovable(false).setResizable(false);

//Start button
var button = new UIButton("ButtonMainMenuStart", 0, -150, 200, 75, TID("UI", "start"), spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);
button.setImageMouseover(1).setImageClick(2).setCallback(UI_EVENT.LEFT_RELEASE, function(){
    transition(rm_level_select);
    ui_get("MainMenu").destroy();
});
panel.add(button);

//Options button 
button = new UIButton("ButtonMainMenuOptions", 0, -150, 200, 75, TID("UI", "options"), spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);
button.setImageMouseover(1).setImageClick(2).setCallback(UI_EVENT.LEFT_RELEASE, function(){
    transition(rm_options);
    ui_get("MainMenu").destroy();
});
panel.add(button);

//Exit button
button = new UIButton("ButtonMainMenuExit", 0, 150, 200, 75, TID("UI", "exit"), spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);
button.setImageMouseover(1).setImageClick(2).setCallback(UI_EVENT.LEFT_RELEASE, function(){
    var panel = new UIPanel("MainMenuExit", 0, 0, 600, 250, spr_baseui_panel, UI_RELATIVE_TO.MIDDLE_CENTER);
    panel.setDraggable(false).setResizable(false).setVisible(true).setModal(true).setCloseButtonSprite(spr_baseui_close).setCloseButtonOffset({"x": -4, "y": 4});
    panel.__close_button.setImageMouseover(1).setImageClick(2);
    
    //"Are you sure want to exit?" text
    var text = new UIText("exit_dialog", 0, -50, $"{TID("UI", "exit_confirm")}", UI_RELATIVE_TO.MIDDLE_CENTER);
    panel.add(text);
    
    //Yes button
    var button = new UIButton("button_exit_yes", -150, 50, 200, 75, TID("UI", "yes"), spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);
    button.setImageMouseover(1).setImageClick(2).setCallback(UI_EVENT.LEFT_RELEASE, function(){
        game_end();
    });
    panel.add(button);
    
    //No button
    button = new UIButton("button_exit_no", 150, 50, 200, 75, TID("UI", "no"), spr_baseui_button, UI_RELATIVE_TO.MIDDLE_CENTER);
    button.setImageMouseover(1).setImageClick(2).setCallback(UI_EVENT.LEFT_RELEASE, function(){
        ui_get("MainMenuExit").destroy();
    });
    panel.add(button);
});
panel.add(button);