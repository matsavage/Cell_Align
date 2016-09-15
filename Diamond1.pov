// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3.5
// Desc: Created by Diamond Crystal and Molecular Structure Visualization
//       Version 4.2.2
//       (c) 1997-2016 Crystal Impact GbR, Bonn, Germany.
//       www.crystalimpact.com
//       Author: Dr. Klaus Brandenburg
// Date: Wednesday, September 14, 2016 14:11:58
// Auth: mbdssmsf
//

#version 3.5;

#include "colors.inc"
#include "textures.inc"
#include "skies.inc"
#include "stones.inc"
#include "woods.inc"
#include "metals.inc"
#include "glass.inc"
#include "ash.map"
#include "bubinga.map"
#include "cedar.map"
#include "orngwood.map"
#include "teak.map"
#include "whiteash.map"
#include "benediti.map"
#include "marbteal.map"
#include "pinkmarb.map"
#include "rdgranit.map"

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
}

// -- Special declarations not included in POV-Ray's INC files --

#declare Ash = texture {
  pigment {
    P_WoodGrain3A
    color_map { M_Ash }
    scale 2
    rotate x*90
    }
  };

#declare Bubinga = texture {
  pigment {
    P_WoodGrain3A
    color_map { M_Bubinga }
    scale 2
    rotate x*90
    }
  };

#declare Cedar = texture {
  pigment {
    P_WoodGrain6A
    color_map { M_Cedar }
    }
    normal {     // Copy of WoodGrain6A pigment
      wood 0.4
      turbulence <0.05, 0.08, 1>
      octaves 4
      scale <0.15, .15, 1>
      translate -x*100
    }
    scale 0.6
    rotate z*35
    rotate x*85
  };

#declare OrangeWood = texture {
  pigment {
    P_WoodGrain3A
    color_map { M_Orangewood }
    scale 2
    rotate x*85
    }
  };

#declare Teak = texture {
  pigment {
    P_WoodGrain3A
    color_map { M_Teak }
    scale 2
    rotate x*90
    }
  };

#declare WhiteAsh = texture {
  pigment {
    P_WoodGrain3A
    color_map { M_WhiteAsh }
    rotate x*85
    }
  };

#declare Benediti = texture {
  pigment {
    crackle
    turbulence 0.8
    octaves 5
    lambda 2.25
    omega 0.707
    color_map { M_Benediti }
    phase 0.97
    scale 1.3
    }
  finish { specular 0.85 roughness 0.0015 }
  };

#declare MarbTeal = texture {
  pigment {
    agate
    color_map { M_MarbTeal }
    scale 0.25
    }
  finish { specular 0.35 roughness 0.015 }
  };

#declare PinkMarb = texture {
  pigment {
    granite
    color_map { M_PinkMarb }
    scale 2
    }
  finish { specular 0.35 roughness 0.015 }
  };

#declare RedGranite = texture {
  pigment {
    granite
    color_map { M_RedGranite }
    scale 0.4
    }
  finish { specular 0.75 roughness 0.0085 }
  };

// -- This plane defines the floor --

plane {
  y, -13.9132
  texture { pigment { color<1,1,1,1> } }
}


////////////////////////////////////////////////////////////

// -- Global finish, normal, and interior settings for objects
//    that use no individual material properties --

#declare F_Global = finish {
  ambient 0.2
  diffuse 0.6
  brilliance 1
  phong 0.75
  phong_size 25
  specular 0
  roughness 0.05
  metallic 0
  reflection {
    0
    0
    fresnel on
    metallic 0
  }
  conserve_energy
}
#declare N_Global = normal {
  bumps 0
  turbulence 0
  scale 1
}
#declare I_Global = interior {
  ior 1
  fade_power 1000
  fade_distance 0
  fade_color <0,0,0>
}

// -- Pigments, finishes, normals, and interiors for 13 atom designs --

