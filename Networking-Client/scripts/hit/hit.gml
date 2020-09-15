dmg = argument0
toHit = argument1
//calc dmg
if dmg - toHit.def < round(dmg /10) and round(dmg /10) >= 1
{
	dmg = round(dmg / 10)
}
else if dmg - toHit.def <= 0
{
	dmg = 1
}
else
{
	dmg -= toHit.def
}
//apply dmg
if toHit.Health < dmg
{
	toHit.Health = 0	
}
else
{
	toHit.Health -= dmg
}
audio_play_sound(toHit.hitSound,2,0)