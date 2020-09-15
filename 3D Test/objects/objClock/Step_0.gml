frameNum+= daySpd

if frameNum >= 2048
frameNum -= 2048

bgRed = 30 - (abs(frameNum - 1024) / (1024 / 30))
bgGreen = 0 + (abs(frameNum - 1024) / (1024 / 140))
bgBlue = 127 + (abs(frameNum - 1024) / (1024 / 90))
bgColor = make_color_rgb(bgRed, bgGreen, bgBlue)

//groundRed = 20 - (abs(frameNum - 1024) / (1024 / 20))
groundGreen = 76 + (abs(frameNum - 1024) / (1024 / 90))
groundBlue = 23 + (abs(frameNum - 1024) / (1024 / 14))
groundColor = make_color_rgb(groundRed, groundGreen, groundBlue)