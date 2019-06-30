/// @description Draw the Beacon
// You can write your code in this editor

draw_sprite(s_player, 0, x, y)
image_angle = direction

var pointer_x, pointer_y
with(o_planet)
	{
	g = mass / sqr(point_distance(x, y, o_player.x, o_player.y))
	gdir = point_direction(o_player.x, o_player.y, x, y)	
	pointer_x = o_player.x + lengthdir_x(g, gdir)
	pointer_y = o_player.y + lengthdir_y(g, gdir)
	draw_point(pointer_x, pointer_y)
	}



draw_set_color(c_white)
draw_text(50, 50, string(vspeed))
draw_text(50, 70, string(hspeed))
