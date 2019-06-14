draw_self()
if !instance_exists(obj_player)&&obj_mouse.cutscene=false
{
	exit
}
draw_health=lerp(draw_health,obj_player.health_,0.5)
draw_set_color(c_aqua)
draw_rectangle(x+4,y+25,x+123*draw_health/obj_player.max_health,y+39,false)
draw_set_color(c_white)
image_index=2