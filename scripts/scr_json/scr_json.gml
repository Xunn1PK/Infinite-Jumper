/// @desc Saves struct/array in JSON file
/// @param {String} filename Name of file
/// @param {Any} struct_or_array Struct or array to save in a JSON file
/// @param {Bool} prettify Make file human-readable or not
/// @returns {Undefined}
function json_save(filename, struct_or_array, prettify = true){
    var json_string = json_stringify(struct_or_array, prettify);
    var json_string_length = string_byte_length(json_string);
    var json_buffer = buffer_create(json_string_length, buffer_fixed, 1);
    buffer_write(json_buffer, buffer_text, json_string);
    buffer_save(json_buffer, filename);
    buffer_delete(json_buffer);
    
    show_debug_message($"{filename} saved!");
}

/// @desc Loads JSON file, and returns JSON string
/// @param {String} filename Full name of file
/// @returns {Any}
function json_load(filename){
    var json_buffer = buffer_load(filename);
    var json_string = buffer_read(json_buffer, buffer_text);
    buffer_delete(json_buffer);
    
    show_debug_message($"{filename} loaded!");
    return json_parse(json_string);
}