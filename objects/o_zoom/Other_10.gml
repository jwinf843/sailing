/// @description Zoomer

// Figure out the Relative Position of the Mouse
var zoom_mouse_x
var zoom_mouse_y
zoom_mouse_x = (mouse_x - camera_get_view_x(view_camera[0])) / camera_get_view_width(view_camera[0])
zoom_mouse_y = (mouse_y - camera_get_view_y(view_camera[0])) / camera_get_view_height(view_camera[0])

// 