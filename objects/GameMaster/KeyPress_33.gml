var _inst = instance_create_layer(x, y, layer, Dialogue);
with(_inst)
    {
    text[0] = "This is some text";
    text[1] = "This is more text";
    text[2] = "This is yet more text";
    text[3] = "I talk too much!";
    text_last = 3;
    text_width = 150;
    text_x = x;
    text_y = y+800;
    text[text_current] = string_wrap(text[text_current], text_width);
    }
	
	draw_rectangle_color(x,y+800,x+1920,y+1080,c_black,c_black,c_black,c_black,false);