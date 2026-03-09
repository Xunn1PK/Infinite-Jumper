function load_localization(lang){
    if (file_exists($"Localizations/{lang}.json")){
        global.strings = json_load($"Localizations/{lang}.json");
        show_debug_message($"Localization {lang} is loaded!");
    }
    else {
        show_message(TID("localization_error"));
    }
}