
if delay delay--;
if !created {
	create();
	maxdelay = delay;
	created = true;
}
if !instance_exists(o_textbox) && !delay {
	if !step() instance_destroy();
}
if x > 400 || x < -100 || y > 420 || y < -100  {
	instance_destroy();
}
