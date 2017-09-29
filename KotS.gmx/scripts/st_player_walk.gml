switch(pState) 
{
    case "UP":
    {
        image_speed = obj_player.anime;
        sprite_index = obj_player.playerSprite[0];
        obj_player.velX = 0;
        obj_player.velY = -obj_player.playerSpeed;
        obj_player.p_direction = 90;
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
        image_speed = obj_player.anime;
        sprite_index = obj_player.playerSprite[1];
        obj_player.velX = 0;
        obj_player.velY = obj_player.playerSpeed;
        obj_player.p_direction = 270;
                
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
        image_speed = obj_player.anime;
        sprite_index = obj_player.playerSprite[2];
        obj_player.velX = -obj_player.playerSpeed;
        obj_player.velY = 0;
        obj_player.p_direction = 180;
        
        
        
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
        image_speed = obj_player.anime;
        sprite_index = obj_player.playerSprite[3];
        obj_player.velX = obj_player.playerSpeed;
        obj_player.velY = 0;
        obj_player.p_direction = 0;
        
        
        
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
        image_speed = obj_player.anime;
        sprite_index = obj_player.playerSprite[4];
        obj_player.velX = -obj_player.playerSpeed;
        obj_player.velY = -obj_player.playerSpeed;
        obj_player.p_direction = 135;
        
        
        
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
        image_speed = obj_player.anime;
        sprite_index = obj_player.playerSprite[5];
        obj_player.velX = obj_player.playerSpeed;
        obj_player.velY = -obj_player.playerSpeed;
        
        
        
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
        image_speed = obj_player.anime;
        sprite_index = obj_player.playerSprite[6];
        obj_player.velX = -obj_player.playerSpeed;
        obj_player.velY = obj_player.playerSpeed;
        obj_player.p_direction = 225;
        
        
        
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
        image_speed = obj_player.anime;
        sprite_index = obj_player.playerSprite[7];
        obj_player.velX = obj_player.playerSpeed;
        obj_player.velY = obj_player.playerSpeed;
        obj_player.p_direction = 315;
        
        
        
        if(!talking){              
            check_input();
        }
        else{
            state_switch(st_player_standing);
        }
        break;
    }
}
collision();
