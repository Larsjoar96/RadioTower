//Initialize viewports

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 960;
view_hport[0] = 540;
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, 400, 250);

var dwidth = display_get_width();
var dheight = display_get_height();
var xpos = (dwidth / 2) - 480;
var ypos = (dheight / 2) - 270;
window_set_rectangle(xpos, ypos, 960, 540);

surface_resize(application_surface, 960, 540);
