//Variables
speed_=[0,0]
max_speed=5
gravity_=0.7
acceleration=1
friction_=0.3
jump_height=-12
cooldown=0
ammo=32
max_health=100
health_=max_health
reload=false
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
var solid_visible=layer_get_id("Solid")
layer_set_visible(solid_visible,debug_mode)