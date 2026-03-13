//USE ONLY IN obj_player!!!
/// @desc Returns sprites, depending on X and Y difference between current and previous frame
/// @returns {Asset.GMSprite} Player sprite
function player_animate(){
    var x_diff = x - xprevious;
    var y_diff = y - yprevious;
    var sprite_prev = sprite_index;
    
    image_speed = 1;
    
    if (dead){
        sprite_index = spr_player_death;
        image_index = clamp(image_index, 0, 7);
        image_xscale = 1;
        return;
    }
    
    if (x_diff != 0){
        image_xscale = sign(x_diff);
    }
    
    if (abs(x_diff) > 0){
        if (place_meeting(x, y + 1, obj_solid)){
            sprite_index = spr_player_move;
        }
        else if (!sliding){
            sprite_index = (vspd < -2) ? spr_player_jump_move : spr_player_fall_move;
        }
    }
    else {
        sprite_index = spr_player_idle;
    }
    
    if (abs(y_diff) > 0){
        if (sprite_index == sprite_prev && round(image_index) == image_number - 1){
            image_speed = 0;
            image_index = image_number - 1;
        }
        if (sprite_index == spr_player_idle){
            image_speed = 0;
            image_index = 1;
        }
    }
}