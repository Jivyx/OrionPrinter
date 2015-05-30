thickness = 1.5;
depth_arm = 30 - thickness;
width_arm = depth_arm + 50;
height_arm= 4.5;

little_hole_radius = 1.5;
big_hole_radius = 1.5;

difference() {
    draw_connector();
    draw_holes();
}

module draw_holes() {
    $fn=100;
   
    translate([depth_arm/2,depth_arm/2,-0.1-thickness]) {
       cylinder(h=height_arm+thickness+0.2, r=little_hole_radius);
    }
    
   /* HORIZ 1 */
   color("Violet", 1) {
       translate([width_arm - depth_arm/2+5,height_arm+0.1,depth_arm/2]) {
           rotate([90,0,0]) {
               cylinder(h=height_arm+0.2, r=big_hole_radius);
           }
       }
       
       translate([depth_arm+thickness+8,height_arm+0.1,depth_arm/2]) {
           rotate([90,0,0]) {
               cylinder(h=height_arm+0.2, r=big_hole_radius);
           }
       }
       
       translate([width_arm - depth_arm/2 + 5,depth_arm/2,-0.1]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius);
       }
       
       translate([depth_arm+thickness+8,depth_arm/2,-0.1]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius);
       }
   }

   
   /* HORIZ 2 */
   color("Aquamarine", 1) {
       translate([-0.1,width_arm - depth_arm/2 + 5,depth_arm/2]) {
           rotate([0,90,0]) {
               cylinder(h=height_arm+0.2, r=big_hole_radius);
           }
       }
       
       translate([depth_arm/2,width_arm - depth_arm/2 + 5,-0.1]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius);
       }
       
       translate([-0.1,depth_arm+thickness+8,depth_arm/2]) {
           rotate([0,90,0]) {
               cylinder(h=height_arm+0.2, r=big_hole_radius);
           }
       }
       
       translate([depth_arm/2,depth_arm+thickness+8,-0.1]) {
           cylinder(h=height_arm+0.2, r=big_hole_radius);
       }
   }
   
   /* VERT */
   color("SandyBrown", 1) {
       translate([depth_arm/2,height_arm+0.1,width_arm - depth_arm/2]) {
           rotate([90,0,0]) {
               cylinder(h=height_arm+0.2, r=big_hole_radius);
           }
       }
       
       translate([depth_arm/2,height_arm+0.1,depth_arm/2]) {
           rotate([90,0,0]) {
               cylinder(h=height_arm+0.2, r=big_hole_radius);
           }
       }
       
       translate([-0.1,depth_arm/2,width_arm - depth_arm/2]) {
           rotate([0,90,0]) {
               cylinder(h=height_arm+0.2, r=big_hole_radius);
           }
       }
       
       translate([-0.1,depth_arm/2,depth_arm/2]) {
           rotate([0,90,0]) {
               cylinder(h=height_arm+0.2, r=big_hole_radius);
           }
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