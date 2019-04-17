//Movement
var hinput=keyboard_check(ord("D"))-keyboard_check(ord("A"))
if hinput!=0
{
	speed_[h]+=hinput*acceleration
	speed_[h]=clamp(speed_[h],-max_speed,max_speed)
	var flipped=(mouse_x>x)*2-1
	image_speed=flipped*hinput*0.6
}
else
{
	speed_[h]=lerp(speed_[h],0,friction_)
	image_speed=0
	image_index=0
}
if !place_meeting(x,y+1,obj_solid)
{
	speed_[v]+=gravity_
	image_speed=0
	image_index=6
}
else
{
	if keyboard_check_pressed(ord("W"))
	{
		speed_[v]=jump_height
		x_scale=image_xscale*0.8
		y_scale=image_yscale*2
	}
}
scr_moving(speed_,0)
if place_meeting(x,y+1,obj_solid) && !place_meeting(x,yprevious+1,obj_solid)
{
	x_scale=image_xscale*1.4
	y_scale=image_yscale*0.8
	image_speed=0
	image_index=6
}
x_scale=lerp(x_scale,image_xscale,0.15)
y_scale=lerp(y_scale,image_yscale,0.15)
//Health Check
if health_<=0
{
	instance_destroy()
}
//Reload
if ammo<=0&&reload=false
{
	ammo=0
	reload=true
	alarm[1]=120
}
if keyboard_check_pressed(ord("R"))&&reload=false&&ammo!=32
{
	reload=true
	ammo=0
	alarm[2]=90
}
