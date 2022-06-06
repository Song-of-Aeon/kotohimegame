function c_meleeshot(target=id, size=sprite_width/2, damage=3) {
	var melee = c_shoot(x, y, 0, 0, global.bullets.melee, c_white, function() {
		if !instance_exists(owner) {
			instance_destroy();
			exit;
		}
		x = owner.x;
		y = owner.y;
	})
	melee.owner = target;
	melee.damage = damage;
	melee.image_xscale = size/8;
	melee.image_yscale = size/8;
	return melee;
}

nu bullet("melee", s_meleenull, 3, false, false, false, 0);