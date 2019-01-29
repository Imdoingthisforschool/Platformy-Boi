var dir=point_direction(x,y,obj_player.x,obj_player.y)
hspeed_=lengthdir_x(speed_, dir)
vspeed_=lengthdir_y(speed_, dir)
scr_moving()
scr_puush()
if !place_meeting(x,y,obj_enemy)
{
	hspeed_push=lerp(hspeed_push,0,0.1)		
	vspeed_push=lerp(vspeed_push,0,0.1)
}

if health_<=0
{
	instance_destroy()
}
if distance_to_object(obj_player)<48
{
	state=ATTACK
}