#declare P_AD0_1 = pigment { color rgb<0.752941, 0.752941, 0.752941> filter 0 transmit 0 }
#declare P_AD0_2 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare P_AD0_3 = pigment { color rgb<0.752941, 0.752941, 0.752941> filter 0 transmit 0 }
#declare F_AD0 = finish { F_Global }
#declare N_AD0 = normal { N_Global }
#declare I_AD0 = interior { I_Global }
#declare M_AD0 = material { texture { pigment { P_AD0_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD1_1 = pigment { color rgb<1, 0, 0> filter 0 transmit 0 }
#declare P_AD1_2 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare P_AD1_3 = pigment { color rgb<1, 0, 0> filter 0 transmit 0 }
#declare F_AD1 = finish { F_Global }
#declare N_AD1 = normal { N_Global }
#declare I_AD1 = interior { I_Global }
#declare M_AD1 = material { texture { pigment { P_AD1_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD2_1 = pigment { color rgb<0.752941, 0.752941, 0.752941> filter 0 transmit 0 }
#declare P_AD2_2 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare P_AD2_3 = pigment { color rgb<0.752941, 0.752941, 0.752941> filter 0 transmit 0 }
#declare F_AD2 = finish { F_Global }
#declare N_AD2 = normal { N_Global }
#declare I_AD2 = interior { I_Global }
#declare M_AD2 = material { texture { pigment { P_AD2_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD3_1 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare P_AD3_2 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare P_AD3_3 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare F_AD3 = finish { F_Global }
#declare N_AD3 = normal { N_Global }
#declare I_AD3 = interior { I_Global }
#declare M_AD3 = material { texture { pigment { P_AD3_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD4_1 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare P_AD4_2 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare P_AD4_3 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare F_AD4 = finish { F_Global }
#declare N_AD4 = normal { N_Global }
#declare I_AD4 = interior { I_Global }
#declare M_AD4 = material { texture { pigment { P_AD4_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD5_1 = pigment { color rgb<0.752941, 0.752941, 0.752941> filter 0 transmit 0 }
#declare P_AD5_2 = pigment { color rgb<0, 0, 1> filter 0 transmit 0 }
#declare P_AD5_3 = pigment { color rgb<1, 1, 0> filter 0 transmit 0 }
#declare F_AD5 = finish { F_Global }
#declare N_AD5 = normal { N_Global }
#declare I_AD5 = interior { I_Global }
#declare M_AD5 = material { texture { pigment { P_AD5_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD6_1 = pigment { color rgb<1, 0, 0> filter 0 transmit 0 }
#declare P_AD6_2 = pigment { color rgb<0, 0, 1> filter 0 transmit 0 }
#declare P_AD6_3 = pigment { color rgb<1, 1, 0> filter 0 transmit 0 }
#declare F_AD6 = finish { F_Global }
#declare N_AD6 = normal { N_Global }
#declare I_AD6 = interior { I_Global }
#declare M_AD6 = material { texture { pigment { P_AD6_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD7_1 = pigment { color rgb<0.752941, 0.752941, 0.752941> filter 0 transmit 0 }
#declare P_AD7_2 = pigment { color rgb<0, 0, 1> filter 0 transmit 0 }
#declare P_AD7_3 = pigment { color rgb<1, 1, 0> filter 0 transmit 0 }
#declare F_AD7 = finish { F_Global }
#declare N_AD7 = normal { N_Global }
#declare I_AD7 = interior { I_Global }
#declare M_AD7 = material { texture { pigment { P_AD7_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD8_1 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare P_AD8_2 = pigment { color rgb<0, 0, 1> filter 0 transmit 0 }
#declare P_AD8_3 = pigment { color rgb<1, 1, 0> filter 0 transmit 0 }
#declare F_AD8 = finish { F_Global }
#declare N_AD8 = normal { N_Global }
#declare I_AD8 = interior { I_Global }
#declare M_AD8 = material { texture { pigment { P_AD8_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD9_1 = pigment { color rgb<0.752941, 0.752941, 0.752941> filter 0 transmit 0 }
#declare P_AD9_2 = pigment { color rgb<0, 0, 1> filter 0 transmit 0 }
#declare P_AD9_3 = pigment { color rgb<1, 1, 0> filter 0 transmit 0 }
#declare F_AD9 = finish { F_Global }
#declare N_AD9 = normal { N_Global }
#declare I_AD9 = interior { I_Global }
#declare M_AD9 = material { texture { pigment { P_AD9_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD10_1 = pigment { color rgb<1, 0, 0> filter 0 transmit 0 }
#declare P_AD10_2 = pigment { color rgb<0, 0, 1> filter 0 transmit 0 }
#declare P_AD10_3 = pigment { color rgb<1, 1, 0> filter 0 transmit 0 }
#declare F_AD10 = finish { F_Global }
#declare N_AD10 = normal { N_Global }
#declare I_AD10 = interior { I_Global }
#declare M_AD10 = material { texture { pigment { P_AD10_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD11_1 = pigment { color rgb<0.752941, 0.752941, 0.752941> filter 0 transmit 0 }
#declare P_AD11_2 = pigment { color rgb<0, 0, 1> filter 0 transmit 0 }
#declare P_AD11_3 = pigment { color rgb<1, 1, 0> filter 0 transmit 0 }
#declare F_AD11 = finish { F_Global }
#declare N_AD11 = normal { N_Global }
#declare I_AD11 = interior { I_Global }
#declare M_AD11 = material { texture { pigment { P_AD11_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare P_AD12_1 = pigment { color rgb<1, 1, 1> filter 0 transmit 0 }
#declare P_AD12_2 = pigment { color rgb<0, 0, 1> filter 0 transmit 0 }
#declare P_AD12_3 = pigment { color rgb<1, 1, 0> filter 0 transmit 0 }
#declare F_AD12 = finish { F_Global }
#declare N_AD12 = normal { N_Global }
#declare I_AD12 = interior { I_Global }
#declare M_AD12 = material { texture { pigment { P_AD12_1 } finish { F_Global } normal { N_Global } } interior { I_Global } }

// -- Pigments, finishes, normals, and interiors for 3 bond designs --

#declare M_BD0 = material { texture { pigment { color rgb<1, 0.627451, 0> filter 0 transmit 0 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare M_BD1 = material { texture { pigment { color rgb<1, 1, 1> filter 0 transmit 0 } finish { F_Global } normal { N_Global } } interior { I_Global } }
#declare M_BD2 = material { texture { pigment { color rgb<1, 0.627451, 0> filter 0 transmit 0 } finish { F_Global } normal { N_Global } } interior { I_Global } }

// -- Coming now: 85 atoms --

