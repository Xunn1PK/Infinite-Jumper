if (side == 1){ 
    x_offset = lerp(x_offset, obj_player.step * 15, amt);
}
else if (side == -1){
    x_offset = lerp(x_offset, -obj_player.step * 15, amt);
}

if (obj_player.hspd != 0){
    side = sign(obj_player.hspd);
}

x = obj_player.x + x_offset;