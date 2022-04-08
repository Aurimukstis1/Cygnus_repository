friction = 0;

dir = point_direction(x, y, mouse_x, mouse_y);
image_angle += sin(degtorad(dir - image_angle)) * rspeed;

imgloop += 1;

MX = mouse_x;
MY = mouse_y;