union {
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <0.55941,1.06797,0.16296> }	// #5: "In"
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <0.55941,-0.86811,-2.90246> }	// #6: "In" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.49549,-0.86811,6.29381> }	// #7: "In" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.49549,-0.86811,-5.96789> }	// #8: "In" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.49549,1.06797,3.22839> }	// #9: "In" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.64188,0.09993,-1.36975> }	// #10: "O1"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.52745,0.21437,-4.43517> }	// #11: "O1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.41302,0.09993,4.76110> }	// #12: "O1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.52745,-0.01450,1.69568> }	// #13: "O1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.53853,2.16746,-1.24591> }	// #14: "O2"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.54007,-1.96604,-4.31133> }	// #15: "O2" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.59343,-1.96759,4.88494> }	// #16: "O2" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.59497,2.16591,1.81952> }	// #17: "O2" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.53853,-1.96759,-1.49359> }	// #18: "O2" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.59343,2.16746,4.63726> }	// #19: "O2" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.59497,-1.96604,-4.55902> }	// #20: "O2" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.54007,2.16591,1.57183> }	// #21: "O2" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.91739,0.70457,-2.91472> }	// #22: "O3"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <0.92281,-2.34491,6.28155> }	// #23: "O3" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <0.92281,-2.34491,-5.98015> }	// #24: "O3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.97229,-0.50471,3.21613> }	// #25: "O3" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <2.13209,2.54478,0.15070> }	// #26: "O3" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.91739,-0.50471,0.17522> }	// #27: "O3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.97229,0.70457,6.30607> }	// #28: "O3" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.97229,0.70457,-5.95563> }	// #29: "O3" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <2.13209,-2.34491,-2.89020> }	// #30: "O3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <0.92281,2.54478,3.24065> }	// #31: "O3" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.03801,1.85509,-2.37643> }	// #32: "C1"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.22770,-2.46553,-5.44186> }	// #33: "C1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.09291,-1.65522,3.75442> }	// #34: "C1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.28260,2.66539,0.68899> }	// #35: "C1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.03801,-1.65522,-0.36306> }	// #36: "C1" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.09291,1.85509,5.76779> }	// #37: "C1" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.28260,-2.46553,-3.42849> }	// #38: "C1" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.22770,2.66539,2.70236> }	// #39: "C1" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.59137,0.09993,-1.36975> }	// #40: "H1"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.52745,1.16385,-4.43517> }	// #41: "H1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.46354,0.09993,4.76110> }	// #42: "H1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.52745,-0.96398,1.69568> }	// #43: "H1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.88079,0.29169,4.03889> }	// #44: "C1_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.88079,-0.09182,5.48331> }	// #45: "C1_1" [0.449(2) C] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.22718,0.08602,5.28958> }	// #46: "C2_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.22718,0.11385,4.23262> }	// #47: "C2_1" [0.449(2) C] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.59780,0.45715,3.01871> }	// #48: "D1_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.59780,-0.25728,-5.75821> }	// #49: "D1_1" [0.449(2) D] (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.51017,-0.07945,6.30853> }	// #50: "D2_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.51017,-0.07945,-5.95317> }	// #51: "D2_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.51017,0.27931,3.21367> }	// #52: "D2_1" [0.449(2) D] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.15399,-1.20522,-3.32672> }	// #53: "C1_2" [0.213(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.89935,2.15045,-0.26129> }	// #54: "C1_2" [0.213(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.89935,-1.95058,-2.47821> }	// #55: "C1_2" [0.213(2) C] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.15399,1.40509,0.58722> }	// #56: "C1_2" [0.213(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.74780,-2.36192,-3.13666> }	// #57: "C2_2" [0.213(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.74265,1.55663,-0.07124> }	// #58: "C2_2" [0.213(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.74265,-1.35677,-2.66826> }	// #59: "C2_2" [0.213(2) C] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.74780,2.56179,0.39716> }	// #60: "C2_2" [0.213(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.66997,-0.26347,-3.48244> }	// #61: "D1_2" [0.213(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.84110,2.63447,-0.41701> }	// #62: "D1_2" [0.213(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.84110,-2.43460,-2.32248> }	// #63: "D1_2" [0.213(2) D] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.66997,0.46334,0.74294> }	// #64: "D1_2" [0.213(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.79935,1.07416,0.08326> }	// #65: "D2_2" [0.213(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.79935,-0.87429,-2.82276> }	// #66: "D2_2" [0.213(2) D] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.23027,3.50508,0.24266> }	// #67: "D2_2" [0.213(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <0.55941,-0.86811,9.35924> }	// #76: "In" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.52745,0.21437,7.82653> }	// #77: "O1" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.59497,-1.96604,7.70268> }	// #78: "O2" (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.49549,1.06797,-9.03331> }	// #79: "In" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.41302,0.09993,-7.50060> }	// #80: "O1" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.59343,-1.96759,-7.37676> }	// #81: "O2" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.22770,-2.46553,6.81984> }	// #82: "C1" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.09291,1.85509,-6.49391> }	// #83: "C1" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.59780,-0.25728,6.50349> }	// #84: "D1_1" [0.449(2) D] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.88079,-0.09182,-6.77838> }	// #85: "C1_1" [0.449(2) C] (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.22718,0.08602,-6.97212> }	// #86: "C2_1" [0.449(2) C]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.23027,-3.30522,-2.98216> }	// #87: "D2_2" [0.213(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.54007,-1.96604,7.95037> }	// #88: "O2" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.53853,-1.96759,10.76811> }	// #89: "O2" (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.64188,0.09993,10.89195> }	// #90: "O1"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <2.13209,-2.34491,9.37150> }	// #91: "O3" (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.91739,0.70457,9.34698> }	// #92: "O3"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.59497,2.16591,-10.44218> }	// #93: "O2" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.59343,2.16746,-7.62444> }	// #94: "O2" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.52745,-0.01450,-10.56602> }	// #95: "O1" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <0.92281,2.54478,-9.02105> }	// #96: "O3" (1-y, 1-x, 2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.97229,-0.50471,-9.04557> }	// #97: "O3" (3/2-x, 1/2-y, 1/2+z)

  rotate <179.60089,0.82091,-1.92722>
}

