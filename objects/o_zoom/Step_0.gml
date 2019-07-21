/// @description Zoom Controller

// Figure out the Relative Position of the Mouse
var zoom_mouse_x
var zoom_mouse_y
zoom_mouse_x = (mouse_x - camera_get_view_x(view_camera[0])) / camera_get_view_width(view_camera[0])
zoom_mouse_y = (mouse_y - camera_get_view_y(view_camera[0])) / camera_get_view_height(view_camera[0])

// Change Zoom on Scroll 
zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.1), 0.5, 5)

// Get Current Size
var view_width = camera_get_view_width(view_camera[0])
var view_height = camera_get_view_height(view_camera[0])

// Set the Rate of Interpolation
var rate = 0.2

// Get New Sizes
var new_width = lerp(view_width, zoom_level * default_zoom_width, rate)
var new_height = lerp(view_height, zoom_level * default_zoom_height, rate) 

// Apply New Size
camera_set_view_size(view_camera[0], new_width, new_height)

var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);

//change coordinates of camera so zoom is centered

if o_view.target == o_player
	{
		var new_x = lerp(vpos_x, vpos_x + (view_width - zoom_level * default_zoom_width) / 2, rate);
		var new_y = lerp(vpos_y, vpos_y + (view_height - zoom_level * default_zoom_height) / 2, rate);
		camera_set_view_pos(view_camera[0], new_x, new_y)
	}

