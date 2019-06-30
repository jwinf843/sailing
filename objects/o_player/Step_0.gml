/// @description Controls
// You can write your code in this editor

// Set Direction
/*
if keyboard_check(vk_left)
	{
		image_angle += traverse_speed
	}
	
if keyboard_check(vk_right)
	{
		image_angle -= traverse_speed
	}
*/
// Velocity Controls
if keyboard_check(vk_up)
	{
		motion_add(image_angle, .05)
	}
	
if keyboard_check(vk_down)
	{
		motion_add(image_angle, -.05)
	}
	
if speed <= 0
	{
		speed = 0	
	}

if speed >= max_speed
	{
		speed = max_speed	
	}
	
if keyboard_check(vk_control)
	{
		speed = 0	
	}
