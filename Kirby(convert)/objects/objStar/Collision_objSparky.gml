if !other.kill
{
	other.kill = true
	//other.killDir = start
	other.direction = point_direction(x,y, other.x, other.y)
	instance_destroy()
}