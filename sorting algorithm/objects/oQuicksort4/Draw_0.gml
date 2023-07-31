/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red);
draw_text(0,0,"Exchange Sorts: " + exchangesort);
draw_text(0,15,Timer_1);
draw_text(0,30,Timer_2);
draw_text(0,45,"time: " + string(realtime) + ":00");
draw_text(0,60, string(mss) + ":" + string(ms) + "ms");
draw_text(0,75, delta_time);
draw_text(0,90, "Delay: 1ms");
draw_text(0,105, "fps: " + string(fps));
