if enemy_ = false {
instance_destroy();
part_particles_create(global.P_System, x, y, global.Particle_explosionburstsmall1, 1);
other.health_ -= 260;
}