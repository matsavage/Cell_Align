// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3.5
// Desc: Created by Diamond Crystal and Molecular Structure Visualization
//       Version 4.2.2
//       (c) 1997-2016 Crystal Impact GbR, Bonn, Germany.
//       www.crystalimpact.com
//       Author: Dr. Klaus Brandenburg
// Date: Monday, September 12, 2016 11:57:04
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
  y, -10.8197
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

// -- Coming now: 426 atoms --

union {
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.89793,-2.89794,-0.00000> }	// #5: "In"
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-4.83402,4.83401,6.13085> }	// #6: "In" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-4.83402,4.83401,-6.13085> }	// #7: "In" (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.89793,-4.83402,-3.06543> }	// #8: "In" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-4.83402,2.89793,3.06542> }	// #9: "In" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-2.89794,2.89793,-0.00000> }	// #10: "In" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <4.83401,-4.83402,6.13085> }	// #11: "In" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <4.83401,-4.83402,-6.13085> }	// #12: "In" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-2.89794,4.83401,-3.06543> }	// #13: "In" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <4.83401,-2.89794,3.06542> }	// #14: "In" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.98041,-3.86598,-1.53271> }	// #15: "O1"
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.75154,3.86597,4.59814> }	// #16: "O1" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.86597,-3.75154,-4.59814> }	// #17: "O1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.86598,3.98041,1.53271> }	// #18: "O1" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.98041,3.86597,-1.53271> }	// #19: "O1" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.75154,-3.86598,4.59814> }	// #20: "O1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.86598,3.75154,-4.59814> }	// #21: "O1" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.86597,-3.98041,1.53271> }	// #22: "O1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.80000,-1.79845,-1.40887> }	// #23: "O2"
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93195,5.93350,4.72198> }	// #24: "O2" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.79845,-5.93195,-4.47429> }	// #25: "O2" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93350,1.80000,1.65655> }	// #26: "O2" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.80000,1.79845,-1.40887> }	// #27: "O2" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93195,-5.93350,4.72198> }	// #28: "O2" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.79845,5.93195,-4.47429> }	// #29: "O2" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93350,-1.80000,1.65655> }	// #30: "O2" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.80000,-5.93350,-1.65656> }	// #31: "O2" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93195,1.79845,4.47429> }	// #32: "O2" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.80000,5.93350,-1.65656> }	// #33: "O2" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93195,-1.79845,4.47429> }	// #34: "O2" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.79845,1.80000,1.40887> }	// #35: "O2" (y, x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93350,-5.93195,-4.72198> }	// #36: "O2" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.79845,-1.80000,1.40887> }	// #37: "O2" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93350,5.93195,-4.72198> }	// #38: "O2" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.42113,-3.26134,-3.07769> }	// #39: "O3"
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.31082,4.47061,3.05316> }	// #40: "O3" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.26134,-6.31082,6.11859> }	// #41: "O3" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.26134,-6.31082,-6.14311> }	// #42: "O3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.47061,1.42113,-0.01226> }	// #43: "O3" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.42113,3.26134,-3.07769> }	// #44: "O3" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <6.31082,-4.47061,3.05316> }	// #45: "O3" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.26134,6.31082,6.11859> }	// #46: "O3" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.26134,6.31082,-6.14311> }	// #47: "O3" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <4.47061,-1.42113,-0.01226> }	// #48: "O3" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.42113,-4.47061,0.01226> }	// #49: "O3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.31082,3.26134,6.14311> }	// #50: "O3" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.31082,3.26134,-6.11859> }	// #51: "O3" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.42113,4.47061,0.01226> }	// #52: "O3" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <6.31082,-3.26134,6.14311> }	// #53: "O3" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <6.31082,-3.26134,-6.11859> }	// #54: "O3" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.26134,1.42113,3.07769> }	// #55: "O3" (y, x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <4.47061,-6.31082,-3.05316> }	// #56: "O3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.26134,-1.42113,3.07769> }	// #57: "O3" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.47061,6.31082,-3.05316> }	// #58: "O3" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.30051,-2.11082,-2.53940> }	// #59: "C1"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.43144,5.62113,3.59145> }	// #60: "C1" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.11082,-6.43144,-5.60482> }	// #61: "C1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.62113,1.30051,0.52603> }	// #62: "C1" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.30052,2.11082,-2.53940> }	// #63: "C1" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.43143,-5.62113,3.59145> }	// #64: "C1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.11082,6.43143,-5.60482> }	// #65: "C1" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.62113,-1.30052,0.52603> }	// #66: "C1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.30051,-5.62113,-0.52603> }	// #67: "C1" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.43144,2.11082,5.60482> }	// #68: "C1" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.30052,5.62113,-0.52603> }	// #69: "C1" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.43143,-2.11082,5.60482> }	// #70: "C1" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.11082,1.30051,2.53940> }	// #71: "C1" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.62113,-6.43144,-3.59145> }	// #72: "C1" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.11082,-1.30052,2.53940> }	// #73: "C1" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.62113,6.43143,-3.59145> }	// #74: "C1" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,-1.08773,-3.26407> }	// #75: "C2"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,6.64422,2.86678> }	// #76: "C2" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,-7.19025,5.93221> }	// #77: "C2" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,0.54170,-0.19864> }	// #78: "C2" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54170,1.08773,-3.26407> }	// #79: "C2" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19025,-6.64422,2.86678> }	// #80: "C2" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08773,7.19025,5.93221> }	// #81: "C2" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64422,-0.54170,-0.19864> }	// #82: "C2" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,-6.64422,0.19864> }	// #83: "C2" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,1.08773,-5.93221> }	// #84: "C2" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54170,6.64422,0.19864> }	// #85: "C2" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19025,-1.08773,-5.93221> }	// #86: "C2" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08773,0.54170,3.26406> }	// #87: "C2" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64422,-7.19025,-2.86679> }	// #88: "C2" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,-0.54170,3.26406> }	// #89: "C2" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,7.19025,-2.86679> }	// #90: "C2" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-0.00000,-2.56270> }	// #91: "C3"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,-7.73195,3.56815> }	// #92: "C3" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,-7.73195,3.56815> }	// #93: "C3" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,7.73195,3.56815> }	// #94: "C3" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,7.73195,3.56815> }	// #95: "C3" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-7.73195,-5.62812> }	// #96: "C3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,7.73195,-5.62812> }	// #97: "C3" (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,-0.00000,0.50273> }	// #98: "C3" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,-0.00000,0.50273> }	// #99: "C3" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-7.73195,-0.50273> }	// #100: "C3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,7.73195,-0.50273> }	// #101: "C3" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,-0.00000,5.62812> }	// #102: "C3" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,-0.00000,5.62812> }	// #103: "C3" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-0.00000,2.56269> }	// #104: "C3" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,-7.73195,-3.56816> }	// #105: "C3" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,-7.73195,-3.56816> }	// #106: "C3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,7.73195,-3.56816> }	// #107: "C3" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,7.73195,-3.56816> }	// #108: "C3" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,-1.08773,-4.66680> }	// #109: "C4"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,6.64422,1.46405> }	// #110: "C4" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,-7.19025,4.52947> }	// #111: "C4" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,0.54170,-1.60138> }	// #112: "C4" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54170,1.08773,-4.66680> }	// #113: "C4" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19025,-6.64422,1.46405> }	// #114: "C4" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08773,7.19025,4.52947> }	// #115: "C4" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64422,-0.54170,-1.60138> }	// #116: "C4" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,-6.64422,1.60138> }	// #117: "C4" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,1.08773,-4.52947> }	// #118: "C4" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54170,6.64422,1.60138> }	// #119: "C4" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19025,-1.08773,-4.52947> }	// #120: "C4" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08773,0.54170,4.66680> }	// #121: "C4" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64422,-7.19025,-1.46405> }	// #122: "C4" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,-0.54170,4.66680> }	// #123: "C4" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,7.19025,-1.46405> }	// #124: "C4" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-0.00000,-5.36854> }	// #125: "C5"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,-7.73195,0.76231> }	// #126: "C5" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,-7.73195,0.76231> }	// #127: "C5" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,7.73195,0.76231> }	// #128: "C5" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,7.73195,0.76231> }	// #129: "C5" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-7.73195,3.82773> }	// #130: "C5" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,7.73195,3.82773> }	// #131: "C5" (1-y, 1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,-0.00000,-2.30312> }	// #132: "C5" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,-0.00000,-2.30312> }	// #133: "C5" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-7.73195,2.30311> }	// #134: "C5" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,7.73195,2.30311> }	// #135: "C5" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,-0.00000,-3.82774> }	// #136: "C5" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,-0.00000,-3.82774> }	// #137: "C5" (1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-0.00000,5.36854> }	// #138: "C5" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,-7.73195,-0.76231> }	// #139: "C5" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,-7.73195,-0.76231> }	// #140: "C5" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,7.73195,-0.76231> }	// #141: "C5" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,7.73195,-0.76231> }	// #142: "C5" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.92989,-3.86598,-1.53271> }	// #143: "H1"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.80206,3.86597,4.59814> }	// #144: "H1" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.86597,-2.80206,-4.59814> }	// #145: "H1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.86598,4.92989,1.53271> }	// #146: "H1" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.92989,3.86597,-1.53271> }	// #147: "H1" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.80206,-3.86598,4.59814> }	// #148: "H1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.86598,2.80206,-4.59814> }	// #149: "H1" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.86597,-4.92989,1.53271> }	// #150: "H1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,-0.00000,-1.51187> }	// #151: "H3"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,-7.73195,4.61898> }	// #152: "H3" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,-7.73195,4.61898> }	// #153: "H3" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,7.73195,4.61898> }	// #154: "H3" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,7.73195,4.61898> }	// #155: "H3" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,-7.73195,-4.57729> }	// #156: "H3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,7.73195,-4.57729> }	// #157: "H3" (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,-0.00000,1.55356> }	// #158: "H3" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,-0.00000,1.55356> }	// #159: "H3" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,-7.73195,-1.55356> }	// #160: "H3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,7.73195,-1.55356> }	// #161: "H3" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,-0.00000,4.57729> }	// #162: "H3" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,-0.00000,4.57729> }	// #163: "H3" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,-0.00000,1.51187> }	// #164: "H3" (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,-7.73195,-4.61898> }	// #165: "H3" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,-7.73195,-4.61898> }	// #166: "H3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,7.73195,-4.61898> }	// #167: "H3" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,7.73195,-4.61898> }	// #168: "H3" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.94639,-1.90206,-5.19160> }	// #169: "H4"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.78556,5.82989,0.93925> }	// #170: "H4" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.90206,-6.78556,4.00467> }	// #171: "H4" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.82989,0.94639,-2.12618> }	// #172: "H4" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.94639,1.90206,-5.19160> }	// #173: "H4" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.78556,-5.82989,0.93925> }	// #174: "H4" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.90206,6.78556,4.00467> }	// #175: "H4" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <5.82989,-0.94639,-2.12618> }	// #176: "H4" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.94639,-5.82989,2.12618> }	// #177: "H4" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.78556,1.90206,-4.00467> }	// #178: "H4" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.94639,5.82989,2.12618> }	// #179: "H4" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.78556,-1.90206,-4.00467> }	// #180: "H4" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.90206,0.94639,5.19160> }	// #181: "H4" (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <5.82989,-6.78556,-0.93925> }	// #182: "H4" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.90206,-0.94639,5.19160> }	// #183: "H4" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.82989,6.78556,-0.93925> }	// #184: "H4" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.45773,-3.67422,3.87592> }	// #185: "C1_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.27422,4.05773,-2.25493> }	// #186: "C1_1" [0.449(2) C] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.67422,-7.27422,0.81050> }	// #187: "C1_1" [0.449(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.05773,0.45773,-5.32035> }	// #188: "C1_1" [0.449(2) C] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.45773,3.67422,3.87592> }	// #189: "C1_1" [0.449(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.27422,-4.05773,-2.25493> }	// #190: "C1_1" [0.449(2) C] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.67422,7.27422,0.81050> }	// #191: "C1_1" [0.449(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.05773,-0.45773,-5.32035> }	// #192: "C1_1" [0.449(2) C] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.45773,-4.05773,5.32035> }	// #193: "C1_1" [0.449(2) C] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.27422,3.67422,-0.81050> }	// #194: "C1_1" [0.449(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.45773,4.05773,5.32035> }	// #195: "C1_1" [0.449(2) C] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.27422,-3.67422,-0.81050> }	// #196: "C1_1" [0.449(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.67422,0.45773,-3.87592> }	// #197: "C1_1" [0.449(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.05773,-7.27422,2.25493> }	// #198: "C1_1" [0.449(2) C] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.67422,-0.45773,-3.87592> }	// #199: "C1_1" [0.449(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.05773,7.27422,2.25493> }	// #200: "C1_1" [0.449(2) C] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.11134,-3.87989,5.12662> }	// #201: "C2_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.62061,3.85206,-1.00423> }	// #202: "C2_1" [0.449(2) C] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.84329,3.85206,-1.00423> }	// #203: "C2_1" [0.449(2) C] (1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87989,-7.62061,2.06119> }	// #204: "C2_1" [0.449(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87989,7.84329,2.06119> }	// #205: "C2_1" [0.449(2) C] (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.85206,0.11134,-4.06966> }	// #206: "C2_1" [0.449(2) C] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.11134,3.87989,5.12662> }	// #207: "C2_1" [0.449(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.84329,-3.85206,-1.00423> }	// #208: "C2_1" [0.449(2) C] (1/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.62061,-3.85206,-1.00423> }	// #209: "C2_1" [0.449(2) C] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.87989,-7.84329,2.06119> }	// #210: "C2_1" [0.449(2) C] (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.87989,7.62061,2.06119> }	// #211: "C2_1" [0.449(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.85206,-0.11134,-4.06966> }	// #212: "C2_1" [0.449(2) C] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.11134,-3.85206,4.06966> }	// #213: "C2_1" [0.449(2) C] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.62061,3.87989,-2.06119> }	// #214: "C2_1" [0.449(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.84329,3.87989,-2.06119> }	// #215: "C2_1" [0.449(2) C] (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.11134,3.85206,4.06966> }	// #216: "C2_1" [0.449(2) C] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.84329,-3.87989,-2.06119> }	// #217: "C2_1" [0.449(2) C] (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.62061,-3.87989,-2.06119> }	// #218: "C2_1" [0.449(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.87989,0.11134,-5.12662> }	// #219: "C2_1" [0.449(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.85206,-7.62061,1.00423> }	// #220: "C2_1" [0.449(2) C] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.85206,7.84329,1.00423> }	// #221: "C2_1" [0.449(2) C] (1/2+y, 1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87989,-0.11134,-5.12662> }	// #222: "C2_1" [0.449(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.85206,-7.84329,1.00423> }	// #223: "C2_1" [0.449(2) C] (1/2-y, 1/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.85206,7.62061,1.00423> }	// #224: "C2_1" [0.449(2) C] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.74072,-3.50876,2.85575> }	// #225: "D1_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.99123,4.22319,-3.27510> }	// #226: "D1_1" [0.449(2) D] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50876,-6.99123,-0.20968> }	// #227: "D1_1" [0.449(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22319,0.74072,5.92117> }	// #228: "D1_1" [0.449(2) D] (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.74072,3.50876,2.85575> }	// #229: "D1_1" [0.449(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.99123,-4.22319,-3.27510> }	// #230: "D1_1" [0.449(2) D] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.50876,6.99123,-0.20968> }	// #231: "D1_1" [0.449(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.22319,-0.74072,5.92117> }	// #232: "D1_1" [0.449(2) D] (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.74072,-4.22319,-5.92118> }	// #233: "D1_1" [0.449(2) D] (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.99123,3.50876,0.20967> }	// #234: "D1_1" [0.449(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.74072,4.22319,-5.92118> }	// #235: "D1_1" [0.449(2) D] (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.99123,-3.50876,0.20967> }	// #236: "D1_1" [0.449(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.50876,0.74072,-2.85575> }	// #237: "D1_1" [0.449(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.22319,-6.99123,3.27510> }	// #238: "D1_1" [0.449(2) D] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50876,-0.74072,-2.85575> }	// #239: "D1_1" [0.449(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22319,6.99123,3.27510> }	// #240: "D1_1" [0.449(2) D] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.17165,-4.04536,6.14556> }	// #241: "D2_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.17165,-4.04536,-6.11614> }	// #242: "D2_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.56030,3.68659,0.01471> }	// #243: "D2_1" [0.449(2) D] (1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.04536,7.56030,3.08014> }	// #244: "D2_1" [0.449(2) D] (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.68659,-0.17165,-3.05071> }	// #245: "D2_1" [0.449(2) D] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.17165,4.04536,6.14556> }	// #246: "D2_1" [0.449(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.17165,4.04536,-6.11614> }	// #247: "D2_1" [0.449(2) D] (1-x, 1-y, 1+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.56030,-3.68659,0.01471> }	// #248: "D2_1" [0.449(2) D] (1/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.04536,-7.56030,3.08014> }	// #249: "D2_1" [0.449(2) D] (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.68659,0.17165,-3.05071> }	// #250: "D2_1" [0.449(2) D] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.17165,-3.68659,3.05071> }	// #251: "D2_1" [0.449(2) D] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.56030,4.04536,-3.08014> }	// #252: "D2_1" [0.449(2) D] (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.17165,3.68659,3.05071> }	// #253: "D2_1" [0.449(2) D] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.56030,-4.04536,-3.08014> }	// #254: "D2_1" [0.449(2) D] (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.04536,-0.17165,6.11613> }	// #255: "D2_1" [0.449(2) D] (y, x, -z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.04536,-0.17165,-6.14556> }	// #256: "D2_1" [0.449(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.68659,7.56030,-0.01472> }	// #257: "D2_1" [0.449(2) D] (1/2+y, 1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.04536,0.17165,6.11613> }	// #258: "D2_1" [0.449(2) D] (1-y, 1-x, -z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.04536,0.17165,-6.14556> }	// #259: "D2_1" [0.449(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.68659,-7.56030,-0.01472> }	// #260: "D2_1" [0.449(2) D] (1/2-y, 1/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.56082,1.81546,-0.42426> }	// #261: "C1_2" [0.213(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.17113,-5.91649,5.70659> }	// #262: "C1_2" [0.213(2) C] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.81546,-5.17113,-3.48968> }	// #263: "C1_2" [0.213(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.91649,2.56082,2.64117> }	// #264: "C1_2" [0.213(2) C] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.56082,-1.81546,-0.42426> }	// #265: "C1_2" [0.213(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.17113,5.91649,5.70659> }	// #266: "C1_2" [0.213(2) C] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.81546,5.17113,-3.48968> }	// #267: "C1_2" [0.213(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.91649,-2.56082,2.64117> }	// #268: "C1_2" [0.213(2) C] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.56082,5.91649,-2.64117> }	// #269: "C1_2" [0.213(2) C] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.17113,-1.81546,3.48968> }	// #270: "C1_2" [0.213(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.56082,-5.91649,-2.64117> }	// #271: "C1_2" [0.213(2) C] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.17113,1.81546,3.48968> }	// #272: "C1_2" [0.213(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.81546,2.56082,0.42425> }	// #273: "C1_2" [0.213(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.91649,-5.17113,-5.70660> }	// #274: "C1_2" [0.213(2) C] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.81546,-2.56082,0.42425> }	// #275: "C1_2" [0.213(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.91649,5.17113,-5.70660> }	// #276: "C1_2" [0.213(2) C] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.40412,2.40927,-0.23420> }	// #277: "C2_2" [0.213(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.32783,-5.32268,5.89665> }	// #278: "C2_2" [0.213(2) C] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.40928,-6.32783,-3.29962> }	// #279: "C2_2" [0.213(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.32267,1.40412,2.83123> }	// #280: "C2_2" [0.213(2) C] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.40412,-2.40928,-0.23420> }	// #281: "C2_2" [0.213(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.32783,5.32267,5.89665> }	// #282: "C2_2" [0.213(2) C] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.40927,6.32783,-3.29962> }	// #283: "C2_2" [0.213(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.32268,-1.40412,2.83123> }	// #284: "C2_2" [0.213(2) C] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.40412,5.32267,-2.83123> }	// #285: "C2_2" [0.213(2) C] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.32783,-2.40928,3.29962> }	// #286: "C2_2" [0.213(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.40412,-5.32268,-2.83123> }	// #287: "C2_2" [0.213(2) C] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.32783,2.40927,3.29962> }	// #288: "C2_2" [0.213(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.40927,1.40412,0.23420> }	// #289: "C2_2" [0.213(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.32268,-6.32783,-5.89665> }	// #290: "C2_2" [0.213(2) C] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.40928,-1.40412,0.23420> }	// #291: "C2_2" [0.213(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.32267,6.32783,-5.89665> }	// #292: "C2_2" [0.213(2) C] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50257,1.33144,-0.57998> }	// #293: "D1_2" [0.213(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22938,-6.40051,5.55087> }	// #294: "D1_2" [0.213(2) D] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.33144,-4.22938,-3.64540> }	// #295: "D1_2" [0.213(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.40051,3.50257,2.48545> }	// #296: "D1_2" [0.213(2) D] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.50257,-1.33144,-0.57998> }	// #297: "D1_2" [0.213(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.22938,6.40051,5.55087> }	// #298: "D1_2" [0.213(2) D] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.33144,4.22938,-3.64540> }	// #299: "D1_2" [0.213(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.40051,-3.50257,2.48545> }	// #300: "D1_2" [0.213(2) D] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50257,6.40051,-2.48545> }	// #301: "D1_2" [0.213(2) D] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22938,-1.33144,3.64540> }	// #302: "D1_2" [0.213(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.50257,-6.40051,-2.48545> }	// #303: "D1_2" [0.213(2) D] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.22938,1.33144,3.64540> }	// #304: "D1_2" [0.213(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.33144,3.50257,0.57998> }	// #305: "D1_2" [0.213(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.40051,-4.22938,-5.55087> }	// #306: "D1_2" [0.213(2) D] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.33144,-3.50257,0.57998> }	// #307: "D1_2" [0.213(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.40051,4.22938,-5.55087> }	// #308: "D1_2" [0.213(2) D] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.46082,2.89175,-0.07970> }	// #309: "D2_2" [0.213(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.27113,-4.84020,6.05115> }	// #310: "D2_2" [0.213(2) D] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.27113,-4.84020,-6.21055> }	// #311: "D2_2" [0.213(2) D] (-1/2+x, -1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.89175,-7.27113,-3.14513> }	// #312: "D2_2" [0.213(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.84020,0.46082,2.98572> }	// #313: "D2_2" [0.213(2) D] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.46082,-2.89175,-0.07970> }	// #314: "D2_2" [0.213(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.27112,4.84020,6.05115> }	// #315: "D2_2" [0.213(2) D] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.27112,4.84020,-6.21055> }	// #316: "D2_2" [0.213(2) D] (3/2-x, 3/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.89175,7.27112,-3.14513> }	// #317: "D2_2" [0.213(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.84020,-0.46082,2.98572> }	// #318: "D2_2" [0.213(2) D] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.46082,4.84020,-2.98572> }	// #319: "D2_2" [0.213(2) D] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.27113,-2.89175,3.14513> }	// #320: "D2_2" [0.213(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.46082,-4.84020,-2.98572> }	// #321: "D2_2" [0.213(2) D] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.27112,2.89175,3.14513> }	// #322: "D2_2" [0.213(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.89175,0.46082,0.07970> }	// #323: "D2_2" [0.213(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.84020,-7.27113,6.21055> }	// #324: "D2_2" [0.213(2) D] (-1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.84020,-7.27113,-6.05115> }	// #325: "D2_2" [0.213(2) D] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.89175,-0.46082,0.07970> }	// #326: "D2_2" [0.213(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.84020,7.27112,6.21055> }	// #327: "D2_2" [0.213(2) D] (3/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.84020,7.27112,-6.05115> }	// #328: "D2_2" [0.213(2) D] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-2.89794,4.83401,9.19627> }	// #337: "In" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.86598,3.75154,7.66356> }	// #338: "O1" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93350,5.93195,7.53972> }	// #339: "O2" (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-4.83402,2.89793,-9.19628> }	// #340: "In" (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.75154,3.86597,-7.66356> }	// #341: "O1" (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93195,5.93350,-7.53972> }	// #342: "O2" (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.89793,-4.83402,9.19627> }	// #343: "In" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.86597,-3.75154,7.66356> }	// #344: "O1" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93350,-5.93195,7.53972> }	// #345: "O2" (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <4.83401,-2.89794,-9.19628> }	// #346: "In" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.75154,-3.86598,-7.66356> }	// #347: "O1" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93195,-5.93350,-7.53972> }	// #348: "O2" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.11082,-6.43144,6.65688> }	// #349: "C1" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.11082,6.43143,6.65688> }	// #350: "C1" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.43144,2.11082,-6.65688> }	// #351: "C1" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.43143,-2.11082,-6.65688> }	// #352: "C1" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,-7.19025,-6.32949> }	// #353: "C2" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08773,7.19025,-6.32949> }	// #354: "C2" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,1.08773,6.32949> }	// #355: "C2" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19025,-1.08773,6.32949> }	// #356: "C2" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-7.73195,6.63358> }	// #357: "C3" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,7.73195,6.63358> }	// #358: "C3" (1-y, 1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.73195,-0.00000,-6.63358> }	// #359: "C3" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.73195,-0.00000,-6.63358> }	// #360: "C3" (1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,-8.81968,2.86678> }	// #361: "C2" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.27365,-6.64422,2.86678> }	// #362: "C2" (1/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.27365,-8.81968,2.86678> }	// #363: "C2" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.27365,8.81968,2.86678> }	// #364: "C2" (1/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.27365,6.64422,2.86678> }	// #365: "C2" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19025,8.81968,2.86678> }	// #366: "C2" (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08773,-8.27365,-6.32949> }	// #367: "C2" (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,8.27365,-6.32949> }	// #368: "C2" (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.81968,-0.54170,-0.19864> }	// #369: "C2" (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.81968,0.54170,-0.19864> }	// #370: "C2" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54170,-8.81968,0.19864> }	// #371: "C2" (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,8.81968,0.19864> }	// #372: "C2" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.27365,-1.08773,6.32949> }	// #373: "C2" (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.27365,1.08773,6.32949> }	// #374: "C2" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.81968,-7.19025,-2.86679> }	// #375: "C2" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,-8.27365,-2.86679> }	// #376: "C2" (1/2-y, 1/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.81968,-8.27365,-2.86679> }	// #377: "C2" (3/2-y, 1/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.81968,8.27365,-2.86679> }	// #378: "C2" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64422,8.27365,-2.86679> }	// #379: "C2" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.81968,7.19025,-2.86679> }	// #380: "C2" (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-0.00000,-6.89316> }	// #381: "C5" (y, x, 2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,-8.81968,1.46405> }	// #382: "C4" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.27365,-6.64422,1.46405> }	// #383: "C4" (1/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.27365,-8.81968,1.46405> }	// #384: "C4" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.27365,8.81968,1.46405> }	// #385: "C4" (1/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.27365,6.64422,1.46405> }	// #386: "C4" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19025,8.81968,1.46405> }	// #387: "C4" (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08773,-8.27365,4.52947> }	// #388: "C4" (y, 1/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,8.27365,4.52947> }	// #389: "C4" (1-y, 1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.81968,-0.54170,-1.60138> }	// #390: "C4" (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.81968,0.54170,-1.60138> }	// #391: "C4" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54170,-8.81968,1.60138> }	// #392: "C4" (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,8.81968,1.60138> }	// #393: "C4" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.27365,-1.08773,-4.52947> }	// #394: "C4" (1/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.27365,1.08773,-4.52947> }	// #395: "C4" (1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.00000,-0.00000,6.89316> }	// #396: "C5"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.81968,-7.19025,-1.46405> }	// #397: "C4" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,-8.27365,-1.46405> }	// #398: "C4" (1/2-y, 1/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.81968,-8.27365,-1.46405> }	// #399: "C4" (3/2-y, 1/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.81968,8.27365,-1.46405> }	// #400: "C4" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64422,8.27365,-1.46405> }	// #401: "C4" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.81968,7.19025,-1.46405> }	// #402: "C4" (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.90360,4.04536,-3.08014> }	// #403: "D2_1" [0.449(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.68659,-7.90360,-0.01472> }	// #404: "D2_1" [0.449(2) D] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22319,0.74072,-6.34053> }	// #405: "D1_1" [0.449(2) D] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.90360,-4.04536,-3.08014> }	// #406: "D2_1" [0.449(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.68659,7.90360,-0.01472> }	// #407: "D2_1" [0.449(2) D] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.22319,-0.74072,-6.34053> }	// #408: "D1_1" [0.449(2) D] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.74072,-4.22319,6.34052> }	// #409: "D1_1" [0.449(2) D] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.90360,3.68659,0.01471> }	// #410: "D2_1" [0.449(2) D] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.74072,4.22319,6.34052> }	// #411: "D1_1" [0.449(2) D] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.90360,-3.68659,0.01471> }	// #412: "D2_1" [0.449(2) D] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.04536,-7.90360,3.08014> }	// #413: "D2_1" [0.449(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.04536,7.90360,3.08014> }	// #414: "D2_1" [0.449(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.18968,4.05773,-2.25493> }	// #415: "C1_1" [0.449(2) C] (1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.67422,8.18968,0.81050> }	// #416: "C1_1" [0.449(2) C] (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.18968,-4.05773,-2.25493> }	// #417: "C1_1" [0.449(2) C] (1/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.67422,-8.18968,0.81050> }	// #418: "C1_1" [0.449(2) C] (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.18968,3.67422,-0.81050> }	// #419: "C1_1" [0.449(2) C] (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.18968,-3.67422,-0.81050> }	// #420: "C1_1" [0.449(2) C] (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.05773,8.18968,2.25493> }	// #421: "C1_1" [0.449(2) C] (1/2+y, 1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.05773,-8.18968,2.25493> }	// #422: "C1_1" [0.449(2) C] (1/2-y, 1/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.05773,0.45773,6.94135> }	// #423: "C1_1" [0.449(2) C] (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.05773,-0.45773,6.94135> }	// #424: "C1_1" [0.449(2) C] (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.45773,-4.05773,-6.94135> }	// #425: "C1_1" [0.449(2) C] (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.45773,4.05773,-6.94135> }	// #426: "C1_1" [0.449(2) C] (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.11134,-3.87989,-7.13508> }	// #427: "C2_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.11134,3.87989,-7.13508> }	// #428: "C2_1" [0.449(2) C] (1-x, 1-y, 1+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.87989,0.11134,7.13508> }	// #429: "C2_1" [0.449(2) C] (y, x, -z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87989,-0.11134,7.13508> }	// #430: "C2_1" [0.449(2) C] (1-y, 1-x, -z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.91649,-5.17113,6.55510> }	// #431: "C1_2" [0.213(2) C] (-1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.91649,5.17113,6.55510> }	// #432: "C1_2" [0.213(2) C] (3/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.17113,-5.91649,-6.55511> }	// #433: "C1_2" [0.213(2) C] (-1/2+x, -1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.17113,5.91649,-6.55511> }	// #434: "C1_2" [0.213(2) C] (3/2-x, 3/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.32268,-6.32783,6.36505> }	// #435: "C2_2" [0.213(2) C] (-1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.32267,6.32783,6.36505> }	// #436: "C2_2" [0.213(2) C] (3/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.32783,-5.32268,-6.36505> }	// #437: "C2_2" [0.213(2) C] (-1/2+x, -1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.32783,5.32267,-6.36505> }	// #438: "C2_2" [0.213(2) C] (3/2-x, 3/2-y, 1/2+z)

  rotate <0.00000,-0.00000,0.00000>
}

