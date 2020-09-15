direction = point_direction(x,y, mouse_x, mouse_y)
event_inherited()
speed = 0
image_angle = (direction + 45) mod 360
//dmg++

r = 6
dirSpd = 25
targetDir = direction
theta = (targetDir -180 + 360) mod 360
startDir = theta
endDir = (startDir + 180) mod 360
cy = y + lengthdir_y(r, targetDir)
cx = x + lengthdir_x(r, targetDir)
cSpd = 3
cDir = 0
