/// @description Set x & y coords

/// The camera view follows the target
target = noone

// Set Target
if !instance_exists(target){
	target = o_player	
}

if keyboard_check(ord("C")){
	target = o_player	
}

// Follow the target
if target != noone {
	x = target.x
	y = target.y
}