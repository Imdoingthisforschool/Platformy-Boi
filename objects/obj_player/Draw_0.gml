//Draw Halo bOI and Shooty Thing
var dir=point_direction(x,y,mouse_x,mouse_y)
var flipped=(mouse_x>x)*2-1
draw_sprite_ext(spr_chief,0,x,y,flipped,1,0,image_blend,image_alpha)
draw_sprite_ext(spr_shooty_boi,0,x-4*flipped,y,1,flipped,dir,image_blend,image_alpha)