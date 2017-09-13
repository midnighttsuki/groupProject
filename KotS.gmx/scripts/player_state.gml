///movement_collision();

/*
Checks sprites state then runs accordingly
velX and velY uses playerSpeed to move on the x and y axis
*/
switch(state) 
{
    case "IDLE":
    {
        image_speed = 0;
        velX = 0;
        velY = 0;
        
        
        check_input();
        break;
    }
    
    case "UP":
    {
        image_speed = obj_player.anime;
        sprite_index = obj_player.player[0];
        velX = 0;
        velY = -obj_player.playerSpeed;
        
        check_input();
        break;
    }
    
    case "DOWN": 
    {
        image_speed = obj_player.anime;
        sprite_index = obj_player.player[1];
        velX = 0;
        velY = obj_player.playerSpeed;
        
        check_input();
        break;
    }
    
    case "LEFT": 
    {
        image_speed = obj_player.anime;
        sprite_index = obj_player.player[2];
        velX = -obj_player.playerSpeed;
        velY = 0
        
        check_input();
        break;
    }
    case "RIGHT":
    {
        image_speed = obj_player.anime;
        sprite_index = obj_player.player[3];
        velX = obj_player.playerSpeed;
        velY = 0;
        
        check_input();
        break;
    }
    case "UPLEFT":
    {
        image_speed = obj_player.anime;
        sprite_index = obj_player.player[4];
        velX = -obj_player.playerSpeed;
        velY = -obj_player.playerSpeed;
        
        check_input();
        break;
    }
    case "UPRIGHT":
    {
        image_speed = obj_player.anime;
        sprite_index = obj_player.player[5];
        velX = obj_player.playerSpeed;
        velY = -obj_player.playerSpeed;
        
        check_input();
        break;
    }
    case "DOWNLEFT":
    {
        image_speed = obj_player.anime;
        sprite_index = obj_player.player[6];
        velX = -obj_player.playerSpeed;
        velY = obj_player.playerSpeed;

        
        check_input();
        break;
    }
    case "DOWNRIGHT":
    {
        image_speed = obj_player.anime;
        sprite_index = obj_player.player[7];
        velX = obj_player.playerSpeed;
        velY = obj_player.playerSpeed;
        
        check_input();
        break;
    }
    
    
}
        obj_player.x += velX;
        obj_player.y += velY;
