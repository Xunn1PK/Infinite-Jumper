enum MOUSE {
    HOLD,
    PRESS,
    RELEASE,
}

/// @desc Function for better mouse control (basically hybrid of every mouse_check* function + mouse_hover)
/// @param {Constant.MouseButton} button Mouse button
/// @param {Real} type Type of check (usually from MOUSE enum)
/// @param {Bool} hover Should object be hovered by mouse while checking? (Default - true)
/// @returns {Bool}
function mouse(button, type, hover = true){
    var m;
    var m_meet = mouse_hover();
    switch (type){
        case MOUSE.HOLD:
            m = mouse_check_button(button);
        break;
        case MOUSE.PRESS:
            m = mouse_check_button_pressed(button);
        break;
        case MOUSE.RELEASE:
            m = mouse_check_button_released(button);
        break;
        default:
            m = 0;
        break;
    }
    if (hover){
        m *= m_meet;
    }
    return m;
}

/// @desc Checks if object hovered by the mouse or not
/// @param {Asset.GMObject} obj Object to check (default - self)
/// @returns {Bool}
function mouse_hover(obj = self){
    return position_meeting(mouse_x, mouse_y, obj);
}