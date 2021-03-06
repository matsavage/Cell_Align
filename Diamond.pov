// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3.5
// Desc: Created by Diamond Crystal and Molecular Structure Visualization
//       Version 4.2.2
//       (c) 1997-2016 Crystal Impact GbR, Bonn, Germany.
//       www.crystalimpact.com
//       Author: Dr. Klaus Brandenburg
// Date: Thursday, September 15, 2016 13:30:41
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
  y, -11.2687
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

// -- Coming now: 450 atoms --

union {
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.71352,-2.69805,0.03684> }	// #5: "In"
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.71352,-4.63414,-3.02859> }	// #6: "In" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <4.64960,-4.63413,6.16769> }	// #7: "In" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <4.64960,-4.63413,-6.09401> }	// #8: "In" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <4.64960,-2.69805,3.10226> }	// #9: "In" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.79599,-3.66610,-1.49587> }	// #10: "O1"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.68156,-3.55166,-4.56130> }	// #11: "O1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.56712,-3.66610,4.63498> }	// #12: "O1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.68156,-3.78053,1.56955> }	// #13: "O1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.61558,-1.59857,-1.37203> }	// #14: "O2"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.61403,-5.73207,-4.43745> }	// #15: "O2" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <5.74753,-5.73362,4.75882> }	// #16: "O2" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <5.74908,-1.60012,1.69339> }	// #17: "O2" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.61558,-5.73362,-1.61972> }	// #18: "O2" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <5.74753,-1.59857,4.51113> }	// #19: "O2" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <5.74908,-5.73207,-4.68514> }	// #20: "O2" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.61403,-1.60012,1.44571> }	// #21: "O2" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.23671,-3.06146,-3.04085> }	// #22: "O3"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.07692,-6.11094,6.15543> }	// #23: "O3" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.07692,-6.11094,-6.10627> }	// #24: "O3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <6.12640,-4.27073,3.09000> }	// #25: "O3" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <4.28619,-1.22125,0.02458> }	// #26: "O3" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.23671,-4.27073,0.04910> }	// #27: "O3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <6.12640,-3.06146,6.17995> }	// #28: "O3" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <6.12640,-3.06146,-6.08175> }	// #29: "O3" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <4.28619,-6.11094,-3.01632> }	// #30: "O3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.07692,-1.22125,3.11453> }	// #31: "O3" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.11610,-1.91094,-2.50256> }	// #32: "C1"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.92640,-6.23156,-5.56798> }	// #33: "C1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.24702,-5.42125,3.62829> }	// #34: "C1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.43671,-1.10063,0.56287> }	// #35: "C1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.11610,-5.42125,-0.48919> }	// #36: "C1" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.24702,-1.91094,5.64166> }	// #37: "C1" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.43671,-6.23156,-3.55461> }	// #38: "C1" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.92640,-1.10063,2.57624> }	// #39: "C1" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.74547,-3.66610,-1.49587> }	// #40: "H1"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.68156,-2.60218,-4.56130> }	// #41: "H1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.61764,-3.66610,4.63498> }	// #42: "H1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.68156,-4.73001,1.56955> }	// #43: "H1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.27331,-3.47434,3.91276> }	// #44: "C1_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.27331,-3.85785,5.35719> }	// #45: "C1_1" [0.449(2) C] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.07308,-3.68001,5.16346> }	// #46: "C2_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.07308,-3.65218,4.10650> }	// #47: "C2_1" [0.449(2) C] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.55630,-3.30888,2.89259> }	// #48: "D1_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.55630,-4.02331,-5.88434> }	// #49: "D1_1" [0.449(2) D] (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.35607,-3.84548,6.18240> }	// #50: "D2_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.35607,-3.84548,-6.07930> }	// #51: "D2_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.35607,-3.48671,3.08755> }	// #52: "D2_1" [0.449(2) D] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.99988,-4.97125,-3.45284> }	// #53: "C1_2" [0.213(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.74524,-1.61558,-0.38742> }	// #54: "C1_2" [0.213(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.74524,-5.71661,-2.60433> }	// #55: "C1_2" [0.213(2) C] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.99988,-2.36094,0.46109> }	// #56: "C1_2" [0.213(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.59369,-6.12795,-3.26278> }	// #57: "C2_2" [0.213(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.58854,-2.20940,-0.19736> }	// #58: "C2_2" [0.213(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.58854,-5.12279,-2.79439> }	// #59: "C2_2" [0.213(2) C] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.59369,-1.20424,0.27104> }	// #60: "C2_2" [0.213(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.51586,-4.02950,-3.60856> }	// #61: "D1_2" [0.213(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.68699,-1.13156,-0.54314> }	// #62: "D1_2" [0.213(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.68699,-6.20063,-2.44861> }	// #63: "D1_2" [0.213(2) D] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.51586,-3.30269,0.61682> }	// #64: "D1_2" [0.213(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.64524,-2.69187,-0.04286> }	// #65: "D2_2" [0.213(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.64524,-4.64032,-2.94888> }	// #66: "D2_2" [0.213(2) D] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.07617,-0.26094,0.11654> }	// #67: "D2_2" [0.213(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.71352,-4.63414,9.23311> }	// #76: "In" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.68156,-3.55166,7.70040> }	// #77: "O1" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <5.74908,-5.73207,7.57656> }	// #78: "O2" (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <4.64960,-2.69805,-9.15944> }	// #79: "In" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.56712,-3.66609,-7.62672> }	// #80: "O1" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <5.74753,-5.73362,-7.50288> }	// #81: "O2" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.92640,-6.23156,6.69372> }	// #82: "C1" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.24702,-1.91094,-6.62004> }	// #83: "C1" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.55630,-4.02331,6.37736> }	// #84: "D1_1" [0.449(2) D] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.27331,-3.85785,-6.90451> }	// #85: "C1_1" [0.449(2) C] (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.07308,-3.68001,-7.09824> }	// #86: "C2_1" [0.449(2) C]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.07617,-7.07125,-3.10829> }	// #87: "D2_2" [0.213(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.61403,-5.73207,7.82424> }	// #88: "O2" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.61558,-5.73362,10.64198> }	// #89: "O2" (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.79599,-3.66609,10.76583> }	// #90: "O1"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <4.28619,-6.11094,9.24538> }	// #91: "O3" (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.23671,-3.06146,9.22085> }	// #92: "O3"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <5.74908,-1.60012,-10.56831> }	// #93: "O2" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <5.74753,-1.59857,-7.75057> }	// #94: "O2" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.68156,-3.78053,-10.69215> }	// #95: "O1" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <3.07692,-1.22125,-9.14717> }	// #96: "O3" (1-y, 1-x, 2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <6.12640,-4.27073,-9.17170> }	// #97: "O3" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-5.01843,5.03390,6.16769> }	// #98: "In" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-5.01843,5.03390,-6.09401> }	// #99: "In" (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-5.01843,3.09782,3.10226> }	// #100: "In" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-3.08235,3.09782,0.03684> }	// #101: "In" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-3.08235,5.03390,-3.02859> }	// #102: "In" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.93596,4.06586,4.63498> }	// #103: "O1" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.05039,4.18029,1.56955> }	// #104: "O1" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.16483,4.06586,-1.49587> }	// #105: "O1" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.05039,3.95142,-4.56130> }	// #106: "O1" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.11637,6.13338,4.75882> }	// #107: "O2" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.11792,1.99988,1.69339> }	// #108: "O2" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.98442,1.99833,-1.37203> }	// #109: "O2" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.98287,6.13183,-4.43745> }	// #110: "O2" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.11637,1.99833,4.51113> }	// #111: "O2" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.98442,6.13338,-1.61972> }	// #112: "O2" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.98287,1.99988,1.44571> }	// #113: "O2" (y, x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.11792,6.13183,-4.68514> }	// #114: "O2" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.49524,4.67049,3.09000> }	// #115: "O3" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.65503,1.62101,0.02458> }	// #116: "O3" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.60555,3.46122,-3.04085> }	// #117: "O3" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.44576,6.51070,6.15543> }	// #118: "O3" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.44576,6.51070,-6.10627> }	// #119: "O3" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.49524,3.46122,6.17995> }	// #120: "O3" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.49524,3.46122,-6.08175> }	// #121: "O3" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.60555,4.67049,0.04910> }	// #122: "O3" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.44576,1.62101,3.11453> }	// #123: "O3" (y, x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.65503,6.51070,-3.01632> }	// #124: "O3" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.61585,5.82101,3.62829> }	// #125: "C1" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.80555,1.50039,0.56287> }	// #126: "C1" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.48493,2.31070,-2.50256> }	// #127: "C1" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.29524,6.63132,-5.56798> }	// #128: "C1" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.61585,2.31070,5.64166> }	// #129: "C1" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.48493,5.82101,-0.48919> }	// #130: "C1" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.29524,1.50039,2.57624> }	// #131: "C1" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.80555,6.63132,-3.55461> }	// #132: "C1" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.35728,-0.88785,-3.22723> }	// #133: "C2"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.37467,6.84410,2.90362> }	// #134: "C2" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.90331,-6.99037,5.96905> }	// #135: "C2" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.82864,0.74158,-0.16180> }	// #136: "C2" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.72612,1.28761,-3.22723> }	// #137: "C2" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.00583,-6.44434,2.90362> }	// #138: "C2" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.27215,7.39013,5.96905> }	// #139: "C2" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.45980,-0.34182,-0.16180> }	// #140: "C2" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.35728,-6.44434,0.23548> }	// #141: "C2" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.37467,1.28761,-5.89537> }	// #142: "C2" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.72612,6.84410,0.23548> }	// #143: "C2" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.00583,-0.88785,-5.89537> }	// #144: "C2" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.27215,0.74158,3.30090> }	// #145: "C2" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.45980,-6.99037,-2.82995> }	// #146: "C2" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.90331,-0.34182,3.30090> }	// #147: "C2" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.82864,7.39013,-2.82995> }	// #148: "C2" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,0.19988,-2.52586> }	// #149: "C3"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,-7.53207,3.60499> }	// #150: "C3" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,-7.53207,3.60499> }	// #151: "C3" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,7.93183,3.60499> }	// #152: "C3" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,7.93183,3.60499> }	// #153: "C3" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,-7.53207,-5.59128> }	// #154: "C3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,7.93183,-5.59128> }	// #155: "C3" (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,0.19988,0.53957> }	// #156: "C3" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,0.19988,0.53957> }	// #157: "C3" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,-7.53207,-0.46589> }	// #158: "C3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,7.93183,-0.46589> }	// #159: "C3" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,0.19988,5.66496> }	// #160: "C3" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,0.19988,5.66496> }	// #161: "C3" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,0.19988,2.59953> }	// #162: "C3" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,-7.53207,-3.53132> }	// #163: "C3" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,-7.53207,-3.53132> }	// #164: "C3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,7.93183,-3.53132> }	// #165: "C3" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,7.93183,-3.53132> }	// #166: "C3" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.35728,-0.88785,-4.62996> }	// #167: "C4"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.37467,6.84410,1.50089> }	// #168: "C4" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.90331,-6.99037,4.56631> }	// #169: "C4" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.82864,0.74158,-1.56454> }	// #170: "C4" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.72612,1.28761,-4.62996> }	// #171: "C4" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.00583,-6.44434,1.50089> }	// #172: "C4" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.27215,7.39013,4.56631> }	// #173: "C4" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.45980,-0.34182,-1.56454> }	// #174: "C4" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.35728,-6.44434,1.63822> }	// #175: "C4" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.37467,1.28761,-4.49263> }	// #176: "C4" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.72612,6.84410,1.63822> }	// #177: "C4" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.00583,-0.88785,-4.49263> }	// #178: "C4" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.27215,0.74158,4.70364> }	// #179: "C4" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.45980,-6.99037,-1.42721> }	// #180: "C4" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.90331,-0.34182,4.70364> }	// #181: "C4" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.82864,7.39013,-1.42721> }	// #182: "C4" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,0.19988,-5.33170> }	// #183: "C5"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,-7.53207,0.79915> }	// #184: "C5" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,-7.53207,0.79915> }	// #185: "C5" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,7.93183,0.79915> }	// #186: "C5" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,7.93183,0.79915> }	// #187: "C5" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,-7.53207,3.86457> }	// #188: "C5" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,7.93183,3.86457> }	// #189: "C5" (1-y, 1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,0.19988,-2.26628> }	// #190: "C5" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,0.19988,-2.26628> }	// #191: "C5" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,-7.53207,2.33995> }	// #192: "C5" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,7.93183,2.33995> }	// #193: "C5" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,0.19988,-3.79090> }	// #194: "C5" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,0.19988,-3.79090> }	// #195: "C5" (1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,0.19988,5.40538> }	// #196: "C5" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,-7.53207,-0.72547> }	// #197: "C5" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,-7.53207,-0.72547> }	// #198: "C5" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,7.93183,-0.72547> }	// #199: "C5" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,7.93183,-0.72547> }	// #200: "C5" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.98648,4.06586,4.63498> }	// #201: "H1" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.05039,5.12977,1.56955> }	// #202: "H1" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.11431,4.06586,-1.49587> }	// #203: "H1" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.05039,3.00194,-4.56130> }	// #204: "H1" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.18442,0.19988,-1.47503> }	// #205: "H3"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.91637,-7.53207,4.65582> }	// #206: "H3" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.54753,-7.53207,4.65582> }	// #207: "H3" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.91637,7.93183,4.65582> }	// #208: "H3" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.54753,7.93183,4.65582> }	// #209: "H3" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.18442,-7.53207,-4.54045> }	// #210: "H3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.18442,7.93183,-4.54045> }	// #211: "H3" (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.91637,0.19988,1.59040> }	// #212: "H3" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.54753,0.19988,1.59040> }	// #213: "H3" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.18442,-7.53207,-1.51672> }	// #214: "H3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.18442,7.93183,-1.51672> }	// #215: "H3" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.91637,0.19988,4.61413> }	// #216: "H3" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.54753,0.19988,4.61413> }	// #217: "H3" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.18442,0.19988,1.54871> }	// #218: "H3" (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.91637,-7.53207,-4.58214> }	// #219: "H3" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.54753,-7.53207,-4.58214> }	// #220: "H3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.91637,7.93183,-4.58214> }	// #221: "H3" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.54753,7.93183,-4.58214> }	// #222: "H3" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.76197,-1.70218,-5.15476> }	// #223: "H4"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.96998,6.02977,0.97609> }	// #224: "H4" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.71764,-6.58568,4.04151> }	// #225: "H4" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.01431,1.14627,-2.08934> }	// #226: "H4" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.13081,2.10194,-5.15476> }	// #227: "H4" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.60114,-5.63001,0.97609> }	// #228: "H4" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.08648,6.98544,4.04151> }	// #229: "H4" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <5.64547,-0.74651,-2.08934> }	// #230: "H4" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.76197,-5.63001,2.16302> }	// #231: "H4" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.96998,2.10194,-3.96783> }	// #232: "H4" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.13081,6.02977,2.16302> }	// #233: "H4" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.60114,-1.70218,-3.96783> }	// #234: "H4" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.08648,1.14627,5.22844> }	// #235: "H4" (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <5.64547,-6.58568,-0.90241> }	// #236: "H4" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.71764,-0.74651,5.22844> }	// #237: "H4" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.01431,6.98544,-0.90241> }	// #238: "H4" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.45864,4.25761,-2.21809> }	// #239: "C1_1" [0.449(2) C] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.48980,-7.07434,0.84734> }	// #240: "C1_1" [0.449(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.24215,0.65761,-5.28351> }	// #241: "C1_1" [0.449(2) C] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.64215,3.87410,3.91276> }	// #242: "C1_1" [0.449(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.08980,-3.85785,-2.21809> }	// #243: "C1_1" [0.449(2) C] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.85864,7.47410,0.84734> }	// #244: "C1_1" [0.449(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87331,-0.25785,-5.28351> }	// #245: "C1_1" [0.449(2) C] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.45864,3.87410,-0.77366> }	// #246: "C1_1" [0.449(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.64215,4.25761,5.35719> }	// #247: "C1_1" [0.449(2) C] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.08980,-3.47434,-0.77366> }	// #248: "C1_1" [0.449(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.85864,0.65761,-3.83908> }	// #249: "C1_1" [0.449(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87331,-7.07434,2.29177> }	// #250: "C1_1" [0.449(2) C] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.48980,-0.25785,-3.83908> }	// #251: "C1_1" [0.449(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.24215,7.47410,2.29177> }	// #252: "C1_1" [0.449(2) C] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.80503,4.05194,-0.96739> }	// #253: "C2_1" [0.449(2) C] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.65887,4.05194,-0.96739> }	// #254: "C2_1" [0.449(2) C] (1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.69547,-7.42073,2.09803> }	// #255: "C2_1" [0.449(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.69547,8.04317,2.09803> }	// #256: "C2_1" [0.449(2) C] (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.03648,0.31122,-4.03282> }	// #257: "C2_1" [0.449(2) C] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.29576,4.07977,5.16346> }	// #258: "C2_1" [0.449(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.02771,-3.65218,-0.96739> }	// #259: "C2_1" [0.449(2) C] (1/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.43619,-3.65218,-0.96739> }	// #260: "C2_1" [0.449(2) C] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.06431,-7.64341,2.09803> }	// #261: "C2_1" [0.449(2) C] (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.06431,7.82049,2.09803> }	// #262: "C2_1" [0.449(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.66764,0.08854,-4.03282> }	// #263: "C2_1" [0.449(2) C] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.80503,4.07977,-2.02435> }	// #264: "C2_1" [0.449(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.65887,4.07977,-2.02435> }	// #265: "C2_1" [0.449(2) C] (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.29576,4.05194,4.10650> }	// #266: "C2_1" [0.449(2) C] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.02771,-3.68001,-2.02435> }	// #267: "C2_1" [0.449(2) C] (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.43619,-3.68001,-2.02435> }	// #268: "C2_1" [0.449(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.06431,0.31122,-5.08978> }	// #269: "C2_1" [0.449(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.66764,-7.42073,1.04107> }	// #270: "C2_1" [0.449(2) C] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.66764,8.04317,1.04107> }	// #271: "C2_1" [0.449(2) C] (1/2+y, 1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.69547,0.08854,-5.08978> }	// #272: "C2_1" [0.449(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.03648,-7.64341,1.04107> }	// #273: "C2_1" [0.449(2) C] (1/2-y, 1/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.03648,7.82049,1.04107> }	// #274: "C2_1" [0.449(2) C] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.17565,4.42307,-3.23826> }	// #275: "D1_1" [0.449(2) D] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.32434,-6.79135,-0.17284> }	// #276: "D1_1" [0.449(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.40761,0.94060,5.95801> }	// #277: "D1_1" [0.449(2) D] (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.92514,3.70864,2.89259> }	// #278: "D1_1" [0.449(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.80681,-4.02331,-3.23826> }	// #279: "D1_1" [0.449(2) D] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.69318,7.19111,-0.17284> }	// #280: "D1_1" [0.449(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.03877,-0.54084,5.95801> }	// #281: "D1_1" [0.449(2) D] (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.17565,3.70864,0.24651> }	// #282: "D1_1" [0.449(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.92514,4.42307,-5.88434> }	// #283: "D1_1" [0.449(2) D] (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.80681,-3.30888,0.24651> }	// #284: "D1_1" [0.449(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.69318,0.94060,-2.81891> }	// #285: "D1_1" [0.449(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.03877,-6.79135,3.31194> }	// #286: "D1_1" [0.449(2) D] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.32434,-0.54084,-2.81891> }	// #287: "D1_1" [0.449(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.40761,7.19111,3.31194> }	// #288: "D1_1" [0.449(2) D] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.37588,3.88647,0.05155> }	// #289: "D2_1" [0.449(2) D] (1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.86094,7.76018,3.11698> }	// #290: "D2_1" [0.449(2) D] (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.87101,0.02823,-3.01387> }	// #291: "D2_1" [0.449(2) D] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.01277,4.24524,6.18240> }	// #292: "D2_1" [0.449(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.01277,4.24524,-6.07930> }	// #293: "D2_1" [0.449(2) D] (1-x, 1-y, 1+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.74472,-3.48671,0.05155> }	// #294: "D2_1" [0.449(2) D] (1/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22978,-7.36042,3.11698> }	// #295: "D2_1" [0.449(2) D] (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50217,0.37153,-3.01387> }	// #296: "D2_1" [0.449(2) D] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.37588,4.24524,-3.04330> }	// #297: "D2_1" [0.449(2) D] (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.01277,3.88647,3.08755> }	// #298: "D2_1" [0.449(2) D] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.74472,-3.84548,-3.04330> }	// #299: "D2_1" [0.449(2) D] (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22978,0.02823,6.15297> }	// #300: "D2_1" [0.449(2) D] (y, x, -z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22978,0.02823,-6.10872> }	// #301: "D2_1" [0.449(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50217,7.76018,0.02212> }	// #302: "D2_1" [0.449(2) D] (1/2+y, 1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.86094,0.37153,6.15297> }	// #303: "D2_1" [0.449(2) D] (1-y, 1-x, -z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.86094,0.37153,-6.10872> }	// #304: "D2_1" [0.449(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.87101,-7.36042,0.02212> }	// #305: "D2_1" [0.449(2) D] (1/2-y, 1/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.37640,2.01534,-0.38742> }	// #306: "C1_2" [0.213(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.35555,-5.71661,5.74343> }	// #307: "C1_2" [0.213(2) C] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.73207,2.76070,2.67801> }	// #308: "C1_2" [0.213(2) C] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.98671,6.11637,5.74343> }	// #309: "C1_2" [0.213(2) C] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.63104,5.37101,-3.45284> }	// #310: "C1_2" [0.213(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.10091,-2.36094,2.67801> }	// #311: "C1_2" [0.213(2) C] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.37640,6.11637,-2.60433> }	// #312: "C1_2" [0.213(2) C] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.35555,-1.61558,3.52652> }	// #313: "C1_2" [0.213(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.98671,2.01534,3.52652> }	// #314: "C1_2" [0.213(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.63104,2.76070,0.46109> }	// #315: "C1_2" [0.213(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.10091,-4.97125,-5.66976> }	// #316: "C1_2" [0.213(2) C] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.73207,5.37101,-5.66976> }	// #317: "C1_2" [0.213(2) C] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.21970,2.60916,-0.19736> }	// #318: "C2_2" [0.213(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.51225,-5.12279,5.93349> }	// #319: "C2_2" [0.213(2) C] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.13826,1.60400,2.86807> }	// #320: "C2_2" [0.213(2) C] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.14341,5.52255,5.93349> }	// #321: "C2_2" [0.213(2) C] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.22486,6.52771,-3.26278> }	// #322: "C2_2" [0.213(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.50709,-1.20424,2.86807> }	// #323: "C2_2" [0.213(2) C] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.21970,5.52255,-2.79439> }	// #324: "C2_2" [0.213(2) C] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.51225,-2.20940,3.33646> }	// #325: "C2_2" [0.213(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.14341,2.60916,3.33646> }	// #326: "C2_2" [0.213(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.22486,1.60400,0.27104> }	// #327: "C2_2" [0.213(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.50709,-6.12795,-5.85981> }	// #328: "C2_2" [0.213(2) C] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.13826,6.52771,-5.85981> }	// #329: "C2_2" [0.213(2) C] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.31815,1.53132,-0.54314> }	// #330: "D1_2" [0.213(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.41380,-6.20063,5.58771> }	// #331: "D1_2" [0.213(2) D] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.21609,3.70245,2.52229> }	// #332: "D1_2" [0.213(2) D] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.04496,6.60039,5.58771> }	// #333: "D1_2" [0.213(2) D] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.14702,4.42926,-3.60856> }	// #334: "D1_2" [0.213(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.58493,-3.30269,2.52229> }	// #335: "D1_2" [0.213(2) D] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.31815,6.60039,-2.44861> }	// #336: "D1_2" [0.213(2) D] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.41380,-1.13156,3.68224> }	// #337: "D1_2" [0.213(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.04496,1.53132,3.68224> }	// #338: "D1_2" [0.213(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.14702,3.70245,0.61682> }	// #339: "D1_2" [0.213(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.58493,-4.02950,-5.51403> }	// #340: "D1_2" [0.213(2) D] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.21609,4.42926,-5.51403> }	// #341: "D1_2" [0.213(2) D] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.27640,3.09163,-0.04286> }	// #342: "D2_2" [0.213(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.45555,-4.64032,6.08799> }	// #343: "D2_2" [0.213(2) D] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.45555,-4.64032,-6.17371> }	// #344: "D2_2" [0.213(2) D] (-1/2+x, -1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.65578,0.66070,3.02256> }	// #345: "D2_2" [0.213(2) D] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.08671,5.04008,6.08799> }	// #346: "D2_2" [0.213(2) D] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.08671,5.04008,-6.17371> }	// #347: "D2_2" [0.213(2) D] (3/2-x, 3/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.70733,7.47101,-3.10829> }	// #348: "D2_2" [0.213(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.02462,-0.26094,3.02256> }	// #349: "D2_2" [0.213(2) D] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.27640,5.04008,-2.94888> }	// #350: "D2_2" [0.213(2) D] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.45555,-2.69187,3.18197> }	// #351: "D2_2" [0.213(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.08671,3.09163,3.18197> }	// #352: "D2_2" [0.213(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.70733,0.66070,0.11654> }	// #353: "D2_2" [0.213(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.02462,-7.07125,6.24739> }	// #354: "D2_2" [0.213(2) D] (-1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.02462,-7.07125,-6.01431> }	// #355: "D2_2" [0.213(2) D] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.65578,7.47101,6.24739> }	// #356: "D2_2" [0.213(2) D] (3/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.65578,7.47101,-6.01431> }	// #357: "D2_2" [0.213(2) D] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.90331,-6.99037,-6.29265> }	// #358: "C2" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.00583,-0.88785,6.36633> }	// #359: "C2" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.71352,-2.69805,12.29854> }	// #360: "In"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.68156,-2.60218,7.70040> }	// #361: "H1" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.43671,-6.23156,8.70709> }	// #362: "C1" (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <2.71352,-2.69805,-12.22486> }	// #363: "In"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.61764,-3.66609,-7.62672> }	// #364: "H1" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.24702,-5.42125,-8.63341> }	// #365: "C1" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.27331,-3.47434,-8.34894> }	// #366: "C1_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.07308,-3.65218,-8.15520> }	// #367: "C2_1" [0.449(2) C] (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.11610,-5.42125,11.77251> }	// #368: "C1" (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.74547,-3.66609,10.76583> }	// #369: "H1"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.11610,-1.91094,9.75914> }	// #370: "C1"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.43671,-1.10063,-11.69883> }	// #371: "C1" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.68156,-4.73001,-10.69215> }	// #372: "H1" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.92640,-1.10063,-9.68546> }	// #373: "C1" (1-y, 1-x, 2-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-3.08235,5.03390,9.23311> }	// #374: "In" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.05039,3.95142,7.70040> }	// #375: "O1" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.11792,6.13183,7.57656> }	// #376: "O2" (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-5.01843,3.09782,-9.15944> }	// #377: "In" (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.93596,4.06586,-7.62672> }	// #378: "O1" (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.11637,6.13338,-7.50288> }	// #379: "O2" (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.29524,6.63132,6.69372> }	// #380: "C1" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.61585,2.31070,-6.62004> }	// #381: "C1" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.27215,7.39013,-6.29265> }	// #382: "C2" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.37467,1.28761,6.36633> }	// #383: "C2" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,-7.53207,6.67042> }	// #384: "C3" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,7.93183,6.67042> }	// #385: "C3" (1-y, 1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.91637,0.19988,-6.59674> }	// #386: "C3" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.54753,0.19988,-6.59674> }	// #387: "C3" (1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.37467,-8.61980,2.90362> }	// #388: "C2" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.45807,-6.44434,2.90362> }	// #389: "C2" (1/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.08923,-8.61980,2.90362> }	// #390: "C2" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.45807,9.01956,2.90362> }	// #391: "C2" (1/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.08923,6.84410,2.90362> }	// #392: "C2" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.00583,9.01956,2.90362> }	// #393: "C2" (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.27215,-8.07377,-6.29265> }	// #394: "C2" (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.90331,8.47353,-6.29265> }	// #395: "C2" (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-9.00410,-0.34182,-0.16180> }	// #396: "C2" (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.63526,0.74158,-0.16180> }	// #397: "C2" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.72612,-8.61980,0.23548> }	// #398: "C2" (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.35728,9.01956,0.23548> }	// #399: "C2" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.45807,-0.88785,6.36633> }	// #400: "C2" (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.08923,1.28761,6.36633> }	// #401: "C2" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-9.00410,-6.99037,-2.82995> }	// #402: "C2" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.82864,-8.07377,-2.82995> }	// #403: "C2" (1/2-y, 1/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.63526,-8.07377,-2.82995> }	// #404: "C2" (3/2-y, 1/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-9.00410,8.47353,-2.82995> }	// #405: "C2" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.45980,8.47353,-2.82995> }	// #406: "C2" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.63526,7.39013,-2.82995> }	// #407: "C2" (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,0.19988,-6.85632> }	// #408: "C5" (y, x, 2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.37467,-8.61980,1.50089> }	// #409: "C4" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.45807,-6.44434,1.50089> }	// #410: "C4" (1/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.08923,-8.61980,1.50089> }	// #411: "C4" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.45807,9.01956,1.50089> }	// #412: "C4" (1/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.08923,6.84410,1.50089> }	// #413: "C4" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.00583,9.01956,1.50089> }	// #414: "C4" (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.27215,-8.07377,4.56631> }	// #415: "C4" (y, 1/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.90331,8.47353,4.56631> }	// #416: "C4" (1-y, 1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-9.00410,-0.34182,-1.56454> }	// #417: "C4" (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.63526,0.74158,-1.56454> }	// #418: "C4" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.72612,-8.61980,1.63822> }	// #419: "C4" (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.35728,9.01956,1.63822> }	// #420: "C4" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.45807,-0.88785,-4.49263> }	// #421: "C4" (1/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.08923,1.28761,-4.49263> }	// #422: "C4" (1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.18442,0.19988,6.93000> }	// #423: "C5"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-9.00410,-6.99037,-1.42721> }	// #424: "C4" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.82864,-8.07377,-1.42721> }	// #425: "C4" (1/2-y, 1/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.63526,-8.07377,-1.42721> }	// #426: "C4" (3/2-y, 1/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-9.00410,8.47353,-1.42721> }	// #427: "C4" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.45980,8.47353,-1.42721> }	// #428: "C4" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.63526,7.39013,-1.42721> }	// #429: "C4" (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-8.08802,4.24524,-3.04330> }	// #430: "D2_1" [0.449(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50217,-7.70372,0.02212> }	// #431: "D2_1" [0.449(2) D] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.40761,0.94060,-6.30369> }	// #432: "D1_1" [0.449(2) D] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.71918,-3.84548,-3.04330> }	// #433: "D2_1" [0.449(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.87101,8.10348,0.02212> }	// #434: "D2_1" [0.449(2) D] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.03877,-0.54084,-6.30369> }	// #435: "D1_1" [0.449(2) D] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-8.08802,3.88647,0.05155> }	// #436: "D2_1" [0.449(2) D] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.92514,4.42307,6.37736> }	// #437: "D1_1" [0.449(2) D] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.71918,-3.48671,0.05155> }	// #438: "D2_1" [0.449(2) D] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.86094,-7.70372,3.11698> }	// #439: "D2_1" [0.449(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22978,8.10348,3.11698> }	// #440: "D2_1" [0.449(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.00526,4.25761,-2.21809> }	// #441: "C1_1" [0.449(2) C] (1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.48980,8.38956,0.84734> }	// #442: "C1_1" [0.449(2) C] (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.37410,-3.85785,-2.21809> }	// #443: "C1_1" [0.449(2) C] (1/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.85864,-7.98980,0.84734> }	// #444: "C1_1" [0.449(2) C] (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <8.00526,3.87410,-0.77366> }	// #445: "C1_1" [0.449(2) C] (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-8.37410,-3.47434,-0.77366> }	// #446: "C1_1" [0.449(2) C] (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87331,8.38956,2.29177> }	// #447: "C1_1" [0.449(2) C] (1/2+y, 1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.24215,-7.98980,2.29177> }	// #448: "C1_1" [0.449(2) C] (1/2-y, 1/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.24215,0.65761,6.97819> }	// #449: "C1_1" [0.449(2) C] (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87331,-0.25785,6.97819> }	// #450: "C1_1" [0.449(2) C] (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.64215,4.25761,-6.90451> }	// #451: "C1_1" [0.449(2) C] (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.29576,4.07977,-7.09824> }	// #452: "C2_1" [0.449(2) C] (1-x, 1-y, 1+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.06431,0.31122,7.17192> }	// #453: "C2_1" [0.449(2) C] (y, x, -z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.69547,0.08854,7.17192> }	// #454: "C2_1" [0.449(2) C] (1-y, 1-x, -z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.10091,-4.97125,6.59194> }	// #455: "C1_2" [0.213(2) C] (-1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.73207,5.37101,6.59194> }	// #456: "C1_2" [0.213(2) C] (3/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.35555,-5.71661,-6.51827> }	// #457: "C1_2" [0.213(2) C] (-1/2+x, -1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.98671,6.11637,-6.51827> }	// #458: "C1_2" [0.213(2) C] (3/2-x, 3/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.50709,-6.12795,6.40189> }	// #459: "C2_2" [0.213(2) C] (-1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.13826,6.52771,6.40189> }	// #460: "C2_2" [0.213(2) C] (3/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.51225,-5.12279,-6.32821> }	// #461: "C2_2" [0.213(2) C] (-1/2+x, -1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.14341,5.52255,-6.32821> }	// #462: "C2_2" [0.213(2) C] (3/2-x, 3/2-y, 1/2+z)

  rotate <179.60089,0.82091,-1.92722>
}

