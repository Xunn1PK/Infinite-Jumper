function load_levels(){
    var path = "Data/";
    var output = [];
    var file_name = file_find_first(path + "*.json", fa_none);
    
    while (file_name != ""){
        var full_path = path + file_name;
        var data = json_load(full_path);
        array_push(output, data);
        
        file_name = file_find_next();
    }
    
    file_find_close();
    return output;
}