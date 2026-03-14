/// @desc Saves value in INI file
/// @param {String} file Name of the INI file to save value to
/// @param {String} section Section in INI file to write to
/// @param {String} key Key in INI file to write value to
/// @param {Any} value Value to save in INI file
function ini_save(file, section, key, value){
    ini_open(file);
    var type = typeof(value);
    if (type == "string"){
        ini_write_string(section, key, value);
    }
    else {
        ini_write_real(section, key, value);
    }
    show_debug_message($"Key {key} with value {value} saved in section {section} of file {file}!");
    ini_close();
}

/// @desc Loads value from INI file
/// @param {String} file Name of the INI file to load value from
/// @param {String} section Section in INI file to read from
/// @param {String} key Key in INI file to read from
/// @param {String} type Type of value (string or anything alse)
/// @param {Any} default Default value to return if section/key in INI file not exist yet
/// @returns {Any}
function ini_load(file, section, key, type, _default){
    var output;
    ini_open(file);
    if (type == "string"){
        output = ini_read_string(section, key, _default);
    }
    else {
        output = ini_read_real(section, key, _default);
    }
    ini_close();
    show_debug_message($"Key {key} from section {section} loaded from file {file}! Type: {type}");
    return output;
}