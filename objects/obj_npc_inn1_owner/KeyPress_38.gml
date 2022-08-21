action_set_relative(1);
var __b__;
__b__ = action_if(global.question_visible);
if __b__
{
__b__ = action_if(scp_player_in_range(2)==1);
if __b__
{
global.question_mode += -1;
}
}
action_set_relative(0);
