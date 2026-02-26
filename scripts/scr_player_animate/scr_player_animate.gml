//USE ONLY IN obj_player!!!

function player_animate(){
    //Death
    if (dead){
        sprite_index = spr_player_death;
        return;
    }
    
    //Left/right flip
    if (keyboard_check(ord("A"))){
        image_xscale = -1;
    }
    else if (keyboard_check(ord("D"))){
        image_xscale = 1;
    }
    
    //Idle
    if (hspd == 0 && vspd == 0){
        sprite_index = spr_player_idle;
    }
    
    //Move
    else if (hspd != 0 && vspd == 0){
        sprite_index = spr_player_move;
    }
    
    
    //Jump and fall + move variations
    else {
        var cond = [
            hspd != 0 && vspd < 0,
            hspd == 0 && vspd < 0,
            hspd != 0 && vspd > 0,
            hspd == 0 && vspd > 0
        ];
        var spr = [
            [spr_player_jump_move, spr_player_jump_move_loop],
            [spr_player_jump, spr_player_jump_loop],
            [spr_player_fall_move, spr_player_fall_move_loop],
            [spr_player_fall, spr_player_fall_loop]
        ];
        for (var i = 0; i < array_length(cond); i++){
            if (cond[i]){
                if (sprite_index != spr[i, 1]){
                    sprite_index = spr[i, 0];
                    if (image_index == sprite_get_number(sprite_index)){
                        sprite_index = spr[i, 1];
                    }
                }
                break;
            }
        }
    }
}