///st_npc_talking();
///Talking to NPC

///checks if the player is 60 pixels or less away.
if(distance_to_object(obj_player)< 180){
    var xx = obj_player.x + 160 * cos(degtorad(obj_player.p_direction)); ///checks what direction the player is facing
    var yy = obj_player.y - 160 * sin(degtorad(obj_player.p_direction));
    ///checks if the direction of the player is facing the npc.
    if(collision_line(obj_player.x, obj_player.y, xx, yy, id, false, false))
    { 
        ///if the player talks to the npc it sets write text to true and sets the player to talking then writes the text.
        if(write_text == false){
            write_text = true;
            obj_player.talking = true;
            text_count = 0;
            text_line = 0;
            
        }
        ///checks if there is more then one line and writes the second line.
        else if(text_line < array_length_1d(text)-1){
            text_count = 0;
            text_line++;
        }
        else{
            ///removes text box then set player to no longer talking
            write_text = false;
            obj_player.talking = false;
        }
    }
}
///switchs the npc back to standing
state_switch(st_npc_standing);
