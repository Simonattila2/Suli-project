key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump =  keyboard_check(vk_up);

var move = key_right - key_left;

hsp =  move * walksp;

vsp = vsp + grv;

if (place_meeting(x+hsp,y,obj_dirt))
{
	while(!place_meeting(x+sign(hsp),y,obj_dirt))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

if (place_meeting(x,y+vsp,obj_dirt))
{
	while(!place_meeting(x,y+sign(vsp),obj_dirt))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

if (place_meeting(x,y+1,obj_dirt))&&(key_jump)
{
	vsp = -10;
}

image_yscale = 3;


if (hsp!=0)
{
	image_xscale = sign(hsp)*3;
}


