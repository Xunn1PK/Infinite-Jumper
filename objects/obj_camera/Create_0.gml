x = obj_player.x;
x = obj_player.y;
x_offset = 0;
width = 640;
height = 360;

//1 - right, -1 - left
side = 1;
amt = 0.1;

camera_view = camera_create_view(x - width/2, y - height/2, width, height, 0, self, -1, -1, width/2, height/2);
view_set_camera(0, camera_view);