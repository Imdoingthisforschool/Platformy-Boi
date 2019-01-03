//Movement
var hinput=keyboard_check(ord("D"))-keyboard_check(ord("A"))
if hinput!=0
{
	hspeed_+=hinput*acceleration
	hspeed_=clamp(hspeed_,-max_hspeed,max_hspeed)
}
else
{
	hspeed_=lerp(hspeed_,0,0.3)
}
if !place_meeting(x,y+1,obj_solid)
{
	vspeed_+=gravity_
}
else
{
	if keyboard_check_pressed(ord("W"))
	{
		vspeed_=-15
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