///model_load(filepath, vformat)
/// @func model_load(filepath, vformat)
/// @desc Loads a mobel in via buffer. Returns -1 if the file isn't found, otherwise returns a vertex buffer ID
/// @arg filepath
/// @arg vformat
/// @return -1 on fail or a vbuffer ID

function model_load(filepath,vformat){

	if(!file_exists(filepath))
	{
		show_debug_message("File not Found: " + string(filepath));
		return -1;
	}
	//var buff = buffer_load(filepath);

	//var vbuff = vertex_create_buffer_from_buffer(buff, vformat);

	var vbuff = global.cache.load(filepath,vformat);
	//buffer_delete(buff);
	return vbuff;

}