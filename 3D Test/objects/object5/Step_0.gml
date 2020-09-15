var moonDistance = abs(objClock.frameNum - 1024)

if moonDistance <= 512
{
	image_alpha = 1 - moonDistance/512
}
else
{
	image_alpha = 0	
}