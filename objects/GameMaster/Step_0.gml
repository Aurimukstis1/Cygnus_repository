// PAUSING

//if room == Room1
//{
//if keyboard_check_pressed(vk_escape)
//    {
//    paused = !paused;
//    if paused == false
//        {
//        instance_activate_all();
//        surface_free(paused_surf);
//                paused_surf = -1;
//        }
//    }
//if paused == true
//    {
//    alarm[0]++;
//    alarm[1]++;
//    }
//}

//

if blur = true {
	layer_set_visible("Pausing",true);
} else {
	if blur = false {
			layer_set_visible("Pausing",false);
	}
}