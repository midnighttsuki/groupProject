///movement_collision();

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
///Horizontal movement and collision detects if there is a wall or a ramp then moves player according
if(place_meeting(x + velX, y, obj_hill_tr) || place_meeting(x + velX, y, obj_hill_tl))
{
    plusY = 0;
    
    while(place_meeting(x + velX, y + plusY, obj_parWall) && plusY <= abs(velX))
    {
        plusY += 1;
    }
    if(place_meeting(x + velX, y + plusY, obj_parWall))
    {
        while(!place_meeting(x + sign(velX), y, obj_parWall))
        {
            obj_player.x += sign(velX);
        }
    velX = 0;
    }
    else
    {
        obj_player.y += plusY;
    }
}
if(place_meeting(x + velX, y, obj_parWall))
{
    plusY = 0;
    
    while(place_meeting(x + velX, y - plusY, obj_parWall) && plusY <= abs(velX))
    {
        plusY += 1;
    }
    if(place_meeting(x + velX, y - plusY, obj_parWall))
    {
        while(!place_meeting(x + sign(velX), y, obj_parWall))
        {
            obj_player.x += sign(velX);
        }
    velX = 0;
    }
    else
    {
        obj_player.y -= plusY;
    }
}
obj_player.x += velX;

///Vertical movement and collision detects if there is a wall or a ramp then moves player according
/* if(place_meeting(x, y + velY, obj_hill_br))
{
    
}
if(place_meeting(x, y + velY, obj_hill_bl))
{
}
if(place_meeting(x, y + velY, obj_hill_tr))
{
}
if(place_meeting(x, y + velY, obj_hill_tl))
{
}
if(place_meeting(x, y + velY, obj_wall))
{
} */
if(place_meeting(x, y + velY, obj_hill_tl) || place_meeting(x, y + velY, obj_hill_bl))
{
    plusX = 0;
    while(place_meeting(x + plusX, y + velY, obj_parWall) && plusX <= abs(velY))
    {
        plusX += 1;
    }
    if(place_meeting(x + plusX, y + velY, obj_parWall))
    {
        while(!place_meeting(x, y + sign(velY), obj_parWall))
        {
            obj_player.y += sign(velY);
        }
        velY = 0;
    }
    else
    {
        
        obj_player.x += plusX;
    }
}
if(place_meeting(x, y + velY, obj_parWall))
{
    plusX = 0;
    while(place_meeting(x - plusX, y + velY, obj_parWall) && plusX <= abs(velY))
    {
        plusX += 1;
    }
    if(place_meeting(x - plusX, y + velY, obj_parWall))
    {
        while(!place_meeting(x, y + sign(velY), obj_parWall))
        {
            obj_player.y += sign(velY);
        }
        velY = 0;
    }
    else
    {
        
        obj_player.x -= plusX;
    }
    
}
obj_player.y += velY;
