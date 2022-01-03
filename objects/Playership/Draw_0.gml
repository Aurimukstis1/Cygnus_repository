draw_self();

if Shield = true {
	if Power >= 1 {
		draw_sprite(sNXFR_SmallShield,1,x,y);
		Power -= 1;
	}
}

if keyboard_check(vk_lshift) {
	if CRB = true {
		if RF >= 1 {
			if speed < EngineTier * 5 {
				draw_sprite_ext(EEfectFlame2,imgloop,x,y,1,1,image_angle,c_white,1);
} } } }