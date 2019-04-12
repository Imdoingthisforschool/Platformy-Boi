if instance_exists(obj_player)
{
	var dir=point_direction(x,y,obj_player.x,obj_player.y)
	speed_[h]+=lengthdir_x(acceleration, dir)
	speed_[v]+=lengthdir_y(acceleration, dir)
	if point_distance(0,0,speed_[h],speed_[v])>max_speed
	{
		var move_dir=point_direction(0,0,speed_[h],speed_[v])
		speed_[h]=lengthdir_x(max_speed, move_dir)
		speed_[v]=lengthdir_y(max_speed, move_dir)
	}
	if health_<=0
	{
		instance_destroy()
	}
	if distance_to_object(obj_player)<120
	{
		scr_enemy_shoot()
	}
}
scr_moving(speed_,0.25)
