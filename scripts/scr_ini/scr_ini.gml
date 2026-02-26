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