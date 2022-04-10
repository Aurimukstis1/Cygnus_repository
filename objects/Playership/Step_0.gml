dir = point_direction(x, y, mouse_x, mouse_y);
image_angle += sin(degtorad(dir - image_angle)) * rspeed;

imgloop += 1;

if keyboard_check(ord("W")) = true {
	if speed <= 10 {
speed += 1
	}
direction = image_angle;
}

move_snap(1,1);