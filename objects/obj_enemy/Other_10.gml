if instance_exists(obj_player)
{
	var dir=point_direction(x,y,obj_player.x,obj_player.y)
	speed_[h]=lengthdir_x(max_speed, dir)
	speed_[v]=lengthdir_y(max_speed, dir)
	scr_moving(speed_)
	if place_meeting(x,y,obj_enemy)
	scr_moving(speed_push)
	{			
		speed_push[h]=lerp(speed_push[h],0,0.1)		
		speed_push[v]=lerp(speed_push[v],0,0.1)
	}
	if health_<=0
	{
		instance_destroy()
	}
	if distance_to_object(obj_player)<48
	{
		state=ATTACK
	}
}