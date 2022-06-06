function c_aunnspelldraw() {
	draw_sprite_tiled(s_aunnspellbg, 0, 0, (global.count/2));
	//gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	//gpu_set_blendmode_ext(bm_src_color, bm_zero);
	//gpu_set_blendmode_ext(bm_src_alpha, bm_dest_color);
	gpu_set_blendmode_ext(bm_src_color, bm_dest_color);
	draw_sprite_tiled(s_aunnspellcover, 0, (global.count/4), 0);
	gpu_set_blendmode(bm_normal);
}
function c_supercooldraw() {
	draw_sprite_tiled(s_aunnspellbg, 0, 0, (global.count/2));
	gpu_set_blendmode_ext(bm_zero, bm_src_color);
	draw_sprite_tiled(s_aunnspellcover, 0, (global.count/4), 0);
	gpu_set_blendmode(bm_normal);
}