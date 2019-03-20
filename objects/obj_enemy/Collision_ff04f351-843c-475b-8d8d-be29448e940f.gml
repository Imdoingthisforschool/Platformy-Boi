health_-=1
instance_destroy(other)
state=HIT
var dir=other.direction
speed_push[h]=lengthdir_x(5,dir)
speed_push[v]=lengthdir_y(5,dir)