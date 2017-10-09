with(obj_draw){
    if(!ds_exists(ds_depthgrid, ds_type_grid))
    {
        ///creates the depth grid
        ds_depthgrid = ds_grid_create(2,1);
        ///adds its ID to the grid
        ds_depthgrid[# 0,0] = other;
        ///adds its Y value to the grid
        ds_depthgrid[# 1,0] = other.y;
    }
    else{
        ///gets current grid size
        var HeightOfGrid = ds_grid_height(ds_depthgrid);
        ///resizes grid
        ds_grid_resize(ds_depthgrid, 2, HeightOfGrid + 1);
        ///add its self to the grid
        ds_depthgrid[# 0, HeightOfGrid] = other;
        ///add its y value 
        ds_depthgrid[# 1, HeightOfGrid] = other.y;
    }
}
