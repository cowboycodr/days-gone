var player = Obj_Player;

var _sprite = sprite_index;

speed = zombie_speed;
 
if (dead) {
	speed = 0;
}

else if (abs(floor(player.y) - floor(y)) <= 1)
{	
	show_debug_message("123")
	
	if (player.x > x) {
		if (!(_sprite == Z_Walk_Right))
		{
			sprite_index = Z_Walk_Right;
			image_index = 0;
		}
		
		direction = 0;
	}
	
	else {
		if (!(_sprite == Z_Walk_Left)) 
		{
			sprite_index = Z_Walk_Left;
			image_index = 0;
		}
		
		direction = 180;
	}
}

else if (player.y > y)
{
	if(!(_sprite == Z_Walk_Front))
	{
		sprite_index = Z_Walk_Front;
		image_index = 0;
	}

	if(player.x > x)
	{
		direction = 315;
	}
	
	else if (player.x < x) 
	{
		direction = 225;
	}
	
	else {
		direction = 270;
	}
}

else if (player.y < y)
{
	if (!(_sprite == Z_Walk_Back))
	{
		sprite_index = Z_Walk_Back;
		image_index = 0;
	}
	
	if(player.x > x)
	{
		direction = 45;
	}
	
	else if (player.x < x) 
	{
		direction = 135;
	}
	
	else {
		direction = 90;
	}
}