/// @description 

var gui_x
var gui_y

gui_x = camera_get_view_width(view_camera[0]) + 15
gui_y = camera_get_view_height(view_camera[0]) - 15

if global.DEBUG == true
	{
		draw_text_color(gui_x, gui_y, string(zoom_level), c_white, c_white, c_white, c_white, 0)	
	}