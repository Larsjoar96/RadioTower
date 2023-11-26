

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;


//Is player on the ground
if (place_meeting(x, y+2, obj_ground))
{
	move_y = 0;
	if (keyboard_check(vk_up)) move_y = -jump_speed;
	
	//Slope move
	if (!place_meeting(x+move_x, y+2, obj_ground) && place_meeting(x+move_x, y+10, obj_ground))
	{
		move_y = abs(move_x);
		image_xscale = sign(move_x);
		sprite_index = spr_player_run;
		move_x = 0;
	}
	
	if (move_x != 0)
	{ 
		image_xscale = sign(move_x);
		sprite_index = spr_player_run;
	}
	else
	{ 
		sprite_index = spr_player_idle;
	}

	
}
else if (move_y < 10) 
{
	move_y += 1;
	if(move_y < 0) sprite_index = spr_player_jump_start;
	else if(move_y > 0) sprite_index = spr_player_fall;
}


move_and_collide(move_x, move_y, obj_ground, 4, 0, 0, move_speed, -1);