// -- Coming now: 87 bonds --


union {
  cylinder { <0.559411,1.067973,0.162963>, <0.559412,-0.868107,-2.902462>, 0.050000  material { M_BD2 } }	// #16: "In" -- "In"
  cylinder { <0.559411,1.067973,0.162963>, <2.495491,1.067974,3.228389>, 0.050000  material { M_BD2 } }	// #17: "In" -- "In"
  cylinder { <0.559412,-0.868107,-2.902462>, <2.495491,-0.868107,-5.967886>, 0.050000  material { M_BD2 } }	// #24: "In" -- "In"
  cylinder { <2.495491,-0.868107,6.293813>, <0.559411,-0.868107,9.359238>, 0.050000  material { M_BD2 } }	// #31: "In" -- "In"
  cylinder { <2.495491,-0.868107,6.293813>, <2.495491,1.067974,3.228389>, 0.050000  material { M_BD2 } }	// #32: "In" -- "In"
  cylinder { <2.495491,-0.868107,-5.967886>, <2.495491,1.067974,-9.033312>, 0.050000  material { M_BD2 } }	// #39: "In" -- "In"
  cylinder { <1.641884,0.099933,-1.369749>, <2.591367,0.099933,-1.369749>, 0.050000  material { M_BD2 } }	// #52: "O1" -- "H1"
  cylinder { <1.527452,0.214367,-4.435174>, <1.527452,1.163849,-4.435174>, 0.050000  material { M_BD2 } }	// #53: "O1" -- "H1"
  cylinder { <1.413018,0.099933,4.761101>, <0.463535,0.099933,4.761101>, 0.050000  material { M_BD2 } }	// #54: "O1" -- "H1"
  cylinder { <1.527452,-0.014500,1.695676>, <1.527452,-0.963983,1.695676>, 0.050000  material { M_BD2 } }	// #55: "O1" -- "H1"
  cylinder { <-0.538526,2.167457,-1.245906>, <-1.038010,1.855086,-2.376434>, 0.050000  material { M_BD2 } }	// #56: "O2" -- "C1"
  cylinder { <-0.540072,-1.966044,-4.311330>, <-0.227701,-2.465528,-5.441859>, 0.050000  material { M_BD2 } }	// #57: "O2" -- "C1"
  cylinder { <3.593428,-1.967590,4.884944>, <4.092912,-1.655220,3.754416>, 0.050000  material { M_BD2 } }	// #58: "O2" -- "C1"
  cylinder { <3.594975,2.165910,1.819519>, <3.282603,2.665394,0.688992>, 0.050000  material { M_BD2 } }	// #59: "O2" -- "C1"
  cylinder { <-0.538526,-1.967590,-1.493592>, <-1.038010,-1.655220,-0.363064>, 0.050000  material { M_BD2 } }	// #60: "O2" -- "C1"
  cylinder { <3.593428,2.167457,4.637258>, <4.092912,1.855086,5.767786>, 0.050000  material { M_BD2 } }	// #61: "O2" -- "C1"
  cylinder { <3.594975,-1.966044,-4.559018>, <3.282603,-2.465528,-3.428489>, 0.050000  material { M_BD2 } }	// #62: "O2" -- "C1"
  cylinder { <-0.540072,2.165910,1.571833>, <-0.227701,2.665394,2.702361>, 0.050000  material { M_BD2 } }	// #63: "O2" -- "C1"
  cylinder { <-0.917392,0.704572,-2.914723>, <-1.038010,1.855086,-2.376434>, 0.050000  material { M_BD2 } }	// #64: "O3" -- "C1"
  cylinder { <0.922812,-2.344910,6.281552>, <-0.227701,-2.465528,6.819840>, 0.050000  material { M_BD2 } }	// #65: "O3" -- "C1"
  cylinder { <0.922812,-2.344910,-5.980147>, <-0.227701,-2.465528,-5.441859>, 0.050000  material { M_BD2 } }	// #66: "O3" -- "C1"
  cylinder { <3.972294,-0.504705,3.216127>, <4.092912,-1.655220,3.754416>, 0.050000  material { M_BD2 } }	// #67: "O3" -- "C1"
  cylinder { <2.132090,2.544776,0.150702>, <3.282603,2.665394,0.688992>, 0.050000  material { M_BD2 } }	// #68: "O3" -- "C1"
  cylinder { <-0.917392,-0.504705,0.175225>, <-1.038010,-1.655220,-0.363064>, 0.050000  material { M_BD2 } }	// #69: "O3" -- "C1"
  cylinder { <3.972294,0.704571,6.306075>, <4.092912,1.855086,5.767786>, 0.050000  material { M_BD2 } }	// #70: "O3" -- "C1"
  cylinder { <3.972294,0.704571,-5.955625>, <4.092912,1.855086,-6.493914>, 0.050000  material { M_BD2 } }	// #71: "O3" -- "C1"
  cylinder { <2.132090,-2.344910,-2.890200>, <3.282603,-2.465528,-3.428489>, 0.050000  material { M_BD2 } }	// #72: "O3" -- "C1"
  cylinder { <0.922812,2.544776,3.240650>, <-0.227701,2.665394,2.702361>, 0.050000  material { M_BD2 } }	// #73: "O3" -- "C1"
  cylinder { <-1.880792,0.291686,4.038887>, <-1.880792,-0.091819,5.483315>, 0.050000  material { M_BD2 } }	// #74: "C1_1" -- "C1_1"
  cylinder { <-1.880792,0.291686,4.038887>, <-2.227184,0.086015,5.289580>, 0.050000  material { M_BD2 } }	// #75: "C1_1" -- "C2_1"
  cylinder { <-1.880792,0.291686,4.038887>, <-1.597803,0.457149,3.018713>, 0.050000  material { M_BD2 } }	// #76: "C1_1" -- "D1_1"
  cylinder { <-1.880792,0.291686,4.038887>, <-2.510173,0.279315,3.213674>, 0.050000  material { M_BD2 } }	// #77: "C1_1" -- "D2_1"
  cylinder { <-1.880792,-0.091819,5.483315>, <-2.227184,0.113851,4.232621>, 0.050000  material { M_BD2 } }	// #78: "C1_1" -- "C2_1"
  cylinder { <-1.880792,-0.091819,5.483315>, <-1.597803,-0.257283,6.503489>, 0.050000  material { M_BD2 } }	// #79: "C1_1" -- "D1_1"
  cylinder { <-1.880792,-0.091819,5.483315>, <-2.510173,-0.079448,6.308527>, 0.050000  material { M_BD2 } }	// #80: "C1_1" -- "D2_1"
  cylinder { <-2.227184,0.086015,5.289580>, <-2.227184,0.113851,4.232621>, 0.050000  material { M_BD2 } }	// #81: "C2_1" -- "C2_1"
  cylinder { <-2.227184,0.086015,5.289580>, <-2.510173,-0.079448,6.308527>, 0.050000  material { M_BD2 } }	// #82: "C2_1" -- "D2_1"
  cylinder { <-2.227184,0.113851,4.232621>, <-2.510173,0.279315,3.213674>, 0.050000  material { M_BD2 } }	// #83: "C2_1" -- "D2_1"
  cylinder { <-1.597803,-0.257283,-5.758212>, <-1.880792,-0.091819,-6.778385>, 0.050000  material { M_BD2 } }	// #84: "D1_1" -- "C1_1"
  cylinder { <-2.510173,-0.079448,-5.953172>, <-1.880792,-0.091819,-6.778385>, 0.050000  material { M_BD2 } }	// #85: "D2_1" -- "C1_1"
  cylinder { <-2.510173,-0.079448,-5.953172>, <-2.227184,0.086015,-6.972120>, 0.050000  material { M_BD2 } }	// #86: "D2_1" -- "C2_1"
  cylinder { <-4.153986,-1.205219,-3.326717>, <-4.899346,-1.950581,-2.478206>, 0.050000  material { M_BD2 } }	// #87: "C1_2" -- "C1_2"
  cylinder { <-4.153986,-1.205219,-3.326717>, <-4.747799,-2.361919,-3.136660>, 0.050000  material { M_BD2 } }	// #88: "C1_2" -- "C2_2"
  cylinder { <-4.153986,-1.205219,-3.326717>, <-3.669965,-0.263468,-3.482440>, 0.050000  material { M_BD2 } }	// #89: "C1_2" -- "D1_2"
  cylinder { <-4.899346,2.150446,-0.261292>, <-4.153986,1.405086,0.587218>, 0.050000  material { M_BD2 } }	// #90: "C1_2" -- "C1_2"
  cylinder { <-4.899346,2.150446,-0.261292>, <-3.742646,1.556633,-0.071235>, 0.050000  material { M_BD2 } }	// #91: "C1_2" -- "C2_2"
  cylinder { <-4.899346,2.150446,-0.261292>, <-5.841097,2.634467,-0.417015>, 0.050000  material { M_BD2 } }	// #92: "C1_2" -- "D1_2"
  cylinder { <-4.899346,-1.950581,-2.478206>, <-3.742646,-1.356766,-2.668263>, 0.050000  material { M_BD2 } }	// #93: "C1_2" -- "C2_2"
  cylinder { <-4.899346,-1.950581,-2.478206>, <-5.841097,-2.434600,-2.322484>, 0.050000  material { M_BD2 } }	// #94: "C1_2" -- "D1_2"
  cylinder { <-4.153986,1.405086,0.587218>, <-4.747799,2.561786,0.397162>, 0.050000  material { M_BD2 } }	// #95: "C1_2" -- "C2_2"
  cylinder { <-4.153986,1.405086,0.587218>, <-3.669965,0.463335,0.742941>, 0.050000  material { M_BD2 } }	// #96: "C1_2" -- "D1_2"
  cylinder { <-3.742646,1.556633,-0.071235>, <-4.747799,2.561786,0.397162>, 0.050000  material { M_BD2 } }	// #97: "C2_2" -- "C2_2"
  cylinder { <-3.742646,1.556633,-0.071235>, <-2.799348,1.074159,0.083262>, 0.050000  material { M_BD2 } }	// #98: "C2_2" -- "D2_2"
  cylinder { <-3.742646,-1.356766,-2.668263>, <-2.799348,-0.874292,-2.822760>, 0.050000  material { M_BD2 } }	// #99: "C2_2" -- "D2_2"
  cylinder { <-4.747799,2.561786,0.397162>, <-5.230273,3.505084,0.242664>, 0.050000  material { M_BD2 } }	// #100: "C2_2" -- "D2_2"
  cylinder { <-4.747799,-2.361919,-3.136660>, <-3.742646,-1.356766,-2.668263>, 0.050000  material { M_BD2 } }	// #101: "C2_2" -- "C2_2"
  cylinder { <-4.747799,-2.361919,-3.136660>, <-5.230273,-3.305218,-2.982163>, 0.050000  material { M_BD2 } }	// #102: "C2_2" -- "D2_2"

