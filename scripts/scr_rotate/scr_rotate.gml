function rotate(cx, cy, radius, angle){
    x = cx + cos(angle) * radius;
    y = cy + sin(angle) * radius;
}

function rotate_follow(cx, cy, tx, ty, radius, rotate_image = false){
    var ang = point_direction(cx, cy, tx, ty);
    x = cx + lengthdir_x(radius, ang);
    y = cy + lengthdir_y(radius, ang);
    if (rotate_image){
        image_angle = ang - 90;
    }
}