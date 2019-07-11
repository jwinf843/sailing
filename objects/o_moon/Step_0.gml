/// @description Orbital Station
// You can write your code in this editor

var cx, cy, crad, clen, cdir, cnext, nx, ny
vel = 1

// Retrieve variables for later use:
cx = o_planet.x
cy = o_planet.y
crad = point_distance(cx, cy, x, y)

// Find length of the circle
clen = crad * pi * 2

// Find current angle on a circle
cdir = point_direction(cx, cy, x, y)

// Find next angle on a circle
cnext = cdir + vel * 360 / clen

// Find coordinates of next point
nx = cx + lengthdir_x(crad, cnext)
ny = cy + lengthdir_y(crad, cnext)

// Set speed vector to reach that point in next step
hspeed = nx - x
vspeed = ny - y

image_angle = direction + 60