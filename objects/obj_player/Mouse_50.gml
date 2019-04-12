//Shoot
if alarm[0]<=0&&reload=false
{
	ammo=ammo-room_speed/60
	var dir=point_direction(x,y-sprite_height/2,mouse_x,random_range(mouse_y+15,mouse_y-15))
	if distance_to_object(obj_mouse)<=240
	{
		var dir=point_direction(x,y-sprite_height/2,mouse_x,random_range(mouse_y+7,mouse_y-7))
	}
	if distance_to_object(obj_mouse)<=120
	{
		var dir=point_direction(x,y-sprite_height/2,mouse_x,random_range(mouse_y+4,mouse_y-4))
	}
	if distance_to_object(obj_mouse)<=60
	{
		var dir=point_direction(x,y-sprite_height/2,mouse_x,random_range(mouse_y+1.5,mouse_y-1.5))
	}
	var flipped=(mouse_x>x)*2-1
	var gun_x=x-4*flipped
	var x_offset=lengthdir_x(10,dir)
	var y_offset=lengthdir_y(10,dir)
	var bullet=instance_create_layer(gun_x+x_offset,y+y_offset-15,"Instances",obj_bullet_boi)
	bullet.image_angle=dir
	bullet.direction=dir
	alarm[0]=bullet_cooldown
}
