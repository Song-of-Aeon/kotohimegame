surface_set_target(global.surfaces.HUD);
draw_sprite(sprite_index, image_index, x, y+irandom((count-60)/2));
surface_reset_target();