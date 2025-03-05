window_set_cursor(cr_none)

global.triggerenemyvar=300
global.triggerenemy1=global.triggerenemyvar

cell_t=8
cell_w=room_width div cell_t
cell_h=room_height div cell_t
mp_grid=mp_grid_create(0,0,cell_w,cell_h,cell_t,cell_t)
mp_grid_add_instances(mp_grid,wall,true)

