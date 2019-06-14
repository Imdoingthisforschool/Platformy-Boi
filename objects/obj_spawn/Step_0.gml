if !instance_exists(obj_enemy)
{
	repeat(wave)
	{
		instance_create_layer(random_range(700,730),random_range(120,75),"Instances",obj_enemy)
	}
	wave+=1
}