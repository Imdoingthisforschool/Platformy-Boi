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
		x_scale=image_xscale*0.8
		y_scale=image_yscale*2
	}
}
scr_moving()
if place_meeting(x,y+1,obj_solid) && !place_meeting(x,yprevious+1,obj_solid)
{
	x_scale=image_xscale*1.4
	y_scale=image_yscale*0.8
}
x_scale=lerp(x_scale,image_xscale,0.1)
y_scale=lerp(y_scale,image_yscale,0.1)