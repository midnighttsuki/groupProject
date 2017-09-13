//checks input for what key is pressed in movement_collision()
if(Inputs.up) 
{
    
    obj_player.state = "UP";
}
if(Inputs.down) 
{
    
    obj_player.state = "DOWN";
}
if(Inputs.left)
{
    
    obj_player.state = "LEFT";
}
if(Inputs.right)
{
    
    obj_player.state = "RIGHT";
}
if(Inputs.up && Inputs.left)
{
    
    obj_player.state = "UPLEFT";
}
if(Inputs.up && Inputs.right)
{
    
    obj_player.state = "UPRIGHT";
}
if(Inputs.down && Inputs.left)
{
    
    obj_player.state = "DOWNLEFT";
}
if(Inputs.down && Inputs.right)
{
    
    obj_player.state = "DOWNRIGHT";
}
if(!Inputs.up && !Inputs.down && !Inputs.left && !Inputs.right)
{
    obj_player.state = "IDLE";
}
