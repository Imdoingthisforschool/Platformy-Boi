//Shoot
if alarm[0]<=0
{
	ammo=ammo-room_speed/60
	var dir=point_direction(x,y-sprite_height/2,mouse_x,mouse_y)
	var flipped=(mouse_x>x)*2-1
	var gun_x=x-4*flipped
	var x_offset=lengthdir_x(10,dir)
	var y_offset=lengthdir_y(10,dir)
	var bullet=instance_create_layer(gun_x+x_offset,y+y_offset-18,"Instances",obj_bullet_boi)
	bullet.direction=dir
	alarm[0]=bullet_cooldown
}