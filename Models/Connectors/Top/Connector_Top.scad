thickness = 1.5;
depth_arm = 35 - thickness;
width_arm = depth_arm + 45;
height_arm= 4.5;

little_hole_radius = 1.5;
big_hole_radius = 3;

rotate([0,180,0]) {
    difference() {
        draw_connector();
        draw_holes();
    }
}

module draw_holes() {
   /*translate([depth_arm/2,depth_arm/2,-0.1-thickness]) {
       cylinder(h=height_arm+thickness+0.2, r=little_hole_radius, $fn=100);
   }*/
   
   translate([width_arm - depth_arm/2,depth_arm/2,-0.1]) {
       cylinder(h=height_arm+0.2, r=big_hole_radius, $fn=100);
   }
   
   translate([depth_arm/2,width_arm - depth_arm/2,-0.1]) {
       cylinder(h=height_arm+0.2, r=big_hole_radius, $fn=100);
   }
   
   translate([-0.1,depth_arm/2,depth_arm/2]) {
       rotate([0,90,0]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius, $fn=100);
       }
   }
   
   translate([-0.1,width_arm - depth_arm/2,depth_arm/2]) {
       rotate([0,90,0]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius, $fn=100);
       }
   }
   
   translate([-0.1,depth_arm/2,width_arm - depth_arm/2]) {
       rotate([0,90,0]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius, $fn=100);
       }
   }
   
   translate([depth_arm/2,height_arm+0.1,depth_arm/2]) {
       rotate([90,0,0]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius, $fn=100);
       }
   }
   
   translate([width_arm - depth_arm/2,height_arm+0.1,depth_arm/2]) {
       rotate([90,0,0]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius, $fn=100);
       }
   }
   
   translate([depth_arm/2,height_arm+0.1,width_arm - depth_arm/2]) {
       rotate([90,0,0]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius, $fn=100);
       }
   }
}

module draw_connector() {
    cube(size = [width_arm,depth_arm,height_arm],center = false);

    translate([0,height_arm,0]) {
        rotate([90,0,0]) {
            cube(size = [width_arm,depth_arm,height_arm],center = false);
        }
    }

    translate([0,width_arm,0]) {
        rotate([0,0,-90]) {
            cube(size = [width_arm,depth_arm,height_arm],center = false);
            translate([0,height_arm,0]) {
                rotate([90,0,0]) {
                    cube(size = [width_arm,depth_arm,height_arm],center = false);
                }
            }
        }
    }

    translate([0,0,width_arm]) {
        rotate([0,90,0]) {
            cube(size = [width_arm,depth_arm,height_arm],center = false);
            translate([0,height_arm,0]) {
                rotate([90,0,0]) {
                    cube(size = [width_arm,depth_arm,height_arm],center = false);
                }
            }
        }
    }
    
    translate([0,0,-thickness]) {
        cube(size = [depth_arm,depth_arm,thickness],center = false);
    }
}