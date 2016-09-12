#include "colors.inc"

          
#declare rx = -90;
#declare ry = 45;
#declare rz = 90; 
             /*
#declare rx = 0;
#declare ry = 0;
#declare rz = 0;
              */
#declare sx = 0;
#declare sy = 0;
#declare sz = 0; 

#declare drx = 0;
#declare dry = 0;                                                    
#declare drz = 0;

#declare tx = 12.344888;
#declare ty = 5.695864;
#declare tz = 5.880068;

global_settings {
  assumed_gamma 2.2
  ambient_light color rgb <1, 1, 1>
}

camera {
  orthographic
  location  <0.0, 0.0, -60>
  right     x*image_width/image_height
  angle     45.3699
  look_at   <0.0, 0.0, -0>
}

background { color rgb<0.196078, 0.6, 0.8> }

// -- 1 light source(s) --

light_source {	// #1
  <100,100,-100>
  color rgb <1,1,1>
  parallel
  point_at <0,0,0>                                                                                     
  fade_distance 1
  fade_power 0  
  shadowless
}      

light_source {	// #2
  <-100,100,-100>
  color rgb <1,1,1>
  parallel
  point_at <0,0,0>                                                                                     
  fade_distance 1
  fade_power 0
  shadowless
}     

#include "Diamond1.inc"
#include "MCE.inc"

