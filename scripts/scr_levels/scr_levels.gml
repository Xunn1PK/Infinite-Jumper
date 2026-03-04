function get_levels(){
    var dir = "Data/";
    return [
        //id 0
        {
            "Room": rm_debug,
            "Metadata": json_load($"{dir}level_debug.json")
        }
    ];
}