if alarm[0]<=0
{
	var dir=point_direction(x,y,obj_player.x,obj_player.y-sprite_height/2)
	var x_offset=lengthdir_x(10,dir)
	var y_offset=lengthdir_y(10,dir)
	var bullet=instance_create_layer(x+x_offset+5,y+y_offset-10,"Instances",obj_bullEt)
	bullet.direction=dir
	alarm[0]=bullet_cooldown
}