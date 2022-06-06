count++;
sprite_index = sprite;
var i;
for (i=0; i<array_length(steps); i++) {
	steps[i](id);
}
//step(id);
if pulse && ISAAC.state != st_lock {
	shot(id);
	pulse--;
}