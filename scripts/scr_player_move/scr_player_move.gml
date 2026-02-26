//USE ONLY IN obj_player!!!

function player_move(){
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
}