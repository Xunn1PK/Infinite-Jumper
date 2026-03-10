function TID(section, key){
    if (variable_struct_exists(global.strings, section)){
        var sec = variable_struct_get(global.strings, section);
        if (is_struct(sec)){
            if (variable_struct_exists(sec, key)){
                return variable_struct_get(sec, key);
            }
        }
        else if (is_array(sec)){
            if (variable_global_exists($"global.strings.{section}[key]")){
                return variable_global_get($"global.strings.{section}[key]");
            }
        }
        else {
            return sec;
        }
    }
    
    //Show placeholder if TID not exists
    show_debug_message($"[TID] Warning: there's no TID {section}.{key}. Add {section}.{key} to your localization file");
    return $"<MISSING {section}.{key}>";
}