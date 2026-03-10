function get_levels(){
    var path = "Data/";
    var output = [];
    var file_name = file_find_first(path + "*.json", fa_none);
    
    while (file_name != ""){
        var full_path = path + file_name;
        show_message(full_path);
        var data = json_load(full_path);
        array_push(output, data);
        
        file_name = file_find_next();
    }
    
    //array_sort(output, function(current, next){
        //var l = string_length(current);
        //for (var i = 1; i < l; i++){
            //var curr_char = ord(string_upper(string_char_at(current, i)));
            //var next_char = ord(string_upper(string_char_at(next, i)));
            //if (curr_char == next_char){
                //continue;
            //}
            //else {
                //return next_char - curr_char;
            //}
        //}
    //});
    
    file_find_close();
    return output;
}