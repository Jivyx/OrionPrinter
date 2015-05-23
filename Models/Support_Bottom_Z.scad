support_height = 4.5;
support_depth = 33.5+30;
support_width = 100;

fixation_hole_radius = 3;


rod_hole_radius = 4;


motor_hole_radius = 1.5;
motor_dist_between_holes = 31;
motor_side = 42.3;

include <ShortCuts.scad>

difference() {
    U() {
        T((support_width-motor_dist_between_holes)/2,0,0) {
            draw_motor_elevator();
        }
        Cu(support_width,support_depth,support_height,false);
    }
    T((support_width-motor_dist_between_holes)/2,0,0) {
        draw_motor_place();
    }
}

module draw_motor_elevator() {
    hc = support_height+0.2;
    rc = motor_hole_radius*2;
    hec = support_height/2;
    $fn=100;
    
    Tz(hec) {
        Cy(h=hc, r=rc, center=false);
    }
    
    T(motor_dist_between_holes,0,hec) {
        Cy(h=hc, r=rc, center=false);
    }
    
    T(0,motor_dist_between_holes,hec) {
        Cy(h=hc, r=rc, center=false);
    }
    
    T(motor_dist_between_holes,motor_dist_between_holes,hec) {
        Cy(h=hc, r=rc, center=false);
    }
}

module draw_motor_place() {
    $fn=100;

    Tz(-0.1) {
        Cy(h=support_height*2, r=motor_hole_radius, center=false);
        Cy(h=support_height/4, r=motor_hole_radius*2, center=false);
    }
        
    T(motor_dist_between_holes,0,-0.1) {
        Cy(h=support_height*2, r=motor_hole_radius, center=false);
        Cy(h=support_height/4, r=motor_hole_radius*2, center=false);
    }
        
    T(0,motor_dist_between_holes,-0.1) {
        Cy(h=support_height*2, r=motor_hole_radius, center=false);
        Cy(h=support_height/4, r=motor_hole_radius*2, center=false);
    }
        
    T(motor_dist_between_holes,motor_dist_between_holes,-0.1) {
        Cy(h=support_height*2, r=motor_hole_radius, center=false);
        Cy(h=support_height/4, r=motor_hole_radius*2, center=false);
    }
        
    T(motor_dist_between_holes/2,motor_dist_between_holes/2,-0.1) {
        Cy(h=support_height+0.2, r=11, center=false);
    }
}