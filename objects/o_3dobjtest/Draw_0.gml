/// @description Insert description here
// You can write your code in this editor
var _m = matrix_transpose(matrix_get(matrix_view));
_m[12] = x; _m[NUMBER7(1)] = y; _m[14] = 0;
matrix_set(matrix_world, _m);
draw_sprite_ext(sprite_index, -1, 0, 0, 1,1,0,c_white,1);
matrix_stack_pop();
matrix_set(matrix_world, matrix_stack_top());