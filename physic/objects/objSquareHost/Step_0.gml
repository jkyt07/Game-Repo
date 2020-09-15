//var moveHoriz = keyboard_check(ord("D")) - keyboard_check(ord("A"))
if isHost
{
	//onGround = place_meeting(x,y+8, object1)
	//if !onGround
	//{
	//	airtime++
	//}
	//else
	//{
	//	airtime = 0
	//}
	//y+=!place_meeting(x,y+airtime, object1)?airtime:8

	//if space and !spacePressed
	//{
	//	spacePressed = true	
	//}
	//else
	//{
	//	spacePressed = false	
	//}

	////if space and onGround
	////{
	////    //phy_linear_velocity_y += 800;
	////	airtime-=40
	////}

	//if moveHoriz != 0 //and airtime < 60
	//{
	//	//phy_linear_velocity_x += (20 - onGround * 10) * moveHoriz
	//	x+=10*moveHoriz
	//}
	//if moveVert != 0 
	//{
	//	y+=10*moveVert
	//}
	if !place_meeting(x+10*moveHoriz,y, object1)
	{
		x+=10*moveHoriz
	}
	else if moveHoriz != 0
	{
		while !place_meeting(x+moveHoriz,y, object1)
		{
			x+=moveHoriz	
		}
	}
	if !place_meeting(x,y+10*moveVert, object1)
	{
		y+=10*moveVert
	}
	else if moveVert != 0
	{
		while !place_meeting(x,y+moveVert, object1)
		{
			y+=moveVert	
		}
	}
	direction-=5*moveAng
	image_angle = direction
}