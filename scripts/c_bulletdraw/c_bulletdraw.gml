function c_bulletdraw() {
	draw_sprite_ext(sprite_index, image_index, x, y, fxxscale, fxyscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(colorcover, image_index, x, y, fxxscale, fxyscale, image_angle, color, image_alpha);
}