//Death
//dead = place_meeting(x, y, obj_spike) || y > 768;
//if (dead){
    //image_index = 1;
    //if (alarm[0] == -1){
        //alarm[0] = global.respawn_delay * 60;   
    //}
//}

//Main logic
if (!dead){
    player_move(hspd, vspd, step, impulse, grav);
    player_animation(hspd, vspd);
}