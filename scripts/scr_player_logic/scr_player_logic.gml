//USE ONLY IN obj_player!!!

function player_logic(){
    //Death check
    if (dead){
        set_alarm(0, 60);
        return;
    }
    
    //X Move
    var dir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    hspd = step * dir;
    if (!place_meeting(x + hspd, y, obj_solid)){
        x += hspd;
    }
    else {
        while (!place_meeting(x + dir, y, obj_solid)){
            x += dir;
        }
    }
    
    //Physics and Y Move
    if (place_meeting(x, y, obj_solid) && !place_meeting(x, y - 16, obj_solid)){
        y--;
    }
    if (place_meeting(x, y + 1, obj_solid)){
        if (mouse(mb_left, MOUSE.HOLD, false)){
            vspd = impulse;
        }
    }
    else {
        vspd += grav;
    }
    y += vspd;
    if (place_meeting(x, y + vspd, obj_solid)){
        while (!place_meeting(x, y + sign(vspd) / 2, obj_solid)){
            y += sign(vspd) / 2;
        }
        vspd = 0;
    }
    
    //Death
    if (place_meeting(x, y, obj_hazard)){
        dead = true;
    }
}