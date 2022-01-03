if instance_exists(Playership) {
x = Playership.x;
y = Playership.y;
}

dir = point_direction(x, y, mouse_x, mouse_y);
image_angle += sin(degtorad(dir - image_angle)) * rspeed;