// -- Coming now: 498 bonds --


union {
  cylinder { <2.713516,-2.698055,0.036839>, <2.713517,-4.634135,-3.028586>, 0.050000  material { M_BD2 } }	// #16: "In" -- "In"
  cylinder { <2.713516,-2.698055,0.036839>, <4.649596,-2.698054,3.102264>, 0.050000  material { M_BD2 } }	// #17: "In" -- "In"
  cylinder { <2.713517,-4.634135,-3.028586>, <4.649596,-4.634135,-6.094011>, 0.050000  material { M_BD2 } }	// #24: "In" -- "In"
  cylinder { <4.649596,-4.634135,6.167689>, <2.713516,-4.634135,9.233114>, 0.050000  material { M_BD2 } }	// #31: "In" -- "In"
  cylinder { <4.649596,-4.634135,6.167689>, <4.649596,-2.698054,3.102264>, 0.050000  material { M_BD2 } }	// #32: "In" -- "In"
  cylinder { <4.649596,-4.634135,-6.094011>, <4.649596,-2.698054,-9.159435>, 0.050000  material { M_BD2 } }	// #39: "In" -- "In"
  cylinder { <3.795989,-3.666095,-1.495873>, <4.745471,-3.666095,-1.495873>, 0.050000  material { M_BD2 } }	// #52: "O1" -- "H1"
  cylinder { <3.681556,-3.551661,-4.561298>, <3.681556,-2.602179,-4.561298>, 0.050000  material { M_BD2 } }	// #53: "O1" -- "H1"
  cylinder { <3.567123,-3.666095,4.634976>, <2.617640,-3.666095,4.634976>, 0.050000  material { M_BD2 } }	// #54: "O1" -- "H1"
  cylinder { <3.681556,-3.780528,1.569551>, <3.681556,-4.730011,1.569551>, 0.050000  material { M_BD2 } }	// #55: "O1" -- "H1"
  cylinder { <1.615579,-1.598571,-1.372030>, <1.116095,-1.910942,-2.502558>, 0.050000  material { M_BD2 } }	// #56: "O2" -- "C1"
  cylinder { <1.614032,-5.732072,-4.437455>, <1.926404,-6.231555,-5.567983>, 0.050000  material { M_BD2 } }	// #57: "O2" -- "C1"
  cylinder { <5.747532,-5.733618,4.758820>, <6.247016,-5.421247,3.628292>, 0.050000  material { M_BD2 } }	// #58: "O2" -- "C1"
  cylinder { <5.749079,-1.600118,1.693395>, <5.436708,-1.100634,0.562867>, 0.050000  material { M_BD2 } }	// #59: "O2" -- "C1"
  cylinder { <1.615579,-5.733618,-1.619717>, <1.116095,-5.421247,-0.489188>, 0.050000  material { M_BD2 } }	// #60: "O2" -- "C1"
  cylinder { <5.747532,-1.598571,4.511133>, <6.247016,-1.910942,5.641662>, 0.050000  material { M_BD2 } }	// #61: "O2" -- "C1"
  cylinder { <5.749079,-5.732072,-4.685142>, <5.436708,-6.231555,-3.554614>, 0.050000  material { M_BD2 } }	// #62: "O2" -- "C1"
  cylinder { <1.614032,-1.600118,1.445708>, <1.926404,-1.100634,2.576237>, 0.050000  material { M_BD2 } }	// #63: "O2" -- "C1"
  cylinder { <1.236713,-3.061456,-3.040847>, <1.116095,-1.910942,-2.502558>, 0.050000  material { M_BD2 } }	// #64: "O3" -- "C1"
  cylinder { <3.076917,-6.110938,6.155428>, <1.926404,-6.231555,6.693716>, 0.050000  material { M_BD2 } }	// #65: "O3" -- "C1"
  cylinder { <3.076917,-6.110938,-6.106271>, <1.926404,-6.231555,-5.567983>, 0.050000  material { M_BD2 } }	// #66: "O3" -- "C1"
  cylinder { <6.126399,-4.270733,3.090003>, <6.247016,-5.421247,3.628292>, 0.050000  material { M_BD2 } }	// #67: "O3" -- "C1"
  cylinder { <4.286194,-1.221252,0.024578>, <5.436708,-1.100634,0.562867>, 0.050000  material { M_BD2 } }	// #68: "O3" -- "C1"
  cylinder { <1.236713,-4.270733,0.049100>, <1.116095,-5.421247,-0.489188>, 0.050000  material { M_BD2 } }	// #69: "O3" -- "C1"
  cylinder { <6.126399,-3.061457,6.179950>, <6.247016,-1.910942,5.641662>, 0.050000  material { M_BD2 } }	// #70: "O3" -- "C1"
  cylinder { <6.126399,-3.061457,-6.081749>, <6.247016,-1.910942,-6.620039>, 0.050000  material { M_BD2 } }	// #71: "O3" -- "C1"
  cylinder { <4.286194,-6.110938,-3.016325>, <5.436708,-6.231555,-3.554614>, 0.050000  material { M_BD2 } }	// #72: "O3" -- "C1"
  cylinder { <3.076917,-1.221252,3.114526>, <1.926404,-1.100634,2.576237>, 0.050000  material { M_BD2 } }	// #73: "O3" -- "C1"
  cylinder { <0.273313,-3.474342,3.912762>, <0.273313,-3.857847,5.357191>, 0.050000  material { M_BD2 } }	// #74: "C1_1" -- "C1_1"
  cylinder { <0.273313,-3.474342,3.912762>, <-0.073079,-3.680012,5.163455>, 0.050000  material { M_BD2 } }	// #75: "C1_1" -- "C2_1"
  cylinder { <0.273313,-3.474342,3.912762>, <0.556302,-3.308879,2.892589>, 0.050000  material { M_BD2 } }	// #76: "C1_1" -- "D1_1"
  cylinder { <0.273313,-3.474342,3.912762>, <-0.356068,-3.486713,3.087550>, 0.050000  material { M_BD2 } }	// #77: "C1_1" -- "D2_1"
  cylinder { <0.273313,-3.857847,5.357191>, <-0.073079,-3.652177,4.106497>, 0.050000  material { M_BD2 } }	// #78: "C1_1" -- "C2_1"
  cylinder { <0.273313,-3.857847,5.357191>, <0.556302,-4.023311,6.377364>, 0.050000  material { M_BD2 } }	// #79: "C1_1" -- "D1_1"
  cylinder { <0.273313,-3.857847,5.357191>, <-0.356068,-3.845476,6.182403>, 0.050000  material { M_BD2 } }	// #80: "C1_1" -- "D2_1"
  cylinder { <-0.073079,-3.680012,5.163455>, <-0.073079,-3.652177,4.106497>, 0.050000  material { M_BD2 } }	// #81: "C2_1" -- "C2_1"
  cylinder { <-0.073079,-3.680012,5.163455>, <-0.356068,-3.845476,6.182403>, 0.050000  material { M_BD2 } }	// #82: "C2_1" -- "D2_1"
  cylinder { <-0.073079,-3.652177,4.106497>, <-0.356068,-3.486713,3.087550>, 0.050000  material { M_BD2 } }	// #83: "C2_1" -- "D2_1"
  cylinder { <0.556302,-4.023311,-5.884336>, <0.273313,-3.857847,-6.904509>, 0.050000  material { M_BD2 } }	// #84: "D1_1" -- "C1_1"
  cylinder { <-0.356068,-3.845476,-6.079297>, <0.273313,-3.857847,-6.904509>, 0.050000  material { M_BD2 } }	// #85: "D2_1" -- "C1_1"
  cylinder { <-0.356068,-3.845476,-6.079297>, <-0.073079,-3.680012,-7.098244>, 0.050000  material { M_BD2 } }	// #86: "D2_1" -- "C2_1"
  cylinder { <-1.999881,-4.971247,-3.452841>, <-2.745241,-5.716609,-2.604331>, 0.050000  material { M_BD2 } }	// #87: "C1_2" -- "C1_2"
  cylinder { <-1.999881,-4.971247,-3.452841>, <-2.593695,-6.127947,-3.262784>, 0.050000  material { M_BD2 } }	// #88: "C1_2" -- "C2_2"
  cylinder { <-1.999881,-4.971247,-3.452841>, <-1.515861,-4.029496,-3.608564>, 0.050000  material { M_BD2 } }	// #89: "C1_2" -- "D1_2"
  cylinder { <-2.745241,-1.615582,-0.387416>, <-1.999881,-2.360942,0.461094>, 0.050000  material { M_BD2 } }	// #90: "C1_2" -- "C1_2"
  cylinder { <-2.745241,-1.615582,-0.387416>, <-1.588541,-2.209395,-0.197360>, 0.050000  material { M_BD2 } }	// #91: "C1_2" -- "C2_2"
  cylinder { <-2.745241,-1.615582,-0.387416>, <-3.686992,-1.131561,-0.543139>, 0.050000  material { M_BD2 } }	// #92: "C1_2" -- "D1_2"
  cylinder { <-2.745241,-5.716609,-2.604331>, <-1.588541,-5.122794,-2.794387>, 0.050000  material { M_BD2 } }	// #93: "C1_2" -- "C2_2"
  cylinder { <-2.745241,-5.716609,-2.604331>, <-3.686992,-6.200628,-2.448608>, 0.050000  material { M_BD2 } }	// #94: "C1_2" -- "D1_2"
  cylinder { <-1.999881,-2.360942,0.461094>, <-2.593695,-1.204242,0.271038>, 0.050000  material { M_BD2 } }	// #95: "C1_2" -- "C2_2"
  cylinder { <-1.999881,-2.360942,0.461094>, <-1.515861,-3.302693,0.616817>, 0.050000  material { M_BD2 } }	// #96: "C1_2" -- "D1_2"
  cylinder { <-1.588541,-2.209395,-0.197360>, <-2.593695,-1.204242,0.271038>, 0.050000  material { M_BD2 } }	// #97: "C2_2" -- "C2_2"
  cylinder { <-1.588541,-2.209395,-0.197360>, <-0.645243,-2.691869,-0.042862>, 0.050000  material { M_BD2 } }	// #98: "C2_2" -- "D2_2"
  cylinder { <-1.588541,-5.122794,-2.794387>, <-0.645243,-4.640320,-2.948884>, 0.050000  material { M_BD2 } }	// #99: "C2_2" -- "D2_2"
  cylinder { <-2.593695,-1.204242,0.271038>, <-3.076168,-0.260944,0.116540>, 0.050000  material { M_BD2 } }	// #100: "C2_2" -- "D2_2"
  cylinder { <-2.593695,-6.127947,-3.262784>, <-1.588541,-5.122794,-2.794387>, 0.050000  material { M_BD2 } }	// #101: "C2_2" -- "C2_2"
  cylinder { <-2.593695,-6.127947,-3.262784>, <-3.076168,-7.071247,-3.108287>, 0.050000  material { M_BD2 } }	// #102: "C2_2" -- "D2_2"
  cylinder { <1.116095,-1.910942,-2.502558>, <0.357281,-0.887851,-3.227226>, 0.050000  material { M_BD2 } }	// #103: "C1" -- "C2"
  cylinder { <1.926404,-6.231555,-5.567983>, <0.903312,-6.990369,-6.292651>, 0.050000  material { M_BD2 } }	// #104: "C1" -- "C2"
  cylinder { <6.247016,-5.421247,3.628292>, <7.005830,-6.444339,2.903624>, 0.050000  material { M_BD2 } }	// #105: "C1" -- "C2"
  cylinder { <5.436708,-1.100634,0.562867>, <6.459799,-0.341820,-0.161801>, 0.050000  material { M_BD2 } }	// #106: "C1" -- "C2"
  cylinder { <1.116095,-5.421247,-0.489188>, <0.357281,-6.444339,0.235478>, 0.050000  material { M_BD2 } }	// #107: "C1" -- "C2"
  cylinder { <6.247016,-1.910942,5.641662>, <7.005830,-0.887851,6.366328>, 0.050000  material { M_BD2 } }	// #108: "C1" -- "C2"
  cylinder { <5.436708,-6.231555,-3.554614>, <6.459799,-6.990369,-2.829946>, 0.050000  material { M_BD2 } }	// #109: "C1" -- "C2"
  cylinder { <1.926404,-1.100634,2.576237>, <0.903312,-0.341820,3.300904>, 0.050000  material { M_BD2 } }	// #110: "C1" -- "C2"
  cylinder { <2.713516,-4.634135,9.233114>, <2.713516,-2.698055,12.298538>, 0.050000  material { M_BD2 } }	// #111: "In" -- "In"
  cylinder { <3.681556,-3.551661,7.700401>, <3.681556,-2.602179,7.700401>, 0.050000  material { M_BD2 } }	// #118: "O1" -- "H1"
  cylinder { <5.749079,-5.732072,7.576558>, <5.436708,-6.231555,8.707087>, 0.050000  material { M_BD2 } }	// #119: "O2" -- "C1"
  cylinder { <4.649596,-2.698054,-9.159435>, <2.713516,-2.698055,-12.224861>, 0.050000  material { M_BD2 } }	// #120: "In" -- "In"
  cylinder { <3.567123,-3.666095,-7.626724>, <2.617640,-3.666095,-7.626724>, 0.050000  material { M_BD2 } }	// #127: "O1" -- "H1"
  cylinder { <5.747532,-5.733618,-7.502880>, <6.247016,-5.421247,-8.633408>, 0.050000  material { M_BD2 } }	// #128: "O2" -- "C1"
  cylinder { <1.926404,-6.231555,6.693716>, <1.614032,-5.732072,7.824244>, 0.050000  material { M_BD2 } }	// #129: "C1" -- "O2"
  cylinder { <1.926404,-6.231555,6.693716>, <0.903312,-6.990369,5.969049>, 0.050000  material { M_BD2 } }	// #130: "C1" -- "C2"
  cylinder { <6.247016,-1.910942,-6.620039>, <5.747532,-1.598571,-7.750567>, 0.050000  material { M_BD2 } }	// #131: "C1" -- "O2"
  cylinder { <6.247016,-1.910942,-6.620039>, <7.005830,-0.887851,-5.895371>, 0.050000  material { M_BD2 } }	// #132: "C1" -- "C2"
  cylinder { <0.273313,-3.857847,-6.904509>, <0.273313,-3.474342,-8.348938>, 0.050000  material { M_BD2 } }	// #133: "C1_1" -- "C1_1"
  cylinder { <0.273313,-3.857847,-6.904509>, <-0.073079,-3.652177,-8.155203>, 0.050000  material { M_BD2 } }	// #134: "C1_1" -- "C2_1"
  cylinder { <-0.073079,-3.680012,-7.098244>, <0.273313,-3.474342,-8.348938>, 0.050000  material { M_BD2 } }	// #135: "C2_1" -- "C1_1"
  cylinder { <-0.073079,-3.680012,-7.098244>, <-0.073079,-3.652177,-8.155203>, 0.050000  material { M_BD2 } }	// #136: "C2_1" -- "C2_1"
  cylinder { <1.615579,-5.733618,10.641983>, <1.116095,-5.421247,11.772511>, 0.050000  material { M_BD2 } }	// #137: "O2" -- "C1"
  cylinder { <3.795989,-3.666095,10.765826>, <2.713516,-2.698055,12.298538>, 0.050000  material { M_BD2 } }	// #138: "O1" -- "In"
  cylinder { <3.795989,-3.666095,10.765826>, <4.745471,-3.666095,10.765826>, 0.050000  material { M_BD2 } }	// #139: "O1" -- "H1"
  cylinder { <4.286194,-6.110938,9.245376>, <5.436708,-6.231555,8.707087>, 0.050000  material { M_BD2 } }	// #140: "O3" -- "C1"
  cylinder { <1.236713,-3.061456,9.220852>, <1.116095,-1.910942,9.759141>, 0.050000  material { M_BD2 } }	// #141: "O3" -- "C1"
  cylinder { <5.749079,-1.600118,-10.568306>, <5.436708,-1.100634,-11.698833>, 0.050000  material { M_BD2 } }	// #142: "O2" -- "C1"
  cylinder { <3.681556,-3.780527,-10.692148>, <2.713516,-2.698055,-12.224861>, 0.050000  material { M_BD2 } }	// #143: "O1" -- "In"
  cylinder { <3.681556,-3.780527,-10.692148>, <3.681556,-4.730011,-10.692148>, 0.050000  material { M_BD2 } }	// #144: "O1" -- "H1"
  cylinder { <3.076917,-1.221252,-9.147175>, <1.926404,-1.100634,-9.685463>, 0.050000  material { M_BD2 } }	// #145: "O3" -- "C1"
  cylinder { <6.126399,-4.270733,-9.171696>, <6.247016,-5.421247,-8.633408>, 0.050000  material { M_BD2 } }	// #146: "O3" -- "C1"
  cylinder { <-5.018435,5.033895,6.167689>, <-5.018434,3.097815,3.102264>, 0.050000  material { M_BD2 } }	// #147: "In" -- "In"
  cylinder { <-5.018435,5.033895,6.167689>, <-3.082354,5.033895,9.233114>, 0.050000  material { M_BD2 } }	// #148: "In" -- "In"
  cylinder { <-5.018435,5.033895,6.167689>, <-3.935961,4.065856,4.634976>, 0.050000  material { M_BD2 } }	// #149: "In" -- "O1"
  cylinder { <-5.018435,5.033895,6.167689>, <-4.050394,3.951422,7.700401>, 0.050000  material { M_BD2 } }	// #150: "In" -- "O1"
  cylinder { <-5.018435,5.033895,6.167689>, <-6.116371,6.133379,4.758820>, 0.050000  material { M_BD2 } }	// #151: "In" -- "O2"
  cylinder { <-5.018435,5.033895,6.167689>, <-6.117918,6.131832,7.576558>, 0.050000  material { M_BD2 } }	// #152: "In" -- "O2"
  cylinder { <-5.018435,5.033895,6.167689>, <-3.445755,6.510698,6.155428>, 0.050000  material { M_BD2 } }	// #153: "In" -- "O3"
  cylinder { <-5.018435,5.033895,6.167689>, <-6.495237,3.461216,6.179950>, 0.050000  material { M_BD2 } }	// #154: "In" -- "O3"
  cylinder { <-5.018435,5.033895,-6.094011>, <-5.018434,3.097815,-9.159435>, 0.050000  material { M_BD2 } }	// #155: "In" -- "In"
  cylinder { <-5.018435,5.033895,-6.094011>, <-3.082354,5.033895,-3.028586>, 0.050000  material { M_BD2 } }	// #156: "In" -- "In"
  cylinder { <-5.018435,5.033895,-6.094011>, <-3.935961,4.065856,-7.626724>, 0.050000  material { M_BD2 } }	// #157: "In" -- "O1"
  cylinder { <-5.018435,5.033895,-6.094011>, <-4.050394,3.951422,-4.561298>, 0.050000  material { M_BD2 } }	// #158: "In" -- "O1"
  cylinder { <-5.018435,5.033895,-6.094011>, <-6.116371,6.133379,-7.502880>, 0.050000  material { M_BD2 } }	// #159: "In" -- "O2"
  cylinder { <-5.018435,5.033895,-6.094011>, <-6.117918,6.131832,-4.685142>, 0.050000  material { M_BD2 } }	// #160: "In" -- "O2"
  cylinder { <-5.018435,5.033895,-6.094011>, <-3.445755,6.510698,-6.106271>, 0.050000  material { M_BD2 } }	// #161: "In" -- "O3"
  cylinder { <-5.018435,5.033895,-6.094011>, <-6.495237,3.461216,-6.081749>, 0.050000  material { M_BD2 } }	// #162: "In" -- "O3"
  cylinder { <-5.018434,3.097815,3.102264>, <-3.082354,3.097816,0.036839>, 0.050000  material { M_BD2 } }	// #163: "In" -- "In"
  cylinder { <-5.018434,3.097815,3.102264>, <-3.935961,4.065856,4.634976>, 0.050000  material { M_BD2 } }	// #164: "In" -- "O1"
  cylinder { <-5.018434,3.097815,3.102264>, <-4.050394,4.180289,1.569551>, 0.050000  material { M_BD2 } }	// #165: "In" -- "O1"
  cylinder { <-5.018434,3.097815,3.102264>, <-6.117918,1.999878,1.693395>, 0.050000  material { M_BD2 } }	// #166: "In" -- "O2"
  cylinder { <-5.018434,3.097815,3.102264>, <-6.116371,1.998332,4.511133>, 0.050000  material { M_BD2 } }	// #167: "In" -- "O2"
  cylinder { <-5.018434,3.097815,3.102264>, <-6.495237,4.670494,3.090003>, 0.050000  material { M_BD2 } }	// #168: "In" -- "O3"
  cylinder { <-5.018434,3.097815,3.102264>, <-3.445755,1.621012,3.114526>, 0.050000  material { M_BD2 } }	// #169: "In" -- "O3"
  cylinder { <-3.082354,3.097816,0.036839>, <-3.082354,5.033895,-3.028586>, 0.050000  material { M_BD2 } }	// #170: "In" -- "In"
  cylinder { <-3.082354,3.097816,0.036839>, <-4.050394,4.180289,1.569551>, 0.050000  material { M_BD2 } }	// #171: "In" -- "O1"
  cylinder { <-3.082354,3.097816,0.036839>, <-4.164827,4.065856,-1.495873>, 0.050000  material { M_BD2 } }	// #172: "In" -- "O1"
  cylinder { <-3.082354,3.097816,0.036839>, <-1.984417,1.998332,-1.372030>, 0.050000  material { M_BD2 } }	// #173: "In" -- "O2"
  cylinder { <-3.082354,3.097816,0.036839>, <-1.982871,1.999878,1.445708>, 0.050000  material { M_BD2 } }	// #174: "In" -- "O2"
  cylinder { <-3.082354,3.097816,0.036839>, <-4.655032,1.621012,0.024578>, 0.050000  material { M_BD2 } }	// #175: "In" -- "O3"
  cylinder { <-3.082354,3.097816,0.036839>, <-1.605551,4.670494,0.049100>, 0.050000  material { M_BD2 } }	// #176: "In" -- "O3"
  cylinder { <-3.082354,5.033895,-3.028586>, <-4.164827,4.065856,-1.495873>, 0.050000  material { M_BD2 } }	// #177: "In" -- "O1"
  cylinder { <-3.082354,5.033895,-3.028586>, <-4.050394,3.951422,-4.561298>, 0.050000  material { M_BD2 } }	// #178: "In" -- "O1"
  cylinder { <-3.082354,5.033895,-3.028586>, <-1.982871,6.131832,-4.437455>, 0.050000  material { M_BD2 } }	// #179: "In" -- "O2"
  cylinder { <-3.082354,5.033895,-3.028586>, <-1.984417,6.133379,-1.619717>, 0.050000  material { M_BD2 } }	// #180: "In" -- "O2"
  cylinder { <-3.082354,5.033895,-3.028586>, <-1.605551,3.461216,-3.040847>, 0.050000  material { M_BD2 } }	// #181: "In" -- "O3"
  cylinder { <-3.082354,5.033895,-3.028586>, <-4.655032,6.510698,-3.016325>, 0.050000  material { M_BD2 } }	// #182: "In" -- "O3"
  cylinder { <-3.935961,4.065856,4.634976>, <-2.986478,4.065856,4.634976>, 0.050000  material { M_BD2 } }	// #183: "O1" -- "H1"
  cylinder { <-4.050394,4.180289,1.569551>, <-4.050394,5.129771,1.569551>, 0.050000  material { M_BD2 } }	// #184: "O1" -- "H1"
  cylinder { <-4.164827,4.065856,-1.495873>, <-5.114310,4.065856,-1.495873>, 0.050000  material { M_BD2 } }	// #185: "O1" -- "H1"
  cylinder { <-4.050394,3.951422,-4.561298>, <-4.050394,3.001939,-4.561298>, 0.050000  material { M_BD2 } }	// #186: "O1" -- "H1"
  cylinder { <-6.116371,6.133379,4.758820>, <-6.615855,5.821007,3.628292>, 0.050000  material { M_BD2 } }	// #187: "O2" -- "C1"
  cylinder { <-6.117918,1.999878,1.693395>, <-5.805547,1.500394,0.562867>, 0.050000  material { M_BD2 } }	// #188: "O2" -- "C1"
  cylinder { <-1.984417,1.998332,-1.372030>, <-1.484933,2.310703,-2.502558>, 0.050000  material { M_BD2 } }	// #189: "O2" -- "C1"
  cylinder { <-1.982871,6.131832,-4.437455>, <-2.295241,6.631316,-5.567983>, 0.050000  material { M_BD2 } }	// #190: "O2" -- "C1"
  cylinder { <-6.116371,1.998332,4.511133>, <-6.615855,2.310703,5.641662>, 0.050000  material { M_BD2 } }	// #191: "O2" -- "C1"
  cylinder { <-1.984417,6.133379,-1.619717>, <-1.484933,5.821007,-0.489188>, 0.050000  material { M_BD2 } }	// #192: "O2" -- "C1"
  cylinder { <-1.982871,1.999878,1.445708>, <-2.295241,1.500394,2.576237>, 0.050000  material { M_BD2 } }	// #193: "O2" -- "C1"
  cylinder { <-6.117918,6.131832,-4.685142>, <-5.805547,6.631316,-3.554614>, 0.050000  material { M_BD2 } }	// #194: "O2" -- "C1"
  cylinder { <-6.495237,4.670494,3.090003>, <-6.615855,5.821007,3.628292>, 0.050000  material { M_BD2 } }	// #195: "O3" -- "C1"
  cylinder { <-4.655032,1.621012,0.024578>, <-5.805547,1.500394,0.562867>, 0.050000  material { M_BD2 } }	// #196: "O3" -- "C1"
  cylinder { <-1.605551,3.461216,-3.040847>, <-1.484933,2.310703,-2.502558>, 0.050000  material { M_BD2 } }	// #197: "O3" -- "C1"
  cylinder { <-3.445755,6.510698,6.155428>, <-2.295241,6.631316,6.693716>, 0.050000  material { M_BD2 } }	// #198: "O3" -- "C1"
  cylinder { <-3.445755,6.510698,-6.106271>, <-2.295241,6.631316,-5.567983>, 0.050000  material { M_BD2 } }	// #199: "O3" -- "C1"
  cylinder { <-6.495237,3.461216,6.179950>, <-6.615855,2.310703,5.641662>, 0.050000  material { M_BD2 } }	// #200: "O3" -- "C1"
  cylinder { <-6.495237,3.461216,-6.081749>, <-6.615855,2.310703,-6.620039>, 0.050000  material { M_BD2 } }	// #201: "O3" -- "C1"
  cylinder { <-1.605551,4.670494,0.049100>, <-1.484933,5.821007,-0.489188>, 0.050000  material { M_BD2 } }	// #202: "O3" -- "C1"
  cylinder { <-3.445755,1.621012,3.114526>, <-2.295241,1.500394,2.576237>, 0.050000  material { M_BD2 } }	// #203: "O3" -- "C1"
  cylinder { <-4.655032,6.510698,-3.016325>, <-5.805547,6.631316,-3.554614>, 0.050000  material { M_BD2 } }	// #204: "O3" -- "C1"
  cylinder { <-6.615855,5.821007,3.628292>, <-7.374669,6.844099,2.903624>, 0.050000  material { M_BD2 } }	// #205: "C1" -- "C2"
  cylinder { <-5.805547,1.500394,0.562867>, <-6.828638,0.741580,-0.161801>, 0.050000  material { M_BD2 } }	// #206: "C1" -- "C2"
  cylinder { <-1.484933,2.310703,-2.502558>, <-0.726120,1.287611,-3.227226>, 0.050000  material { M_BD2 } }	// #207: "C1" -- "C2"
  cylinder { <-2.295241,6.631316,-5.567983>, <-1.272151,7.390130,-6.292651>, 0.050000  material { M_BD2 } }	// #208: "C1" -- "C2"
  cylinder { <-6.615855,2.310703,5.641662>, <-7.374669,1.287611,6.366328>, 0.050000  material { M_BD2 } }	// #209: "C1" -- "C2"
  cylinder { <-1.484933,5.821007,-0.489188>, <-0.726120,6.844099,0.235478>, 0.050000  material { M_BD2 } }	// #210: "C1" -- "C2"
  cylinder { <-2.295241,1.500394,2.576237>, <-1.272150,0.741580,3.300904>, 0.050000  material { M_BD2 } }	// #211: "C1" -- "C2"
  cylinder { <-5.805547,6.631316,-3.554614>, <-6.828638,7.390130,-2.829946>, 0.050000  material { M_BD2 } }	// #212: "C1" -- "C2"
  cylinder { <0.357281,-0.887851,-3.227226>, <-0.184419,0.199880,-2.525856>, 0.050000  material { M_BD2 } }	// #213: "C2" -- "C3"
  cylinder { <0.357281,-0.887851,-3.227226>, <0.357281,-0.887851,-4.629963>, 0.050000  material { M_BD2 } }	// #214: "C2" -- "C4"
  cylinder { <-7.374669,6.844099,2.903624>, <-7.916369,7.931830,3.604994>, 0.050000  material { M_BD2 } }	// #215: "C2" -- "C3"
  cylinder { <-7.374669,6.844099,2.903624>, <-7.374669,6.844099,1.500886>, 0.050000  material { M_BD2 } }	// #216: "C2" -- "C4"
  cylinder { <0.903312,-6.990369,5.969049>, <-0.184419,-7.532070,6.670419>, 0.050000  material { M_BD2 } }	// #217: "C2" -- "C3"
  cylinder { <0.903312,-6.990369,5.969049>, <0.903312,-6.990369,4.566311>, 0.050000  material { M_BD2 } }	// #218: "C2" -- "C4"
  cylinder { <-6.828638,0.741580,-0.161801>, <-7.916369,0.199880,0.539569>, 0.050000  material { M_BD2 } }	// #219: "C2" -- "C3"
  cylinder { <-6.828638,0.741580,-0.161801>, <-6.828638,0.741580,-1.564538>, 0.050000  material { M_BD2 } }	// #220: "C2" -- "C4"
  cylinder { <-0.726120,1.287611,-3.227226>, <-0.184419,0.199880,-2.525856>, 0.050000  material { M_BD2 } }	// #221: "C2" -- "C3"
  cylinder { <-0.726120,1.287611,-3.227226>, <-0.726120,1.287611,-4.629963>, 0.050000  material { M_BD2 } }	// #222: "C2" -- "C4"
  cylinder { <7.005830,-6.444339,2.903624>, <7.547531,-7.532070,3.604994>, 0.050000  material { M_BD2 } }	// #223: "C2" -- "C3"
  cylinder { <7.005830,-6.444339,2.903624>, <7.005830,-6.444339,1.500886>, 0.050000  material { M_BD2 } }	// #224: "C2" -- "C4"
  cylinder { <-1.272150,7.390130,5.969049>, <-2.295241,6.631316,6.693716>, 0.050000  material { M_BD2 } }	// #225: "C2" -- "C1"
  cylinder { <-1.272150,7.390130,5.969049>, <-0.184419,7.931830,6.670419>, 0.050000  material { M_BD2 } }	// #226: "C2" -- "C3"
  cylinder { <-1.272150,7.390130,5.969049>, <-1.272150,7.390130,4.566311>, 0.050000  material { M_BD2 } }	// #227: "C2" -- "C4"
  cylinder { <6.459799,-0.341820,-0.161801>, <7.547531,0.199880,0.539569>, 0.050000  material { M_BD2 } }	// #228: "C2" -- "C3"
  cylinder { <6.459799,-0.341820,-0.161801>, <6.459799,-0.341820,-1.564538>, 0.050000  material { M_BD2 } }	// #229: "C2" -- "C4"
  cylinder { <0.357281,-6.444339,0.235478>, <-0.184419,-7.532070,-0.465891>, 0.050000  material { M_BD2 } }	// #230: "C2" -- "C3"
  cylinder { <0.357281,-6.444339,0.235478>, <0.357281,-6.444339,1.638216>, 0.050000  material { M_BD2 } }	// #231: "C2" -- "C4"
  cylinder { <-7.374669,1.287611,-5.895371>, <-6.615855,2.310703,-6.620039>, 0.050000  material { M_BD2 } }	// #232: "C2" -- "C1"
  cylinder { <-7.374669,1.287611,-5.895371>, <-7.916369,0.199880,-6.596740>, 0.050000  material { M_BD2 } }	// #233: "C2" -- "C3"
  cylinder { <-7.374669,1.287611,-5.895371>, <-7.374669,1.287611,-4.492633>, 0.050000  material { M_BD2 } }	// #234: "C2" -- "C4"
  cylinder { <-0.726120,6.844099,0.235478>, <-0.184419,7.931830,-0.465891>, 0.050000  material { M_BD2 } }	// #235: "C2" -- "C3"
  cylinder { <-0.726120,6.844099,0.235478>, <-0.726120,6.844099,1.638216>, 0.050000  material { M_BD2 } }	// #236: "C2" -- "C4"
  cylinder { <7.005830,-0.887851,-5.895371>, <7.547531,0.199880,-6.596740>, 0.050000  material { M_BD2 } }	// #237: "C2" -- "C3"
  cylinder { <7.005830,-0.887851,-5.895371>, <7.005830,-0.887851,-4.492633>, 0.050000  material { M_BD2 } }	// #238: "C2" -- "C4"
  cylinder { <-1.272150,0.741580,3.300904>, <-0.184419,0.199880,2.599534>, 0.050000  material { M_BD2 } }	// #239: "C2" -- "C3"
  cylinder { <-1.272150,0.741580,3.300904>, <-1.272150,0.741580,4.703641>, 0.050000  material { M_BD2 } }	// #240: "C2" -- "C4"
  cylinder { <6.459799,-6.990369,-2.829946>, <7.547531,-7.532070,-3.531315>, 0.050000  material { M_BD2 } }	// #241: "C2" -- "C3"
  cylinder { <6.459799,-6.990369,-2.829946>, <6.459799,-6.990369,-1.427208>, 0.050000  material { M_BD2 } }	// #242: "C2" -- "C4"
  cylinder { <0.903312,-0.341820,3.300904>, <-0.184419,0.199880,2.599534>, 0.050000  material { M_BD2 } }	// #243: "C2" -- "C3"
  cylinder { <0.903312,-0.341820,3.300904>, <0.903312,-0.341820,4.703641>, 0.050000  material { M_BD2 } }	// #244: "C2" -- "C4"
  cylinder { <-6.828638,7.390130,-2.829946>, <-7.916369,7.931830,-3.531315>, 0.050000  material { M_BD2 } }	// #245: "C2" -- "C3"
  cylinder { <-6.828638,7.390130,-2.829946>, <-6.828638,7.390130,-1.427208>, 0.050000  material { M_BD2 } }	// #246: "C2" -- "C4"
  cylinder { <-0.184419,0.199880,-2.525856>, <-0.184419,0.199880,-1.475029>, 0.050000  material { M_BD2 } }	// #247: "C3" -- "H3"
  cylinder { <-7.916369,-7.532070,3.604994>, <-7.374668,-8.619801,2.903624>, 0.050000  material { M_BD2 } }	// #248: "C3" -- "C2"
  cylinder { <-7.916369,-7.532070,3.604994>, <-8.458070,-6.444339,2.903624>, 0.050000  material { M_BD2 } }	// #249: "C3" -- "C2"
  cylinder { <-7.916369,-7.532070,3.604994>, <-7.916369,-7.532070,4.655820>, 0.050000  material { M_BD2 } }	// #250: "C3" -- "H3"
  cylinder { <7.547531,-7.532070,3.604994>, <8.089231,-8.619801,2.903624>, 0.050000  material { M_BD2 } }	// #251: "C3" -- "C2"
  cylinder { <7.547531,-7.532070,3.604994>, <7.547531,-7.532070,4.655820>, 0.050000  material { M_BD2 } }	// #252: "C3" -- "H3"
  cylinder { <-7.916369,7.931830,3.604994>, <-8.458070,9.019560,2.903624>, 0.050000  material { M_BD2 } }	// #253: "C3" -- "C2"
  cylinder { <-7.916369,7.931830,3.604994>, <-7.916369,7.931830,4.655820>, 0.050000  material { M_BD2 } }	// #254: "C3" -- "H3"
  cylinder { <7.547531,7.931830,3.604994>, <8.089231,6.844099,2.903624>, 0.050000  material { M_BD2 } }	// #255: "C3" -- "C2"
  cylinder { <7.547531,7.931830,3.604994>, <7.005830,9.019560,2.903624>, 0.050000  material { M_BD2 } }	// #256: "C3" -- "C2"
  cylinder { <7.547531,7.931830,3.604994>, <7.547531,7.931830,4.655820>, 0.050000  material { M_BD2 } }	// #257: "C3" -- "H3"
  cylinder { <-0.184419,-7.532070,-5.591281>, <0.903312,-6.990369,-6.292651>, 0.050000  material { M_BD2 } }	// #258: "C3" -- "C2"
  cylinder { <-0.184419,-7.532070,-5.591281>, <-1.272150,-8.073771,-6.292651>, 0.050000  material { M_BD2 } }	// #259: "C3" -- "C2"
  cylinder { <-0.184419,-7.532070,-5.591281>, <-0.184419,-7.532070,-4.540453>, 0.050000  material { M_BD2 } }	// #260: "C3" -- "H3"
  cylinder { <-0.184419,7.931830,-5.591281>, <0.903312,8.473530,-6.292651>, 0.050000  material { M_BD2 } }	// #261: "C3" -- "C2"
  cylinder { <-0.184419,7.931830,-5.591281>, <-1.272151,7.390130,-6.292651>, 0.050000  material { M_BD2 } }	// #262: "C3" -- "C2"
  cylinder { <-0.184419,7.931830,-5.591281>, <-0.184419,7.931830,-4.540453>, 0.050000  material { M_BD2 } }	// #263: "C3" -- "H3"
  cylinder { <-7.916369,0.199880,0.539569>, <-9.004100,-0.341820,-0.161801>, 0.050000  material { M_BD2 } }	// #264: "C3" -- "C2"
  cylinder { <-7.916369,0.199880,0.539569>, <-7.916369,0.199880,1.590395>, 0.050000  material { M_BD2 } }	// #265: "C3" -- "H3"
  cylinder { <7.547531,0.199880,0.539569>, <8.635262,0.741580,-0.161801>, 0.050000  material { M_BD2 } }	// #266: "C3" -- "C2"
  cylinder { <7.547531,0.199880,0.539569>, <7.547531,0.199880,1.590395>, 0.050000  material { M_BD2 } }	// #267: "C3" -- "H3"
  cylinder { <-0.184419,-7.532070,-0.465891>, <-0.726120,-8.619801,0.235478>, 0.050000  material { M_BD2 } }	// #268: "C3" -- "C2"
  cylinder { <-0.184419,-7.532070,-0.465891>, <-0.184419,-7.532070,-1.516718>, 0.050000  material { M_BD2 } }	// #269: "C3" -- "H3"
  cylinder { <-0.184419,7.931830,-0.465891>, <0.357281,9.019560,0.235478>, 0.050000  material { M_BD2 } }	// #270: "C3" -- "C2"
  cylinder { <-0.184419,7.931830,-0.465891>, <-0.184419,7.931830,-1.516718>, 0.050000  material { M_BD2 } }	// #271: "C3" -- "H3"
  cylinder { <-7.916369,0.199880,5.664959>, <-7.374669,1.287611,6.366328>, 0.050000  material { M_BD2 } }	// #272: "C3" -- "C2"
  cylinder { <-7.916369,0.199880,5.664959>, <-8.458070,-0.887851,6.366328>, 0.050000  material { M_BD2 } }	// #273: "C3" -- "C2"
  cylinder { <-7.916369,0.199880,5.664959>, <-7.916369,0.199880,4.614132>, 0.050000  material { M_BD2 } }	// #274: "C3" -- "H3"
  cylinder { <7.547531,0.199880,5.664959>, <8.089231,1.287611,6.366328>, 0.050000  material { M_BD2 } }	// #275: "C3" -- "C2"
  cylinder { <7.547531,0.199880,5.664959>, <7.005830,-0.887851,6.366328>, 0.050000  material { M_BD2 } }	// #276: "C3" -- "C2"
  cylinder { <7.547531,0.199880,5.664959>, <7.547531,0.199880,4.614132>, 0.050000  material { M_BD2 } }	// #277: "C3" -- "H3"
  cylinder { <-0.184419,0.199880,2.599534>, <-0.184419,0.199880,1.548707>, 0.050000  material { M_BD2 } }	// #278: "C3" -- "H3"
  cylinder { <-7.916369,-7.532070,-3.531315>, <-9.004100,-6.990369,-2.829946>, 0.050000  material { M_BD2 } }	// #279: "C3" -- "C2"
  cylinder { <-7.916369,-7.532070,-3.531315>, <-6.828639,-8.073771,-2.829946>, 0.050000  material { M_BD2 } }	// #280: "C3" -- "C2"
  cylinder { <-7.916369,-7.532070,-3.531315>, <-7.916369,-7.532070,-4.582143>, 0.050000  material { M_BD2 } }	// #281: "C3" -- "H3"
  cylinder { <7.547531,-7.532070,-3.531315>, <8.635262,-8.073771,-2.829946>, 0.050000  material { M_BD2 } }	// #282: "C3" -- "C2"
  cylinder { <7.547531,-7.532070,-3.531315>, <7.547531,-7.532070,-4.582143>, 0.050000  material { M_BD2 } }	// #283: "C3" -- "H3"
  cylinder { <-7.916369,7.931830,-3.531315>, <-9.004100,8.473530,-2.829946>, 0.050000  material { M_BD2 } }	// #284: "C3" -- "C2"
  cylinder { <-7.916369,7.931830,-3.531315>, <-7.916369,7.931830,-4.582143>, 0.050000  material { M_BD2 } }	// #285: "C3" -- "H3"
  cylinder { <7.547531,7.931830,-3.531315>, <6.459799,8.473530,-2.829946>, 0.050000  material { M_BD2 } }	// #286: "C3" -- "C2"
  cylinder { <7.547531,7.931830,-3.531315>, <8.635262,7.390130,-2.829946>, 0.050000  material { M_BD2 } }	// #287: "C3" -- "C2"
  cylinder { <7.547531,7.931830,-3.531315>, <7.547531,7.931830,-4.582143>, 0.050000  material { M_BD2 } }	// #288: "C3" -- "H3"
  cylinder { <0.357281,-0.887851,-4.629963>, <-0.184419,0.199880,-5.331701>, 0.050000  material { M_BD2 } }	// #289: "C4" -- "C5"
  cylinder { <0.357281,-0.887851,-4.629963>, <0.761972,-1.702179,-5.154765>, 0.050000  material { M_BD2 } }	// #290: "C4" -- "H4"
  cylinder { <-7.374669,6.844099,1.500886>, <-7.916369,7.931830,0.799149>, 0.050000  material { M_BD2 } }	// #291: "C4" -- "C5"
  cylinder { <-7.374669,6.844099,1.500886>, <-6.969978,6.029769,0.976086>, 0.050000  material { M_BD2 } }	// #292: "C4" -- "H4"
  cylinder { <0.903312,-6.990369,4.566311>, <-0.184419,-7.532070,3.864574>, 0.050000  material { M_BD2 } }	// #293: "C4" -- "C5"
  cylinder { <0.903312,-6.990369,4.566311>, <1.717641,-6.585679,4.041511>, 0.050000  material { M_BD2 } }	// #294: "C4" -- "H4"
  cylinder { <-6.828638,0.741580,-1.564538>, <-7.916369,0.199880,-2.266276>, 0.050000  material { M_BD2 } }	// #295: "C4" -- "C5"
  cylinder { <-6.828638,0.741580,-1.564538>, <-6.014309,1.146271,-2.089339>, 0.050000  material { M_BD2 } }	// #296: "C4" -- "H4"
  cylinder { <-0.726120,1.287611,-4.629963>, <-0.184419,0.199880,-5.331701>, 0.050000  material { M_BD2 } }	// #297: "C4" -- "C5"
  cylinder { <-0.726120,1.287611,-4.629963>, <-1.130810,2.101941,-5.154765>, 0.050000  material { M_BD2 } }	// #298: "C4" -- "H4"
  cylinder { <7.005830,-6.444339,1.500886>, <7.547531,-7.532070,0.799149>, 0.050000  material { M_BD2 } }	// #299: "C4" -- "C5"
  cylinder { <7.005830,-6.444339,1.500886>, <6.601140,-5.630010,0.976086>, 0.050000  material { M_BD2 } }	// #300: "C4" -- "H4"
  cylinder { <-1.272150,7.390130,4.566311>, <-0.184419,7.931830,3.864574>, 0.050000  material { M_BD2 } }	// #301: "C4" -- "C5"
  cylinder { <-1.272150,7.390130,4.566311>, <-2.086479,6.985439,4.041511>, 0.050000  material { M_BD2 } }	// #302: "C4" -- "H4"
  cylinder { <6.459799,-0.341820,-1.564538>, <7.547531,0.199880,-2.266276>, 0.050000  material { M_BD2 } }	// #303: "C4" -- "C5"
  cylinder { <6.459799,-0.341820,-1.564538>, <5.645470,-0.746511,-2.089339>, 0.050000  material { M_BD2 } }	// #304: "C4" -- "H4"
  cylinder { <0.357281,-6.444339,1.638216>, <-0.184419,-7.532070,2.339954>, 0.050000  material { M_BD2 } }	// #305: "C4" -- "C5"
  cylinder { <0.357281,-6.444339,1.638216>, <0.761972,-5.630010,2.163018>, 0.050000  material { M_BD2 } }	// #306: "C4" -- "H4"
  cylinder { <-7.374669,1.287611,-4.492633>, <-7.916369,0.199880,-3.790896>, 0.050000  material { M_BD2 } }	// #307: "C4" -- "C5"
  cylinder { <-7.374669,1.287611,-4.492633>, <-6.969978,2.101941,-3.967832>, 0.050000  material { M_BD2 } }	// #308: "C4" -- "H4"
  cylinder { <-0.726120,6.844099,1.638216>, <-0.184419,7.931830,2.339954>, 0.050000  material { M_BD2 } }	// #309: "C4" -- "C5"
  cylinder { <-0.726120,6.844099,1.638216>, <-1.130810,6.029769,2.163018>, 0.050000  material { M_BD2 } }	// #310: "C4" -- "H4"
  cylinder { <7.005830,-0.887851,-4.492633>, <7.547531,0.199880,-3.790896>, 0.050000  material { M_BD2 } }	// #311: "C4" -- "C5"
  cylinder { <7.005830,-0.887851,-4.492633>, <6.601140,-1.702180,-3.967832>, 0.050000  material { M_BD2 } }	// #312: "C4" -- "H4"
  cylinder { <-1.272150,0.741580,4.703641>, <-0.184419,0.199880,5.405379>, 0.050000  material { M_BD2 } }	// #313: "C4" -- "C5"
  cylinder { <-1.272150,0.741580,4.703641>, <-2.086479,1.146271,5.228443>, 0.050000  material { M_BD2 } }	// #314: "C4" -- "H4"
  cylinder { <6.459799,-6.990369,-1.427208>, <7.547531,-7.532070,-0.725471>, 0.050000  material { M_BD2 } }	// #315: "C4" -- "C5"
  cylinder { <6.459799,-6.990369,-1.427208>, <5.645470,-6.585679,-0.902407>, 0.050000  material { M_BD2 } }	// #316: "C4" -- "H4"
  cylinder { <0.903312,-0.341820,4.703641>, <-0.184419,0.199880,5.405379>, 0.050000  material { M_BD2 } }	// #317: "C4" -- "C5"
  cylinder { <0.903312,-0.341820,4.703641>, <1.717641,-0.746511,5.228443>, 0.050000  material { M_BD2 } }	// #318: "C4" -- "H4"
  cylinder { <-6.828638,7.390130,-1.427208>, <-7.916369,7.931830,-0.725471>, 0.050000  material { M_BD2 } }	// #319: "C4" -- "C5"
  cylinder { <-6.828638,7.390130,-1.427208>, <-6.014309,6.985439,-0.902407>, 0.050000  material { M_BD2 } }	// #320: "C4" -- "H4"
  cylinder { <-0.184419,0.199880,-5.331701>, <-0.184419,0.199880,-6.856321>, 0.050000  material { M_BD2 } }	// #321: "C5" -- "C5"
  cylinder { <-7.916369,-7.532070,0.799149>, <-7.374668,-8.619801,1.500886>, 0.050000  material { M_BD2 } }	// #322: "C5" -- "C4"
  cylinder { <-7.916369,-7.532070,0.799149>, <-8.458070,-6.444339,1.500886>, 0.050000  material { M_BD2 } }	// #323: "C5" -- "C4"
  cylinder { <-7.916369,-7.532070,0.799149>, <-7.916369,-7.532070,-0.725471>, 0.050000  material { M_BD2 } }	// #324: "C5" -- "C5"
  cylinder { <7.547531,-7.532070,0.799149>, <8.089231,-8.619801,1.500886>, 0.050000  material { M_BD2 } }	// #325: "C5" -- "C4"
  cylinder { <7.547531,-7.532070,0.799149>, <7.547531,-7.532070,-0.725471>, 0.050000  material { M_BD2 } }	// #326: "C5" -- "C5"
  cylinder { <-7.916369,7.931830,0.799149>, <-8.458070,9.019560,1.500886>, 0.050000  material { M_BD2 } }	// #327: "C5" -- "C4"
  cylinder { <-7.916369,7.931830,0.799149>, <-7.916369,7.931830,-0.725471>, 0.050000  material { M_BD2 } }	// #328: "C5" -- "C5"
  cylinder { <7.547531,7.931830,0.799149>, <8.089231,6.844099,1.500886>, 0.050000  material { M_BD2 } }	// #329: "C5" -- "C4"
  cylinder { <7.547531,7.931830,0.799149>, <7.005830,9.019560,1.500886>, 0.050000  material { M_BD2 } }	// #330: "C5" -- "C4"
  cylinder { <7.547531,7.931830,0.799149>, <7.547531,7.931830,-0.725471>, 0.050000  material { M_BD2 } }	// #331: "C5" -- "C5"
  cylinder { <-0.184419,-7.532070,3.864574>, <-1.272150,-8.073771,4.566311>, 0.050000  material { M_BD2 } }	// #332: "C5" -- "C4"
  cylinder { <-0.184419,-7.532070,3.864574>, <-0.184419,-7.532070,2.339954>, 0.050000  material { M_BD2 } }	// #333: "C5" -- "C5"
  cylinder { <-0.184419,7.931830,3.864574>, <0.903312,8.473530,4.566311>, 0.050000  material { M_BD2 } }	// #334: "C5" -- "C4"
  cylinder { <-0.184419,7.931830,3.864574>, <-0.184419,7.931830,2.339954>, 0.050000  material { M_BD2 } }	// #335: "C5" -- "C5"
  cylinder { <-7.916369,0.199880,-2.266276>, <-9.004100,-0.341820,-1.564538>, 0.050000  material { M_BD2 } }	// #336: "C5" -- "C4"
  cylinder { <-7.916369,0.199880,-2.266276>, <-7.916369,0.199880,-3.790896>, 0.050000  material { M_BD2 } }	// #337: "C5" -- "C5"
  cylinder { <7.547531,0.199880,-2.266276>, <8.635262,0.741580,-1.564538>, 0.050000  material { M_BD2 } }	// #338: "C5" -- "C4"
  cylinder { <7.547531,0.199880,-2.266276>, <7.547531,0.199880,-3.790896>, 0.050000  material { M_BD2 } }	// #339: "C5" -- "C5"
  cylinder { <-0.184419,-7.532070,2.339954>, <-0.726120,-8.619801,1.638216>, 0.050000  material { M_BD2 } }	// #340: "C5" -- "C4"
  cylinder { <-0.184419,7.931830,2.339954>, <0.357281,9.019560,1.638216>, 0.050000  material { M_BD2 } }	// #341: "C5" -- "C4"
  cylinder { <-7.916369,0.199880,-3.790896>, <-8.458070,-0.887851,-4.492633>, 0.050000  material { M_BD2 } }	// #342: "C5" -- "C4"
  cylinder { <7.547531,0.199880,-3.790896>, <8.089231,1.287611,-4.492633>, 0.050000  material { M_BD2 } }	// #343: "C5" -- "C4"
  cylinder { <-0.184419,0.199880,5.405379>, <-0.184419,0.199880,6.929999>, 0.050000  material { M_BD2 } }	// #344: "C5" -- "C5"
  cylinder { <-7.916369,-7.532070,-0.725471>, <-9.004100,-6.990369,-1.427208>, 0.050000  material { M_BD2 } }	// #345: "C5" -- "C4"
  cylinder { <-7.916369,-7.532070,-0.725471>, <-6.828639,-8.073771,-1.427208>, 0.050000  material { M_BD2 } }	// #346: "C5" -- "C4"
  cylinder { <7.547531,-7.532070,-0.725471>, <8.635262,-8.073771,-1.427208>, 0.050000  material { M_BD2 } }	// #347: "C5" -- "C4"
  cylinder { <-7.916369,7.931830,-0.725471>, <-9.004100,8.473530,-1.427208>, 0.050000  material { M_BD2 } }	// #348: "C5" -- "C4"
  cylinder { <7.547531,7.931830,-0.725471>, <6.459799,8.473530,-1.427208>, 0.050000  material { M_BD2 } }	// #349: "C5" -- "C4"
  cylinder { <7.547531,7.931830,-0.725471>, <8.635262,7.390130,-1.427208>, 0.050000  material { M_BD2 } }	// #350: "C5" -- "C4"
  cylinder { <-7.458637,4.257608,-2.218088>, <-7.458637,3.874102,-0.773659>, 0.050000  material { M_BD2 } }	// #351: "C1_1" -- "C1_1"
  cylinder { <-7.458637,4.257608,-2.218088>, <-7.805029,4.051937,-0.967394>, 0.050000  material { M_BD2 } }	// #352: "C1_1" -- "C2_1"
  cylinder { <-7.458637,4.257608,-2.218088>, <-7.175649,4.423071,-3.238261>, 0.050000  material { M_BD2 } }	// #353: "C1_1" -- "D1_1"
  cylinder { <-7.458637,4.257608,-2.218088>, <-8.088018,4.245237,-3.043299>, 0.050000  material { M_BD2 } }	// #354: "C1_1" -- "D2_1"
  cylinder { <3.489804,-7.074338,0.847337>, <3.873309,-7.074338,2.291765>, 0.050000  material { M_BD2 } }	// #355: "C1_1" -- "C1_1"
  cylinder { <3.489804,-7.074338,0.847337>, <3.695474,-7.420730,2.098031>, 0.050000  material { M_BD2 } }	// #356: "C1_1" -- "C2_1"
  cylinder { <3.489804,-7.074338,0.847337>, <3.324340,-6.791349,-0.172836>, 0.050000  material { M_BD2 } }	// #357: "C1_1" -- "D1_1"
  cylinder { <3.489804,-7.074338,0.847337>, <3.502174,-7.703719,0.022125>, 0.050000  material { M_BD2 } }	// #358: "C1_1" -- "D2_1"
  cylinder { <-4.242146,0.657612,-5.283513>, <-3.858642,0.657612,-3.839084>, 0.050000  material { M_BD2 } }	// #359: "C1_1" -- "C1_1"
  cylinder { <-4.242146,0.657612,-5.283513>, <-4.036477,0.311220,-4.032819>, 0.050000  material { M_BD2 } }	// #360: "C1_1" -- "C2_1"
  cylinder { <-4.242146,0.657612,-5.283513>, <-4.407610,0.940600,-6.303686>, 0.050000  material { M_BD2 } }	// #361: "C1_1" -- "D1_1"
  cylinder { <-4.242146,0.657612,-5.283513>, <-4.229775,0.028231,-6.108724>, 0.050000  material { M_BD2 } }	// #362: "C1_1" -- "D2_1"
  cylinder { <-0.642151,3.874103,3.912762>, <-0.642151,4.257608,5.357191>, 0.050000  material { M_BD2 } }	// #363: "C1_1" -- "C1_1"
  cylinder { <-0.642151,3.874103,3.912762>, <-0.295759,4.079773,5.163455>, 0.050000  material { M_BD2 } }	// #364: "C1_1" -- "C2_1"
  cylinder { <-0.642151,3.874103,3.912762>, <-0.925140,3.708640,2.892589>, 0.050000  material { M_BD2 } }	// #365: "C1_1" -- "D1_1"
  cylinder { <-0.642151,3.874103,3.912762>, <-0.012770,3.886473,3.087550>, 0.050000  material { M_BD2 } }	// #366: "C1_1" -- "D2_1"
  cylinder { <7.089798,-3.857847,-2.218088>, <7.089798,-3.474342,-0.773659>, 0.050000  material { M_BD2 } }	// #367: "C1_1" -- "C1_1"
  cylinder { <7.089798,-3.857847,-2.218088>, <7.436190,-3.652177,-0.967394>, 0.050000  material { M_BD2 } }	// #368: "C1_1" -- "C2_1"
  cylinder { <7.089798,-3.857847,-2.218088>, <6.806810,-4.023311,-3.238261>, 0.050000  material { M_BD2 } }	// #369: "C1_1" -- "D1_1"
  cylinder { <7.089798,-3.857847,-2.218088>, <7.719181,-3.845476,-3.043299>, 0.050000  material { M_BD2 } }	// #370: "C1_1" -- "D2_1"
  cylinder { <-3.858642,7.474098,0.847337>, <-4.242146,7.474098,2.291765>, 0.050000  material { M_BD2 } }	// #371: "C1_1" -- "C1_1"
  cylinder { <-3.858642,7.474098,0.847337>, <-4.064312,7.820489,2.098031>, 0.050000  material { M_BD2 } }	// #372: "C1_1" -- "C2_1"
  cylinder { <-3.858642,7.474098,0.847337>, <-3.693178,7.191109,-0.172836>, 0.050000  material { M_BD2 } }	// #373: "C1_1" -- "D1_1"
  cylinder { <-3.858642,7.474098,0.847337>, <-3.871013,8.103479,0.022125>, 0.050000  material { M_BD2 } }	// #374: "C1_1" -- "D2_1"
  cylinder { <3.873309,-0.257852,-5.283513>, <3.489804,-0.257852,-3.839084>, 0.050000  material { M_BD2 } }	// #375: "C1_1" -- "C1_1"
  cylinder { <3.873309,-0.257852,-5.283513>, <3.667637,0.088540,-4.032819>, 0.050000  material { M_BD2 } }	// #376: "C1_1" -- "C2_1"
  cylinder { <3.873309,-0.257852,-5.283513>, <4.038772,-0.540841,-6.303686>, 0.050000  material { M_BD2 } }	// #377: "C1_1" -- "D1_1"
  cylinder { <3.873309,-0.257852,-5.283513>, <3.860938,0.371529,-6.108724>, 0.050000  material { M_BD2 } }	// #378: "C1_1" -- "D2_1"
  cylinder { <-7.458637,3.874102,-0.773659>, <-7.805029,4.079773,-2.024353>, 0.050000  material { M_BD2 } }	// #379: "C1_1" -- "C2_1"
  cylinder { <-7.458637,3.874102,-0.773659>, <-7.175649,3.708639,0.246514>, 0.050000  material { M_BD2 } }	// #380: "C1_1" -- "D1_1"
  cylinder { <-7.458637,3.874102,-0.773659>, <-8.088018,3.886473,0.051553>, 0.050000  material { M_BD2 } }	// #381: "C1_1" -- "D2_1"
  cylinder { <-0.642151,4.257608,5.357191>, <-0.295759,4.051937,4.106497>, 0.050000  material { M_BD2 } }	// #382: "C1_1" -- "C2_1"
  cylinder { <-0.642151,4.257608,5.357191>, <-0.925140,4.423071,6.377364>, 0.050000  material { M_BD2 } }	// #383: "C1_1" -- "D1_1"
  cylinder { <-0.642151,4.257608,5.357191>, <-0.012770,4.245237,6.182403>, 0.050000  material { M_BD2 } }	// #384: "C1_1" -- "D2_1"
  cylinder { <7.089798,-3.474342,-0.773659>, <7.436190,-3.680013,-2.024353>, 0.050000  material { M_BD2 } }	// #385: "C1_1" -- "C2_1"
  cylinder { <7.089798,-3.474342,-0.773659>, <6.806810,-3.308878,0.246514>, 0.050000  material { M_BD2 } }	// #386: "C1_1" -- "D1_1"
  cylinder { <7.089798,-3.474342,-0.773659>, <7.719181,-3.486713,0.051553>, 0.050000  material { M_BD2 } }	// #387: "C1_1" -- "D2_1"
  cylinder { <-3.858642,0.657612,-3.839084>, <-4.064312,0.311220,-5.089777>, 0.050000  material { M_BD2 } }	// #388: "C1_1" -- "C2_1"
  cylinder { <-3.858642,0.657612,-3.839084>, <-3.693178,0.940601,-2.818911>, 0.050000  material { M_BD2 } }	// #389: "C1_1" -- "D1_1"
  cylinder { <-3.858642,0.657612,-3.839084>, <-3.871013,0.028230,-3.013872>, 0.050000  material { M_BD2 } }	// #390: "C1_1" -- "D2_1"
  cylinder { <3.873309,-7.074338,2.291765>, <3.667637,-7.420730,1.041072>, 0.050000  material { M_BD2 } }	// #391: "C1_1" -- "C2_1"
  cylinder { <3.873309,-7.074338,2.291765>, <4.038772,-6.791349,3.311939>, 0.050000  material { M_BD2 } }	// #392: "C1_1" -- "D1_1"
  cylinder { <3.873309,-7.074338,2.291765>, <3.860938,-7.703719,3.116978>, 0.050000  material { M_BD2 } }	// #393: "C1_1" -- "D2_1"
  cylinder { <3.489804,-0.257852,-3.839084>, <3.695474,0.088540,-5.089777>, 0.050000  material { M_BD2 } }	// #394: "C1_1" -- "C2_1"
  cylinder { <3.489804,-0.257852,-3.839084>, <3.324340,-0.540841,-2.818911>, 0.050000  material { M_BD2 } }	// #395: "C1_1" -- "D1_1"
  cylinder { <3.489804,-0.257852,-3.839084>, <3.502174,0.371529,-3.013872>, 0.050000  material { M_BD2 } }	// #396: "C1_1" -- "D2_1"
  cylinder { <-4.242146,7.474098,2.291765>, <-4.036477,7.820489,1.041072>, 0.050000  material { M_BD2 } }	// #397: "C1_1" -- "C2_1"
  cylinder { <-4.242146,7.474098,2.291765>, <-4.407610,7.191109,3.311939>, 0.050000  material { M_BD2 } }	// #398: "C1_1" -- "D1_1"
  cylinder { <-4.242146,7.474098,2.291765>, <-4.229775,8.103479,3.116978>, 0.050000  material { M_BD2 } }	// #399: "C1_1" -- "D2_1"
  cylinder { <-7.805029,4.051937,-0.967394>, <-7.805029,4.079773,-2.024353>, 0.050000  material { M_BD2 } }	// #400: "C2_1" -- "C2_1"
  cylinder { <-7.805029,4.051937,-0.967394>, <-8.088018,3.886473,0.051553>, 0.050000  material { M_BD2 } }	// #401: "C2_1" -- "D2_1"
  cylinder { <7.658871,4.051937,-0.967394>, <8.005262,4.257608,-2.218088>, 0.050000  material { M_BD2 } }	// #402: "C2_1" -- "C1_1"
  cylinder { <7.658871,4.051937,-0.967394>, <7.658871,4.079773,-2.024353>, 0.050000  material { M_BD2 } }	// #403: "C2_1" -- "C2_1"
  cylinder { <7.658871,4.051937,-0.967394>, <7.375882,3.886473,0.051553>, 0.050000  material { M_BD2 } }	// #404: "C2_1" -- "D2_1"
  cylinder { <3.695474,-7.420730,2.098031>, <3.667637,-7.420730,1.041072>, 0.050000  material { M_BD2 } }	// #405: "C2_1" -- "C2_1"
  cylinder { <3.695474,-7.420730,2.098031>, <3.860938,-7.703719,3.116978>, 0.050000  material { M_BD2 } }	// #406: "C2_1" -- "D2_1"
  cylinder { <3.695474,8.043171,2.098031>, <3.489803,8.389563,0.847337>, 0.050000  material { M_BD2 } }	// #407: "C2_1" -- "C1_1"
  cylinder { <3.695474,8.043171,2.098031>, <3.667637,8.043171,1.041072>, 0.050000  material { M_BD2 } }	// #408: "C2_1" -- "C2_1"
  cylinder { <3.695474,8.043171,2.098031>, <3.860938,7.760181,3.116978>, 0.050000  material { M_BD2 } }	// #409: "C2_1" -- "D2_1"
  cylinder { <-4.036477,0.311220,-4.032819>, <-4.064312,0.311220,-5.089777>, 0.050000  material { M_BD2 } }	// #410: "C2_1" -- "C2_1"
  cylinder { <-4.036477,0.311220,-4.032819>, <-3.871013,0.028230,-3.013872>, 0.050000  material { M_BD2 } }	// #411: "C2_1" -- "D2_1"
  cylinder { <-0.295759,4.079773,5.163455>, <-0.295759,4.051937,4.106497>, 0.050000  material { M_BD2 } }	// #412: "C2_1" -- "C2_1"
  cylinder { <-0.295759,4.079773,5.163455>, <-0.012770,4.245237,6.182403>, 0.050000  material { M_BD2 } }	// #413: "C2_1" -- "D2_1"
  cylinder { <-8.027709,-3.652177,-0.967394>, <-8.374101,-3.857847,-2.218088>, 0.050000  material { M_BD2 } }	// #414: "C2_1" -- "C1_1"
  cylinder { <-8.027709,-3.652177,-0.967394>, <-8.027709,-3.680013,-2.024353>, 0.050000  material { M_BD2 } }	// #415: "C2_1" -- "C2_1"
  cylinder { <-8.027709,-3.652177,-0.967394>, <-7.744720,-3.486713,0.051553>, 0.050000  material { M_BD2 } }	// #416: "C2_1" -- "D2_1"
  cylinder { <7.436190,-3.652177,-0.967394>, <7.436190,-3.680013,-2.024353>, 0.050000  material { M_BD2 } }	// #417: "C2_1" -- "C2_1"
  cylinder { <7.436190,-3.652177,-0.967394>, <7.719181,-3.486713,0.051553>, 0.050000  material { M_BD2 } }	// #418: "C2_1" -- "D2_1"
  cylinder { <-4.064312,-7.643410,2.098031>, <-3.858642,-7.989801,0.847337>, 0.050000  material { M_BD2 } }	// #419: "C2_1" -- "C1_1"
  cylinder { <-4.064312,-7.643410,2.098031>, <-4.036477,-7.643410,1.041072>, 0.050000  material { M_BD2 } }	// #420: "C2_1" -- "C2_1"
  cylinder { <-4.064312,-7.643410,2.098031>, <-4.229775,-7.360421,3.116978>, 0.050000  material { M_BD2 } }	// #421: "C2_1" -- "D2_1"
  cylinder { <-4.064312,7.820489,2.098031>, <-4.036477,7.820489,1.041072>, 0.050000  material { M_BD2 } }	// #422: "C2_1" -- "C2_1"
  cylinder { <-4.064312,7.820489,2.098031>, <-4.229775,8.103479,3.116978>, 0.050000  material { M_BD2 } }	// #423: "C2_1" -- "D2_1"
  cylinder { <3.667637,0.088540,-4.032819>, <3.695474,0.088540,-5.089777>, 0.050000  material { M_BD2 } }	// #424: "C2_1" -- "C2_1"
  cylinder { <3.667637,0.088540,-4.032819>, <3.502174,0.371529,-3.013872>, 0.050000  material { M_BD2 } }	// #425: "C2_1" -- "D2_1"
  cylinder { <-7.805029,4.079773,-2.024353>, <-8.088018,4.245237,-3.043299>, 0.050000  material { M_BD2 } }	// #426: "C2_1" -- "D2_1"
  cylinder { <7.658871,4.079773,-2.024353>, <8.005262,3.874102,-0.773659>, 0.050000  material { M_BD2 } }	// #427: "C2_1" -- "C1_1"
  cylinder { <7.658871,4.079773,-2.024353>, <7.375882,4.245237,-3.043299>, 0.050000  material { M_BD2 } }	// #428: "C2_1" -- "D2_1"
  cylinder { <-0.295759,4.051937,4.106497>, <-0.012770,3.886473,3.087550>, 0.050000  material { M_BD2 } }	// #429: "C2_1" -- "D2_1"
  cylinder { <-8.027709,-3.680013,-2.024353>, <-8.374101,-3.474342,-0.773659>, 0.050000  material { M_BD2 } }	// #430: "C2_1" -- "C1_1"
  cylinder { <-8.027709,-3.680013,-2.024353>, <-7.744720,-3.845476,-3.043299>, 0.050000  material { M_BD2 } }	// #431: "C2_1" -- "D2_1"
  cylinder { <7.436190,-3.680013,-2.024353>, <7.719181,-3.845476,-3.043299>, 0.050000  material { M_BD2 } }	// #432: "C2_1" -- "D2_1"
  cylinder { <-4.064312,0.311220,-5.089777>, <-4.229775,0.028231,-6.108724>, 0.050000  material { M_BD2 } }	// #433: "C2_1" -- "D2_1"
  cylinder { <3.667637,-7.420730,1.041072>, <3.502174,-7.703719,0.022125>, 0.050000  material { M_BD2 } }	// #434: "C2_1" -- "D2_1"
  cylinder { <3.667637,8.043171,1.041072>, <3.873309,8.389563,2.291765>, 0.050000  material { M_BD2 } }	// #435: "C2_1" -- "C1_1"
  cylinder { <3.667637,8.043171,1.041072>, <3.502174,7.760181,0.022125>, 0.050000  material { M_BD2 } }	// #436: "C2_1" -- "D2_1"
  cylinder { <3.695474,0.088540,-5.089777>, <3.860938,0.371529,-6.108724>, 0.050000  material { M_BD2 } }	// #437: "C2_1" -- "D2_1"
  cylinder { <-4.036477,-7.643410,1.041072>, <-4.242146,-7.989801,2.291765>, 0.050000  material { M_BD2 } }	// #438: "C2_1" -- "C1_1"
  cylinder { <-4.036477,-7.643410,1.041072>, <-3.871013,-7.360421,0.022125>, 0.050000  material { M_BD2 } }	// #439: "C2_1" -- "D2_1"
  cylinder { <-4.036477,7.820489,1.041072>, <-3.871013,8.103479,0.022125>, 0.050000  material { M_BD2 } }	// #440: "C2_1" -- "D2_1"
  cylinder { <-4.407610,0.940600,5.958014>, <-4.242146,0.657612,6.978187>, 0.050000  material { M_BD2 } }	// #441: "D1_1" -- "C1_1"
  cylinder { <4.038772,-0.540841,5.958014>, <3.873309,-0.257852,6.978187>, 0.050000  material { M_BD2 } }	// #442: "D1_1" -- "C1_1"
  cylinder { <-0.925140,4.423071,-5.884336>, <-0.642151,4.257608,-6.904509>, 0.050000  material { M_BD2 } }	// #443: "D1_1" -- "C1_1"
  cylinder { <7.375882,3.886473,0.051553>, <8.005262,3.874102,-0.773659>, 0.050000  material { M_BD2 } }	// #444: "D2_1" -- "C1_1"
  cylinder { <3.860938,7.760181,3.116978>, <3.873309,8.389563,2.291765>, 0.050000  material { M_BD2 } }	// #445: "D2_1" -- "C1_1"
  cylinder { <-0.012770,4.245237,-6.079297>, <-0.642151,4.257608,-6.904509>, 0.050000  material { M_BD2 } }	// #446: "D2_1" -- "C1_1"
  cylinder { <-0.012770,4.245237,-6.079297>, <-0.295759,4.079773,-7.098244>, 0.050000  material { M_BD2 } }	// #447: "D2_1" -- "C2_1"
  cylinder { <-7.744720,-3.486713,0.051553>, <-8.374101,-3.474342,-0.773659>, 0.050000  material { M_BD2 } }	// #448: "D2_1" -- "C1_1"
  cylinder { <-4.229775,-7.360421,3.116978>, <-4.242146,-7.989801,2.291765>, 0.050000  material { M_BD2 } }	// #449: "D2_1" -- "C1_1"
  cylinder { <7.375882,4.245237,-3.043299>, <8.005262,4.257608,-2.218088>, 0.050000  material { M_BD2 } }	// #450: "D2_1" -- "C1_1"
  cylinder { <-7.744720,-3.845476,-3.043299>, <-8.374101,-3.857847,-2.218088>, 0.050000  material { M_BD2 } }	// #451: "D2_1" -- "C1_1"
  cylinder { <-4.229775,0.028231,6.152975>, <-4.242146,0.657612,6.978187>, 0.050000  material { M_BD2 } }	// #452: "D2_1" -- "C1_1"
  cylinder { <-4.229775,0.028231,6.152975>, <-4.064312,0.311220,7.171922>, 0.050000  material { M_BD2 } }	// #453: "D2_1" -- "C2_1"
  cylinder { <3.502174,7.760181,0.022125>, <3.489803,8.389563,0.847337>, 0.050000  material { M_BD2 } }	// #454: "D2_1" -- "C1_1"
  cylinder { <3.860938,0.371529,6.152975>, <3.873309,-0.257852,6.978187>, 0.050000  material { M_BD2 } }	// #455: "D2_1" -- "C1_1"
  cylinder { <3.860938,0.371529,6.152975>, <3.695474,0.088540,7.171922>, 0.050000  material { M_BD2 } }	// #456: "D2_1" -- "C2_1"
  cylinder { <-3.871013,-7.360421,0.022125>, <-3.858642,-7.989801,0.847337>, 0.050000  material { M_BD2 } }	// #457: "D2_1" -- "C1_1"
  cylinder { <2.376402,2.015342,-0.387416>, <1.631043,2.760702,0.461094>, 0.050000  material { M_BD2 } }	// #458: "C1_2" -- "C1_2"
  cylinder { <2.376402,2.015342,-0.387416>, <1.219703,2.609155,-0.197360>, 0.050000  material { M_BD2 } }	// #459: "C1_2" -- "C2_2"
  cylinder { <2.376402,2.015342,-0.387416>, <3.318154,1.531322,-0.543139>, 0.050000  material { M_BD2 } }	// #460: "C1_2" -- "D1_2"
  cylinder { <-5.355546,-5.716609,5.743434>, <-6.100908,-4.971247,6.591944>, 0.050000  material { M_BD2 } }	// #461: "C1_2" -- "C1_2"
  cylinder { <-5.355546,-5.716609,5.743434>, <-6.512246,-5.122794,5.933491>, 0.050000  material { M_BD2 } }	// #462: "C1_2" -- "C2_2"
  cylinder { <-5.355546,-5.716609,5.743434>, <-4.413795,-6.200628,5.587711>, 0.050000  material { M_BD2 } }	// #463: "C1_2" -- "D1_2"
  cylinder { <5.732069,2.760703,2.678009>, <4.986709,2.015341,3.526519>, 0.050000  material { M_BD2 } }	// #464: "C1_2" -- "C1_2"
  cylinder { <5.732069,2.760703,2.678009>, <5.138256,1.604002,2.868066>, 0.050000  material { M_BD2 } }	// #465: "C1_2" -- "C2_2"
  cylinder { <5.732069,2.760703,2.678009>, <6.216089,3.702454,2.522286>, 0.050000  material { M_BD2 } }	// #466: "C1_2" -- "D1_2"
  cylinder { <4.986709,6.116368,5.743434>, <5.732069,5.371008,6.591944>, 0.050000  material { M_BD2 } }	// #467: "C1_2" -- "C1_2"
  cylinder { <4.986709,6.116368,5.743434>, <6.143408,5.522555,5.933491>, 0.050000  material { M_BD2 } }	// #468: "C1_2" -- "C2_2"
  cylinder { <4.986709,6.116368,5.743434>, <4.044958,6.600388,5.587711>, 0.050000  material { M_BD2 } }	// #469: "C1_2" -- "D1_2"
  cylinder { <1.631043,5.371008,-3.452841>, <2.376402,6.116368,-2.604331>, 0.050000  material { M_BD2 } }	// #470: "C1_2" -- "C1_2"
  cylinder { <1.631043,5.371008,-3.452841>, <2.224856,6.527708,-3.262784>, 0.050000  material { M_BD2 } }	// #471: "C1_2" -- "C2_2"
  cylinder { <1.631043,5.371008,-3.452841>, <1.147023,4.429257,-3.608564>, 0.050000  material { M_BD2 } }	// #472: "C1_2" -- "D1_2"
  cylinder { <-6.100908,-2.360942,2.678009>, <-5.355546,-1.615582,3.526519>, 0.050000  material { M_BD2 } }	// #473: "C1_2" -- "C1_2"
  cylinder { <-6.100908,-2.360942,2.678009>, <-5.507093,-1.204242,2.868066>, 0.050000  material { M_BD2 } }	// #474: "C1_2" -- "C2_2"
  cylinder { <-6.100908,-2.360942,2.678009>, <-6.584928,-3.302693,2.522286>, 0.050000  material { M_BD2 } }	// #475: "C1_2" -- "D1_2"
  cylinder { <2.376402,6.116368,-2.604331>, <1.219703,5.522555,-2.794387>, 0.050000  material { M_BD2 } }	// #476: "C1_2" -- "C2_2"
  cylinder { <2.376402,6.116368,-2.604331>, <3.318154,6.600388,-2.448608>, 0.050000  material { M_BD2 } }	// #477: "C1_2" -- "D1_2"
  cylinder { <-5.355546,-1.615582,3.526519>, <-6.512246,-2.209395,3.336462>, 0.050000  material { M_BD2 } }	// #478: "C1_2" -- "C2_2"
  cylinder { <-5.355546,-1.615582,3.526519>, <-4.413795,-1.131561,3.682242>, 0.050000  material { M_BD2 } }	// #479: "C1_2" -- "D1_2"
  cylinder { <4.986709,2.015341,3.526519>, <6.143408,2.609155,3.336462>, 0.050000  material { M_BD2 } }	// #480: "C1_2" -- "C2_2"
  cylinder { <4.986709,2.015341,3.526519>, <4.044958,1.531322,3.682242>, 0.050000  material { M_BD2 } }	// #481: "C1_2" -- "D1_2"
  cylinder { <1.631043,2.760702,0.461094>, <2.224856,1.604002,0.271038>, 0.050000  material { M_BD2 } }	// #482: "C1_2" -- "C2_2"
  cylinder { <1.631043,2.760702,0.461094>, <1.147023,3.702453,0.616817>, 0.050000  material { M_BD2 } }	// #483: "C1_2" -- "D1_2"
  cylinder { <-6.100908,-4.971247,-5.669755>, <-5.355546,-5.716609,-6.518266>, 0.050000  material { M_BD2 } }	// #484: "C1_2" -- "C1_2"
  cylinder { <-6.100908,-4.971247,-5.669755>, <-5.507093,-6.127947,-5.859812>, 0.050000  material { M_BD2 } }	// #485: "C1_2" -- "C2_2"
  cylinder { <-6.100908,-4.971247,-5.669755>, <-6.584928,-4.029496,-5.514033>, 0.050000  material { M_BD2 } }	// #486: "C1_2" -- "D1_2"
  cylinder { <5.732069,5.371008,-5.669755>, <4.986709,6.116368,-6.518266>, 0.050000  material { M_BD2 } }	// #487: "C1_2" -- "C1_2"
  cylinder { <5.732069,5.371008,-5.669755>, <5.138256,6.527708,-5.859812>, 0.050000  material { M_BD2 } }	// #488: "C1_2" -- "C2_2"
  cylinder { <5.732069,5.371008,-5.669755>, <6.216089,4.429257,-5.514033>, 0.050000  material { M_BD2 } }	// #489: "C1_2" -- "D1_2"
  cylinder { <1.219703,2.609155,-0.197360>, <2.224856,1.604002,0.271038>, 0.050000  material { M_BD2 } }	// #490: "C2_2" -- "C2_2"
  cylinder { <1.219703,2.609155,-0.197360>, <0.276405,3.091629,-0.042862>, 0.050000  material { M_BD2 } }	// #491: "C2_2" -- "D2_2"
  cylinder { <-6.512246,-5.122794,5.933491>, <-5.507093,-6.127947,6.401887>, 0.050000  material { M_BD2 } }	// #492: "C2_2" -- "C2_2"
  cylinder { <-6.512246,-5.122794,5.933491>, <-7.455546,-4.640320,6.087988>, 0.050000  material { M_BD2 } }	// #493: "C2_2" -- "D2_2"
  cylinder { <5.138256,1.604002,2.868066>, <6.143408,2.609155,3.336462>, 0.050000  material { M_BD2 } }	// #494: "C2_2" -- "C2_2"
  cylinder { <5.138256,1.604002,2.868066>, <4.655782,0.660703,3.022563>, 0.050000  material { M_BD2 } }	// #495: "C2_2" -- "D2_2"
  cylinder { <6.143408,5.522555,5.933491>, <5.138256,6.527708,6.401887>, 0.050000  material { M_BD2 } }	// #496: "C2_2" -- "C2_2"
  cylinder { <6.143408,5.522555,5.933491>, <7.086707,5.040082,6.087988>, 0.050000  material { M_BD2 } }	// #497: "C2_2" -- "D2_2"
  cylinder { <2.224856,6.527708,-3.262784>, <1.219703,5.522555,-2.794387>, 0.050000  material { M_BD2 } }	// #498: "C2_2" -- "C2_2"
  cylinder { <2.224856,6.527708,-3.262784>, <2.707329,7.471006,-3.108287>, 0.050000  material { M_BD2 } }	// #499: "C2_2" -- "D2_2"
  cylinder { <-5.507093,-1.204242,2.868066>, <-6.512246,-2.209395,3.336462>, 0.050000  material { M_BD2 } }	// #500: "C2_2" -- "C2_2"
  cylinder { <-5.507093,-1.204242,2.868066>, <-5.024619,-0.260944,3.022563>, 0.050000  material { M_BD2 } }	// #501: "C2_2" -- "D2_2"
  cylinder { <1.219703,5.522555,-2.794387>, <0.276405,5.040082,-2.948884>, 0.050000  material { M_BD2 } }	// #502: "C2_2" -- "D2_2"
  cylinder { <-6.512246,-2.209395,3.336462>, <-7.455546,-2.691869,3.181965>, 0.050000  material { M_BD2 } }	// #503: "C2_2" -- "D2_2"
  cylinder { <6.143408,2.609155,3.336462>, <7.086707,3.091630,3.181965>, 0.050000  material { M_BD2 } }	// #504: "C2_2" -- "D2_2"
  cylinder { <2.224856,1.604002,0.271038>, <2.707329,0.660704,0.116540>, 0.050000  material { M_BD2 } }	// #505: "C2_2" -- "D2_2"
  cylinder { <-5.507093,-6.127947,-5.859812>, <-6.512246,-5.122794,-6.328208>, 0.050000  material { M_BD2 } }	// #506: "C2_2" -- "C2_2"
  cylinder { <-5.507093,-6.127947,-5.859812>, <-5.024619,-7.071247,-6.014309>, 0.050000  material { M_BD2 } }	// #507: "C2_2" -- "D2_2"
  cylinder { <5.138256,6.527708,-5.859812>, <6.143408,5.522555,-6.328208>, 0.050000  material { M_BD2 } }	// #508: "C2_2" -- "C2_2"
  cylinder { <5.138256,6.527708,-5.859812>, <4.655782,7.471006,-6.014309>, 0.050000  material { M_BD2 } }	// #509: "C2_2" -- "D2_2"
  cylinder { <-7.455546,-4.640320,-6.173712>, <-6.512246,-5.122794,-6.328208>, 0.050000  material { M_BD2 } }	// #510: "D2_2" -- "C2_2"
  cylinder { <7.086707,5.040082,-6.173712>, <6.143408,5.522555,-6.328208>, 0.050000  material { M_BD2 } }	// #511: "D2_2" -- "C2_2"
  cylinder { <-5.024619,-7.071247,6.247390>, <-5.507093,-6.127947,6.401887>, 0.050000  material { M_BD2 } }	// #512: "D2_2" -- "C2_2"
  cylinder { <4.655782,7.471006,6.247390>, <5.138256,6.527708,6.401887>, 0.050000  material { M_BD2 } }	// #513: "D2_2" -- "C2_2"

