/// @description Warping value between min_val and max_val. Basically if value below min_val, then it became equal max_val and viceversa
function warp(value, min_val, max_val){
    if (value < min_val){
        return max_val;
    }
    else if (value > max_val){
        return min_val;
    }
}