dir = point_direction(x, y, mouse_x, mouse_y);
image_angle += sin(degtorad(dir - image_angle)) * rspeed;

direction = image_angle;

if keyboard_check(vk_control) {
if LSE = true {
if LSEF >= 1 {
if speed < EngineTier * 200 {
	speed += 1;
//	direction = image_angle;
} } } } else
if keyboard_check(vk_lshift) {
if CRB = true {
if RF >= 1 {
if speed < EngineTier * 5 {
	speed += 0.4;
//	direction = image_angle;
} } } } else
if keyboard_check(ord("W")) {
if speed < EngineTier * 2 {
	speed += 0.2;
//	direction = image_angle;
} }
	
position.x = x;
position.y = y;
velocity.get_direction = image_angle;

imgloop += 1;