  rotate <179.60089,0.82091,-1.92722>
}

// -- Coming now: 12 cell edges --

union {
  cylinder { <-10.070474,-3.766042,6.293813>, <5.393426,-3.766042,6.293813>, 0.000000  material { M_BD1 } }	// #4: * -- *
  cylinder { <-10.070474,-3.766042,6.293813>, <-10.070474,11.697858,6.293813>, 0.000000  material { M_BD1 } }	// #5: * -- *
  cylinder { <-10.070474,-3.766042,6.293813>, <-10.070474,-3.766042,-5.967886>, 0.000000  material { M_BD1 } }	// #6: * -- *
  cylinder { <5.393426,-3.766042,6.293813>, <5.393426,11.697858,6.293813>, 0.000000  material { M_BD1 } }	// #7: * -- *
  cylinder { <5.393426,-3.766042,6.293813>, <5.393426,-3.766042,-5.967886>, 0.000000  material { M_BD1 } }	// #8: * -- *
  cylinder { <-10.070474,11.697858,6.293813>, <5.393426,11.697858,6.293813>, 0.000000  material { M_BD1 } }	// #9: * -- *
  cylinder { <-10.070474,11.697858,6.293813>, <-10.070474,11.697858,-5.967886>, 0.000000  material { M_BD1 } }	// #10: * -- *
  cylinder { <5.393426,11.697858,6.293813>, <5.393426,11.697858,-5.967886>, 0.000000  material { M_BD1 } }	// #11: * -- *
  cylinder { <-10.070474,-3.766042,-5.967886>, <5.393426,-3.766042,-5.967886>, 0.000000  material { M_BD1 } }	// #12: * -- *
  cylinder { <-10.070474,-3.766042,-5.967886>, <-10.070474,11.697858,-5.967886>, 0.000000  material { M_BD1 } }	// #13: * -- *
  cylinder { <5.393426,-3.766042,-5.967886>, <5.393426,11.697858,-5.967886>, 0.000000  material { M_BD1 } }	// #14: * -- *
  cylinder { <-10.070474,11.697858,-5.967886>, <5.393426,11.697858,-5.967886>, 0.000000  material { M_BD1 } }	// #15: * -- *

