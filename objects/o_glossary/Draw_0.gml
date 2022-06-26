surface_set_target(global.surfaces.HUD);
draw_sprite(s_black, 0, 0, 0);
draw_text(400, 200, entries[pos].name);
draw_text(400, 300, entries[pos].info);
draw_text(400, 400, entries[pos].desc);
draw_sprite(entries[pos].sprite, 0, 200, 400);
surface_reset_target();