// -- Coming now: 464 bonds --


union {
  cylinder { <2.897934,-2.897936,-0.000001>, <2.897935,-4.834016,-3.065426>, 0.050000  material { M_BD2 } }	// #16: "In" -- "In"
  cylinder { <2.897934,-2.897936,-0.000001>, <4.834014,-2.897935,3.065424>, 0.050000  material { M_BD2 } }	// #17: "In" -- "In"
  cylinder { <2.897934,-2.897936,-0.000001>, <3.980407,-3.865976,-1.532713>, 0.050000  material { M_BD2 } }	// #18: "In" -- "O1"
  cylinder { <2.897934,-2.897936,-0.000001>, <3.865974,-3.980409,1.532712>, 0.050000  material { M_BD2 } }	// #19: "In" -- "O1"
  cylinder { <2.897934,-2.897936,-0.000001>, <1.799997,-1.798452,-1.408870>, 0.050000  material { M_BD2 } }	// #20: "In" -- "O2"
  cylinder { <2.897934,-2.897936,-0.000001>, <1.798450,-1.799999,1.408868>, 0.050000  material { M_BD2 } }	// #21: "In" -- "O2"
  cylinder { <2.897934,-2.897936,-0.000001>, <4.470613,-1.421133,-0.012262>, 0.050000  material { M_BD2 } }	// #22: "In" -- "O3"
  cylinder { <2.897934,-2.897936,-0.000001>, <1.421131,-4.470614,0.012260>, 0.050000  material { M_BD2 } }	// #23: "In" -- "O3"
  cylinder { <-4.834016,4.834014,6.130849>, <-4.834016,2.897934,3.065424>, 0.050000  material { M_BD2 } }	// #24: "In" -- "In"
  cylinder { <-4.834016,4.834014,6.130849>, <-2.897936,4.834014,9.196274>, 0.050000  material { M_BD2 } }	// #25: "In" -- "In"
  cylinder { <-4.834016,4.834014,6.130849>, <-3.751542,3.865974,4.598136>, 0.050000  material { M_BD2 } }	// #26: "In" -- "O1"
  cylinder { <-4.834016,4.834014,6.130849>, <-3.865976,3.751541,7.663561>, 0.050000  material { M_BD2 } }	// #27: "In" -- "O1"
  cylinder { <-4.834016,4.834014,6.130849>, <-5.931952,5.933497,4.721980>, 0.050000  material { M_BD2 } }	// #28: "In" -- "O2"
  cylinder { <-4.834016,4.834014,6.130849>, <-5.933499,5.931951,7.539718>, 0.050000  material { M_BD2 } }	// #29: "In" -- "O2"
  cylinder { <-4.834016,4.834014,6.130849>, <-3.261337,6.310817,6.118588>, 0.050000  material { M_BD2 } }	// #30: "In" -- "O3"
  cylinder { <-4.834016,4.834014,6.130849>, <-6.310819,3.261335,6.143110>, 0.050000  material { M_BD2 } }	// #31: "In" -- "O3"
  cylinder { <-4.834016,4.834014,-6.130851>, <-4.834016,2.897934,-9.196276>, 0.050000  material { M_BD2 } }	// #32: "In" -- "In"
  cylinder { <-4.834016,4.834014,-6.130851>, <-2.897936,4.834014,-3.065426>, 0.050000  material { M_BD2 } }	// #33: "In" -- "In"
  cylinder { <-4.834016,4.834014,-6.130851>, <-3.751542,3.865974,-7.663564>, 0.050000  material { M_BD2 } }	// #34: "In" -- "O1"
  cylinder { <-4.834016,4.834014,-6.130851>, <-3.865976,3.751541,-4.598138>, 0.050000  material { M_BD2 } }	// #35: "In" -- "O1"
  cylinder { <-4.834016,4.834014,-6.130851>, <-5.931953,5.933497,-7.539720>, 0.050000  material { M_BD2 } }	// #36: "In" -- "O2"
  cylinder { <-4.834016,4.834014,-6.130851>, <-5.933499,5.931951,-4.721982>, 0.050000  material { M_BD2 } }	// #37: "In" -- "O2"
  cylinder { <-4.834016,4.834014,-6.130851>, <-3.261337,6.310817,-6.143111>, 0.050000  material { M_BD2 } }	// #38: "In" -- "O3"
  cylinder { <-4.834016,4.834014,-6.130851>, <-6.310819,3.261335,-6.118589>, 0.050000  material { M_BD2 } }	// #39: "In" -- "O3"
  cylinder { <2.897935,-4.834016,-3.065426>, <4.834014,-4.834016,-6.130851>, 0.050000  material { M_BD2 } }	// #40: "In" -- "In"
  cylinder { <2.897935,-4.834016,-3.065426>, <3.980407,-3.865976,-1.532713>, 0.050000  material { M_BD2 } }	// #41: "In" -- "O1"
  cylinder { <2.897935,-4.834016,-3.065426>, <3.865974,-3.751542,-4.598138>, 0.050000  material { M_BD2 } }	// #42: "In" -- "O1"
  cylinder { <2.897935,-4.834016,-3.065426>, <1.798450,-5.931952,-4.474295>, 0.050000  material { M_BD2 } }	// #43: "In" -- "O2"
  cylinder { <2.897935,-4.834016,-3.065426>, <1.799997,-5.933499,-1.656557>, 0.050000  material { M_BD2 } }	// #44: "In" -- "O2"
  cylinder { <2.897935,-4.834016,-3.065426>, <1.421131,-3.261337,-3.077687>, 0.050000  material { M_BD2 } }	// #45: "In" -- "O3"
  cylinder { <2.897935,-4.834016,-3.065426>, <4.470613,-6.310819,-3.053164>, 0.050000  material { M_BD2 } }	// #46: "In" -- "O3"
  cylinder { <-4.834016,2.897934,3.065424>, <-2.897935,2.897935,-0.000001>, 0.050000  material { M_BD2 } }	// #47: "In" -- "In"
  cylinder { <-4.834016,2.897934,3.065424>, <-3.751542,3.865974,4.598136>, 0.050000  material { M_BD2 } }	// #48: "In" -- "O1"
  cylinder { <-4.834016,2.897934,3.065424>, <-3.865976,3.980408,1.532712>, 0.050000  material { M_BD2 } }	// #49: "In" -- "O1"
  cylinder { <-4.834016,2.897934,3.065424>, <-5.933499,1.799997,1.656555>, 0.050000  material { M_BD2 } }	// #50: "In" -- "O2"
  cylinder { <-4.834016,2.897934,3.065424>, <-5.931952,1.798450,4.474293>, 0.050000  material { M_BD2 } }	// #51: "In" -- "O2"
  cylinder { <-4.834016,2.897934,3.065424>, <-6.310819,4.470613,3.053163>, 0.050000  material { M_BD2 } }	// #52: "In" -- "O3"
  cylinder { <-4.834016,2.897934,3.065424>, <-3.261337,1.421131,3.077686>, 0.050000  material { M_BD2 } }	// #53: "In" -- "O3"
  cylinder { <-2.897935,2.897935,-0.000001>, <-2.897936,4.834014,-3.065426>, 0.050000  material { M_BD2 } }	// #54: "In" -- "In"
  cylinder { <-2.897935,2.897935,-0.000001>, <-3.865976,3.980408,1.532712>, 0.050000  material { M_BD2 } }	// #55: "In" -- "O1"
  cylinder { <-2.897935,2.897935,-0.000001>, <-3.980409,3.865974,-1.532713>, 0.050000  material { M_BD2 } }	// #56: "In" -- "O1"
  cylinder { <-2.897935,2.897935,-0.000001>, <-1.799999,1.798450,-1.408870>, 0.050000  material { M_BD2 } }	// #57: "In" -- "O2"
  cylinder { <-2.897935,2.897935,-0.000001>, <-1.798452,1.799997,1.408868>, 0.050000  material { M_BD2 } }	// #58: "In" -- "O2"
  cylinder { <-2.897935,2.897935,-0.000001>, <-4.470614,1.421131,-0.012262>, 0.050000  material { M_BD2 } }	// #59: "In" -- "O3"
  cylinder { <-2.897935,2.897935,-0.000001>, <-1.421133,4.470613,0.012260>, 0.050000  material { M_BD2 } }	// #60: "In" -- "O3"
  cylinder { <4.834014,-4.834016,6.130849>, <2.897934,-4.834016,9.196274>, 0.050000  material { M_BD2 } }	// #61: "In" -- "In"
  cylinder { <4.834014,-4.834016,6.130849>, <4.834014,-2.897935,3.065424>, 0.050000  material { M_BD2 } }	// #62: "In" -- "In"
  cylinder { <4.834014,-4.834016,6.130849>, <3.865974,-3.751542,7.663561>, 0.050000  material { M_BD2 } }	// #63: "In" -- "O1"
  cylinder { <4.834014,-4.834016,6.130849>, <3.751541,-3.865976,4.598136>, 0.050000  material { M_BD2 } }	// #64: "In" -- "O1"
  cylinder { <4.834014,-4.834016,6.130849>, <5.931951,-5.933499,4.721980>, 0.050000  material { M_BD2 } }	// #65: "In" -- "O2"
  cylinder { <4.834014,-4.834016,6.130849>, <5.933497,-5.931953,7.539718>, 0.050000  material { M_BD2 } }	// #66: "In" -- "O2"
  cylinder { <4.834014,-4.834016,6.130849>, <3.261335,-6.310819,6.118588>, 0.050000  material { M_BD2 } }	// #67: "In" -- "O3"
  cylinder { <4.834014,-4.834016,6.130849>, <6.310817,-3.261338,6.143110>, 0.050000  material { M_BD2 } }	// #68: "In" -- "O3"
  cylinder { <4.834014,-4.834016,-6.130851>, <4.834014,-2.897935,-9.196276>, 0.050000  material { M_BD2 } }	// #69: "In" -- "In"
  cylinder { <4.834014,-4.834016,-6.130851>, <3.865974,-3.751542,-4.598138>, 0.050000  material { M_BD2 } }	// #70: "In" -- "O1"
  cylinder { <4.834014,-4.834016,-6.130851>, <3.751541,-3.865976,-7.663564>, 0.050000  material { M_BD2 } }	// #71: "In" -- "O1"
  cylinder { <4.834014,-4.834016,-6.130851>, <5.931951,-5.933499,-7.539720>, 0.050000  material { M_BD2 } }	// #72: "In" -- "O2"
  cylinder { <4.834014,-4.834016,-6.130851>, <5.933497,-5.931952,-4.721982>, 0.050000  material { M_BD2 } }	// #73: "In" -- "O2"
  cylinder { <4.834014,-4.834016,-6.130851>, <3.261335,-6.310819,-6.143111>, 0.050000  material { M_BD2 } }	// #74: "In" -- "O3"
  cylinder { <4.834014,-4.834016,-6.130851>, <6.310817,-3.261338,-6.118589>, 0.050000  material { M_BD2 } }	// #75: "In" -- "O3"
  cylinder { <-2.897936,4.834014,-3.065426>, <-3.980409,3.865974,-1.532713>, 0.050000  material { M_BD2 } }	// #76: "In" -- "O1"
  cylinder { <-2.897936,4.834014,-3.065426>, <-3.865976,3.751541,-4.598138>, 0.050000  material { M_BD2 } }	// #77: "In" -- "O1"
  cylinder { <-2.897936,4.834014,-3.065426>, <-1.798452,5.931951,-4.474295>, 0.050000  material { M_BD2 } }	// #78: "In" -- "O2"
  cylinder { <-2.897936,4.834014,-3.065426>, <-1.799999,5.933497,-1.656557>, 0.050000  material { M_BD2 } }	// #79: "In" -- "O2"
  cylinder { <-2.897936,4.834014,-3.065426>, <-1.421133,3.261335,-3.077687>, 0.050000  material { M_BD2 } }	// #80: "In" -- "O3"
  cylinder { <-2.897936,4.834014,-3.065426>, <-4.470614,6.310817,-3.053164>, 0.050000  material { M_BD2 } }	// #81: "In" -- "O3"
  cylinder { <4.834014,-2.897935,3.065424>, <3.751541,-3.865976,4.598136>, 0.050000  material { M_BD2 } }	// #82: "In" -- "O1"
  cylinder { <4.834014,-2.897935,3.065424>, <3.865974,-3.980409,1.532712>, 0.050000  material { M_BD2 } }	// #83: "In" -- "O1"
  cylinder { <4.834014,-2.897935,3.065424>, <5.933497,-1.799999,1.656555>, 0.050000  material { M_BD2 } }	// #84: "In" -- "O2"
  cylinder { <4.834014,-2.897935,3.065424>, <5.931951,-1.798452,4.474293>, 0.050000  material { M_BD2 } }	// #85: "In" -- "O2"
  cylinder { <4.834014,-2.897935,3.065424>, <6.310817,-4.470614,3.053163>, 0.050000  material { M_BD2 } }	// #86: "In" -- "O3"
  cylinder { <4.834014,-2.897935,3.065424>, <3.261335,-1.421133,3.077686>, 0.050000  material { M_BD2 } }	// #87: "In" -- "O3"
  cylinder { <3.980407,-3.865976,-1.532713>, <4.929890,-3.865976,-1.532713>, 0.050000  material { M_BD2 } }	// #88: "O1" -- "H1"
  cylinder { <-3.751542,3.865974,4.598136>, <-2.802060,3.865974,4.598136>, 0.050000  material { M_BD2 } }	// #89: "O1" -- "H1"
  cylinder { <3.865974,-3.751542,-4.598138>, <3.865974,-2.802060,-4.598138>, 0.050000  material { M_BD2 } }	// #90: "O1" -- "H1"
  cylinder { <-3.865976,3.980408,1.532712>, <-3.865976,4.929890,1.532712>, 0.050000  material { M_BD2 } }	// #91: "O1" -- "H1"
  cylinder { <-3.980409,3.865974,-1.532713>, <-4.929892,3.865974,-1.532713>, 0.050000  material { M_BD2 } }	// #92: "O1" -- "H1"
  cylinder { <3.751541,-3.865976,4.598136>, <2.802058,-3.865976,4.598136>, 0.050000  material { M_BD2 } }	// #93: "O1" -- "H1"
  cylinder { <-3.865976,3.751541,-4.598138>, <-3.865976,2.802058,-4.598138>, 0.050000  material { M_BD2 } }	// #94: "O1" -- "H1"
  cylinder { <3.865974,-3.980409,1.532712>, <3.865974,-4.929892,1.532712>, 0.050000  material { M_BD2 } }	// #95: "O1" -- "H1"
  cylinder { <1.799997,-1.798452,-1.408870>, <1.300513,-2.110823,-2.539398>, 0.050000  material { M_BD2 } }	// #96: "O2" -- "C1"
  cylinder { <-5.931952,5.933497,4.721980>, <-6.431437,5.621126,3.591452>, 0.050000  material { M_BD2 } }	// #97: "O2" -- "C1"
  cylinder { <1.798450,-5.931952,-4.474295>, <2.110822,-6.431437,-5.604823>, 0.050000  material { M_BD2 } }	// #98: "O2" -- "C1"
  cylinder { <-5.933499,1.799997,1.656555>, <-5.621129,1.300513,0.526027>, 0.050000  material { M_BD2 } }	// #99: "O2" -- "C1"
  cylinder { <-1.799999,1.798450,-1.408870>, <-1.300515,2.110822,-2.539398>, 0.050000  material { M_BD2 } }	// #100: "O2" -- "C1"
  cylinder { <5.931951,-5.933499,4.721980>, <6.431435,-5.621129,3.591452>, 0.050000  material { M_BD2 } }	// #101: "O2" -- "C1"
  cylinder { <-1.798452,5.931951,-4.474295>, <-2.110823,6.431435,-5.604823>, 0.050000  material { M_BD2 } }	// #102: "O2" -- "C1"
  cylinder { <5.933497,-1.799999,1.656555>, <5.621126,-1.300515,0.526027>, 0.050000  material { M_BD2 } }	// #103: "O2" -- "C1"
  cylinder { <1.799997,-5.933499,-1.656557>, <1.300513,-5.621129,-0.526028>, 0.050000  material { M_BD2 } }	// #104: "O2" -- "C1"
  cylinder { <-5.931952,1.798450,4.474293>, <-6.431437,2.110822,5.604822>, 0.050000  material { M_BD2 } }	// #105: "O2" -- "C1"
  cylinder { <-1.799999,5.933497,-1.656557>, <-1.300515,5.621126,-0.526028>, 0.050000  material { M_BD2 } }	// #106: "O2" -- "C1"
  cylinder { <5.931951,-1.798452,4.474293>, <6.431435,-2.110823,5.604822>, 0.050000  material { M_BD2 } }	// #107: "O2" -- "C1"
  cylinder { <-1.798452,1.799997,1.408868>, <-2.110823,1.300513,2.539397>, 0.050000  material { M_BD2 } }	// #108: "O2" -- "C1"
  cylinder { <5.933497,-5.931952,-4.721982>, <5.621126,-6.431437,-3.591454>, 0.050000  material { M_BD2 } }	// #109: "O2" -- "C1"
  cylinder { <1.798450,-1.799999,1.408868>, <2.110822,-1.300515,2.539397>, 0.050000  material { M_BD2 } }	// #110: "O2" -- "C1"
  cylinder { <-5.933499,5.931951,-4.721982>, <-5.621129,6.431435,-3.591454>, 0.050000  material { M_BD2 } }	// #111: "O2" -- "C1"
  cylinder { <1.421131,-3.261337,-3.077687>, <1.300513,-2.110823,-2.539398>, 0.050000  material { M_BD2 } }	// #112: "O3" -- "C1"
  cylinder { <-6.310819,4.470613,3.053163>, <-6.431437,5.621126,3.591452>, 0.050000  material { M_BD2 } }	// #113: "O3" -- "C1"
  cylinder { <3.261335,-6.310819,6.118588>, <2.110822,-6.431437,6.656876>, 0.050000  material { M_BD2 } }	// #114: "O3" -- "C1"
  cylinder { <3.261335,-6.310819,-6.143111>, <2.110822,-6.431437,-5.604823>, 0.050000  material { M_BD2 } }	// #115: "O3" -- "C1"
  cylinder { <-4.470614,1.421131,-0.012262>, <-5.621129,1.300513,0.526027>, 0.050000  material { M_BD2 } }	// #116: "O3" -- "C1"
  cylinder { <-1.421133,3.261335,-3.077687>, <-1.300515,2.110822,-2.539398>, 0.050000  material { M_BD2 } }	// #117: "O3" -- "C1"
  cylinder { <6.310817,-4.470614,3.053163>, <6.431435,-5.621129,3.591452>, 0.050000  material { M_BD2 } }	// #118: "O3" -- "C1"
  cylinder { <-3.261337,6.310817,6.118588>, <-2.110823,6.431435,6.656876>, 0.050000  material { M_BD2 } }	// #119: "O3" -- "C1"
  cylinder { <-3.261337,6.310817,-6.143111>, <-2.110823,6.431435,-5.604823>, 0.050000  material { M_BD2 } }	// #120: "O3" -- "C1"
  cylinder { <4.470613,-1.421133,-0.012262>, <5.621126,-1.300515,0.526027>, 0.050000  material { M_BD2 } }	// #121: "O3" -- "C1"
  cylinder { <1.421131,-4.470614,0.012260>, <1.300513,-5.621129,-0.526028>, 0.050000  material { M_BD2 } }	// #122: "O3" -- "C1"
  cylinder { <-6.310819,3.261335,6.143110>, <-6.431437,2.110822,5.604822>, 0.050000  material { M_BD2 } }	// #123: "O3" -- "C1"
  cylinder { <-6.310819,3.261335,-6.118589>, <-6.431437,2.110822,-6.656878>, 0.050000  material { M_BD2 } }	// #124: "O3" -- "C1"
  cylinder { <-1.421133,4.470613,0.012260>, <-1.300515,5.621126,-0.526028>, 0.050000  material { M_BD2 } }	// #125: "O3" -- "C1"
  cylinder { <6.310817,-3.261338,6.143110>, <6.431435,-2.110823,5.604822>, 0.050000  material { M_BD2 } }	// #126: "O3" -- "C1"
  cylinder { <6.310817,-3.261338,-6.118589>, <6.431435,-2.110823,-6.656878>, 0.050000  material { M_BD2 } }	// #127: "O3" -- "C1"
  cylinder { <-3.261337,1.421131,3.077686>, <-2.110823,1.300513,2.539397>, 0.050000  material { M_BD2 } }	// #128: "O3" -- "C1"
  cylinder { <4.470613,-6.310819,-3.053164>, <5.621126,-6.431437,-3.591454>, 0.050000  material { M_BD2 } }	// #129: "O3" -- "C1"
  cylinder { <3.261335,-1.421133,3.077686>, <2.110822,-1.300515,2.539397>, 0.050000  material { M_BD2 } }	// #130: "O3" -- "C1"
  cylinder { <-4.470614,6.310817,-3.053164>, <-5.621129,6.431435,-3.591454>, 0.050000  material { M_BD2 } }	// #131: "O3" -- "C1"
  cylinder { <1.300513,-2.110823,-2.539398>, <0.541699,-1.087732,-3.264066>, 0.050000  material { M_BD2 } }	// #132: "C1" -- "C2"
  cylinder { <-6.431437,5.621126,3.591452>, <-7.190250,6.644217,2.866784>, 0.050000  material { M_BD2 } }	// #133: "C1" -- "C2"
  cylinder { <2.110822,-6.431437,-5.604823>, <1.087730,-7.190250,-6.329491>, 0.050000  material { M_BD2 } }	// #134: "C1" -- "C2"
  cylinder { <-5.621129,1.300513,0.526027>, <-6.644220,0.541699,-0.198641>, 0.050000  material { M_BD2 } }	// #135: "C1" -- "C2"
  cylinder { <-1.300515,2.110822,-2.539398>, <-0.541701,1.087730,-3.264066>, 0.050000  material { M_BD2 } }	// #136: "C1" -- "C2"
  cylinder { <6.431435,-5.621129,3.591452>, <7.190248,-6.644220,2.866784>, 0.050000  material { M_BD2 } }	// #137: "C1" -- "C2"
  cylinder { <-2.110823,6.431435,-5.604823>, <-1.087732,7.190248,-6.329491>, 0.050000  material { M_BD2 } }	// #138: "C1" -- "C2"
  cylinder { <5.621126,-1.300515,0.526027>, <6.644217,-0.541701,-0.198641>, 0.050000  material { M_BD2 } }	// #139: "C1" -- "C2"
  cylinder { <1.300513,-5.621129,-0.526028>, <0.541699,-6.644220,0.198638>, 0.050000  material { M_BD2 } }	// #140: "C1" -- "C2"
  cylinder { <-6.431437,2.110822,5.604822>, <-7.190250,1.087730,6.329488>, 0.050000  material { M_BD2 } }	// #141: "C1" -- "C2"
  cylinder { <-1.300515,5.621126,-0.526028>, <-0.541701,6.644217,0.198638>, 0.050000  material { M_BD2 } }	// #142: "C1" -- "C2"
  cylinder { <6.431435,-2.110823,5.604822>, <7.190248,-1.087732,6.329488>, 0.050000  material { M_BD2 } }	// #143: "C1" -- "C2"
  cylinder { <-2.110823,1.300513,2.539397>, <-1.087732,0.541699,3.264064>, 0.050000  material { M_BD2 } }	// #144: "C1" -- "C2"
  cylinder { <5.621126,-6.431437,-3.591454>, <6.644217,-7.190250,-2.866786>, 0.050000  material { M_BD2 } }	// #145: "C1" -- "C2"
  cylinder { <2.110822,-1.300515,2.539397>, <1.087730,-0.541701,3.264064>, 0.050000  material { M_BD2 } }	// #146: "C1" -- "C2"
  cylinder { <-5.621129,6.431435,-3.591454>, <-6.644220,7.190248,-2.866786>, 0.050000  material { M_BD2 } }	// #147: "C1" -- "C2"
  cylinder { <0.541699,-1.087732,-3.264066>, <-0.000001,-0.000001,-2.562696>, 0.050000  material { M_BD2 } }	// #148: "C2" -- "C3"
  cylinder { <0.541699,-1.087732,-3.264066>, <0.541699,-1.087732,-4.666803>, 0.050000  material { M_BD2 } }	// #149: "C2" -- "C4"
  cylinder { <-7.190250,6.644217,2.866784>, <-7.731951,7.731949,3.568154>, 0.050000  material { M_BD2 } }	// #150: "C2" -- "C3"
  cylinder { <-7.190250,6.644217,2.866784>, <-7.190250,6.644217,1.464046>, 0.050000  material { M_BD2 } }	// #151: "C2" -- "C4"
  cylinder { <1.087730,-7.190250,5.932209>, <2.110822,-6.431437,6.656876>, 0.050000  material { M_BD2 } }	// #152: "C2" -- "C1"
  cylinder { <1.087730,-7.190250,5.932209>, <-0.000001,-7.731951,6.633579>, 0.050000  material { M_BD2 } }	// #153: "C2" -- "C3"
  cylinder { <1.087730,-7.190250,5.932209>, <1.087730,-7.190250,4.529471>, 0.050000  material { M_BD2 } }	// #154: "C2" -- "C4"
  cylinder { <-6.644220,0.541699,-0.198641>, <-7.731951,-0.000001,0.502729>, 0.050000  material { M_BD2 } }	// #155: "C2" -- "C3"
  cylinder { <-6.644220,0.541699,-0.198641>, <-6.644220,0.541699,-1.601378>, 0.050000  material { M_BD2 } }	// #156: "C2" -- "C4"
  cylinder { <-0.541701,1.087730,-3.264066>, <-0.000001,-0.000001,-2.562696>, 0.050000  material { M_BD2 } }	// #157: "C2" -- "C3"
  cylinder { <-0.541701,1.087730,-3.264066>, <-0.541701,1.087730,-4.666803>, 0.050000  material { M_BD2 } }	// #158: "C2" -- "C4"
  cylinder { <7.190248,-6.644220,2.866784>, <7.731949,-7.731951,3.568154>, 0.050000  material { M_BD2 } }	// #159: "C2" -- "C3"
  cylinder { <7.190248,-6.644220,2.866784>, <7.190248,-6.644220,1.464046>, 0.050000  material { M_BD2 } }	// #160: "C2" -- "C4"
  cylinder { <-1.087732,7.190248,5.932209>, <-2.110823,6.431435,6.656876>, 0.050000  material { M_BD2 } }	// #161: "C2" -- "C1"
  cylinder { <-1.087732,7.190248,5.932209>, <-0.000001,7.731949,6.633579>, 0.050000  material { M_BD2 } }	// #162: "C2" -- "C3"
  cylinder { <-1.087732,7.190248,5.932209>, <-1.087732,7.190248,4.529471>, 0.050000  material { M_BD2 } }	// #163: "C2" -- "C4"
  cylinder { <6.644217,-0.541701,-0.198641>, <7.731949,-0.000001,0.502729>, 0.050000  material { M_BD2 } }	// #164: "C2" -- "C3"
  cylinder { <6.644217,-0.541701,-0.198641>, <6.644217,-0.541701,-1.601378>, 0.050000  material { M_BD2 } }	// #165: "C2" -- "C4"
  cylinder { <0.541699,-6.644220,0.198638>, <-0.000001,-7.731951,-0.502731>, 0.050000  material { M_BD2 } }	// #166: "C2" -- "C3"
  cylinder { <0.541699,-6.644220,0.198638>, <0.541699,-6.644220,1.601377>, 0.050000  material { M_BD2 } }	// #167: "C2" -- "C4"
  cylinder { <-7.190250,1.087730,-5.932211>, <-6.431437,2.110822,-6.656878>, 0.050000  material { M_BD2 } }	// #168: "C2" -- "C1"
  cylinder { <-7.190250,1.087730,-5.932211>, <-7.731951,-0.000001,-6.633580>, 0.050000  material { M_BD2 } }	// #169: "C2" -- "C3"
  cylinder { <-7.190250,1.087730,-5.932211>, <-7.190250,1.087730,-4.529473>, 0.050000  material { M_BD2 } }	// #170: "C2" -- "C4"
  cylinder { <-0.541701,6.644217,0.198638>, <-0.000001,7.731949,-0.502731>, 0.050000  material { M_BD2 } }	// #171: "C2" -- "C3"
  cylinder { <-0.541701,6.644217,0.198638>, <-0.541701,6.644217,1.601377>, 0.050000  material { M_BD2 } }	// #172: "C2" -- "C4"
  cylinder { <7.190248,-1.087732,-5.932211>, <6.431435,-2.110823,-6.656878>, 0.050000  material { M_BD2 } }	// #173: "C2" -- "C1"
  cylinder { <7.190248,-1.087732,-5.932211>, <7.731949,-0.000001,-6.633580>, 0.050000  material { M_BD2 } }	// #174: "C2" -- "C3"
  cylinder { <7.190248,-1.087732,-5.932211>, <7.190248,-1.087732,-4.529473>, 0.050000  material { M_BD2 } }	// #175: "C2" -- "C4"
  cylinder { <-1.087732,0.541699,3.264064>, <-0.000001,-0.000001,2.562694>, 0.050000  material { M_BD2 } }	// #176: "C2" -- "C3"
  cylinder { <-1.087732,0.541699,3.264064>, <-1.087732,0.541699,4.666801>, 0.050000  material { M_BD2 } }	// #177: "C2" -- "C4"
  cylinder { <6.644217,-7.190250,-2.866786>, <7.731949,-7.731951,-3.568155>, 0.050000  material { M_BD2 } }	// #178: "C2" -- "C3"
  cylinder { <6.644217,-7.190250,-2.866786>, <6.644217,-7.190250,-1.464048>, 0.050000  material { M_BD2 } }	// #179: "C2" -- "C4"
  cylinder { <1.087730,-0.541701,3.264064>, <-0.000001,-0.000001,2.562694>, 0.050000  material { M_BD2 } }	// #180: "C2" -- "C3"
  cylinder { <1.087730,-0.541701,3.264064>, <1.087730,-0.541701,4.666801>, 0.050000  material { M_BD2 } }	// #181: "C2" -- "C4"
  cylinder { <-6.644220,7.190248,-2.866786>, <-7.731951,7.731949,-3.568155>, 0.050000  material { M_BD2 } }	// #182: "C2" -- "C3"
  cylinder { <-6.644220,7.190248,-2.866786>, <-6.644220,7.190248,-1.464048>, 0.050000  material { M_BD2 } }	// #183: "C2" -- "C4"
  cylinder { <-0.000001,-0.000001,-2.562696>, <-0.000001,-0.000001,-1.511869>, 0.050000  material { M_BD2 } }	// #184: "C3" -- "H3"
  cylinder { <-7.731951,-7.731951,3.568154>, <-7.190250,-8.819682,2.866784>, 0.050000  material { M_BD2 } }	// #185: "C3" -- "C2"
  cylinder { <-7.731951,-7.731951,3.568154>, <-8.273651,-6.644220,2.866784>, 0.050000  material { M_BD2 } }	// #186: "C3" -- "C2"
  cylinder { <-7.731951,-7.731951,3.568154>, <-7.731951,-7.731951,4.618980>, 0.050000  material { M_BD2 } }	// #187: "C3" -- "H3"
  cylinder { <7.731949,-7.731951,3.568154>, <8.273649,-8.819682,2.866784>, 0.050000  material { M_BD2 } }	// #188: "C3" -- "C2"
  cylinder { <7.731949,-7.731951,3.568154>, <7.731949,-7.731951,4.618980>, 0.050000  material { M_BD2 } }	// #189: "C3" -- "H3"
  cylinder { <-7.731951,7.731949,3.568154>, <-8.273651,8.819679,2.866784>, 0.050000  material { M_BD2 } }	// #190: "C3" -- "C2"
  cylinder { <-7.731951,7.731949,3.568154>, <-7.731951,7.731949,4.618980>, 0.050000  material { M_BD2 } }	// #191: "C3" -- "H3"
  cylinder { <7.731949,7.731949,3.568154>, <8.273649,6.644217,2.866784>, 0.050000  material { M_BD2 } }	// #192: "C3" -- "C2"
  cylinder { <7.731949,7.731949,3.568154>, <7.190248,8.819679,2.866784>, 0.050000  material { M_BD2 } }	// #193: "C3" -- "C2"
  cylinder { <7.731949,7.731949,3.568154>, <7.731949,7.731949,4.618980>, 0.050000  material { M_BD2 } }	// #194: "C3" -- "H3"
  cylinder { <-0.000001,-7.731951,-5.628121>, <1.087730,-7.190250,-6.329491>, 0.050000  material { M_BD2 } }	// #195: "C3" -- "C2"
  cylinder { <-0.000001,-7.731951,-5.628121>, <-1.087732,-8.273651,-6.329491>, 0.050000  material { M_BD2 } }	// #196: "C3" -- "C2"
  cylinder { <-0.000001,-7.731951,-5.628121>, <-0.000001,-7.731951,-4.577293>, 0.050000  material { M_BD2 } }	// #197: "C3" -- "H3"
  cylinder { <-0.000001,7.731949,-5.628121>, <1.087730,8.273649,-6.329491>, 0.050000  material { M_BD2 } }	// #198: "C3" -- "C2"
  cylinder { <-0.000001,7.731949,-5.628121>, <-1.087732,7.190248,-6.329491>, 0.050000  material { M_BD2 } }	// #199: "C3" -- "C2"
  cylinder { <-0.000001,7.731949,-5.628121>, <-0.000001,7.731949,-4.577293>, 0.050000  material { M_BD2 } }	// #200: "C3" -- "H3"
  cylinder { <-7.731951,-0.000001,0.502729>, <-8.819682,-0.541701,-0.198641>, 0.050000  material { M_BD2 } }	// #201: "C3" -- "C2"
  cylinder { <-7.731951,-0.000001,0.502729>, <-7.731951,-0.000001,1.553555>, 0.050000  material { M_BD2 } }	// #202: "C3" -- "H3"
  cylinder { <7.731949,-0.000001,0.502729>, <8.819679,0.541699,-0.198641>, 0.050000  material { M_BD2 } }	// #203: "C3" -- "C2"
  cylinder { <7.731949,-0.000001,0.502729>, <7.731949,-0.000001,1.553555>, 0.050000  material { M_BD2 } }	// #204: "C3" -- "H3"
  cylinder { <-0.000001,-7.731951,-0.502731>, <-0.541701,-8.819682,0.198638>, 0.050000  material { M_BD2 } }	// #205: "C3" -- "C2"
  cylinder { <-0.000001,-7.731951,-0.502731>, <-0.000001,-7.731951,-1.553558>, 0.050000  material { M_BD2 } }	// #206: "C3" -- "H3"
  cylinder { <-0.000001,7.731949,-0.502731>, <0.541699,8.819679,0.198638>, 0.050000  material { M_BD2 } }	// #207: "C3" -- "C2"
  cylinder { <-0.000001,7.731949,-0.502731>, <-0.000001,7.731949,-1.553558>, 0.050000  material { M_BD2 } }	// #208: "C3" -- "H3"
  cylinder { <-7.731951,-0.000001,5.628119>, <-7.190250,1.087730,6.329488>, 0.050000  material { M_BD2 } }	// #209: "C3" -- "C2"
  cylinder { <-7.731951,-0.000001,5.628119>, <-8.273651,-1.087732,6.329488>, 0.050000  material { M_BD2 } }	// #210: "C3" -- "C2"
  cylinder { <-7.731951,-0.000001,5.628119>, <-7.731951,-0.000001,4.577291>, 0.050000  material { M_BD2 } }	// #211: "C3" -- "H3"
  cylinder { <7.731949,-0.000001,5.628119>, <8.273649,1.087730,6.329488>, 0.050000  material { M_BD2 } }	// #212: "C3" -- "C2"
  cylinder { <7.731949,-0.000001,5.628119>, <7.190248,-1.087732,6.329488>, 0.050000  material { M_BD2 } }	// #213: "C3" -- "C2"
  cylinder { <7.731949,-0.000001,5.628119>, <7.731949,-0.000001,4.577291>, 0.050000  material { M_BD2 } }	// #214: "C3" -- "H3"
  cylinder { <-0.000001,-0.000001,2.562694>, <-0.000001,-0.000001,1.511867>, 0.050000  material { M_BD2 } }	// #215: "C3" -- "H3"
  cylinder { <-7.731951,-7.731951,-3.568155>, <-8.819682,-7.190250,-2.866786>, 0.050000  material { M_BD2 } }	// #216: "C3" -- "C2"
  cylinder { <-7.731951,-7.731951,-3.568155>, <-6.644220,-8.273651,-2.866786>, 0.050000  material { M_BD2 } }	// #217: "C3" -- "C2"
  cylinder { <-7.731951,-7.731951,-3.568155>, <-7.731951,-7.731951,-4.618983>, 0.050000  material { M_BD2 } }	// #218: "C3" -- "H3"
  cylinder { <7.731949,-7.731951,-3.568155>, <8.819679,-8.273651,-2.866786>, 0.050000  material { M_BD2 } }	// #219: "C3" -- "C2"
  cylinder { <7.731949,-7.731951,-3.568155>, <7.731949,-7.731951,-4.618983>, 0.050000  material { M_BD2 } }	// #220: "C3" -- "H3"
  cylinder { <-7.731951,7.731949,-3.568155>, <-8.819682,8.273649,-2.866786>, 0.050000  material { M_BD2 } }	// #221: "C3" -- "C2"
  cylinder { <-7.731951,7.731949,-3.568155>, <-7.731951,7.731949,-4.618983>, 0.050000  material { M_BD2 } }	// #222: "C3" -- "H3"
  cylinder { <7.731949,7.731949,-3.568155>, <6.644217,8.273649,-2.866786>, 0.050000  material { M_BD2 } }	// #223: "C3" -- "C2"
  cylinder { <7.731949,7.731949,-3.568155>, <8.819679,7.190248,-2.866786>, 0.050000  material { M_BD2 } }	// #224: "C3" -- "C2"
  cylinder { <7.731949,7.731949,-3.568155>, <7.731949,7.731949,-4.618983>, 0.050000  material { M_BD2 } }	// #225: "C3" -- "H3"
  cylinder { <0.541699,-1.087732,-4.666803>, <-0.000001,-0.000001,-5.368541>, 0.050000  material { M_BD2 } }	// #226: "C4" -- "C5"
  cylinder { <0.541699,-1.087732,-4.666803>, <0.946390,-1.902061,-5.191605>, 0.050000  material { M_BD2 } }	// #227: "C4" -- "H4"
  cylinder { <-7.190250,6.644217,1.464046>, <-7.731951,7.731949,0.762309>, 0.050000  material { M_BD2 } }	// #228: "C4" -- "C5"
  cylinder { <-7.190250,6.644217,1.464046>, <-6.785560,5.829888,0.939246>, 0.050000  material { M_BD2 } }	// #229: "C4" -- "H4"
  cylinder { <1.087730,-7.190250,4.529471>, <-0.000001,-7.731951,3.827734>, 0.050000  material { M_BD2 } }	// #230: "C4" -- "C5"
  cylinder { <1.087730,-7.190250,4.529471>, <1.902060,-6.785560,4.004671>, 0.050000  material { M_BD2 } }	// #231: "C4" -- "H4"
  cylinder { <-6.644220,0.541699,-1.601378>, <-7.731951,-0.000001,-2.303116>, 0.050000  material { M_BD2 } }	// #232: "C4" -- "C5"
  cylinder { <-6.644220,0.541699,-1.601378>, <-5.829891,0.946390,-2.126179>, 0.050000  material { M_BD2 } }	// #233: "C4" -- "H4"
  cylinder { <-0.541701,1.087730,-4.666803>, <-0.000001,-0.000001,-5.368541>, 0.050000  material { M_BD2 } }	// #234: "C4" -- "C5"
  cylinder { <-0.541701,1.087730,-4.666803>, <-0.946392,1.902060,-5.191605>, 0.050000  material { M_BD2 } }	// #235: "C4" -- "H4"
  cylinder { <7.190248,-6.644220,1.464046>, <7.731949,-7.731951,0.762309>, 0.050000  material { M_BD2 } }	// #236: "C4" -- "C5"
  cylinder { <7.190248,-6.644220,1.464046>, <6.785558,-5.829891,0.939246>, 0.050000  material { M_BD2 } }	// #237: "C4" -- "H4"
  cylinder { <-1.087732,7.190248,4.529471>, <-0.000001,7.731949,3.827734>, 0.050000  material { M_BD2 } }	// #238: "C4" -- "C5"
  cylinder { <-1.087732,7.190248,4.529471>, <-1.902061,6.785558,4.004671>, 0.050000  material { M_BD2 } }	// #239: "C4" -- "H4"
  cylinder { <6.644217,-0.541701,-1.601378>, <7.731949,-0.000001,-2.303116>, 0.050000  material { M_BD2 } }	// #240: "C4" -- "C5"
  cylinder { <6.644217,-0.541701,-1.601378>, <5.829888,-0.946392,-2.126179>, 0.050000  material { M_BD2 } }	// #241: "C4" -- "H4"
  cylinder { <0.541699,-6.644220,1.601377>, <-0.000001,-7.731951,2.303114>, 0.050000  material { M_BD2 } }	// #242: "C4" -- "C5"
  cylinder { <0.541699,-6.644220,1.601377>, <0.946390,-5.829891,2.126178>, 0.050000  material { M_BD2 } }	// #243: "C4" -- "H4"
  cylinder { <-7.190250,1.087730,-4.529473>, <-7.731951,-0.000001,-3.827736>, 0.050000  material { M_BD2 } }	// #244: "C4" -- "C5"
  cylinder { <-7.190250,1.087730,-4.529473>, <-6.785560,1.902060,-4.004672>, 0.050000  material { M_BD2 } }	// #245: "C4" -- "H4"
  cylinder { <-0.541701,6.644217,1.601377>, <-0.000001,7.731949,2.303114>, 0.050000  material { M_BD2 } }	// #246: "C4" -- "C5"
  cylinder { <-0.541701,6.644217,1.601377>, <-0.946392,5.829888,2.126178>, 0.050000  material { M_BD2 } }	// #247: "C4" -- "H4"
  cylinder { <7.190248,-1.087732,-4.529473>, <7.731949,-0.000001,-3.827736>, 0.050000  material { M_BD2 } }	// #248: "C4" -- "C5"
  cylinder { <7.190248,-1.087732,-4.529473>, <6.785558,-1.902061,-4.004672>, 0.050000  material { M_BD2 } }	// #249: "C4" -- "H4"
  cylinder { <-1.087732,0.541699,4.666801>, <-0.000001,-0.000001,5.368539>, 0.050000  material { M_BD2 } }	// #250: "C4" -- "C5"
  cylinder { <-1.087732,0.541699,4.666801>, <-1.902061,0.946390,5.191603>, 0.050000  material { M_BD2 } }	// #251: "C4" -- "H4"
  cylinder { <6.644217,-7.190250,-1.464048>, <7.731949,-7.731951,-0.762311>, 0.050000  material { M_BD2 } }	// #252: "C4" -- "C5"
  cylinder { <6.644217,-7.190250,-1.464048>, <5.829888,-6.785560,-0.939247>, 0.050000  material { M_BD2 } }	// #253: "C4" -- "H4"
  cylinder { <1.087730,-0.541701,4.666801>, <-0.000001,-0.000001,5.368539>, 0.050000  material { M_BD2 } }	// #254: "C4" -- "C5"
  cylinder { <1.087730,-0.541701,4.666801>, <1.902060,-0.946392,5.191603>, 0.050000  material { M_BD2 } }	// #255: "C4" -- "H4"
  cylinder { <-6.644220,7.190248,-1.464048>, <-7.731951,7.731949,-0.762311>, 0.050000  material { M_BD2 } }	// #256: "C4" -- "C5"
  cylinder { <-6.644220,7.190248,-1.464048>, <-5.829891,6.785558,-0.939247>, 0.050000  material { M_BD2 } }	// #257: "C4" -- "H4"
  cylinder { <-0.000001,-0.000001,-5.368541>, <-0.000001,-0.000001,-6.893161>, 0.050000  material { M_BD2 } }	// #258: "C5" -- "C5"
  cylinder { <-7.731951,-7.731951,0.762309>, <-7.190250,-8.819682,1.464046>, 0.050000  material { M_BD2 } }	// #259: "C5" -- "C4"
  cylinder { <-7.731951,-7.731951,0.762309>, <-8.273651,-6.644220,1.464046>, 0.050000  material { M_BD2 } }	// #260: "C5" -- "C4"
  cylinder { <-7.731951,-7.731951,0.762309>, <-7.731951,-7.731951,-0.762311>, 0.050000  material { M_BD2 } }	// #261: "C5" -- "C5"
  cylinder { <7.731949,-7.731951,0.762309>, <8.273649,-8.819682,1.464046>, 0.050000  material { M_BD2 } }	// #262: "C5" -- "C4"
  cylinder { <7.731949,-7.731951,0.762309>, <7.731949,-7.731951,-0.762311>, 0.050000  material { M_BD2 } }	// #263: "C5" -- "C5"
  cylinder { <-7.731951,7.731949,0.762309>, <-8.273651,8.819679,1.464046>, 0.050000  material { M_BD2 } }	// #264: "C5" -- "C4"
  cylinder { <-7.731951,7.731949,0.762309>, <-7.731951,7.731949,-0.762311>, 0.050000  material { M_BD2 } }	// #265: "C5" -- "C5"
  cylinder { <7.731949,7.731949,0.762309>, <8.273649,6.644217,1.464046>, 0.050000  material { M_BD2 } }	// #266: "C5" -- "C4"
  cylinder { <7.731949,7.731949,0.762309>, <7.190248,8.819679,1.464046>, 0.050000  material { M_BD2 } }	// #267: "C5" -- "C4"
  cylinder { <7.731949,7.731949,0.762309>, <7.731949,7.731949,-0.762311>, 0.050000  material { M_BD2 } }	// #268: "C5" -- "C5"
  cylinder { <-0.000001,-7.731951,3.827734>, <-1.087732,-8.273651,4.529471>, 0.050000  material { M_BD2 } }	// #269: "C5" -- "C4"
  cylinder { <-0.000001,-7.731951,3.827734>, <-0.000001,-7.731951,2.303114>, 0.050000  material { M_BD2 } }	// #270: "C5" -- "C5"
  cylinder { <-0.000001,7.731949,3.827734>, <1.087730,8.273649,4.529471>, 0.050000  material { M_BD2 } }	// #271: "C5" -- "C4"
  cylinder { <-0.000001,7.731949,3.827734>, <-0.000001,7.731949,2.303114>, 0.050000  material { M_BD2 } }	// #272: "C5" -- "C5"
  cylinder { <-7.731951,-0.000001,-2.303116>, <-8.819682,-0.541701,-1.601378>, 0.050000  material { M_BD2 } }	// #273: "C5" -- "C4"
  cylinder { <-7.731951,-0.000001,-2.303116>, <-7.731951,-0.000001,-3.827736>, 0.050000  material { M_BD2 } }	// #274: "C5" -- "C5"
  cylinder { <7.731949,-0.000001,-2.303116>, <8.819679,0.541699,-1.601378>, 0.050000  material { M_BD2 } }	// #275: "C5" -- "C4"
  cylinder { <7.731949,-0.000001,-2.303116>, <7.731949,-0.000001,-3.827736>, 0.050000  material { M_BD2 } }	// #276: "C5" -- "C5"
  cylinder { <-0.000001,-7.731951,2.303114>, <-0.541701,-8.819682,1.601377>, 0.050000  material { M_BD2 } }	// #277: "C5" -- "C4"
  cylinder { <-0.000001,7.731949,2.303114>, <0.541699,8.819679,1.601377>, 0.050000  material { M_BD2 } }	// #278: "C5" -- "C4"
  cylinder { <-7.731951,-0.000001,-3.827736>, <-8.273651,-1.087732,-4.529473>, 0.050000  material { M_BD2 } }	// #279: "C5" -- "C4"
  cylinder { <7.731949,-0.000001,-3.827736>, <8.273649,1.087730,-4.529473>, 0.050000  material { M_BD2 } }	// #280: "C5" -- "C4"
  cylinder { <-0.000001,-0.000001,5.368539>, <-0.000001,-0.000001,6.893159>, 0.050000  material { M_BD2 } }	// #281: "C5" -- "C5"
  cylinder { <-7.731951,-7.731951,-0.762311>, <-8.819682,-7.190250,-1.464048>, 0.050000  material { M_BD2 } }	// #282: "C5" -- "C4"
  cylinder { <-7.731951,-7.731951,-0.762311>, <-6.644220,-8.273651,-1.464048>, 0.050000  material { M_BD2 } }	// #283: "C5" -- "C4"
  cylinder { <7.731949,-7.731951,-0.762311>, <8.819679,-8.273651,-1.464048>, 0.050000  material { M_BD2 } }	// #284: "C5" -- "C4"
  cylinder { <-7.731951,7.731949,-0.762311>, <-8.819682,8.273649,-1.464048>, 0.050000  material { M_BD2 } }	// #285: "C5" -- "C4"
  cylinder { <7.731949,7.731949,-0.762311>, <6.644217,8.273649,-1.464048>, 0.050000  material { M_BD2 } }	// #286: "C5" -- "C4"
  cylinder { <7.731949,7.731949,-0.762311>, <8.819679,7.190248,-1.464048>, 0.050000  material { M_BD2 } }	// #287: "C5" -- "C4"
  cylinder { <0.457731,-3.674223,3.875922>, <0.457731,-4.057728,5.320351>, 0.050000  material { M_BD2 } }	// #288: "C1_1" -- "C1_1"
  cylinder { <0.457731,-3.674223,3.875922>, <0.111339,-3.879894,5.126616>, 0.050000  material { M_BD2 } }	// #289: "C1_1" -- "C2_1"
  cylinder { <0.457731,-3.674223,3.875922>, <0.740720,-3.508760,2.855749>, 0.050000  material { M_BD2 } }	// #290: "C1_1" -- "D1_1"
  cylinder { <0.457731,-3.674223,3.875922>, <-0.171650,-3.686594,3.050710>, 0.050000  material { M_BD2 } }	// #291: "C1_1" -- "D2_1"
  cylinder { <-7.274219,4.057727,-2.254928>, <-7.274219,3.674221,-0.810499>, 0.050000  material { M_BD2 } }	// #292: "C1_1" -- "C1_1"
  cylinder { <-7.274219,4.057727,-2.254928>, <-7.620611,3.852056,-1.004234>, 0.050000  material { M_BD2 } }	// #293: "C1_1" -- "C2_1"
  cylinder { <-7.274219,4.057727,-2.254928>, <-6.991230,4.223190,-3.275101>, 0.050000  material { M_BD2 } }	// #294: "C1_1" -- "D1_1"
  cylinder { <-7.274219,4.057727,-2.254928>, <-7.903600,4.045356,-3.080139>, 0.050000  material { M_BD2 } }	// #295: "C1_1" -- "D2_1"
  cylinder { <3.674222,-7.274219,0.810497>, <4.057727,-7.274219,2.254925>, 0.050000  material { M_BD2 } }	// #296: "C1_1" -- "C1_1"
  cylinder { <3.674222,-7.274219,0.810497>, <3.879892,-7.620611,2.061191>, 0.050000  material { M_BD2 } }	// #297: "C1_1" -- "C2_1"
  cylinder { <3.674222,-7.274219,0.810497>, <3.508759,-6.991230,-0.209676>, 0.050000  material { M_BD2 } }	// #298: "C1_1" -- "D1_1"
  cylinder { <3.674222,-7.274219,0.810497>, <3.686592,-7.903600,-0.014715>, 0.050000  material { M_BD2 } }	// #299: "C1_1" -- "D2_1"
  cylinder { <-4.057728,0.457731,-5.320353>, <-3.674223,0.457731,-3.875924>, 0.050000  material { M_BD2 } }	// #300: "C1_1" -- "C1_1"
  cylinder { <-4.057728,0.457731,-5.320353>, <-3.852058,0.111339,-4.069659>, 0.050000  material { M_BD2 } }	// #301: "C1_1" -- "C2_1"
  cylinder { <-4.057728,0.457731,-5.320353>, <-4.223192,0.740719,-6.340526>, 0.050000  material { M_BD2 } }	// #302: "C1_1" -- "D1_1"
  cylinder { <-4.057728,0.457731,-5.320353>, <-4.045357,-0.171650,-6.145564>, 0.050000  material { M_BD2 } }	// #303: "C1_1" -- "D2_1"
  cylinder { <-0.457733,3.674222,3.875922>, <-0.457733,4.057727,5.320351>, 0.050000  material { M_BD2 } }	// #304: "C1_1" -- "C1_1"
  cylinder { <-0.457733,3.674222,3.875922>, <-0.111341,3.879892,5.126616>, 0.050000  material { M_BD2 } }	// #305: "C1_1" -- "C2_1"
  cylinder { <-0.457733,3.674222,3.875922>, <-0.740722,3.508759,2.855749>, 0.050000  material { M_BD2 } }	// #306: "C1_1" -- "D1_1"
  cylinder { <-0.457733,3.674222,3.875922>, <0.171648,3.686592,3.050710>, 0.050000  material { M_BD2 } }	// #307: "C1_1" -- "D2_1"
  cylinder { <7.274217,-4.057728,-2.254928>, <7.274217,-3.674223,-0.810499>, 0.050000  material { M_BD2 } }	// #308: "C1_1" -- "C1_1"
  cylinder { <7.274217,-4.057728,-2.254928>, <7.620608,-3.852058,-1.004234>, 0.050000  material { M_BD2 } }	// #309: "C1_1" -- "C2_1"
  cylinder { <7.274217,-4.057728,-2.254928>, <6.991228,-4.223192,-3.275101>, 0.050000  material { M_BD2 } }	// #310: "C1_1" -- "D1_1"
  cylinder { <7.274217,-4.057728,-2.254928>, <7.903599,-4.045358,-3.080139>, 0.050000  material { M_BD2 } }	// #311: "C1_1" -- "D2_1"
  cylinder { <-3.674223,7.274217,0.810497>, <-4.057728,7.274217,2.254925>, 0.050000  material { M_BD2 } }	// #312: "C1_1" -- "C1_1"
  cylinder { <-3.674223,7.274217,0.810497>, <-3.879894,7.620608,2.061191>, 0.050000  material { M_BD2 } }	// #313: "C1_1" -- "C2_1"
  cylinder { <-3.674223,7.274217,0.810497>, <-3.508760,6.991228,-0.209676>, 0.050000  material { M_BD2 } }	// #314: "C1_1" -- "D1_1"
  cylinder { <-3.674223,7.274217,0.810497>, <-3.686594,7.903599,-0.014715>, 0.050000  material { M_BD2 } }	// #315: "C1_1" -- "D2_1"
  cylinder { <4.057727,-0.457733,-5.320353>, <3.674222,-0.457733,-3.875924>, 0.050000  material { M_BD2 } }	// #316: "C1_1" -- "C1_1"
  cylinder { <4.057727,-0.457733,-5.320353>, <3.852056,-0.111341,-4.069659>, 0.050000  material { M_BD2 } }	// #317: "C1_1" -- "C2_1"
  cylinder { <4.057727,-0.457733,-5.320353>, <4.223190,-0.740722,-6.340526>, 0.050000  material { M_BD2 } }	// #318: "C1_1" -- "D1_1"
  cylinder { <4.057727,-0.457733,-5.320353>, <4.045356,0.171648,-6.145564>, 0.050000  material { M_BD2 } }	// #319: "C1_1" -- "D2_1"
  cylinder { <0.457731,-4.057728,5.320351>, <0.111339,-3.852058,4.069657>, 0.050000  material { M_BD2 } }	// #320: "C1_1" -- "C2_1"
  cylinder { <0.457731,-4.057728,5.320351>, <0.740720,-4.223192,6.340524>, 0.050000  material { M_BD2 } }	// #321: "C1_1" -- "D1_1"
  cylinder { <0.457731,-4.057728,5.320351>, <-0.171650,-4.045357,6.145563>, 0.050000  material { M_BD2 } }	// #322: "C1_1" -- "D2_1"
  cylinder { <-7.274219,3.674221,-0.810499>, <-7.620611,3.879892,-2.061193>, 0.050000  material { M_BD2 } }	// #323: "C1_1" -- "C2_1"
  cylinder { <-7.274219,3.674221,-0.810499>, <-6.991230,3.508758,0.209674>, 0.050000  material { M_BD2 } }	// #324: "C1_1" -- "D1_1"
  cylinder { <-7.274219,3.674221,-0.810499>, <-7.903600,3.686592,0.014713>, 0.050000  material { M_BD2 } }	// #325: "C1_1" -- "D2_1"
  cylinder { <-0.457733,4.057727,5.320351>, <-0.111341,3.852056,4.069657>, 0.050000  material { M_BD2 } }	// #326: "C1_1" -- "C2_1"
  cylinder { <-0.457733,4.057727,5.320351>, <-0.740722,4.223190,6.340524>, 0.050000  material { M_BD2 } }	// #327: "C1_1" -- "D1_1"
  cylinder { <-0.457733,4.057727,5.320351>, <0.171648,4.045356,6.145563>, 0.050000  material { M_BD2 } }	// #328: "C1_1" -- "D2_1"
  cylinder { <7.274217,-3.674223,-0.810499>, <7.620608,-3.879894,-2.061193>, 0.050000  material { M_BD2 } }	// #329: "C1_1" -- "C2_1"
  cylinder { <7.274217,-3.674223,-0.810499>, <6.991228,-3.508759,0.209674>, 0.050000  material { M_BD2 } }	// #330: "C1_1" -- "D1_1"
  cylinder { <7.274217,-3.674223,-0.810499>, <7.903599,-3.686594,0.014713>, 0.050000  material { M_BD2 } }	// #331: "C1_1" -- "D2_1"
  cylinder { <-3.674223,0.457731,-3.875924>, <-3.879894,0.111339,-5.126617>, 0.050000  material { M_BD2 } }	// #332: "C1_1" -- "C2_1"
  cylinder { <-3.674223,0.457731,-3.875924>, <-3.508760,0.740720,-2.855751>, 0.050000  material { M_BD2 } }	// #333: "C1_1" -- "D1_1"
  cylinder { <-3.674223,0.457731,-3.875924>, <-3.686594,-0.171651,-3.050712>, 0.050000  material { M_BD2 } }	// #334: "C1_1" -- "D2_1"
  cylinder { <4.057727,-7.274219,2.254925>, <3.852056,-7.620611,1.004232>, 0.050000  material { M_BD2 } }	// #335: "C1_1" -- "C2_1"
  cylinder { <4.057727,-7.274219,2.254925>, <4.223190,-6.991230,3.275099>, 0.050000  material { M_BD2 } }	// #336: "C1_1" -- "D1_1"
  cylinder { <4.057727,-7.274219,2.254925>, <4.045356,-7.903600,3.080138>, 0.050000  material { M_BD2 } }	// #337: "C1_1" -- "D2_1"
  cylinder { <3.674222,-0.457733,-3.875924>, <3.879892,-0.111341,-5.126617>, 0.050000  material { M_BD2 } }	// #338: "C1_1" -- "C2_1"
  cylinder { <3.674222,-0.457733,-3.875924>, <3.508759,-0.740722,-2.855751>, 0.050000  material { M_BD2 } }	// #339: "C1_1" -- "D1_1"
  cylinder { <3.674222,-0.457733,-3.875924>, <3.686592,0.171648,-3.050712>, 0.050000  material { M_BD2 } }	// #340: "C1_1" -- "D2_1"
  cylinder { <-4.057728,7.274217,2.254925>, <-3.852058,7.620608,1.004232>, 0.050000  material { M_BD2 } }	// #341: "C1_1" -- "C2_1"
  cylinder { <-4.057728,7.274217,2.254925>, <-4.223192,6.991228,3.275099>, 0.050000  material { M_BD2 } }	// #342: "C1_1" -- "D1_1"
  cylinder { <-4.057728,7.274217,2.254925>, <-4.045357,7.903599,3.080138>, 0.050000  material { M_BD2 } }	// #343: "C1_1" -- "D2_1"
  cylinder { <0.111339,-3.879894,5.126616>, <0.111339,-3.852058,4.069657>, 0.050000  material { M_BD2 } }	// #344: "C2_1" -- "C2_1"
  cylinder { <0.111339,-3.879894,5.126616>, <-0.171650,-4.045357,6.145563>, 0.050000  material { M_BD2 } }	// #345: "C2_1" -- "D2_1"
  cylinder { <-7.620611,3.852056,-1.004234>, <-7.620611,3.879892,-2.061193>, 0.050000  material { M_BD2 } }	// #346: "C2_1" -- "C2_1"
  cylinder { <-7.620611,3.852056,-1.004234>, <-7.903600,3.686592,0.014713>, 0.050000  material { M_BD2 } }	// #347: "C2_1" -- "D2_1"
  cylinder { <7.843289,3.852056,-1.004234>, <8.189681,4.057727,-2.254928>, 0.050000  material { M_BD2 } }	// #348: "C2_1" -- "C1_1"
  cylinder { <7.843289,3.852056,-1.004234>, <7.843289,3.879892,-2.061193>, 0.050000  material { M_BD2 } }	// #349: "C2_1" -- "C2_1"
  cylinder { <7.843289,3.852056,-1.004234>, <7.560300,3.686592,0.014713>, 0.050000  material { M_BD2 } }	// #350: "C2_1" -- "D2_1"
  cylinder { <3.879892,-7.620611,2.061191>, <3.852056,-7.620611,1.004232>, 0.050000  material { M_BD2 } }	// #351: "C2_1" -- "C2_1"
  cylinder { <3.879892,-7.620611,2.061191>, <4.045356,-7.903600,3.080138>, 0.050000  material { M_BD2 } }	// #352: "C2_1" -- "D2_1"
  cylinder { <3.879892,7.843289,2.061191>, <3.674221,8.189681,0.810497>, 0.050000  material { M_BD2 } }	// #353: "C2_1" -- "C1_1"
  cylinder { <3.879892,7.843289,2.061191>, <3.852056,7.843289,1.004232>, 0.050000  material { M_BD2 } }	// #354: "C2_1" -- "C2_1"
  cylinder { <3.879892,7.843289,2.061191>, <4.045356,7.560300,3.080138>, 0.050000  material { M_BD2 } }	// #355: "C2_1" -- "D2_1"
  cylinder { <-3.852058,0.111339,-4.069659>, <-3.879894,0.111339,-5.126617>, 0.050000  material { M_BD2 } }	// #356: "C2_1" -- "C2_1"
  cylinder { <-3.852058,0.111339,-4.069659>, <-3.686594,-0.171651,-3.050712>, 0.050000  material { M_BD2 } }	// #357: "C2_1" -- "D2_1"
  cylinder { <-0.111341,3.879892,5.126616>, <-0.111341,3.852056,4.069657>, 0.050000  material { M_BD2 } }	// #358: "C2_1" -- "C2_1"
  cylinder { <-0.111341,3.879892,5.126616>, <0.171648,4.045356,6.145563>, 0.050000  material { M_BD2 } }	// #359: "C2_1" -- "D2_1"
  cylinder { <-7.843291,-3.852058,-1.004234>, <-8.189683,-4.057728,-2.254928>, 0.050000  material { M_BD2 } }	// #360: "C2_1" -- "C1_1"
  cylinder { <-7.843291,-3.852058,-1.004234>, <-7.843291,-3.879894,-2.061193>, 0.050000  material { M_BD2 } }	// #361: "C2_1" -- "C2_1"
  cylinder { <-7.843291,-3.852058,-1.004234>, <-7.560302,-3.686594,0.014713>, 0.050000  material { M_BD2 } }	// #362: "C2_1" -- "D2_1"
  cylinder { <7.620608,-3.852058,-1.004234>, <7.620608,-3.879894,-2.061193>, 0.050000  material { M_BD2 } }	// #363: "C2_1" -- "C2_1"
  cylinder { <7.620608,-3.852058,-1.004234>, <7.903599,-3.686594,0.014713>, 0.050000  material { M_BD2 } }	// #364: "C2_1" -- "D2_1"
  cylinder { <-3.879894,-7.843291,2.061191>, <-3.674223,-8.189683,0.810497>, 0.050000  material { M_BD2 } }	// #365: "C2_1" -- "C1_1"
  cylinder { <-3.879894,-7.843291,2.061191>, <-3.852058,-7.843291,1.004232>, 0.050000  material { M_BD2 } }	// #366: "C2_1" -- "C2_1"
  cylinder { <-3.879894,-7.843291,2.061191>, <-4.045357,-7.560302,3.080138>, 0.050000  material { M_BD2 } }	// #367: "C2_1" -- "D2_1"
  cylinder { <-3.879894,7.620608,2.061191>, <-3.852058,7.620608,1.004232>, 0.050000  material { M_BD2 } }	// #368: "C2_1" -- "C2_1"
  cylinder { <-3.879894,7.620608,2.061191>, <-4.045357,7.903599,3.080138>, 0.050000  material { M_BD2 } }	// #369: "C2_1" -- "D2_1"
  cylinder { <3.852056,-0.111341,-4.069659>, <3.879892,-0.111341,-5.126617>, 0.050000  material { M_BD2 } }	// #370: "C2_1" -- "C2_1"
  cylinder { <3.852056,-0.111341,-4.069659>, <3.686592,0.171648,-3.050712>, 0.050000  material { M_BD2 } }	// #371: "C2_1" -- "D2_1"
  cylinder { <0.111339,-3.852058,4.069657>, <-0.171650,-3.686594,3.050710>, 0.050000  material { M_BD2 } }	// #372: "C2_1" -- "D2_1"
  cylinder { <-7.620611,3.879892,-2.061193>, <-7.903600,4.045356,-3.080139>, 0.050000  material { M_BD2 } }	// #373: "C2_1" -- "D2_1"
  cylinder { <7.843289,3.879892,-2.061193>, <8.189681,3.674221,-0.810499>, 0.050000  material { M_BD2 } }	// #374: "C2_1" -- "C1_1"
  cylinder { <7.843289,3.879892,-2.061193>, <7.560300,4.045356,-3.080139>, 0.050000  material { M_BD2 } }	// #375: "C2_1" -- "D2_1"
  cylinder { <-0.111341,3.852056,4.069657>, <0.171648,3.686592,3.050710>, 0.050000  material { M_BD2 } }	// #376: "C2_1" -- "D2_1"
  cylinder { <-7.843291,-3.879894,-2.061193>, <-8.189683,-3.674223,-0.810499>, 0.050000  material { M_BD2 } }	// #377: "C2_1" -- "C1_1"
  cylinder { <-7.843291,-3.879894,-2.061193>, <-7.560302,-4.045358,-3.080139>, 0.050000  material { M_BD2 } }	// #378: "C2_1" -- "D2_1"
  cylinder { <7.620608,-3.879894,-2.061193>, <7.903599,-4.045358,-3.080139>, 0.050000  material { M_BD2 } }	// #379: "C2_1" -- "D2_1"
  cylinder { <-3.879894,0.111339,-5.126617>, <-4.045357,-0.171650,-6.145564>, 0.050000  material { M_BD2 } }	// #380: "C2_1" -- "D2_1"
  cylinder { <3.852056,-7.620611,1.004232>, <3.686592,-7.903600,-0.014715>, 0.050000  material { M_BD2 } }	// #381: "C2_1" -- "D2_1"
  cylinder { <3.852056,7.843289,1.004232>, <4.057727,8.189681,2.254925>, 0.050000  material { M_BD2 } }	// #382: "C2_1" -- "C1_1"
  cylinder { <3.852056,7.843289,1.004232>, <3.686592,7.560300,-0.014715>, 0.050000  material { M_BD2 } }	// #383: "C2_1" -- "D2_1"
  cylinder { <3.879892,-0.111341,-5.126617>, <4.045356,0.171648,-6.145564>, 0.050000  material { M_BD2 } }	// #384: "C2_1" -- "D2_1"
  cylinder { <-3.852058,-7.843291,1.004232>, <-4.057728,-8.189683,2.254925>, 0.050000  material { M_BD2 } }	// #385: "C2_1" -- "C1_1"
  cylinder { <-3.852058,-7.843291,1.004232>, <-3.686594,-7.560302,-0.014715>, 0.050000  material { M_BD2 } }	// #386: "C2_1" -- "D2_1"
  cylinder { <-3.852058,7.620608,1.004232>, <-3.686594,7.903599,-0.014715>, 0.050000  material { M_BD2 } }	// #387: "C2_1" -- "D2_1"
  cylinder { <-4.223192,0.740719,5.921174>, <-4.057728,0.457731,6.941347>, 0.050000  material { M_BD2 } }	// #388: "D1_1" -- "C1_1"
  cylinder { <4.223190,-0.740722,5.921174>, <4.057727,-0.457733,6.941347>, 0.050000  material { M_BD2 } }	// #389: "D1_1" -- "C1_1"
  cylinder { <0.740720,-4.223192,-5.921176>, <0.457731,-4.057728,-6.941349>, 0.050000  material { M_BD2 } }	// #390: "D1_1" -- "C1_1"
  cylinder { <-0.740722,4.223190,-5.921176>, <-0.457733,4.057727,-6.941349>, 0.050000  material { M_BD2 } }	// #391: "D1_1" -- "C1_1"
  cylinder { <-0.171650,-4.045357,-6.116137>, <0.457731,-4.057728,-6.941349>, 0.050000  material { M_BD2 } }	// #392: "D2_1" -- "C1_1"
  cylinder { <-0.171650,-4.045357,-6.116137>, <0.111339,-3.879894,-7.135084>, 0.050000  material { M_BD2 } }	// #393: "D2_1" -- "C2_1"
  cylinder { <7.560300,3.686592,0.014713>, <8.189681,3.674221,-0.810499>, 0.050000  material { M_BD2 } }	// #394: "D2_1" -- "C1_1"
  cylinder { <4.045356,7.560300,3.080138>, <4.057727,8.189681,2.254925>, 0.050000  material { M_BD2 } }	// #395: "D2_1" -- "C1_1"
  cylinder { <0.171648,4.045356,-6.116137>, <-0.457733,4.057727,-6.941349>, 0.050000  material { M_BD2 } }	// #396: "D2_1" -- "C1_1"
  cylinder { <0.171648,4.045356,-6.116137>, <-0.111341,3.879892,-7.135084>, 0.050000  material { M_BD2 } }	// #397: "D2_1" -- "C2_1"
  cylinder { <-7.560302,-3.686594,0.014713>, <-8.189683,-3.674223,-0.810499>, 0.050000  material { M_BD2 } }	// #398: "D2_1" -- "C1_1"
  cylinder { <-4.045357,-7.560302,3.080138>, <-4.057728,-8.189683,2.254925>, 0.050000  material { M_BD2 } }	// #399: "D2_1" -- "C1_1"
  cylinder { <7.560300,4.045356,-3.080139>, <8.189681,4.057727,-2.254928>, 0.050000  material { M_BD2 } }	// #400: "D2_1" -- "C1_1"
  cylinder { <-7.560302,-4.045358,-3.080139>, <-8.189683,-4.057728,-2.254928>, 0.050000  material { M_BD2 } }	// #401: "D2_1" -- "C1_1"
  cylinder { <-4.045357,-0.171650,6.116135>, <-4.057728,0.457731,6.941347>, 0.050000  material { M_BD2 } }	// #402: "D2_1" -- "C1_1"
  cylinder { <-4.045357,-0.171650,6.116135>, <-3.879894,0.111339,7.135082>, 0.050000  material { M_BD2 } }	// #403: "D2_1" -- "C2_1"
  cylinder { <3.686592,7.560300,-0.014715>, <3.674221,8.189681,0.810497>, 0.050000  material { M_BD2 } }	// #404: "D2_1" -- "C1_1"
  cylinder { <4.045356,0.171648,6.116135>, <4.057727,-0.457733,6.941347>, 0.050000  material { M_BD2 } }	// #405: "D2_1" -- "C1_1"
  cylinder { <4.045356,0.171648,6.116135>, <3.879892,-0.111341,7.135082>, 0.050000  material { M_BD2 } }	// #406: "D2_1" -- "C2_1"
  cylinder { <-3.686594,-7.560302,-0.014715>, <-3.674223,-8.189683,0.810497>, 0.050000  material { M_BD2 } }	// #407: "D2_1" -- "C1_1"
  cylinder { <2.560821,1.815461,-0.424256>, <1.815461,2.560821,0.424254>, 0.050000  material { M_BD2 } }	// #408: "C1_2" -- "C1_2"
  cylinder { <2.560821,1.815461,-0.424256>, <1.404121,2.409274,-0.234200>, 0.050000  material { M_BD2 } }	// #409: "C1_2" -- "C2_2"
  cylinder { <2.560821,1.815461,-0.424256>, <3.502572,1.331441,-0.579979>, 0.050000  material { M_BD2 } }	// #410: "C1_2" -- "D1_2"
  cylinder { <-5.171128,-5.916490,5.706594>, <-5.916490,-5.171128,6.555104>, 0.050000  material { M_BD2 } }	// #411: "C1_2" -- "C1_2"
  cylinder { <-5.171128,-5.916490,5.706594>, <-6.327828,-5.322676,5.896651>, 0.050000  material { M_BD2 } }	// #412: "C1_2" -- "C2_2"
  cylinder { <-5.171128,-5.916490,5.706594>, <-4.229377,-6.400509,5.550871>, 0.050000  material { M_BD2 } }	// #413: "C1_2" -- "D1_2"
  cylinder { <-1.815463,-5.171128,-3.489681>, <-2.560823,-5.916490,-2.641171>, 0.050000  material { M_BD2 } }	// #414: "C1_2" -- "C1_2"
  cylinder { <-1.815463,-5.171128,-3.489681>, <-2.409276,-6.327828,-3.299624>, 0.050000  material { M_BD2 } }	// #415: "C1_2" -- "C2_2"
  cylinder { <-1.815463,-5.171128,-3.489681>, <-1.331442,-4.229377,-3.645404>, 0.050000  material { M_BD2 } }	// #416: "C1_2" -- "D1_2"
  cylinder { <5.916487,2.560822,2.641169>, <5.171127,1.815460,3.489679>, 0.050000  material { M_BD2 } }	// #417: "C1_2" -- "C1_2"
  cylinder { <5.916487,2.560822,2.641169>, <5.322674,1.404121,2.831226>, 0.050000  material { M_BD2 } }	// #418: "C1_2" -- "C2_2"
  cylinder { <5.916487,2.560822,2.641169>, <6.400507,3.502573,2.485446>, 0.050000  material { M_BD2 } }	// #419: "C1_2" -- "D1_2"
  cylinder { <-2.560823,-1.815463,-0.424256>, <-1.815463,-2.560823,0.424254>, 0.050000  material { M_BD2 } }	// #420: "C1_2" -- "C1_2"
  cylinder { <-2.560823,-1.815463,-0.424256>, <-1.404123,-2.409276,-0.234200>, 0.050000  material { M_BD2 } }	// #421: "C1_2" -- "C2_2"
  cylinder { <-2.560823,-1.815463,-0.424256>, <-3.502574,-1.331442,-0.579979>, 0.050000  material { M_BD2 } }	// #422: "C1_2" -- "D1_2"
  cylinder { <5.171127,5.916487,5.706594>, <5.916487,5.171127,6.555104>, 0.050000  material { M_BD2 } }	// #423: "C1_2" -- "C1_2"
  cylinder { <5.171127,5.916487,5.706594>, <6.327826,5.322674,5.896651>, 0.050000  material { M_BD2 } }	// #424: "C1_2" -- "C2_2"
  cylinder { <5.171127,5.916487,5.706594>, <4.229376,6.400507,5.550871>, 0.050000  material { M_BD2 } }	// #425: "C1_2" -- "D1_2"
  cylinder { <1.815461,5.171127,-3.489681>, <2.560821,5.916487,-2.641171>, 0.050000  material { M_BD2 } }	// #426: "C1_2" -- "C1_2"
  cylinder { <1.815461,5.171127,-3.489681>, <2.409274,6.327826,-3.299624>, 0.050000  material { M_BD2 } }	// #427: "C1_2" -- "C2_2"
  cylinder { <1.815461,5.171127,-3.489681>, <1.331441,4.229376,-3.645404>, 0.050000  material { M_BD2 } }	// #428: "C1_2" -- "D1_2"
  cylinder { <-5.916490,-2.560823,2.641169>, <-5.171128,-1.815463,3.489679>, 0.050000  material { M_BD2 } }	// #429: "C1_2" -- "C1_2"
  cylinder { <-5.916490,-2.560823,2.641169>, <-5.322676,-1.404123,2.831226>, 0.050000  material { M_BD2 } }	// #430: "C1_2" -- "C2_2"
  cylinder { <-5.916490,-2.560823,2.641169>, <-6.400509,-3.502574,2.485446>, 0.050000  material { M_BD2 } }	// #431: "C1_2" -- "D1_2"
  cylinder { <2.560821,5.916487,-2.641171>, <1.404121,5.322674,-2.831227>, 0.050000  material { M_BD2 } }	// #432: "C1_2" -- "C2_2"
  cylinder { <2.560821,5.916487,-2.641171>, <3.502572,6.400507,-2.485448>, 0.050000  material { M_BD2 } }	// #433: "C1_2" -- "D1_2"
  cylinder { <-5.171128,-1.815463,3.489679>, <-6.327828,-2.409276,3.299623>, 0.050000  material { M_BD2 } }	// #434: "C1_2" -- "C2_2"
  cylinder { <-5.171128,-1.815463,3.489679>, <-4.229377,-1.331442,3.645402>, 0.050000  material { M_BD2 } }	// #435: "C1_2" -- "D1_2"
  cylinder { <-2.560823,-5.916490,-2.641171>, <-1.404123,-5.322676,-2.831227>, 0.050000  material { M_BD2 } }	// #436: "C1_2" -- "C2_2"
  cylinder { <-2.560823,-5.916490,-2.641171>, <-3.502574,-6.400509,-2.485448>, 0.050000  material { M_BD2 } }	// #437: "C1_2" -- "D1_2"
  cylinder { <5.171127,1.815460,3.489679>, <6.327826,2.409274,3.299623>, 0.050000  material { M_BD2 } }	// #438: "C1_2" -- "C2_2"
  cylinder { <5.171127,1.815460,3.489679>, <4.229376,1.331441,3.645402>, 0.050000  material { M_BD2 } }	// #439: "C1_2" -- "D1_2"
  cylinder { <1.815461,2.560821,0.424254>, <2.409274,1.404121,0.234198>, 0.050000  material { M_BD2 } }	// #440: "C1_2" -- "C2_2"
  cylinder { <1.815461,2.560821,0.424254>, <1.331441,3.502572,0.579977>, 0.050000  material { M_BD2 } }	// #441: "C1_2" -- "D1_2"
  cylinder { <-5.916490,-5.171128,-5.706595>, <-5.171128,-5.916490,-6.555106>, 0.050000  material { M_BD2 } }	// #442: "C1_2" -- "C1_2"
  cylinder { <-5.916490,-5.171128,-5.706595>, <-5.322676,-6.327828,-5.896652>, 0.050000  material { M_BD2 } }	// #443: "C1_2" -- "C2_2"
  cylinder { <-5.916490,-5.171128,-5.706595>, <-6.400509,-4.229377,-5.550873>, 0.050000  material { M_BD2 } }	// #444: "C1_2" -- "D1_2"
  cylinder { <-1.815463,-2.560823,0.424254>, <-2.409276,-1.404123,0.234198>, 0.050000  material { M_BD2 } }	// #445: "C1_2" -- "C2_2"
  cylinder { <-1.815463,-2.560823,0.424254>, <-1.331442,-3.502574,0.579977>, 0.050000  material { M_BD2 } }	// #446: "C1_2" -- "D1_2"
  cylinder { <5.916487,5.171127,-5.706595>, <5.171127,5.916487,-6.555106>, 0.050000  material { M_BD2 } }	// #447: "C1_2" -- "C1_2"
  cylinder { <5.916487,5.171127,-5.706595>, <5.322674,6.327826,-5.896652>, 0.050000  material { M_BD2 } }	// #448: "C1_2" -- "C2_2"
  cylinder { <5.916487,5.171127,-5.706595>, <6.400507,4.229376,-5.550873>, 0.050000  material { M_BD2 } }	// #449: "C1_2" -- "D1_2"
  cylinder { <1.404121,2.409274,-0.234200>, <2.409274,1.404121,0.234198>, 0.050000  material { M_BD2 } }	// #450: "C2_2" -- "C2_2"
  cylinder { <1.404121,2.409274,-0.234200>, <0.460823,2.891747,-0.079702>, 0.050000  material { M_BD2 } }	// #451: "C2_2" -- "D2_2"
  cylinder { <-6.327828,-5.322676,5.896651>, <-5.322675,-6.327828,6.365047>, 0.050000  material { M_BD2 } }	// #452: "C2_2" -- "C2_2"
  cylinder { <-6.327828,-5.322676,5.896651>, <-7.271128,-4.840201,6.051148>, 0.050000  material { M_BD2 } }	// #453: "C2_2" -- "D2_2"
  cylinder { <-2.409276,-6.327828,-3.299624>, <-1.404123,-5.322676,-2.831227>, 0.050000  material { M_BD2 } }	// #454: "C2_2" -- "C2_2"
  cylinder { <-2.409276,-6.327828,-3.299624>, <-2.891750,-7.271128,-3.145127>, 0.050000  material { M_BD2 } }	// #455: "C2_2" -- "D2_2"
  cylinder { <5.322674,1.404121,2.831226>, <6.327826,2.409274,3.299623>, 0.050000  material { M_BD2 } }	// #456: "C2_2" -- "C2_2"
  cylinder { <5.322674,1.404121,2.831226>, <4.840200,0.460822,2.985723>, 0.050000  material { M_BD2 } }	// #457: "C2_2" -- "D2_2"
  cylinder { <-1.404123,-2.409276,-0.234200>, <-2.409276,-1.404123,0.234198>, 0.050000  material { M_BD2 } }	// #458: "C2_2" -- "C2_2"
  cylinder { <-1.404123,-2.409276,-0.234200>, <-0.460825,-2.891750,-0.079702>, 0.050000  material { M_BD2 } }	// #459: "C2_2" -- "D2_2"
  cylinder { <6.327826,5.322674,5.896651>, <5.322674,6.327826,6.365047>, 0.050000  material { M_BD2 } }	// #460: "C2_2" -- "C2_2"
  cylinder { <6.327826,5.322674,5.896651>, <7.271125,4.840200,6.051148>, 0.050000  material { M_BD2 } }	// #461: "C2_2" -- "D2_2"
  cylinder { <2.409274,6.327826,-3.299624>, <1.404121,5.322674,-2.831227>, 0.050000  material { M_BD2 } }	// #462: "C2_2" -- "C2_2"
  cylinder { <2.409274,6.327826,-3.299624>, <2.891747,7.271125,-3.145127>, 0.050000  material { M_BD2 } }	// #463: "C2_2" -- "D2_2"
  cylinder { <-5.322676,-1.404123,2.831226>, <-6.327828,-2.409276,3.299623>, 0.050000  material { M_BD2 } }	// #464: "C2_2" -- "C2_2"
  cylinder { <-5.322676,-1.404123,2.831226>, <-4.840201,-0.460825,2.985723>, 0.050000  material { M_BD2 } }	// #465: "C2_2" -- "D2_2"
  cylinder { <1.404121,5.322674,-2.831227>, <0.460823,4.840200,-2.985724>, 0.050000  material { M_BD2 } }	// #466: "C2_2" -- "D2_2"
  cylinder { <-6.327828,-2.409276,3.299623>, <-7.271128,-2.891750,3.145125>, 0.050000  material { M_BD2 } }	// #467: "C2_2" -- "D2_2"
  cylinder { <-1.404123,-5.322676,-2.831227>, <-0.460825,-4.840201,-2.985724>, 0.050000  material { M_BD2 } }	// #468: "C2_2" -- "D2_2"
  cylinder { <6.327826,2.409274,3.299623>, <7.271125,2.891748,3.145125>, 0.050000  material { M_BD2 } }	// #469: "C2_2" -- "D2_2"
  cylinder { <2.409274,1.404121,0.234198>, <2.891747,0.460823,0.079700>, 0.050000  material { M_BD2 } }	// #470: "C2_2" -- "D2_2"
  cylinder { <-5.322676,-6.327828,-5.896652>, <-6.327828,-5.322675,-6.365048>, 0.050000  material { M_BD2 } }	// #471: "C2_2" -- "C2_2"
  cylinder { <-5.322676,-6.327828,-5.896652>, <-4.840201,-7.271128,-6.051149>, 0.050000  material { M_BD2 } }	// #472: "C2_2" -- "D2_2"
  cylinder { <-2.409276,-1.404123,0.234198>, <-2.891750,-0.460825,0.079700>, 0.050000  material { M_BD2 } }	// #473: "C2_2" -- "D2_2"
  cylinder { <5.322674,6.327826,-5.896652>, <6.327826,5.322674,-6.365048>, 0.050000  material { M_BD2 } }	// #474: "C2_2" -- "C2_2"
  cylinder { <5.322674,6.327826,-5.896652>, <4.840200,7.271125,-6.051149>, 0.050000  material { M_BD2 } }	// #475: "C2_2" -- "D2_2"
  cylinder { <-7.271128,-4.840201,-6.210552>, <-6.327828,-5.322675,-6.365048>, 0.050000  material { M_BD2 } }	// #476: "D2_2" -- "C2_2"
  cylinder { <7.271125,4.840200,-6.210552>, <6.327826,5.322674,-6.365048>, 0.050000  material { M_BD2 } }	// #477: "D2_2" -- "C2_2"
  cylinder { <-4.840201,-7.271128,6.210550>, <-5.322675,-6.327828,6.365047>, 0.050000  material { M_BD2 } }	// #478: "D2_2" -- "C2_2"
  cylinder { <4.840200,7.271125,6.210550>, <5.322674,6.327826,6.365047>, 0.050000  material { M_BD2 } }	// #479: "D2_2" -- "C2_2"

