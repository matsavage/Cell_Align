// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3.5
// Desc: Created by Diamond Crystal and Molecular Structure Visualization
//       Version 4.2.2
//       (c) 1997-2016 Crystal Impact GbR, Bonn, Germany.
//       www.crystalimpact.com
//       Author: Dr. Klaus Brandenburg
// Date: Friday, September 09, 2016 16:36:30
// Auth: mbdssmsf
//

#version 3.5;



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

// -- Coming now: 324 atoms --

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
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.98040,-3.86598,-1.53272> }	// #15: "O1"
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.75155,3.86597,4.59813> }	// #16: "O1" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.86597,-3.75155,-4.59814> }	// #17: "O1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.86598,3.98040,1.53271> }	// #18: "O1" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.98041,3.86597,-1.53272> }	// #19: "O1" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.75154,-3.86598,4.59813> }	// #20: "O1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.86598,3.75154,-4.59814> }	// #21: "O1" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.86597,-3.98041,1.53271> }	// #22: "O1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.79999,-1.79846,-1.40887> }	// #23: "O2"
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93196,5.93349,4.72198> }	// #24: "O2" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.79845,-5.93196,-4.47430> }	// #25: "O2" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93350,1.79999,1.65655> }	// #26: "O2" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.80000,1.79845,-1.40887> }	// #27: "O2" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93195,-5.93350,4.72198> }	// #28: "O2" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.79846,5.93195,-4.47430> }	// #29: "O2" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93349,-1.80000,1.65655> }	// #30: "O2" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.79999,-5.93350,-1.65656> }	// #31: "O2" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93196,1.79845,4.47429> }	// #32: "O2" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.80000,5.93349,-1.65656> }	// #33: "O2" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93195,-1.79846,4.47429> }	// #34: "O2" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.79846,1.79999,1.40886> }	// #35: "O2" (y, x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <5.93349,-5.93196,-4.72199> }	// #36: "O2" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.79845,-1.80000,1.40886> }	// #37: "O2" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-5.93350,5.93195,-4.72199> }	// #38: "O2" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.42113,-3.26134,-3.07769> }	// #39: "O3"
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.31082,4.47061,3.05316> }	// #40: "O3" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.26133,-6.31082,6.11858> }	// #41: "O3" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.26133,-6.31082,-6.14311> }	// #42: "O3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.47062,1.42113,-0.01227> }	// #43: "O3" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.42114,3.26133,-3.07769> }	// #44: "O3" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <6.31081,-4.47062,3.05316> }	// #45: "O3" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.26134,6.31081,6.11858> }	// #46: "O3" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.26134,6.31081,-6.14311> }	// #47: "O3" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <4.47061,-1.42114,-0.01227> }	// #48: "O3" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <1.42113,-4.47062,0.01226> }	// #49: "O3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.31082,3.26133,6.14311> }	// #50: "O3" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-6.31082,3.26133,-6.11859> }	// #51: "O3" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-1.42114,4.47061,0.01226> }	// #52: "O3" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <6.31081,-3.26134,6.14311> }	// #53: "O3" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <6.31081,-3.26134,-6.11859> }	// #54: "O3" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-3.26134,1.42113,3.07768> }	// #55: "O3" (y, x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <4.47061,-6.31082,-3.05317> }	// #56: "O3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <3.26133,-1.42114,3.07768> }	// #57: "O3" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2550  material { M_AD10 }  translate <-4.47062,6.31081,-3.05317> }	// #58: "O3" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.30051,-2.11083,-2.53940> }	// #59: "C1"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.43144,5.62112,3.59145> }	// #60: "C1" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.11082,-6.43144,-5.60483> }	// #61: "C1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.62113,1.30051,0.52602> }	// #62: "C1" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.30052,2.11082,-2.53940> }	// #63: "C1" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.43143,-5.62113,3.59145> }	// #64: "C1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.11083,6.43143,-5.60483> }	// #65: "C1" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.62112,-1.30052,0.52602> }	// #66: "C1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.30051,-5.62113,-0.52603> }	// #67: "C1" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.43144,2.11082,5.60482> }	// #68: "C1" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.30052,5.62112,-0.52603> }	// #69: "C1" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.43143,-2.11083,5.60482> }	// #70: "C1" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.11083,1.30051,2.53939> }	// #71: "C1" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.62112,-6.43144,-3.59146> }	// #72: "C1" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.11082,-1.30052,2.53939> }	// #73: "C1" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.62113,6.43143,-3.59146> }	// #74: "C1" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,-1.08774,-3.26407> }	// #75: "C2"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,6.64421,2.86678> }	// #76: "C2" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,-7.19025,5.93221> }	// #77: "C2" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,0.54170,-0.19864> }	// #78: "C2" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54171,1.08773,-3.26407> }	// #79: "C2" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19024,-6.64422,2.86678> }	// #80: "C2" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08774,7.19024,5.93221> }	// #81: "C2" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64421,-0.54171,-0.19864> }	// #82: "C2" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,-6.64422,0.19864> }	// #83: "C2" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,1.08773,-5.93221> }	// #84: "C2" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54171,6.64421,0.19864> }	// #85: "C2" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19024,-1.08774,-5.93221> }	// #86: "C2" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08774,0.54170,3.26406> }	// #87: "C2" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64421,-7.19025,-2.86679> }	// #88: "C2" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,-0.54171,3.26406> }	// #89: "C2" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,7.19024,-2.86679> }	// #90: "C2" (1/2-y, 3/2-x, 3/2-z)
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
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,-1.08774,-4.66681> }	// #109: "C4"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,6.64421,1.46404> }	// #110: "C4" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,-7.19025,4.52947> }	// #111: "C4" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,0.54170,-1.60138> }	// #112: "C4" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54171,1.08773,-4.66681> }	// #113: "C4" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19024,-6.64422,1.46404> }	// #114: "C4" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08774,7.19024,4.52947> }	// #115: "C4" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64421,-0.54171,-1.60138> }	// #116: "C4" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.54170,-6.64422,1.60137> }	// #117: "C4" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.19025,1.08773,-4.52948> }	// #118: "C4" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.54171,6.64421,1.60137> }	// #119: "C4" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.19024,-1.08774,-4.52948> }	// #120: "C4" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.08774,0.54170,4.66680> }	// #121: "C4" (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.64421,-7.19025,-1.46405> }	// #122: "C4" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.08773,-0.54171,4.66680> }	// #123: "C4" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.64422,7.19024,-1.46405> }	// #124: "C4" (1/2-y, 3/2-x, 3/2-z)
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
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.92989,-3.86598,-1.53272> }	// #143: "H1"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.80206,3.86597,4.59813> }	// #144: "H1" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.86597,-2.80206,-4.59814> }	// #145: "H1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.86598,4.92989,1.53271> }	// #146: "H1" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.92990,3.86597,-1.53272> }	// #147: "H1" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.80205,-3.86598,4.59813> }	// #148: "H1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.86598,2.80205,-4.59814> }	// #149: "H1" (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.86597,-4.92990,1.53271> }	// #150: "H1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,-0.00000,-1.51187> }	// #151: "H3"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,-7.73195,4.61898> }	// #152: "H3" (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,-7.73195,4.61898> }	// #153: "H3" (1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,7.73195,4.61898> }	// #154: "H3" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,7.73195,4.61898> }	// #155: "H3" (1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,-7.73195,-4.57730> }	// #156: "H3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,7.73195,-4.57730> }	// #157: "H3" (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,-0.00000,1.55355> }	// #158: "H3" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,-0.00000,1.55355> }	// #159: "H3" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,-7.73195,-1.55356> }	// #160: "H3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,7.73195,-1.55356> }	// #161: "H3" (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,-0.00000,4.57729> }	// #162: "H3" (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,-0.00000,4.57729> }	// #163: "H3" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.00000,-0.00000,1.51186> }	// #164: "H3" (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,-7.73195,-4.61899> }	// #165: "H3" (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,-7.73195,-4.61899> }	// #166: "H3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.73195,7.73195,-4.61899> }	// #167: "H3" (-1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.73195,7.73195,-4.61899> }	// #168: "H3" (1/2+y, 1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.94639,-1.90206,-5.19161> }	// #169: "H4"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.78556,5.82988,0.93924> }	// #170: "H4" (-1/2+x, 1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.90206,-6.78556,4.00467> }	// #171: "H4" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.82990,0.94639,-2.12618> }	// #172: "H4" (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.94640,1.90206,-5.19161> }	// #173: "H4" (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.78555,-5.82990,0.93924> }	// #174: "H4" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.90206,6.78555,4.00467> }	// #175: "H4" (y, 3/2-x, -3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <5.82988,-0.94640,-2.12618> }	// #176: "H4" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.94639,-5.82990,2.12617> }	// #177: "H4" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.78556,1.90206,-4.00468> }	// #178: "H4" (-1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.94640,5.82988,2.12617> }	// #179: "H4" (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.78555,-1.90206,-4.00468> }	// #180: "H4" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.90206,0.94639,5.19160> }	// #181: "H4" (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <5.82988,-6.78556,-0.93925> }	// #182: "H4" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.90206,-0.94640,5.19160> }	// #183: "H4" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-5.82990,6.78555,-0.93925> }	// #184: "H4" (1/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.45773,-3.67423,3.87592> }	// #185: "C1_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.27422,4.05772,-2.25493> }	// #186: "C1_1" [0.449(2) C] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.67422,-7.27422,0.81049> }	// #187: "C1_1" [0.449(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.05773,0.45773,-5.32036> }	// #188: "C1_1" [0.449(2) C] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.45774,3.67422,3.87592> }	// #189: "C1_1" [0.449(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.27421,-4.05773,-2.25493> }	// #190: "C1_1" [0.449(2) C] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.67423,7.27421,0.81049> }	// #191: "C1_1" [0.449(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.05772,-0.45774,-5.32036> }	// #192: "C1_1" [0.449(2) C] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.45773,-4.05773,5.32035> }	// #193: "C1_1" [0.449(2) C] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.27422,3.67422,-0.81050> }	// #194: "C1_1" [0.449(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.45774,4.05772,5.32035> }	// #195: "C1_1" [0.449(2) C] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.27421,-3.67423,-0.81050> }	// #196: "C1_1" [0.449(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.67423,0.45773,-3.87593> }	// #197: "C1_1" [0.449(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.05772,-7.27422,2.25492> }	// #198: "C1_1" [0.449(2) C] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.67422,-0.45774,-3.87593> }	// #199: "C1_1" [0.449(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-4.05773,7.27421,2.25492> }	// #200: "C1_1" [0.449(2) C] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.11134,-3.87990,5.12661> }	// #201: "C2_1" [0.449(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.62061,3.85205,-1.00424> }	// #202: "C2_1" [0.449(2) C] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.84329,3.85205,-1.00424> }	// #203: "C2_1" [0.449(2) C] (1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87989,-7.62061,2.06119> }	// #204: "C2_1" [0.449(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87989,7.84329,2.06119> }	// #205: "C2_1" [0.449(2) C] (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.85206,0.11134,-4.06966> }	// #206: "C2_1" [0.449(2) C] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.11134,3.87989,5.12661> }	// #207: "C2_1" [0.449(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.84329,-3.85206,-1.00424> }	// #208: "C2_1" [0.449(2) C] (1/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.62060,-3.85206,-1.00424> }	// #209: "C2_1" [0.449(2) C] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.87990,-7.84329,2.06119> }	// #210: "C2_1" [0.449(2) C] (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.87990,7.62060,2.06119> }	// #211: "C2_1" [0.449(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.85205,-0.11134,-4.06966> }	// #212: "C2_1" [0.449(2) C] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.11134,-3.85206,4.06965> }	// #213: "C2_1" [0.449(2) C] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.62061,3.87989,-2.06120> }	// #214: "C2_1" [0.449(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.84329,3.87989,-2.06120> }	// #215: "C2_1" [0.449(2) C] (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.11134,3.85205,4.06965> }	// #216: "C2_1" [0.449(2) C] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-7.84329,-3.87990,-2.06120> }	// #217: "C2_1" [0.449(2) C] (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <7.62060,-3.87990,-2.06120> }	// #218: "C2_1" [0.449(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.87990,0.11134,-5.12662> }	// #219: "C2_1" [0.449(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.85205,-7.62061,1.00423> }	// #220: "C2_1" [0.449(2) C] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.85205,7.84329,1.00423> }	// #221: "C2_1" [0.449(2) C] (1/2+y, 1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.87989,-0.11134,-5.12662> }	// #222: "C2_1" [0.449(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.85206,-7.84329,1.00423> }	// #223: "C2_1" [0.449(2) C] (1/2-y, 1/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.85206,7.62060,1.00423> }	// #224: "C2_1" [0.449(2) C] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.74072,-3.50876,2.85575> }	// #225: "D1_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.99123,4.22319,-3.27510> }	// #226: "D1_1" [0.449(2) D] (-1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50875,-6.99123,-0.20968> }	// #227: "D1_1" [0.449(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22320,0.74072,5.92117> }	// #228: "D1_1" [0.449(2) D] (1/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.74073,3.50875,2.85575> }	// #229: "D1_1" [0.449(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.99122,-4.22320,-3.27510> }	// #230: "D1_1" [0.449(2) D] (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.50876,6.99122,-0.20968> }	// #231: "D1_1" [0.449(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.22319,-0.74073,5.92117> }	// #232: "D1_1" [0.449(2) D] (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.74072,-4.22320,-5.92118> }	// #233: "D1_1" [0.449(2) D] (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.99123,3.50875,0.20967> }	// #234: "D1_1" [0.449(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.74073,4.22319,-5.92118> }	// #235: "D1_1" [0.449(2) D] (1-x, 1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.99122,-3.50876,0.20967> }	// #236: "D1_1" [0.449(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.50876,0.74072,-2.85575> }	// #237: "D1_1" [0.449(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.22319,-6.99123,3.27510> }	// #238: "D1_1" [0.449(2) D] (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50875,-0.74073,-2.85575> }	// #239: "D1_1" [0.449(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22320,6.99122,3.27510> }	// #240: "D1_1" [0.449(2) D] (1/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.17165,-4.04536,6.14556> }	// #241: "D2_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.17165,-4.04536,-6.11614> }	// #242: "D2_1" [0.449(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.56030,3.68659,0.01471> }	// #243: "D2_1" [0.449(2) D] (1/2+x, 1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.04535,7.56030,3.08013> }	// #244: "D2_1" [0.449(2) D] (1-y, 1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.68660,-0.17165,-3.05071> }	// #245: "D2_1" [0.449(2) D] (1/2-y, x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.17164,4.04535,6.14556> }	// #246: "D2_1" [0.449(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.17164,4.04535,-6.11614> }	// #247: "D2_1" [0.449(2) D] (1-x, 1-y, 1+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.56031,-3.68660,0.01471> }	// #248: "D2_1" [0.449(2) D] (1/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.04536,-7.56031,3.08013> }	// #249: "D2_1" [0.449(2) D] (y, 1/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.68659,0.17164,-3.05071> }	// #250: "D2_1" [0.449(2) D] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.17165,-3.68660,3.05071> }	// #251: "D2_1" [0.449(2) D] (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.56030,4.04535,-3.08014> }	// #252: "D2_1" [0.449(2) D] (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.17164,3.68659,3.05071> }	// #253: "D2_1" [0.449(2) D] (1-x, 1/2+y, 1/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.56031,-4.04536,-3.08014> }	// #254: "D2_1" [0.449(2) D] (1/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.04536,-0.17165,6.11613> }	// #255: "D2_1" [0.449(2) D] (y, x, -z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.04536,-0.17165,-6.14557> }	// #256: "D2_1" [0.449(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.68659,7.56030,-0.01472> }	// #257: "D2_1" [0.449(2) D] (1/2+y, 1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.04535,0.17164,6.11613> }	// #258: "D2_1" [0.449(2) D] (1-y, 1-x, -z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.04535,0.17164,-6.14557> }	// #259: "D2_1" [0.449(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.68660,-7.56031,-0.01472> }	// #260: "D2_1" [0.449(2) D] (1/2-y, 1/2-x, 1/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.56082,1.81546,-0.42426> }	// #261: "C1_2" [0.213(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.17113,-5.91649,5.70659> }	// #262: "C1_2" [0.213(2) C] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.81547,-5.17113,-3.48968> }	// #263: "C1_2" [0.213(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.91648,2.56082,2.64117> }	// #264: "C1_2" [0.213(2) C] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.56083,-1.81547,-0.42426> }	// #265: "C1_2" [0.213(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.17112,5.91648,5.70659> }	// #266: "C1_2" [0.213(2) C] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.81546,5.17112,-3.48968> }	// #267: "C1_2" [0.213(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.91649,-2.56083,2.64117> }	// #268: "C1_2" [0.213(2) C] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.56082,5.91648,-2.64117> }	// #269: "C1_2" [0.213(2) C] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.17113,-1.81547,3.48968> }	// #270: "C1_2" [0.213(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.56083,-5.91649,-2.64117> }	// #271: "C1_2" [0.213(2) C] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.17112,1.81546,3.48968> }	// #272: "C1_2" [0.213(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.81546,2.56082,0.42425> }	// #273: "C1_2" [0.213(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.91649,-5.17113,-5.70660> }	// #274: "C1_2" [0.213(2) C] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.81547,-2.56083,0.42425> }	// #275: "C1_2" [0.213(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.91648,5.17112,-5.70660> }	// #276: "C1_2" [0.213(2) C] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.40412,2.40927,-0.23420> }	// #277: "C2_2" [0.213(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.32783,-5.32268,5.89665> }	// #278: "C2_2" [0.213(2) C] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.40928,-6.32783,-3.29963> }	// #279: "C2_2" [0.213(2) C] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.32267,1.40412,2.83122> }	// #280: "C2_2" [0.213(2) C] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.40413,-2.40928,-0.23420> }	// #281: "C2_2" [0.213(2) C] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.32782,5.32267,5.89665> }	// #282: "C2_2" [0.213(2) C] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.40927,6.32782,-3.29963> }	// #283: "C2_2" [0.213(2) C] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.32268,-1.40413,2.83122> }	// #284: "C2_2" [0.213(2) C] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.40412,5.32267,-2.83123> }	// #285: "C2_2" [0.213(2) C] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-6.32783,-2.40928,3.29962> }	// #286: "C2_2" [0.213(2) C] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-1.40413,-5.32268,-2.83123> }	// #287: "C2_2" [0.213(2) C] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <6.32782,2.40927,3.29962> }	// #288: "C2_2" [0.213(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.40927,1.40412,0.23419> }	// #289: "C2_2" [0.213(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-5.32268,-6.32783,-5.89666> }	// #290: "C2_2" [0.213(2) C] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.40928,-1.40413,0.23419> }	// #291: "C2_2" [0.213(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <5.32267,6.32782,-5.89666> }	// #292: "C2_2" [0.213(2) C] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50257,1.33144,-0.57998> }	// #293: "D1_2" [0.213(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22938,-6.40051,5.55087> }	// #294: "D1_2" [0.213(2) D] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.33145,-4.22938,-3.64541> }	// #295: "D1_2" [0.213(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.40050,3.50257,2.48544> }	// #296: "D1_2" [0.213(2) D] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.50258,-1.33145,-0.57998> }	// #297: "D1_2" [0.213(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.22937,6.40050,5.55087> }	// #298: "D1_2" [0.213(2) D] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.33144,4.22937,-3.64541> }	// #299: "D1_2" [0.213(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.40051,-3.50258,2.48544> }	// #300: "D1_2" [0.213(2) D] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.50257,6.40050,-2.48545> }	// #301: "D1_2" [0.213(2) D] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.22938,-1.33145,3.64540> }	// #302: "D1_2" [0.213(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.50258,-6.40051,-2.48545> }	// #303: "D1_2" [0.213(2) D] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.22937,1.33144,3.64540> }	// #304: "D1_2" [0.213(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.33144,3.50257,0.57997> }	// #305: "D1_2" [0.213(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-6.40051,-4.22938,-5.55088> }	// #306: "D1_2" [0.213(2) D] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.33145,-3.50258,0.57997> }	// #307: "D1_2" [0.213(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <6.40050,4.22937,-5.55088> }	// #308: "D1_2" [0.213(2) D] (3/2-y, 3/2-x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.46082,2.89174,-0.07971> }	// #309: "D2_2" [0.213(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.27113,-4.84020,6.05114> }	// #310: "D2_2" [0.213(2) D] (-1/2+x, -1/2+y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.27113,-4.84020,-6.21056> }	// #311: "D2_2" [0.213(2) D] (-1/2+x, -1/2+y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.89175,-7.27113,-3.14513> }	// #312: "D2_2" [0.213(2) D] (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.84020,0.46082,2.98572> }	// #313: "D2_2" [0.213(2) D] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.46083,-2.89175,-0.07971> }	// #314: "D2_2" [0.213(2) D] (1-x, 1-y, z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.27112,4.84020,6.05114> }	// #315: "D2_2" [0.213(2) D] (3/2-x, 3/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.27112,4.84020,-6.21056> }	// #316: "D2_2" [0.213(2) D] (3/2-x, 3/2-y, 1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.89174,7.27112,-3.14513> }	// #317: "D2_2" [0.213(2) D] (y, 3/2-x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.84020,-0.46083,2.98572> }	// #318: "D2_2" [0.213(2) D] (-1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.46082,4.84020,-2.98573> }	// #319: "D2_2" [0.213(2) D] (x, 3/2-y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-7.27113,-2.89175,3.14512> }	// #320: "D2_2" [0.213(2) D] (-1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.46083,-4.84020,-2.98573> }	// #321: "D2_2" [0.213(2) D] (1-x, -1/2+y, 5/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <7.27112,2.89174,3.14512> }	// #322: "D2_2" [0.213(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.89174,0.46082,0.07970> }	// #323: "D2_2" [0.213(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.84020,-7.27113,6.21055> }	// #324: "D2_2" [0.213(2) D] (-1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.84020,-7.27113,-6.05115> }	// #325: "D2_2" [0.213(2) D] (-1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-2.89175,-0.46083,0.07970> }	// #326: "D2_2" [0.213(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.84020,7.27112,6.21055> }	// #327: "D2_2" [0.213(2) D] (3/2-y, 3/2-x, 1/2-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <4.84020,7.27112,-6.05115> }	// #328: "D2_2" [0.213(2) D] (3/2-y, 3/2-x, 3/2-z)

  rotate <0.00000,-0.00000,0.00000>
}

