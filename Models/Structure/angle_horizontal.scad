include <../Common.scad>
include <../ShortCuts.scad>

U() {
    Cu(struct_height-angle_size*2,angle_thickness,angle_size, false);
    Cu(struct_height-angle_size*2,angle_size,angle_thickness, false);
}