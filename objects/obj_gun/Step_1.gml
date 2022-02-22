x = obj_player.x;
y = obj_player.y+10;

image_angle = point_direction(x,y,mouse_x,mouse_y);

cooldown -= 1;
if (mouse_check_button(mb_left)) && (cooldown < 0)
{
	cooldown = 5;
	with (instance_create_layer(x,y-30,"bullet",obj_bullet))
	{
			speed = 25;
			direction = other.image_angle + random_range(2,-2);
			image_angle = direction;
	}
}

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1.5;
	image_xscale = 1.5;
}
else
{
	image_yscale = 1.5;
	image_xscale = 1.5;
}