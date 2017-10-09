if(ds_exists(ds_DepthGrid, ds_type_grid)){

    var depthGrid = ds_DepthGrid;
    var instNum = instance_number(obj_parDepth); 
    ///resizes grid
    ds_grid_resize(depthGrid, 2,  instNum);
    var gridY = 0;
    
    with(obj_parDepth){
    
        ///add its self to the grid
        depthGrid[# 0, gridY] = id;
        ///add its y value 
        depthGrid[# 1, gridY] = y;
        gridY += 1;
    }
    
    ///sort the grid by Y value
    ds_grid_sort(ds_DepthGrid,1,true);

        gridY = 0;
    repeat(instNum){
        var instID = ds_DepthGrid[# 0, gridY];
       
        with(instID){
            draw_self();
       }
       gridY += 1;
    }
    
    ds_grid_clear(ds_DepthGrid,0);
}
