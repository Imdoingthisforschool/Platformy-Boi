//Movement
var hinput=keyboard_check(ord("D"))-keyboard_check(ord("A"))
if hinput!=0
{
	hspeed_+=hinput*acceleration
	hspeed_=clamp(hspeed_,-max_hspeed,max_hspeed)
}
else
{
	hspeed_=lerp(hspeed_,0,friction_)
}
if !place_meeting(x,y+1,obj_solid)
{
	vspeed_+=gravity_
}
else
{
	if keyboard_check_pressed(ord("W"))
	{
		vspeed_=jump_height
	}
}
if place_meeting(x+hspeed_,y,obj_solid)
{
		while !place_meeting(x+sign(hspeed_),y,obj_solid)
	{
		x+=sign(hspeed_)
	}
	hspeed_=0
}
x+=hspeed_
if place_meeting(x,y+vspeed_, obj_solid)
{
	while !place_meeting(x,y+sign(vspeed_),obj_solid)
	{
		y+=sign(vspeed_)
	}
	vspeed_=0
}
y+=vspeed_
//Shoot
var dir=point_direction(x,y,mouse_x,mouse_y)
var flipped=(mouse_x>x)*2-1
var gun_x=x-4*flipped
var x_offset=lengthdir_x(10,dir)
var y_offset=lengthdir_y(10,dir)
if mouse_check_button(mb_left)&&(cooldown<1)
{
	instance_create_layer(gun_x+x_offset,y+y_offset-4,"Instances",obj_bullet_boi)
	cooldown=5
}
cooldown=cooldown-1