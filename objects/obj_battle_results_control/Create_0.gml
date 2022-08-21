var __b__;
__b__ = action_if_sound(snd_battle_win);
if !__b__
{
{
action_sound(snd_battle_win, 1);
}
}
global.xptemp = global.battle_reward_xp; //to show max exp during distribution

//distribute xp and gold
alarm[0]=1;
mode=0;

//mode = 0 -> exp and money
//mode = 1 -> level up
//mode = 2 -> end battle

