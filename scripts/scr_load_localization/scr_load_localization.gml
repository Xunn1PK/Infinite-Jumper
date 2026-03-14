/// @desc Returns localization
/// @param {String} lang Localization file name (without ".json"!)
/// @returns {Any}
function load_localization(lang){
    if (file_exists($"Localizations/{lang}.json")){
        show_debug_message($"Localization {lang} is loaded!");
        return json_load($"Localizations/{lang}.json");
    }
    else {
        show_message(TID("UI", "localization_error"));
    }
}