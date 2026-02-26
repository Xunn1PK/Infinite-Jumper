//inactive - should alarm be inactive (equals -1) when the time is set or not

function set_alarm(index, time, inactive = true){
    if (alarm[index] == -1 || !inactive){
        alarm[index] = time;
    }
}