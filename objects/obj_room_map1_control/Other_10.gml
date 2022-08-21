//battle sound effect
audio_stop_all();
audio_play_sound(snd_battle_start,1,0);

//random battle
room_goto(room_random_battle);
