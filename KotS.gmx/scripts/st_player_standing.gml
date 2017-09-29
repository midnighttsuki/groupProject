///st_player_standing();
///When player is Idle defaults
image_speed = 0;///sets how fast the players animation plays
obj_player.velX = 0; ///stops the player from moving
obj_player.velY = 0;

///if the player is not talking then it checks the inputs
if(!talking){
    check_input();
}

