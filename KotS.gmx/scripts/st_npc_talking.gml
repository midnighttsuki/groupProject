///Talking to NPC
if(distance_to_object(obj_player)< 60){
    var xx = obj_player.x + 160 * cos(degtorad(obj_player.p_direction));
    var yy = obj_player.y - 160 * sin(degtorad(obj_player.p_direction));
    if(collision_line(obj_player.x, obj_player.y, xx, yy, id, false, false))
    { 
        if(write_text == false){
            write_text = true;
            obj_player.talking = true;
            text_count = 0;
            text_line = 0;
            
        }
        else if(text_line < array_length_1d(text)-1){
            text_count = 0;
            text_line++;
        }
        else{
            write_text = false;
            obj_player.talking = false;
        }
    }
}
state_switch(st_npc_standing);