  rotate <179.60089,0.82091,-1.92722>
}

// -- Coming now: 12 cell edges --

union {
  cylinder { <-7.916369,-7.532070,6.167689>, <7.547531,-7.532070,6.167689>, 0.000000  material { M_BD1 } }	// #4: * -- *
  cylinder { <-7.916369,-7.532070,6.167689>, <-7.916369,7.931830,6.167689>, 0.000000  material { M_BD1 } }	// #5: * -- *
  cylinder { <-7.916369,-7.532070,6.167689>, <-7.916369,-7.532070,-6.094011>, 0.000000  material { M_BD1 } }	// #6: * -- *
  cylinder { <7.547531,-7.532070,6.167689>, <7.547531,7.931830,6.167689>, 0.000000  material { M_BD1 } }	// #7: * -- *
  cylinder { <7.547531,-7.532070,6.167689>, <7.547531,-7.532070,-6.094011>, 0.000000  material { M_BD1 } }	// #8: * -- *
  cylinder { <-7.916369,7.931830,6.167689>, <7.547531,7.931830,6.167689>, 0.000000  material { M_BD1 } }	// #9: * -- *
  cylinder { <-7.916369,7.931830,6.167689>, <-7.916369,7.931830,-6.094011>, 0.000000  material { M_BD1 } }	// #10: * -- *
  cylinder { <7.547531,7.931830,6.167689>, <7.547531,7.931830,-6.094011>, 0.000000  material { M_BD1 } }	// #11: * -- *
  cylinder { <-7.916369,-7.532070,-6.094011>, <7.547531,-7.532070,-6.094011>, 0.000000  material { M_BD1 } }	// #12: * -- *
  cylinder { <-7.916369,-7.532070,-6.094011>, <-7.916369,7.931830,-6.094011>, 0.000000  material { M_BD1 } }	// #13: * -- *
  cylinder { <7.547531,-7.532070,-6.094011>, <7.547531,7.931830,-6.094011>, 0.000000  material { M_BD1 } }	// #14: * -- *
  cylinder { <-7.916369,7.931830,-6.094011>, <7.547531,7.931830,-6.094011>, 0.000000  material { M_BD1 } }	// #15: * -- *

