var x_diff = x - obj_player.x;
var y_diff = y - obj_player.y;

if (side == 1 && abs(x_diff > 64)){ 
    x_offset = lerp(x_offset, obj_player.step * 15, 0.1);
}
else if (side == -1 && abs(x_diff > 64)){
    x_offset = lerp(x_offset, -obj_player.step * 15, 0.1);
}

if (obj_player.hspd != 0){
    side = sign(obj_player.hspd);
}

x = obj_player.x + x_offset;

if (abs(y_diff) > 32){
    y = lerp(y, obj_player.y, 0.05);
}