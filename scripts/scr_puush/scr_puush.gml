if place_meeting(x+hspeed_push,y,obj_solid)
{
		while !place_meeting(x+sign(hspeed_push),y,obj_solid)
	{
		x+=sign(hspeed_push)
	}
	hspeed_push=0
}
x+=hspeed_push
if place_meeting(x,y+vspeed_push, obj_solid)
{
	while !place_meeting(x,y+sign(vspeed_push),obj_solid)
	{
		y+=sign(vspeed_push)
	}
	vspeed_push=0
}
y+=vspeed_push