  rotate <179.60089,0.82091,-1.92722>
}

// -- Coming now: 7 polyhedra --

union {	// #1: centered at: "In"
#declare M_PD0 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <-0.53853, 2.16746, -1.24591> <-0.54007, 2.16591, 1.57183> <-0.91739, -0.50471, 0.17522> <-0.53853, 2.16746, -1.24591> }
    polygon { 4 <-0.53853, 2.16746, -1.24591> <2.13209, 2.54478, 0.15070> <-0.54007, 2.16591, 1.57183> <-0.53853, 2.16746, -1.24591> }
    polygon { 4 <-0.53853, 2.16746, -1.24591> <-0.91739, -0.50471, 0.17522> <1.64188, 0.09993, -1.36975> <-0.53853, 2.16746, -1.24591> }
    polygon { 4 <-0.53853, 2.16746, -1.24591> <1.64188, 0.09993, -1.36975> <2.13209, 2.54478, 0.15070> <-0.53853, 2.16746, -1.24591> }
    polygon { 4 <-0.54007, 2.16591, 1.57183> <1.52745, -0.01450, 1.69568> <-0.91739, -0.50471, 0.17522> <-0.54007, 2.16591, 1.57183> }
    polygon { 4 <-0.54007, 2.16591, 1.57183> <2.13209, 2.54478, 0.15070> <1.52745, -0.01450, 1.69568> <-0.54007, 2.16591, 1.57183> }
    polygon { 4 <1.64188, 0.09993, -1.36975> <-0.91739, -0.50471, 0.17522> <1.52745, -0.01450, 1.69568> <1.64188, 0.09993, -1.36975> }
    polygon { 4 <1.64188, 0.09993, -1.36975> <1.52745, -0.01450, 1.69568> <2.13209, 2.54478, 0.15070> <1.64188, 0.09993, -1.36975> }
  material { M_PD0 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #2: centered at: "In"
#declare M_PD1 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <-0.54007, -1.96604, -4.31133> <-0.53853, -1.96759, -1.49359> <2.13209, -2.34491, -2.89020> <-0.54007, -1.96604, -4.31133> }
    polygon { 4 <-0.54007, -1.96604, -4.31133> <-0.91739, 0.70457, -2.91472> <-0.53853, -1.96759, -1.49359> <-0.54007, -1.96604, -4.31133> }
    polygon { 4 <-0.54007, -1.96604, -4.31133> <2.13209, -2.34491, -2.89020> <1.52745, 0.21437, -4.43517> <-0.54007, -1.96604, -4.31133> }
    polygon { 4 <-0.54007, -1.96604, -4.31133> <1.52745, 0.21437, -4.43517> <-0.91739, 0.70457, -2.91472> <-0.54007, -1.96604, -4.31133> }
    polygon { 4 <-0.53853, -1.96759, -1.49359> <1.64188, 0.09993, -1.36975> <2.13209, -2.34491, -2.89020> <-0.53853, -1.96759, -1.49359> }
    polygon { 4 <-0.53853, -1.96759, -1.49359> <-0.91739, 0.70457, -2.91472> <1.64188, 0.09993, -1.36975> <-0.53853, -1.96759, -1.49359> }
    polygon { 4 <1.52745, 0.21437, -4.43517> <2.13209, -2.34491, -2.89020> <1.64188, 0.09993, -1.36975> <1.52745, 0.21437, -4.43517> }
    polygon { 4 <1.52745, 0.21437, -4.43517> <1.64188, 0.09993, -1.36975> <-0.91739, 0.70457, -2.91472> <1.52745, 0.21437, -4.43517> }
  material { M_PD1 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #3: centered at: "In"
#declare M_PD2 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <3.59343, -1.96759, 4.88494> <3.59497, -1.96604, 7.70268> <3.97229, 0.70457, 6.30607> <3.59343, -1.96759, 4.88494> }
    polygon { 4 <3.59343, -1.96759, 4.88494> <0.92281, -2.34491, 6.28155> <3.59497, -1.96604, 7.70268> <3.59343, -1.96759, 4.88494> }
    polygon { 4 <3.59343, -1.96759, 4.88494> <3.97229, 0.70457, 6.30607> <1.41302, 0.09993, 4.76110> <3.59343, -1.96759, 4.88494> }
    polygon { 4 <3.59343, -1.96759, 4.88494> <1.41302, 0.09993, 4.76110> <0.92281, -2.34491, 6.28155> <3.59343, -1.96759, 4.88494> }
    polygon { 4 <3.59497, -1.96604, 7.70268> <1.52745, 0.21437, 7.82653> <3.97229, 0.70457, 6.30607> <3.59497, -1.96604, 7.70268> }
    polygon { 4 <3.59497, -1.96604, 7.70268> <0.92281, -2.34491, 6.28155> <1.52745, 0.21437, 7.82653> <3.59497, -1.96604, 7.70268> }
    polygon { 4 <1.41302, 0.09993, 4.76110> <3.97229, 0.70457, 6.30607> <1.52745, 0.21437, 7.82653> <1.41302, 0.09993, 4.76110> }
    polygon { 4 <1.41302, 0.09993, 4.76110> <1.52745, 0.21437, 7.82653> <0.92281, -2.34491, 6.28155> <1.41302, 0.09993, 4.76110> }
  material { M_PD2 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #4: centered at: "In"
#declare M_PD3 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <3.59343, -1.96759, -7.37676> <3.59497, -1.96604, -4.55902> <3.97229, 0.70457, -5.95563> <3.59343, -1.96759, -7.37676> }
    polygon { 4 <3.59343, -1.96759, -7.37676> <0.92281, -2.34491, -5.98015> <3.59497, -1.96604, -4.55902> <3.59343, -1.96759, -7.37676> }
    polygon { 4 <3.59343, -1.96759, -7.37676> <3.97229, 0.70457, -5.95563> <1.41302, 0.09993, -7.50060> <3.59343, -1.96759, -7.37676> }
    polygon { 4 <3.59343, -1.96759, -7.37676> <1.41302, 0.09993, -7.50060> <0.92281, -2.34491, -5.98015> <3.59343, -1.96759, -7.37676> }
    polygon { 4 <3.59497, -1.96604, -4.55902> <1.52745, 0.21437, -4.43517> <3.97229, 0.70457, -5.95563> <3.59497, -1.96604, -4.55902> }
    polygon { 4 <3.59497, -1.96604, -4.55902> <0.92281, -2.34491, -5.98015> <1.52745, 0.21437, -4.43517> <3.59497, -1.96604, -4.55902> }
    polygon { 4 <1.41302, 0.09993, -7.50060> <3.97229, 0.70457, -5.95563> <1.52745, 0.21437, -4.43517> <1.41302, 0.09993, -7.50060> }
    polygon { 4 <1.41302, 0.09993, -7.50060> <1.52745, 0.21437, -4.43517> <0.92281, -2.34491, -5.98015> <1.41302, 0.09993, -7.50060> }
  material { M_PD3 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #5: centered at: "In"
#declare M_PD4 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <3.59497, 2.16591, 1.81952> <3.59343, 2.16746, 4.63726> <0.92281, 2.54478, 3.24065> <3.59497, 2.16591, 1.81952> }
    polygon { 4 <3.59497, 2.16591, 1.81952> <3.97229, -0.50471, 3.21613> <3.59343, 2.16746, 4.63726> <3.59497, 2.16591, 1.81952> }
    polygon { 4 <3.59497, 2.16591, 1.81952> <0.92281, 2.54478, 3.24065> <1.52745, -0.01450, 1.69568> <3.59497, 2.16591, 1.81952> }
    polygon { 4 <3.59497, 2.16591, 1.81952> <1.52745, -0.01450, 1.69568> <3.97229, -0.50471, 3.21613> <3.59497, 2.16591, 1.81952> }
    polygon { 4 <3.59343, 2.16746, 4.63726> <1.41302, 0.09993, 4.76110> <0.92281, 2.54478, 3.24065> <3.59343, 2.16746, 4.63726> }
    polygon { 4 <3.59343, 2.16746, 4.63726> <3.97229, -0.50471, 3.21613> <1.41302, 0.09993, 4.76110> <3.59343, 2.16746, 4.63726> }
    polygon { 4 <1.52745, -0.01450, 1.69568> <0.92281, 2.54478, 3.24065> <1.41302, 0.09993, 4.76110> <1.52745, -0.01450, 1.69568> }
    polygon { 4 <1.52745, -0.01450, 1.69568> <1.41302, 0.09993, 4.76110> <3.97229, -0.50471, 3.21613> <1.52745, -0.01450, 1.69568> }
  material { M_PD4 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #6: centered at: "In"
#declare M_PD5 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <-0.54007, -1.96604, 7.95037> <-0.53853, -1.96759, 10.76811> <2.13209, -2.34491, 9.37150> <-0.54007, -1.96604, 7.95037> }
    polygon { 4 <-0.54007, -1.96604, 7.95037> <-0.91739, 0.70457, 9.34698> <-0.53853, -1.96759, 10.76811> <-0.54007, -1.96604, 7.95037> }
    polygon { 4 <-0.54007, -1.96604, 7.95037> <2.13209, -2.34491, 9.37150> <1.52745, 0.21437, 7.82653> <-0.54007, -1.96604, 7.95037> }
    polygon { 4 <-0.54007, -1.96604, 7.95037> <1.52745, 0.21437, 7.82653> <-0.91739, 0.70457, 9.34698> <-0.54007, -1.96604, 7.95037> }
    polygon { 4 <-0.53853, -1.96759, 10.76811> <1.64188, 0.09993, 10.89195> <2.13209, -2.34491, 9.37150> <-0.53853, -1.96759, 10.76811> }
    polygon { 4 <-0.53853, -1.96759, 10.76811> <-0.91739, 0.70457, 9.34698> <1.64188, 0.09993, 10.89195> <-0.53853, -1.96759, 10.76811> }
    polygon { 4 <1.52745, 0.21437, 7.82653> <2.13209, -2.34491, 9.37150> <1.64188, 0.09993, 10.89195> <1.52745, 0.21437, 7.82653> }
    polygon { 4 <1.52745, 0.21437, 7.82653> <1.64188, 0.09993, 10.89195> <-0.91739, 0.70457, 9.34698> <1.52745, 0.21437, 7.82653> }
  material { M_PD5 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #7: centered at: "In"
#declare M_PD6 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <3.59497, 2.16591, -10.44218> <3.59343, 2.16746, -7.62444> <0.92281, 2.54478, -9.02105> <3.59497, 2.16591, -10.44218> }
    polygon { 4 <3.59497, 2.16591, -10.44218> <3.97229, -0.50471, -9.04557> <3.59343, 2.16746, -7.62444> <3.59497, 2.16591, -10.44218> }
    polygon { 4 <3.59497, 2.16591, -10.44218> <0.92281, 2.54478, -9.02105> <1.52745, -0.01450, -10.56602> <3.59497, 2.16591, -10.44218> }
    polygon { 4 <3.59497, 2.16591, -10.44218> <1.52745, -0.01450, -10.56602> <3.97229, -0.50471, -9.04557> <3.59497, 2.16591, -10.44218> }
    polygon { 4 <3.59343, 2.16746, -7.62444> <1.41302, 0.09993, -7.50060> <0.92281, 2.54478, -9.02105> <3.59343, 2.16746, -7.62444> }
    polygon { 4 <3.59343, 2.16746, -7.62444> <3.97229, -0.50471, -9.04557> <1.41302, 0.09993, -7.50060> <3.59343, 2.16746, -7.62444> }
    polygon { 4 <1.52745, -0.01450, -10.56602> <0.92281, 2.54478, -9.02105> <1.41302, 0.09993, -7.50060> <1.52745, -0.01450, -10.56602> }
    polygon { 4 <1.52745, -0.01450, -10.56602> <1.41302, 0.09993, -7.50060> <3.97229, -0.50471, -9.04557> <1.52745, -0.01450, -10.56602> }
  material { M_PD6 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
