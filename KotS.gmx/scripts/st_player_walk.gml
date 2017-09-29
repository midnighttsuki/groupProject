///st_player_walk()
///Checks what direction key was pressed then moves player proper direction.
switch(pState) 
{
    case "UP":
    {
        image_speed = anime; ///sets the speed on player animation
        sprite_index = playerSprite[0]; ///sets players direction sprite
        velX = 0; ///set x axis to 0
        velY = -playerSpeed; /// using the player's speed moves player up or down
        p_direction = 90; ///sets players direction
        ///lets player keep moving unless talking to a npc.
        if(!talking){              
            check_input();
        }
        else{
            state_switch(st_player_standing);
        }
        break;
    }
    
    case "DOWN": 
    {
        image_speed = anime;
        sprite_index = playerSprite[1];
        velX = 0;
        velY = playerSpeed;
        p_direction = 270;
                
        if(!talking){              
            check_input();
        }
        else{
            state_switch(st_player_standing);
        }
        break;
    }
    
    case "LEFT": 
    {
        image_speed = anime;
        sprite_index = playerSprite[2];
        velX = -playerSpeed;
        velY = 0;
        p_direction = 180;
        
        if(!talking){              
            check_input();
        }
        else{
            state_switch(st_player_standing);
        }
        break;
    }
    case "RIGHT":
    {
        image_speed = anime;
        sprite_index = playerSprite[3];
        velX = playerSpeed;
        velY = 0;
        p_direction = 0;

        if(!talking){              
            check_input();
        }
        else{
            state_switch(st_player_standing);
        }
        break;
    }
    case "UPLEFT":
    {
        image_speed = anime;
        sprite_index = playerSprite[4];
        velX = -playerSpeed;
        velY = -playerSpeed;
        p_direction = 135;
        
        if(!talking){              
            check_input();
        }
        else{
            state_switch(st_player_standing);
        }
        break;
    }
    case "UPRIGHT":
    {
        image_speed = anime;
        sprite_index = playerSprite[5];
        velX = playerSpeed;
        velY = -playerSpeed;
                        
        if(!talking){              
            check_input();
        }
        else{
            state_switch(st_player_standing);
        }
        break;
    }
    case "DOWNLEFT":
    {
        image_speed = anime;
        sprite_index = playerSprite[6];
        velX = -playerSpeed;
        velY = playerSpeed;
        p_direction = 225;

        if(!talking){              
            check_input();
        }
        else{
            state_switch(st_player_standing);
        }
        break;
    }
    case "DOWNRIGHT":
    {
        image_speed = anime;
        sprite_index = playerSprite[7];
        velX = playerSpeed;
        velY = playerSpeed;
        p_direction = 315;
              
        if(!talking){              
            check_input();
        }
        else{
            state_switch(st_player_standing);
        }
        break;
    }
}
collision(); ///After setting the players vel it then checks the collision and moves the player
