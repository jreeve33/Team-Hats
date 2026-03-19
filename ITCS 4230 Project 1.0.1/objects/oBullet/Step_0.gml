if (global.paused) exit;

if !global.paused{
	speed = 1
}
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

var ch = camera_get_view_height(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);


//destory is outside camera
if !point_in_rectangle(x, y, cx, cy, cx+cw, cy+ch){
	instance_destroy();   
}

if place_meeting(x + hspeed, y , tilemap){
	instance_destroy()
}

if place_meeting(x, y + vspeed, tilemap){
	instance_destroy()
}