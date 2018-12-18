//Movement
if keyboard_check(ord("D"))
{
	hspeed_=4
} else if keyboard_check(ord("A"))
{
	hspeed_=-4
} else {
	hspeed_=0
}
x+=hspeed_