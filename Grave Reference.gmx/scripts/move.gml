///move()
// Horizontal collisions
if (!place_meeting(x+hspd, y, o_solid)) {
    x+=hspd;
} else {
    hspd = 0;
}
