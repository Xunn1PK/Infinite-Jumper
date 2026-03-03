function TID(tid){
    if (variable_struct_exists(global.strings, tid)){
        return variable_struct_get(global.strings, tid);
    }
    else {
        show_debug_message($"[TID] Warning: there's no TID {tid}. Add {tid} to your localization file");
        return $"<MISSING {tid}>";
    }
}