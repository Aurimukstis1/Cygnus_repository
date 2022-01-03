/// @description 
// Get current camera position
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

// Set target camera position
if Playership.landed = false {
var targetX = Playership.x - camW/2;
var targetY = Playership.y - camH/2;
} //else {
//var targetX = Playership.x - camW/2;	
//var targetY = Playership.y - camH/2;
//}

// Clamp the target to room bounds
targetX = clamp(targetX, -infinity, infinity - camW);
targetY = clamp(targetY, -infinity, infinity - camH);

// Smoothly move the camera to the target position
camX = lerp(camX, targetX, CAM_SMOOTH);
camY = lerp(camY, targetY, CAM_SMOOTH);

// Zooming
var wheel = mouse_wheel_down() - mouse_wheel_up();

if (wheel != 0) {
	wheel *= 0.1;
	
	// Add to size
	var addW = camW * wheel;
	var addH = camH * wheel;
	
	camW += addW;
	camH += addH;
	
	// Position
	camX -= addW / 2;
	camY -= addH / 2;
}

// Apply shake

var shake = power(shakeValue, 2) * shakePower;
camX += random_range(-shake, shake);
camY += random_range(-shake, shake);

// Apply camera position
camera_set_view_pos(camera, camX, camY);
camera_set_view_size(camera, camW, camH);
//camera_set_view_angle(camera,random_range(-shake,shake) * 0.1);

//Store previous
mouse_x_previous = device_mouse_x_to_gui(0);
mouse_y_previous = device_mouse_y_to_gui(0);

// Reduce shake

if (shakeValue > 0) shakeValue -= 0.1;