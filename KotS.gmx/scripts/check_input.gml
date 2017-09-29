//checks input for what key
if(Inputs.up) 
{
    obj_player.pState = "UP";
    state_switch(st_player_walk);
}
if(Inputs.down) 
{    
    obj_player.pState = "DOWN";
    state_switch(st_player_walk);
}
if(Inputs.left)
{    
    obj_player.pState = "LEFT";
    state_switch(st_player_walk);
}
if(Inputs.right)
{    
    obj_player.pState = "RIGHT";
    state_switch(st_player_walk);
}
if(Inputs.up && Inputs.left)
{   
    obj_player.pState = "UPLEFT";
    state_switch(st_player_walk);
}
if(Inputs.up && Inputs.right)
{    
    obj_player.pState = "UPRIGHT";
    state_switch(st_player_walk);
}
if(Inputs.down && Inputs.left)
{    
    obj_player.pState = "DOWNLEFT";
    state_switch(st_player_walk);
}
if(Inputs.down && Inputs.right)
{    
    obj_player.pState = "DOWNRIGHT";
    state_switch(st_player_walk);
}
if(Inputs.up && Inputs.down || Inputs.left && Inputs.right)
{
    obj_player.pState = "IDLE";
    state_switch(st_player_standing);
}
if(!Inputs.up && !Inputs.down && !Inputs.left && !Inputs.right)
{
    obj_player.pState = "IDLE";
    state_switch(st_player_standing);
}
