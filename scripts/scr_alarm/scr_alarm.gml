/// @description Sets alarm
/// @param {Real} index Index of alarm (0 - 11)
/// @param {Real} time Time to set alarm (in frames/steps)
/// @param {Bool} inactive Should alarm be inactive/equals -1 when setting
/// @param {Asset.GMObject} obj Object to set alarm (default - self)
function set_alarm(index, time, inactive = true, obj = self){
    if (obj.alarm[index] == -1 || !inactive){
        obj.alarm[index] = time;
    }
}