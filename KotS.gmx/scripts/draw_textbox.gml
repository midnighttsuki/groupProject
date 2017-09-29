///Draws text box
write_text = true //obj_parNPC.write_text;
text = obj_parNPC.text;
text_line = obj_parNPC.text_line;
text_count = obj_parNPC.text_count;

//if(write_text == true){
    draw_set_font(fn_default);
    draw_set_color(c_white);
    draw_rectangle(200,view_hview -800, view_wview -200, view_hview -200,false);
    draw_set_color(c_black);
    draw_text(232,view_hview -750,string_copy(text[text_line], 1, text_count));
    
    
    if(text_count <= string_length(text[text_line])){
        text_count++;
    }
//}
