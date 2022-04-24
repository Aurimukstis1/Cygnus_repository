dir = point_direction(x, y, mouse_x, mouse_y);
image_angle += sin(degtorad(dir - image_angle)) * rspeed*GimbalBlockQuality;

imgloop += 1;

if keyboard_check(ord("W")) = true {
	if speed <= ISP*10 {
speed += ISP/10
	}
direction = image_angle;
}