  rotate <179.60089,0.82091,-1.92722>
}

// -- Coming now: 7 polyhedra --

union {	// #1: centered at: "In"
#declare M_PD0 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <1.61558, -1.59857, -1.37203> <1.61403, -1.60012, 1.44571> <1.23671, -4.27073, 0.04910> <1.61558, -1.59857, -1.37203> }
    polygon { 4 <1.61558, -1.59857, -1.37203> <4.28619, -1.22125, 0.02458> <1.61403, -1.60012, 1.44571> <1.61558, -1.59857, -1.37203> }
    polygon { 4 <1.61558, -1.59857, -1.37203> <1.23671, -4.27073, 0.04910> <3.79599, -3.66610, -1.49587> <1.61558, -1.59857, -1.37203> }
    polygon { 4 <1.61558, -1.59857, -1.37203> <3.79599, -3.66610, -1.49587> <4.28619, -1.22125, 0.02458> <1.61558, -1.59857, -1.37203> }
    polygon { 4 <1.61403, -1.60012, 1.44571> <3.68156, -3.78053, 1.56955> <1.23671, -4.27073, 0.04910> <1.61403, -1.60012, 1.44571> }
    polygon { 4 <1.61403, -1.60012, 1.44571> <4.28619, -1.22125, 0.02458> <3.68156, -3.78053, 1.56955> <1.61403, -1.60012, 1.44571> }
    polygon { 4 <3.79599, -3.66610, -1.49587> <1.23671, -4.27073, 0.04910> <3.68156, -3.78053, 1.56955> <3.79599, -3.66610, -1.49587> }
    polygon { 4 <3.79599, -3.66610, -1.49587> <3.68156, -3.78053, 1.56955> <4.28619, -1.22125, 0.02458> <3.79599, -3.66610, -1.49587> }
  material { M_PD0 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #2: centered at: "In"
#declare M_PD1 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <1.61403, -5.73207, -4.43745> <1.61558, -5.73362, -1.61972> <4.28619, -6.11094, -3.01632> <1.61403, -5.73207, -4.43745> }
    polygon { 4 <1.61403, -5.73207, -4.43745> <1.23671, -3.06146, -3.04085> <1.61558, -5.73362, -1.61972> <1.61403, -5.73207, -4.43745> }
    polygon { 4 <1.61403, -5.73207, -4.43745> <4.28619, -6.11094, -3.01632> <3.68156, -3.55166, -4.56130> <1.61403, -5.73207, -4.43745> }
    polygon { 4 <1.61403, -5.73207, -4.43745> <3.68156, -3.55166, -4.56130> <1.23671, -3.06146, -3.04085> <1.61403, -5.73207, -4.43745> }
    polygon { 4 <1.61558, -5.73362, -1.61972> <3.79599, -3.66610, -1.49587> <4.28619, -6.11094, -3.01632> <1.61558, -5.73362, -1.61972> }
    polygon { 4 <1.61558, -5.73362, -1.61972> <1.23671, -3.06146, -3.04085> <3.79599, -3.66610, -1.49587> <1.61558, -5.73362, -1.61972> }
    polygon { 4 <3.68156, -3.55166, -4.56130> <4.28619, -6.11094, -3.01632> <3.79599, -3.66610, -1.49587> <3.68156, -3.55166, -4.56130> }
    polygon { 4 <3.68156, -3.55166, -4.56130> <3.79599, -3.66610, -1.49587> <1.23671, -3.06146, -3.04085> <3.68156, -3.55166, -4.56130> }
  material { M_PD1 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #3: centered at: "In"
#declare M_PD2 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <5.74753, -5.73362, 4.75882> <5.74908, -5.73207, 7.57656> <6.12640, -3.06146, 6.17995> <5.74753, -5.73362, 4.75882> }
    polygon { 4 <5.74753, -5.73362, 4.75882> <3.07692, -6.11094, 6.15543> <5.74908, -5.73207, 7.57656> <5.74753, -5.73362, 4.75882> }
    polygon { 4 <5.74753, -5.73362, 4.75882> <6.12640, -3.06146, 6.17995> <3.56712, -3.66610, 4.63498> <5.74753, -5.73362, 4.75882> }
    polygon { 4 <5.74753, -5.73362, 4.75882> <3.56712, -3.66610, 4.63498> <3.07692, -6.11094, 6.15543> <5.74753, -5.73362, 4.75882> }
    polygon { 4 <5.74908, -5.73207, 7.57656> <3.68156, -3.55166, 7.70040> <6.12640, -3.06146, 6.17995> <5.74908, -5.73207, 7.57656> }
    polygon { 4 <5.74908, -5.73207, 7.57656> <3.07692, -6.11094, 6.15543> <3.68156, -3.55166, 7.70040> <5.74908, -5.73207, 7.57656> }
    polygon { 4 <3.56712, -3.66610, 4.63498> <6.12640, -3.06146, 6.17995> <3.68156, -3.55166, 7.70040> <3.56712, -3.66610, 4.63498> }
    polygon { 4 <3.56712, -3.66610, 4.63498> <3.68156, -3.55166, 7.70040> <3.07692, -6.11094, 6.15543> <3.56712, -3.66610, 4.63498> }
  material { M_PD2 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #4: centered at: "In"
#declare M_PD3 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <5.74753, -5.73362, -7.50288> <5.74908, -5.73207, -4.68514> <6.12640, -3.06146, -6.08175> <5.74753, -5.73362, -7.50288> }
    polygon { 4 <5.74753, -5.73362, -7.50288> <3.07692, -6.11094, -6.10627> <5.74908, -5.73207, -4.68514> <5.74753, -5.73362, -7.50288> }
    polygon { 4 <5.74753, -5.73362, -7.50288> <6.12640, -3.06146, -6.08175> <3.56712, -3.66609, -7.62672> <5.74753, -5.73362, -7.50288> }
    polygon { 4 <5.74753, -5.73362, -7.50288> <3.56712, -3.66609, -7.62672> <3.07692, -6.11094, -6.10627> <5.74753, -5.73362, -7.50288> }
    polygon { 4 <5.74908, -5.73207, -4.68514> <3.68156, -3.55166, -4.56130> <6.12640, -3.06146, -6.08175> <5.74908, -5.73207, -4.68514> }
    polygon { 4 <5.74908, -5.73207, -4.68514> <3.07692, -6.11094, -6.10627> <3.68156, -3.55166, -4.56130> <5.74908, -5.73207, -4.68514> }
    polygon { 4 <3.56712, -3.66609, -7.62672> <6.12640, -3.06146, -6.08175> <3.68156, -3.55166, -4.56130> <3.56712, -3.66609, -7.62672> }
    polygon { 4 <3.56712, -3.66609, -7.62672> <3.68156, -3.55166, -4.56130> <3.07692, -6.11094, -6.10627> <3.56712, -3.66609, -7.62672> }
  material { M_PD3 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #5: centered at: "In"
#declare M_PD4 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <5.74908, -1.60012, 1.69339> <5.74753, -1.59857, 4.51113> <3.07692, -1.22125, 3.11453> <5.74908, -1.60012, 1.69339> }
    polygon { 4 <5.74908, -1.60012, 1.69339> <6.12640, -4.27073, 3.09000> <5.74753, -1.59857, 4.51113> <5.74908, -1.60012, 1.69339> }
    polygon { 4 <5.74908, -1.60012, 1.69339> <3.07692, -1.22125, 3.11453> <3.68156, -3.78053, 1.56955> <5.74908, -1.60012, 1.69339> }
    polygon { 4 <5.74908, -1.60012, 1.69339> <3.68156, -3.78053, 1.56955> <6.12640, -4.27073, 3.09000> <5.74908, -1.60012, 1.69339> }
    polygon { 4 <5.74753, -1.59857, 4.51113> <3.56712, -3.66610, 4.63498> <3.07692, -1.22125, 3.11453> <5.74753, -1.59857, 4.51113> }
    polygon { 4 <5.74753, -1.59857, 4.51113> <6.12640, -4.27073, 3.09000> <3.56712, -3.66610, 4.63498> <5.74753, -1.59857, 4.51113> }
    polygon { 4 <3.68156, -3.78053, 1.56955> <3.07692, -1.22125, 3.11453> <3.56712, -3.66610, 4.63498> <3.68156, -3.78053, 1.56955> }
    polygon { 4 <3.68156, -3.78053, 1.56955> <3.56712, -3.66610, 4.63498> <6.12640, -4.27073, 3.09000> <3.68156, -3.78053, 1.56955> }
  material { M_PD4 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #6: centered at: "In"
#declare M_PD5 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <1.61403, -5.73207, 7.82424> <1.61558, -5.73362, 10.64198> <4.28619, -6.11094, 9.24538> <1.61403, -5.73207, 7.82424> }
    polygon { 4 <1.61403, -5.73207, 7.82424> <1.23671, -3.06146, 9.22085> <1.61558, -5.73362, 10.64198> <1.61403, -5.73207, 7.82424> }
    polygon { 4 <1.61403, -5.73207, 7.82424> <4.28619, -6.11094, 9.24538> <3.68156, -3.55166, 7.70040> <1.61403, -5.73207, 7.82424> }
    polygon { 4 <1.61403, -5.73207, 7.82424> <3.68156, -3.55166, 7.70040> <1.23671, -3.06146, 9.22085> <1.61403, -5.73207, 7.82424> }
    polygon { 4 <1.61558, -5.73362, 10.64198> <3.79599, -3.66609, 10.76583> <4.28619, -6.11094, 9.24538> <1.61558, -5.73362, 10.64198> }
    polygon { 4 <1.61558, -5.73362, 10.64198> <1.23671, -3.06146, 9.22085> <3.79599, -3.66609, 10.76583> <1.61558, -5.73362, 10.64198> }
    polygon { 4 <3.68156, -3.55166, 7.70040> <4.28619, -6.11094, 9.24538> <3.79599, -3.66609, 10.76583> <3.68156, -3.55166, 7.70040> }
    polygon { 4 <3.68156, -3.55166, 7.70040> <3.79599, -3.66609, 10.76583> <1.23671, -3.06146, 9.22085> <3.68156, -3.55166, 7.70040> }
  material { M_PD5 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
union {	// #7: centered at: "In"
#declare M_PD6 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <5.74908, -1.60012, -10.56831> <5.74753, -1.59857, -7.75057> <3.07692, -1.22125, -9.14717> <5.74908, -1.60012, -10.56831> }
    polygon { 4 <5.74908, -1.60012, -10.56831> <6.12640, -4.27073, -9.17170> <5.74753, -1.59857, -7.75057> <5.74908, -1.60012, -10.56831> }
    polygon { 4 <5.74908, -1.60012, -10.56831> <3.07692, -1.22125, -9.14717> <3.68156, -3.78053, -10.69215> <5.74908, -1.60012, -10.56831> }
    polygon { 4 <5.74908, -1.60012, -10.56831> <3.68156, -3.78053, -10.69215> <6.12640, -4.27073, -9.17170> <5.74908, -1.60012, -10.56831> }
    polygon { 4 <5.74753, -1.59857, -7.75057> <3.56712, -3.66609, -7.62672> <3.07692, -1.22125, -9.14717> <5.74753, -1.59857, -7.75057> }
    polygon { 4 <5.74753, -1.59857, -7.75057> <6.12640, -4.27073, -9.17170> <3.56712, -3.66609, -7.62672> <5.74753, -1.59857, -7.75057> }
    polygon { 4 <3.68156, -3.78053, -10.69215> <3.07692, -1.22125, -9.14717> <3.56712, -3.66609, -7.62672> <3.68156, -3.78053, -10.69215> }
    polygon { 4 <3.68156, -3.78053, -10.69215> <3.56712, -3.66609, -7.62672> <6.12640, -4.27073, -9.17170> <3.68156, -3.78053, -10.69215> }
  material { M_PD6 }
  }

  rotate <179.60089,0.82091,-1.92722>
}
