//Variables
hspeed_=0
max_hspeed=5
vspeed_=0
gravity_=0.7
acceleration=1
friction_=0.3
jump_height=-12
cooldown=0
ammo=32
health_=10
//Keyboard Binding
keyboard_set_map(vk_left, ord("A"))
keyboard_set_map(vk_right, ord("D"))
keyboard_set_map(vk_up, ord("W"))
keyboard_set_map(vk_down, ord("S"))
//etc
bullet_cooldown=room_speed/20
alarm[0]=bullet_cooldown
x_scale=image_xscale
y_scale=image_yscale