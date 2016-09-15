#include "colors.inc"

/*
#declare rx = -90;
#declare ry = 45;
#declare rz = 90; 
*/

#declare rx = 0;
#declare ry = 60;
#declare rz = 90;

#declare sx = -1;
#declare sy = -1;
#declare sz = -1; 

#declare drx = 0;
#declare dry = 0;
#declare drz = 0;
         /*
#declare tx = 10.070474;
#declare ty = 3.766042;
#declare tz = 5.967886; 
    */
#declare tx = 7.547531;  
#declare ty = 7.916369;
#declare tz = 6.167689;
      
      
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

#declare bondsColor = color rgb <1,1,1>;
#declare MapcylRadius=0.015000;


#include "Diamond.inc"
#include "MCE.inc"

//#include "MCE_atoms.inc"

