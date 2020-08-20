switch(room){
	case rm_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;
	case rm_start:
		draw_set_halign(fa_center);
		var color = c_yellow;
		draw_text_transformed_color(room_width/2, 100, "SPACE ROCKS", 
		3, 3, 0, color, color, color, color, 1
		);
		draw_text(room_width/2, 200, 
		@"SCORE 1,000 POINTS TO WIN
		
		UP:					  MOVE
		LEFT/RIGHT:		DIRECTIONS
		SPACE:				 SHOOT
		
		>> PRESS ENTER TO START <<
		");
		draw_set_halign(fa_left);
		break;
	case rm_win:
		draw_set_halign(fa_center);
		var color = c_lime;
		draw_text_transformed_color(room_width/2, 100, "YOU WIN", 
		3, 3, 0, color, color, color, color, 1
		);
		draw_text(room_width/2, 300, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
	case rm_GameOver:
		draw_set_halign(fa_center);
		var color = c_lime;
		draw_text_transformed_color(room_width/2, 100, "GAME OVER", 
		3, 3, 0, color, color, color, color, 1
		);
		draw_text(room_width/2, 250, "FINAL SCORE: " + string(score));
		draw_text(room_width/2, 300, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
}