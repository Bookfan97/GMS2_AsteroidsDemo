/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter))
{
	switch room
	{
		case rm_start:
			room_goto(rm_game);
			break
		case rm_win:
		case rm_GameOver:
			game_restart();
			break
	}
}

if(room == rm_GameOver)
{
	if(score >= 1000 && lives != 0)
	{
		room_goto(rm_win);
		audio_play_sound(snd_win, 1, false);
	}

	if(lives <= 0)
	{
		room_goto(rm_GameOver);
		audio_play_sound(snd_win, 1, false);
	}
}