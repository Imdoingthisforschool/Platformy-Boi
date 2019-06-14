if invincible==false
{
	health_-=10
	audio_play_sound(snd_hurt,5,false)
	invincible=true
	alarm[4]=60
}
instance_destroy(other)