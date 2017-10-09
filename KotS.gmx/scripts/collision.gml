///collision();


///Horizontal movement and collision detects if there is a wall or a ramp then moves player according
if(place_meeting(x + obj_player.velX, y, obj_hill_tr) || place_meeting(x + obj_player.velX, y, obj_hill_tl))
{
    plusY = 0;
    
    while(place_meeting(x + obj_player.velX, y + plusY, obj_parWall) && plusY <= abs(obj_player.velX)|| place_meeting(x + obj_player.velX, y + plusY, obj_parNPC) && plusY <= abs(obj_player.velX))
    {
        plusY += 1;
    }
    if(place_meeting(x + obj_player.velX, y + plusY, obj_parWall)|| place_meeting(x + obj_player.velX, y + plusY, obj_parNPC))
    {
        while(!place_meeting(x + sign(obj_player.velX), y, obj_parWall)&& !place_meeting(x + sign(obj_player.velX), y, obj_parNPC))
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
if(place_meeting(x + obj_player.velX, y, obj_parWall) || place_meeting(x + obj_player.velX, y, obj_parNPC))
{
    plusY = 0;
    
    while(place_meeting(x + obj_player.velX, y - plusY, obj_parWall) && plusY <= abs(obj_player.velX)|| place_meeting(x + obj_player.velX, y - plusY, obj_parNPC) && plusY <= abs(obj_player.velX))
    {
        plusY += 2;
    }
    if(place_meeting(x + obj_player.velX, y - plusY, obj_parWall)|| place_meeting(x + obj_player.velX, y - plusY, obj_parNPC))
    {
        while(!place_meeting(x + sign(obj_player.velX), y, obj_parWall) && !place_meeting(x + sign(obj_player.velX), y, obj_parNPC))
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
    while(place_meeting(x + plusX, y + obj_player.velY, obj_parWall) && plusX <= abs(obj_player.velY)|| place_meeting(x + plusX, y + obj_player.velY, obj_parNPC) && plusX <= abs(obj_player.velY))
    {
        plusX += 2;
    }
    if(place_meeting(x + plusX, y + obj_player.velY, obj_parWall)|| place_meeting(x + plusX, y + obj_player.velY, obj_parNPC))
    {
        while(!place_meeting(x, y + sign(obj_player.velY), obj_parWall) && !place_meeting(x, y + sign(obj_player.velY), obj_parNPC))
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
if(place_meeting(x, y + obj_player.velY, obj_parWall)|| place_meeting(x, y + obj_player.velY, obj_parNPC))
{
    plusX = 0;
    while(place_meeting(x - plusX, y + obj_player.velY, obj_parWall) && plusX <= abs(obj_player.velY)|| place_meeting(x - plusX, y + obj_player.velY, obj_parNPC) && plusX <= abs(obj_player.velY))
    {
        plusX += 1;
    }
    if(place_meeting(x - plusX, y + obj_player.velY, obj_parWall)|| place_meeting(x - plusX, y + obj_player.velY, obj_parNPC))
    {
        while(!place_meeting(x, y + sign(obj_player.velY), obj_parWall) && !place_meeting(x, y + sign(obj_player.velY), obj_parNPC))
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