  rotate <0.00000,-0.00000,0.00000>
}

// -- Coming now: 12 cell edges --

union {
  cylinder { <-7.731951,-7.731951,6.130849>, <7.731949,-7.731951,6.130849>, 0.000000  material { M_BD1 } }	// #4: * -- *
  cylinder { <-7.731951,-7.731951,6.130849>, <-7.731951,7.731949,6.130849>, 0.000000  material { M_BD1 } }	// #5: * -- *
  cylinder { <-7.731951,-7.731951,6.130849>, <-7.731951,-7.731951,-6.130851>, 0.000000  material { M_BD1 } }	// #6: * -- *
  cylinder { <7.731949,-7.731951,6.130849>, <7.731949,7.731949,6.130849>, 0.000000  material { M_BD1 } }	// #7: * -- *
  cylinder { <7.731949,-7.731951,6.130849>, <7.731949,-7.731951,-6.130851>, 0.000000  material { M_BD1 } }	// #8: * -- *
  cylinder { <-7.731951,7.731949,6.130849>, <7.731949,7.731949,6.130849>, 0.000000  material { M_BD1 } }	// #9: * -- *
  cylinder { <-7.731951,7.731949,6.130849>, <-7.731951,7.731949,-6.130851>, 0.000000  material { M_BD1 } }	// #10: * -- *
  cylinder { <7.731949,7.731949,6.130849>, <7.731949,7.731949,-6.130851>, 0.000000  material { M_BD1 } }	// #11: * -- *
  cylinder { <-7.731951,-7.731951,-6.130851>, <7.731949,-7.731951,-6.130851>, 0.000000  material { M_BD1 } }	// #12: * -- *
  cylinder { <-7.731951,-7.731951,-6.130851>, <-7.731951,7.731949,-6.130851>, 0.000000  material { M_BD1 } }	// #13: * -- *
  cylinder { <7.731949,-7.731951,-6.130851>, <7.731949,7.731949,-6.130851>, 0.000000  material { M_BD1 } }	// #14: * -- *
  cylinder { <-7.731951,7.731949,-6.130851>, <7.731949,7.731949,-6.130851>, 0.000000  material { M_BD1 } }	// #15: * -- *

  rotate <0.00000,-0.00000,0.00000>
}
