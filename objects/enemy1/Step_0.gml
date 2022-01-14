#region steering forces

if distance_to_object(Playership) <= 800 {
	steering_force.add(evade_force(Playership));
} else if distance_to_object(Playership) <= 2000 {
	steering_force.add(pursue_force(Playership));
}

steering_force.add(cohesion_force(instance_nearest(x,y,enemy1),100));

//update vectors
velocity.add(steering_force);
velocity.limit_magnitude(max_speed);
position.add(velocity);

steering_force.set(0, 0);

//update variables
x = position.x;
y = position.y;
image_angle = velocity.get_direction();

#endregion

if health_ <= 50 {
	if distance_to_object(Playership) <= 1000 {
	steering_force.add(evade_force(Playership));
}}

if health_ <= 0 {
	#region Explosion Big
	repeat 5 {
	audio_play_sound(choose(ExplodingSnd4,ExplodingSnd3,ExplodingSnd2,ExplodingSnd1,ExplodingSnd),1,false);
	part_particles_create(global.P_System, x, y, global.Particle_explosionburstsmall2, 1);
	part_particles_create(global.P_System, random_range(x-100,x+100), random_range(y-100,y+100), global.Particle_explosionburstsmall1, 1);
	}
	#endregion
//	instance_create_layer(x,y,"Instances_3",fragment);
//	instance_create_layer(x,y,"Instances_3",fragment);
	instance_destroy();
}

var _xx = x + lengthdir_x(10, image_angle + direction);
var _yy = y + lengthdir_y(10, image_angle + direction);
if Cooldown_0 = 0 {
//	audio_play_sound(BGLZRShootingSnd2,1,false);
	alarm_set(0,150);
	Cooldown_0 = 1;
	with instance_create_layer(_xx, _yy, "Instances_3", BM_12mm)
	{
		speed = 50;
		image_angle = other.image_angle;
		direction = other.image_angle;
		enemy_ = true;
 }
}


