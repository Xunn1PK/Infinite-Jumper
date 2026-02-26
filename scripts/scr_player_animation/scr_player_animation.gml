function player_animation(){
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
    
    //Jump while moving move
    else if (hspd != 0 && vspd < 0){
        if (sprite_index != spr_player_jump_move_loop){
            sprite_index = spr_player_jump_move;
            if (image_index == 1){
                sprite_index = spr_player_jump_move_loop;
            }
        }
    }
    
    //Fall while moving
    else if (hspd != 0 && vspd > 0){
        if (sprite_index != spr_player_fall_move_loop){
            sprite_index = spr_player_fall_move;
            if (image_index == 1){
                sprite_index = spr_player_fall_move_loop;
            }
        }
    }
}