// -- Coming now: 0 bonds --


union {

  rotate <0.00000,-0.00000,0.00000>
}

// -- Coming now: 12 cell edges --

union {
  cylinder { <-7.731955,-7.731955,6.130846>, <7.731945,-7.731955,6.130846>, 0.000000  material { M_BD1 } }	// #4: * -- *
  cylinder { <-7.731955,-7.731955,6.130846>, <-7.731955,7.731945,6.130846>, 0.000000  material { M_BD1 } }	// #5: * -- *
  cylinder { <-7.731955,-7.731955,6.130846>, <-7.731955,-7.731955,-6.130854>, 0.000000  material { M_BD1 } }	// #6: * -- *
  cylinder { <7.731945,-7.731955,6.130846>, <7.731945,7.731945,6.130846>, 0.000000  material { M_BD1 } }	// #7: * -- *
  cylinder { <7.731945,-7.731955,6.130846>, <7.731945,-7.731955,-6.130854>, 0.000000  material { M_BD1 } }	// #8: * -- *
  cylinder { <-7.731955,7.731945,6.130846>, <7.731945,7.731945,6.130846>, 0.000000  material { M_BD1 } }	// #9: * -- *
  cylinder { <-7.731955,7.731945,6.130846>, <-7.731955,7.731945,-6.130854>, 0.000000  material { M_BD1 } }	// #10: * -- *
  cylinder { <7.731945,7.731945,6.130846>, <7.731945,7.731945,-6.130854>, 0.000000  material { M_BD1 } }	// #11: * -- *
  cylinder { <-7.731955,-7.731955,-6.130854>, <7.731945,-7.731955,-6.130854>, 0.000000  material { M_BD1 } }	// #12: * -- *
  cylinder { <-7.731955,-7.731955,-6.130854>, <-7.731955,7.731945,-6.130854>, 0.000000  material { M_BD1 } }	// #13: * -- *
  cylinder { <7.731945,-7.731955,-6.130854>, <7.731945,7.731945,-6.130854>, 0.000000  material { M_BD1 } }	// #14: * -- *
  cylinder { <-7.731955,7.731945,-6.130854>, <7.731945,7.731945,-6.130854>, 0.000000  material { M_BD1 } }	// #15: * -- *

  rotate <0.00000,-0.00000,0.00000>
}
