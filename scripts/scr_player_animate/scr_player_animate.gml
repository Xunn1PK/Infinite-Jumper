//USE ONLY IN obj_player!!!
/// @desc Returns sprites, depending on X and Y difference between current and previous frame
/// @return {Asset.GMSprite} description
function player_get_sprite(){
    var x_diff = x - xprevious;
    var y_diff = y - yprevious;
    var spr;
    
    if (dead){
        image_xscale = 1;
        image_speed = 1;
        image_index = clamp(image_index, 0, 7);
        return spr_player_death;
    }
    
    //Right and left flip
    var dir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    image_xscale = dir != 0 ? dir : image_xscale;
    
    //Sprite change
    if (x_diff != 0){
        if (y_diff == 0){
            spr = spr_player_move;
        }
        else {
            spr = y_diff <= -4 ? spr_player_jump_move : spr_player_fall_move;
        }
    }
    else {
        spr = spr_player_idle;
    }
    
    //Jumps and fall anim freeze
    if (y_diff != 0){
        if (sprite_index == spr && image_index == image_number - 1){
            image_speed = 0;
        }
    }
    else {
        image_speed = 1;
    }
    
    return spr;
}

/// @deprecated
/// @description This function will no longer exists, and because some sprites are deleted, now its broken and probably will lead to crash. Use player_get_sprite instead
function player_animate(){
    //Death
    if (dead){
        sprite_index = spr_player_death;
        if (image_index >= 8){
            image_index = 7;
        }
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
    if (x == xprevious && y == yprevious){
        sprite_index = spr_player_idle;
    }
    
    //Move
    else if (x != xprevious && y == yprevious){
        sprite_index = spr_player_move;
    }
    
    
    //Jump and fall + move variations
    else {
        var cond = [
            x != xprevious && y < yprevious,
            x == xprevious && y < yprevious,
            x != xprevious && y > yprevious,
            x == xprevious && y > yprevious
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