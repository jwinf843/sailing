/// @description Movement Controls
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
*/	

// ORBITAL CONTROLS
if keyboard_check(vk_up)
	{
		vspeed -= 0.2	
	}
if keyboard_check(vk_down)
	{
		vspeed += 0.2	
	}
if keyboard_check(vk_right)
	{
		hspeed += 0.2	
	}
if keyboard_check(vk_left)
	{
		hspeed += 0.2	
	}
// var gravity, gravity_direction

with (o_planet)
	{
	// This code assumes that every planet has a "mass" variable
	gravity = mass / sqr(point_distance(x, y, o_player.x, o_player.y))
	gravity_direction = point_direction(o_player.x, o_player.y, x, y)		
	}
	
	
with(self)
	{
	motion_add(gravity_direction, gravity)	
	}