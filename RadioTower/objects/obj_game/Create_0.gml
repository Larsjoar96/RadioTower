//Initialize viewports

view_enabled = true;
view_visible[0] = true;
res_width = 1820;
res_height = 1080;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = res_width;
view_hport[0] = res_height;
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, 800, 500);

var dwidth = display_get_width();
var dheight = display_get_height();
var xpos = (dwidth / 2) - 480;
var ypos = (dheight / 2) - 270;
window_set_rectangle(xpos, ypos, res_width, res_height);

surface_resize(application_surface, res_width, res_height);
