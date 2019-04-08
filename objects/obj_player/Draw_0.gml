//Draw Halo bOI and Shooty Thing
var dir=point_direction(x,y-sprite_height/2,mouse_x,mouse_y)
var flipped=(mouse_x>x)*2-1
draw_sprite_ext(spr_chief,image_index,x,ceil(y),x_scale*flipped,y_scale,0,image_blend,image_alpha)
draw_sprite_ext(spr_shooty_boi,0,x-4*flipped,y-13,1,flipped,dir,image_blend,image_alpha)
if reload=true
{
	draw_set_font(fnt_font)
	draw_text(obj_player.x-40,obj_player.y-50,"RELOADING")
}
