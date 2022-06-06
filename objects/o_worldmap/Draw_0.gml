surface_set_target(global.surfaces.HUD);
draw_sprite(s_worldmapbg, 0, 0, 0);
draw_sprite_ext(s_worldmap, 0, 640/2, 360/2+zoom*(40*(global.currentstage)), zoom+spinning/6, zoom+spinning/6, spin, c_white, 1);
draw_sprite_ext(global.chara[?global.character].sprite, global.count/6, 640/2, 360/2-player, 2, 2, 0, c_white, player/10);
surface_reset_target();