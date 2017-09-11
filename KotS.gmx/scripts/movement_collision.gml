///movement_collision();

/*
Checks sprites state then runs accordingly
velX is how many pixels the player will move on the X axis
velY is how many pixels the player will move on the Y axis
*/
switch(obj_player.state) 
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
        velX = 0;
        velY = -obj_player.PLAYER_SPEED;
        
        check_input();
        break;
    }
    
    case "DOWN": 
    {
        velX = 0;
        velY = obj_player.PLAYER_SPEED;
        
        check_input();
        break;
    }
    
    case "LEFT": 
    {
        velX = -obj_player.PLAYER_SPEED;
        velY = 0
        
        check_input();
        break;
    }
    case "RIGHT": {
        velX = obj_player.PLAYER_SPEED;
        velY = 0;
        
        check_input();
        break;
    }
}
        obj_player.x += velX;
        obj_player.y += velY;
      
     
    
