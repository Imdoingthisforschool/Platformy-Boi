//Bullet Shoot
speed=15
depth=-1
var dir=point_direction(x,y-sprite_height/2,mouse_x,mouse_y)
image_angle=dir
audio_play_sound(snd_shoot,5,false)