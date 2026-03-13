/// @desc Rotate object around center
/// @param {Real} cx Center X
/// @param {Real} cy Center Y
/// @param {Real} radius Rotation radius
/// @param {Real} angle i forgot what this do
function rotate(cx, cy, radius, angle){
    x = cx + cos(angle) * radius;
    y = cy + sin(angle) * radius;
}

/// @desc Rotate object around center and follows some point (e.g. mouse)
/// @param {Real} cx Center X
/// @param {Real} cy Center Y
/// @param {Real} tx Target X
/// @param {Real} ty Target Y
/// @param {Real} radius Rotation radius
/// @param {Real} rotate_image Should sprite also be rotated or not
function rotate_follow(cx, cy, tx, ty, radius, rotate_image = false){
    var ang = point_direction(cx, cy, tx, ty);
    x = cx + lengthdir_x(radius, ang);
    y = cy + lengthdir_y(radius, ang);
    if (rotate_image){
        image_angle = ang - 90;
    }
}