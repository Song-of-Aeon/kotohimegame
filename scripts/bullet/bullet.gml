function bullet(name_, sprite_=s_mistake, damage_=1, destructible_=true, friendly_=false, colorable_=false, alpha_=1) constructor {
	sprite = sprite_;
	damage = damage_;
	destructible = destructible_;
	friendly = friendly_;
	colorable = colorable_;
	alpha = alpha_;
	variable_struct_set(global.bullets, name_, self);
}

function laser(name_, sprite_=s_mistake, damage_=1, destructible_=true, friendly_=false, colorable_=false, alpha_=1) constructor {
	sprite = sprite_;
	damage = damage_;
	destructible = destructible_;
	friendly = friendly_;
	colorable = colorable_;
	alpha = alpha_;
	variable_struct_set(global.lasers, name_, self);
}

function hitscan(name_, sprite_=s_mistake, damage_=1, destructible_=true, friendly_=false, colorable_=false, alpha_=1) constructor {
	sprite = sprite_;
	damage = damage_;
	destructible = destructible_;
	friendly = friendly_;
	colorable = colorable_;
	alpha = alpha_;
	variable_struct_set(global.hitscans, name_, self);
}

function chain(name_, sprite_=s_mistake, damage_=1, destructible_=true, friendly_=false, colorable_=false, alpha_=1) constructor {
	sprite = sprite_;
	damage = damage_;
	destructible = destructible_;
	friendly = friendly_;
	colorable = colorable_;
	alpha = alpha_;
	variable_struct_set(global.chains, name_, self);
}