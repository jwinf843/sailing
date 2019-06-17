/// @description Controls
// You can write your code in this editor

// Set Direction
if keyboard_check(vk_left)
	{
		direction += traverse_speed
		image_angle += traverse_speed
	}
	
if keyboard_check(vk_right)
	{
		direction -= traverse_speed
		image_angle -= traverse_speed
	}

// Velocity Controls
if keyboard_check(vk_up)
	{
		speed += .1
	}
	
if keyboard_check(vk_down)
	{
		speed -= .1
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
