/// @description View Controller

/// The camera view follows the target
target = noone

// Set Target
if !instance_exists(target)
	{
	target = o_player	
	}
else 
	{
	target = noone
	}

if keyboard_check(ord("C"))
	{
	target = o_player	
	}

// Follow the target
if !instance_exists(target)
	{
	x = camera_get_view_x(view_camera[0])
	y = camera_get_view_y(view_camera[0])
	}

if target != noone 
	{
	x = target.x
	y = target.y
	}




/* Optional Code for Panning with Keyboard	
var pan_speed = 10
if (keyboard_check(vk_shift)
	{
		pan_speed = 100	
	}

view_xview += (keyboard_check(vk_right) - keyboard_check(vk_left)) * pan_speed
view_yview += (keyboard_check(vk_down) - keyboard_check(vk_up)) * pan_speed
*/
	