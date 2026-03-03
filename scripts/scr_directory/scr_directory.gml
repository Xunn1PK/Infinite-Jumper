function directory_create_new(path, name){
    if (!directory_exists(path + name)){
        directory_create(path + name);
    }
}