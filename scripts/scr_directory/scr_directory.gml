/// @desc Creates a new directory, but only if directory with that name not exist yet
/// @param {String} path Path to the directory
/// @param {String} name Name of the directory
function directory_create_new(path, name){
    if (!directory_exists(path + name)){
        directory_create(path + name);
    }
}