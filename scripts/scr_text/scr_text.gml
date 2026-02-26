function draw_text_advanced(x, y, str, font, color = c_white, alpha = 1, xscale = 1, yscale = 1, angle = 0, _room = room, halign = fa_center, valign = fa_middle, w = -1, sep = 0){
    //Wrong height fix
    var yoffset = string_height(str) / 2;
    
    if (room != _room){
        return false;
    }
    draw_set_font(font);
    draw_set_halign(halign);
    draw_set_valign(valign);
    draw_text_ext_transformed_colour(x, y - yoffset, str, sep, w, xscale, yscale, angle, color, color, color, color, alpha);
    return true;
}