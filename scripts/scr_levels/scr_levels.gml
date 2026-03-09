function get_levels(){
    var dir = "Data/";
    return [
        //id 0
        {
            "Room": rm_debug,
            "Metadata": json_load($"{dir}level_debug.json")
        },
        //id 1
        {
            "Room": rm_debug,
            "Metadata": json_load($"{dir}level_debug_test.json")
        }
    ];
}