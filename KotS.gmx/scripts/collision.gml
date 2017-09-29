///collision();

///Horizontal movement and collision detects if there is a wall or a ramp then moves player according
if(place_meeting(x + obj_player.velX, y, obj_hill_tr) || place_meeting(x + obj_player.velX, y, obj_hill_tl))
{
    plusY = 0;
    
    while(place_meeting(x + obj_player.velX, y + plusY, obj_parWall) && plusY <= abs(obj_player.velX))
    {
        plusY += 1;
    }
    if(place_meeting(x + obj_player.velX, y + plusY, obj_parWall))
    {
        while(!place_meeting(x + sign(obj_player.velX), y, obj_parWall))
        {
            obj_player.x += sign(obj_player.velX);
        }
    obj_player.velX = 0;
    }
    else
    {
        obj_player.y += plusY;
    }
}
if(place_meeting(x + obj_player.velX, y, obj_parWall))
{
    plusY = 0;
    
    while(place_meeting(x + obj_player.velX, y - plusY, obj_parWall) && plusY <= abs(obj_player.velX))
    {
        plusY += 1;
    }
    if(place_meeting(x + obj_player.velX, y - plusY, obj_parWall))
    {
        while(!place_meeting(x + sign(obj_player.velX), y, obj_parWall))
        {
            obj_player.x += sign(obj_player.velX);
        }
    obj_player.velX = 0;
    }
    else
    {
        obj_player.y -= plusY;
    }
}
obj_player.x += obj_player.velX;

///Vertical movement and collision detects if there is a wall or a ramp then moves player according
if(place_meeting(x, y + obj_player.velY, obj_hill_tl) || place_meeting(x, y + obj_player.velY, obj_hill_bl))
{
    plusX = 0;
    while(place_meeting(x + plusX, y + obj_player.velY, obj_parWall) && plusX <= abs(obj_player.velY))
    {
        plusX += 1;
    }
    if(place_meeting(x + plusX, y + obj_player.velY, obj_parWall))
    {
        while(!place_meeting(x, y + sign(obj_player.velY), obj_parWall))
        {
            obj_player.y += sign(obj_player.velY);
        }
        obj_player.velY = 0;
    }
    else
    {
        
        obj_player.x += plusX;
    }
}
if(place_meeting(x, y + obj_player.velY, obj_parWall))
{
    plusX = 0;
    while(place_meeting(x - plusX, y + obj_player.velY, obj_parWall ) && plusX <= abs(obj_player.velY))
    {
        plusX += 1;
    }
    if(place_meeting(x - plusX, y + obj_player.velY, obj_parWall ))
    {
        while(!place_meeting(x, y + sign(obj_player.velY), obj_parWall ))
        {
            obj_player.y += sign(obj_player.velY);
        }
        obj_player.velY = 0;
    }
    else
    {
        
        obj_player.x -= plusX;
    }
    
}
obj_player.y += obj_player.velY;
