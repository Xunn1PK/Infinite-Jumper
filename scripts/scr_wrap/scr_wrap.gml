/// @description Warping value between min_val and max_val. Basically if value below min_val, then it became equal max_val and viceversa
/// @param {Real} value Value to warp
/// @param {Real} min_val Minimal possible value
/// @param {Real} max_val Maximal possible value
/// @returns {Real}
function wrap(value, min_val, max_val){
    if (value < min_val){
        return max_val;
    }
    else if (value > max_val){
        return min_val;
    }
    else {
        return value;
    }
}