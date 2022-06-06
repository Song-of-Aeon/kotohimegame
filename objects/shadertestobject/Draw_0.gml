/// @description Insert description here
// You can write your code in this editor
shader_set(z_outline);
uniw = shader_get_uniform(z_outline,"pixelW");
unih = shader_get_uniform(z_outline,"pixelH");
unicol = shader_get_uniform(z_outline,"theColor");


shader_set_uniform_f(uniw,texture_get_texel_width(sprite_get_texture(sprite_index,0)));
shader_set_uniform_f(unih,texture_get_texel_height(sprite_get_texture(sprite_index,0)));
shader_set_uniform_f(unicol,1.0,1.0,0.0,1.0);


draw_self();
shader_reset();