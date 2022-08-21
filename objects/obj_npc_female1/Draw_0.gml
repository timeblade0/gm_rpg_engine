action_color(16777215);
script_execute(scp_draw_self,0,0,0,0,0);
var __b__;
__b__ = action_if(scp_player_in_range(1)==1);
if __b__
{
{
//draw question
scp_draw_question(other.profile,"Who do you want to be in game?","Boy","Girl","Me","");
}
}
