include <../Common.scad>
include <../ShortCuts.scad>

U() {
    Cu(angle_size,angle_thickness,struct_height, false);
    Cu(angle_thickness,angle_size,struct_height, false);
}