/// @description Zoom Controller
	
	
if (mouse_wheel_up() and zoom < zoom_max)
	{ // Zoom In
		zoom += .1
		event_user(0)
	}

if (mouse_wheel_down() and zoom > zoom_min)
	{
		zoom -= 1	
		event_user(0)
	}
	


