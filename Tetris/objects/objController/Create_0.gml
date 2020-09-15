globalvar fall, falling, blk, nxtBlk;
randomize()

falling = 1
blk = irandom_range(0, 6)
nxtBlk = irandom_range(0, 6)

getBlock(blk)

downC = 0
downCMax = 15

held = -1
didHeld = 0

wait = 0

s = 0

lose = 0

tetris = 0