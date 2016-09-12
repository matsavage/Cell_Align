
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

// -- Coming now: 99 atoms --

union {
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-1.71500,-0.86185,0.25078> }	// #5: "In"
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-1.71500,-2.79793,-2.81464> }	// #6: "In" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <0.22108,-2.79793,6.38163> }	// #7: "In" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <0.22108,-2.79793,-5.88007> }	// #8: "In" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <0.22108,-0.86185,3.31621> }	// #9: "In" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.63253,-1.82989,-1.28193> }	// #10: "O1"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.74696,-1.71546,-4.34736> }	// #11: "O1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.86140,-1.82989,4.84892> }	// #12: "O1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.74696,-1.94432,1.78349> }	// #13: "O1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-2.81294,0.23763,-1.15809> }	// #14: "O2"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-2.81449,-3.89587,-4.22351> }	// #15: "O2" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.31901,-3.89741,4.97276> }	// #16: "O2" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.32056,0.23609,1.90734> }	// #17: "O2" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-2.81294,-3.89741,-1.40577> }	// #18: "O2" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.31901,0.23763,4.72508> }	// #19: "O2" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.32056,-3.89587,-4.47120> }	// #20: "O2" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-2.81449,0.23609,1.65965> }	// #21: "O2" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-3.19181,-1.22525,-2.82690> }	// #22: "O3"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-1.35160,-4.27473,6.36937> }	// #23: "O3" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-1.35160,-4.27473,-5.89233> }	// #24: "O3" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.69788,-2.43453,3.30395> }	// #25: "O3" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.14232,0.61495,0.23852> }	// #26: "O3" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-3.19181,-2.43453,0.26304> }	// #27: "O3" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.69788,-1.22525,6.39389> }	// #28: "O3" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.69788,-1.22525,-5.86781> }	// #29: "O3" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.14232,-4.27473,-2.80238> }	// #30: "O3" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-1.35160,0.61495,3.32847> }	// #31: "O3" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.31242,-0.07474,-2.28862> }	// #32: "C1"
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.50212,-4.39535,-5.35404> }	// #33: "C1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.81850,-3.58504,3.84223> }	// #34: "C1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.00819,0.73557,0.77681> }	// #35: "C1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.31242,-3.58504,-0.27525> }	// #36: "C1" (x, 1/2-y, 5/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.81850,-0.07474,5.85560> }	// #37: "C1" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.00819,-4.39535,-3.34067> }	// #38: "C1" (1/2+y, -1/2+x, 3/2-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.50212,0.73557,2.79018> }	// #39: "C1" (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.03128,1.49439,0.05214> }	// #40: "C2" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.57731,0.94835,-5.68143> }	// #41: "C2" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.11901,2.03609,0.75351> }	// #42: "C3" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.11901,2.03609,5.87890> }	// #43: "C3" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.03128,1.49439,-1.35060> }	// #44: "C4" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.57731,0.94835,-4.27869> }	// #45: "C4" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.11901,2.03609,-2.05233> }	// #46: "C5" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.11901,2.03609,-3.57695> }	// #47: "C5" (1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.31695,-1.82989,-1.28193> }	// #48: "H1"
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.74696,-0.76597,-4.34736> }	// #49: "H1" (1-y, -1/2+x, 1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.81088,-1.82989,4.84892> }	// #50: "H1" (3/2-x, 1/2-y, -1/2+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.74696,-2.89380,1.78349> }	// #51: "H1" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.11901,2.03609,1.80434> }	// #52: "H3" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <3.11901,2.03609,4.82807> }	// #53: "H3" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.21695,1.08969,-1.87540> }	// #54: "H4" (1/2+y, 1-x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.17262,0.13403,-3.75389> }	// #55: "H4" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.55521,1.57835,-5.06957> }	// #56: "C1_1" [0.449(2) C] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.93871,1.57835,-3.62514> }	// #57: "C1_1" [0.449(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.76088,1.92475,-3.81888> }	// #58: "C2_1" [0.449(2) C] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-0.73304,1.92475,-4.87583> }	// #59: "C2_1" [0.449(2) C] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.10418,1.29536,-2.60497> }	// #60: "D1_1" [0.449(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.92634,2.20774,-2.79993> }	// #61: "D2_1" [0.449(2) D] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.56758,2.20774,-5.89478> }	// #62: "D2_1" [0.449(2) D] (1-y, 1-x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.05212,3.85155,-0.17347> }	// #63: "C1_2" [0.213(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.30355,4.59691,2.89195> }	// #64: "C1_2" [0.213(2) C] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.55819,3.85155,3.74046> }	// #65: "C1_2" [0.213(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.79748,4.59691,0.67504> }	// #66: "C1_2" [0.213(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-3.20882,4.44536,0.01658> }	// #67: "C2_2" [0.213(2) C]
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <0.70974,3.44021,3.08201> }	// #68: "C2_2" [0.213(2) C] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.71489,4.44536,3.55041> }	// #69: "C2_2" [0.213(2) C] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.20366,3.44021,0.48498> }	// #70: "C2_2" [0.213(2) C] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.11036,3.36753,-0.32920> }	// #71: "D1_2" [0.213(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <1.78757,5.53866,2.73623> }	// #72: "D1_2" [0.213(2) D] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.38356,3.36753,3.89618> }	// #73: "D1_2" [0.213(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-3.28150,5.53866,0.83076> }	// #74: "D1_2" [0.213(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-4.15211,4.92783,0.17108> }	// #75: "D2_2" [0.213(2) D]
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <0.22726,2.49691,3.23651> }	// #76: "D2_2" [0.213(2) D] (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <2.65819,4.92784,3.39591> }	// #77: "D2_2" [0.213(2) D] (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-1.72119,2.49691,0.33048> }	// #78: "D2_2" [0.213(2) D] (y, x, 1-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <-1.71500,-2.79793,9.44706> }	// #87: "In" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.74696,-1.71546,7.91434> }	// #88: "O1" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.32056,-3.89587,7.79050> }	// #89: "O2" (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.4800  material { M_AD9 }  translate <0.22108,-0.86185,-8.94549> }	// #90: "In" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.86140,-1.82989,-7.41278> }	// #91: "O1" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.31901,-3.89741,-7.28894> }	// #92: "O2" (3/2-x, 1/2-y, 1/2+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <-2.50212,-4.39535,6.90766> }	// #93: "C1" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <1.81850,-0.07474,-6.40610> }	// #94: "C1" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <2.57731,0.94835,6.58027> }	// #95: "C2" (3/2-x, y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.11901,2.03609,-6.38280> }	// #96: "C3" (1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.20674,2.57779,0.05214> }	// #97: "C2" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.66071,3.12382,6.58027> }	// #98: "C2" (1/2+x, 1-y, 3/4-z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <4.20674,2.57779,-1.35060> }	// #99: "C4" (3/2-y, x, -1/4+z)
  sphere { <0,0,0>, 0.2850  material { M_AD11 }  translate <3.66071,3.12382,-4.27869> }	// #100: "C4" (1/2+x, 1-y, 7/4-z)
  sphere { <0,0,0>, 0.1350  material { M_AD12 }  translate <-0.38975,1.29536,-6.08974> }	// #101: "D1_1" [0.449(2) D] (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-2.81449,-3.89587,8.03819> }	// #102: "O2" (1-y, -1/2+x, -3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-2.81294,-3.89741,10.85593> }	// #103: "O2" (x, 1/2-y, 1/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.63253,-1.82989,10.97977> }	// #104: "O1"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.14232,-4.27473,9.45932> }	// #105: "O3" (1/2+y, -1/2+x, 1/2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-3.19181,-1.22525,9.43479> }	// #106: "O3"
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.32056,0.23609,-10.35436> }	// #107: "O2" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.31901,0.23763,-7.53662> }	// #108: "O2" (3/2-x, y, 7/4-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-0.74696,-1.94432,-10.47820> }	// #109: "O1" (1/2+y, 1-x, 3/4+z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <-1.35160,0.61495,-8.93323> }	// #110: "O3" (1-y, 1-x, 2-z)
  sphere { <0,0,0>, 0.0765  material { M_AD10 }  translate <1.69788,-2.43453,-8.95775> }	// #111: "O3" (3/2-x, 1/2-y, 1/2+z)

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}

// -- Coming now: 103 bonds --


union {
  cylinder { <-1.715003,-0.861849,0.250782>, <-1.715002,-2.797929,-2.814643>, 0.050000  material { M_BD2 } }	// #16: "In" -- "In"
  cylinder { <-1.715003,-0.861849,0.250782>, <0.221077,-0.861848,3.316207>, 0.050000  material { M_BD2 } }	// #17: "In" -- "In"
  cylinder { <-1.715002,-2.797929,-2.814643>, <0.221077,-2.797929,-5.880068>, 0.050000  material { M_BD2 } }	// #24: "In" -- "In"
  cylinder { <0.221077,-2.797929,6.381631>, <-1.715003,-2.797929,9.447056>, 0.050000  material { M_BD2 } }	// #31: "In" -- "In"
  cylinder { <0.221077,-2.797929,6.381631>, <0.221077,-0.861848,3.316207>, 0.050000  material { M_BD2 } }	// #32: "In" -- "In"
  cylinder { <0.221077,-2.797929,-5.880068>, <0.221077,-0.861848,-8.945494>, 0.050000  material { M_BD2 } }	// #39: "In" -- "In"
  cylinder { <-0.632530,-1.829889,-1.281931>, <0.316953,-1.829889,-1.281931>, 0.050000  material { M_BD2 } }	// #52: "O1" -- "H1"
  cylinder { <-0.746963,-1.715455,-4.347355>, <-0.746963,-0.765973,-4.347355>, 0.050000  material { M_BD2 } }	// #53: "O1" -- "H1"
  cylinder { <-0.861396,-1.829889,4.848919>, <-1.810879,-1.829889,4.848919>, 0.050000  material { M_BD2 } }	// #54: "O1" -- "H1"
  cylinder { <-0.746963,-1.944322,1.783494>, <-0.746963,-2.893805,1.783494>, 0.050000  material { M_BD2 } }	// #55: "O1" -- "H1"
  cylinder { <-2.812940,0.237635,-1.158088>, <-3.312424,-0.074736,-2.288616>, 0.050000  material { M_BD2 } }	// #56: "O2" -- "C1"
  cylinder { <-2.814487,-3.895866,-4.223512>, <-2.502115,-4.395350,-5.354041>, 0.050000  material { M_BD2 } }	// #57: "O2" -- "C1"
  cylinder { <1.319014,-3.897412,4.972762>, <1.818498,-3.585042,3.842234>, 0.050000  material { M_BD2 } }	// #58: "O2" -- "C1"
  cylinder { <1.320560,0.236088,1.907337>, <1.008189,0.735572,0.776810>, 0.050000  material { M_BD2 } }	// #59: "O2" -- "C1"
  cylinder { <-2.812940,-3.897412,-1.405774>, <-3.312424,-3.585042,-0.275246>, 0.050000  material { M_BD2 } }	// #60: "O2" -- "C1"
  cylinder { <1.319014,0.237635,4.725076>, <1.818498,-0.074736,5.855604>, 0.050000  material { M_BD2 } }	// #61: "O2" -- "C1"
  cylinder { <1.320560,-3.895866,-4.471200>, <1.008189,-4.395350,-3.340671>, 0.050000  material { M_BD2 } }	// #62: "O2" -- "C1"
  cylinder { <-2.814487,0.236088,1.659651>, <-2.502115,0.735572,2.790179>, 0.050000  material { M_BD2 } }	// #63: "O2" -- "C1"
  cylinder { <-3.191806,-1.225250,-2.826905>, <-3.312424,-0.074736,-2.288616>, 0.050000  material { M_BD2 } }	// #64: "O3" -- "C1"
  cylinder { <-1.351602,-4.274732,6.369370>, <-2.502115,-4.395350,6.907659>, 0.050000  material { M_BD2 } }	// #65: "O3" -- "C1"
  cylinder { <-1.351602,-4.274732,-5.892329>, <-2.502115,-4.395350,-5.354041>, 0.050000  material { M_BD2 } }	// #66: "O3" -- "C1"
  cylinder { <1.697880,-2.434527,3.303946>, <1.818498,-3.585042,3.842234>, 0.050000  material { M_BD2 } }	// #67: "O3" -- "C1"
  cylinder { <-0.142324,0.614954,0.238521>, <1.008189,0.735572,0.776810>, 0.050000  material { M_BD2 } }	// #68: "O3" -- "C1"
  cylinder { <-3.191806,-2.434527,0.263043>, <-3.312424,-3.585042,-0.275246>, 0.050000  material { M_BD2 } }	// #69: "O3" -- "C1"
  cylinder { <1.697880,-1.225251,6.393893>, <1.818498,-0.074736,5.855604>, 0.050000  material { M_BD2 } }	// #70: "O3" -- "C1"
  cylinder { <1.697880,-1.225251,-5.867807>, <1.818498,-0.074736,-6.406096>, 0.050000  material { M_BD2 } }	// #71: "O3" -- "C1"
  cylinder { <-0.142324,-4.274732,-2.802382>, <1.008189,-4.395350,-3.340671>, 0.050000  material { M_BD2 } }	// #72: "O3" -- "C1"
  cylinder { <-1.351602,0.614954,3.328468>, <-2.502115,0.735572,2.790179>, 0.050000  material { M_BD2 } }	// #73: "O3" -- "C1"
  cylinder { <1.008189,0.735572,0.776810>, <2.031281,1.494386,0.052141>, 0.050000  material { M_BD2 } }	// #74: "C1" -- "C2"
  cylinder { <1.818498,-0.074736,5.855604>, <2.577312,0.948355,6.580271>, 0.050000  material { M_BD2 } }	// #75: "C1" -- "C2"
  cylinder { <2.031281,1.494386,0.052141>, <3.119012,2.036086,0.753511>, 0.050000  material { M_BD2 } }	// #76: "C2" -- "C3"
  cylinder { <2.031281,1.494386,0.052141>, <2.031281,1.494386,-1.350596>, 0.050000  material { M_BD2 } }	// #77: "C2" -- "C4"
  cylinder { <2.577312,0.948355,-5.681428>, <1.818498,-0.074736,-6.406096>, 0.050000  material { M_BD2 } }	// #78: "C2" -- "C1"
  cylinder { <2.577312,0.948355,-5.681428>, <3.119012,2.036086,-6.382798>, 0.050000  material { M_BD2 } }	// #79: "C2" -- "C3"
  cylinder { <2.577312,0.948355,-5.681428>, <2.577312,0.948355,-4.278691>, 0.050000  material { M_BD2 } }	// #80: "C2" -- "C4"
  cylinder { <3.119012,2.036086,0.753511>, <4.206742,2.577786,0.052141>, 0.050000  material { M_BD2 } }	// #81: "C3" -- "C2"
  cylinder { <3.119012,2.036086,0.753511>, <3.119012,2.036086,1.804338>, 0.050000  material { M_BD2 } }	// #82: "C3" -- "H3"
  cylinder { <3.119012,2.036086,5.878901>, <3.660712,3.123817,6.580271>, 0.050000  material { M_BD2 } }	// #83: "C3" -- "C2"
  cylinder { <3.119012,2.036086,5.878901>, <2.577312,0.948355,6.580271>, 0.050000  material { M_BD2 } }	// #84: "C3" -- "C2"
  cylinder { <3.119012,2.036086,5.878901>, <3.119012,2.036086,4.828074>, 0.050000  material { M_BD2 } }	// #85: "C3" -- "H3"
  cylinder { <2.031281,1.494386,-1.350596>, <3.119012,2.036086,-2.052333>, 0.050000  material { M_BD2 } }	// #86: "C4" -- "C5"
  cylinder { <2.031281,1.494386,-1.350596>, <1.216951,1.089695,-1.875396>, 0.050000  material { M_BD2 } }	// #87: "C4" -- "H4"
  cylinder { <2.577312,0.948355,-4.278691>, <3.119012,2.036086,-3.576953>, 0.050000  material { M_BD2 } }	// #88: "C4" -- "C5"
  cylinder { <2.577312,0.948355,-4.278691>, <2.172621,0.134026,-3.753890>, 0.050000  material { M_BD2 } }	// #89: "C4" -- "H4"
  cylinder { <3.119012,2.036086,-2.052333>, <4.206742,2.577786,-1.350596>, 0.050000  material { M_BD2 } }	// #90: "C5" -- "C4"
  cylinder { <3.119012,2.036086,-2.052333>, <3.119012,2.036086,-3.576953>, 0.050000  material { M_BD2 } }	// #91: "C5" -- "C5"
  cylinder { <3.119012,2.036086,-3.576953>, <3.660712,3.123817,-4.278691>, 0.050000  material { M_BD2 } }	// #92: "C5" -- "C4"
  cylinder { <-0.555210,1.578354,-5.069570>, <-0.938715,1.578354,-3.625142>, 0.050000  material { M_BD2 } }	// #93: "C1_1" -- "C1_1"
  cylinder { <-0.555210,1.578354,-5.069570>, <-0.760881,1.924746,-3.818877>, 0.050000  material { M_BD2 } }	// #94: "C1_1" -- "C2_1"
  cylinder { <-0.555210,1.578354,-5.069570>, <-0.389747,1.295365,-6.089743>, 0.050000  material { M_BD2 } }	// #95: "C1_1" -- "D1_1"
  cylinder { <-0.555210,1.578354,-5.069570>, <-0.567581,2.207735,-5.894782>, 0.050000  material { M_BD2 } }	// #96: "C1_1" -- "D2_1"
  cylinder { <-0.938715,1.578354,-3.625142>, <-0.733045,1.924746,-4.875835>, 0.050000  material { M_BD2 } }	// #97: "C1_1" -- "C2_1"
  cylinder { <-0.938715,1.578354,-3.625142>, <-1.104178,1.295365,-2.604969>, 0.050000  material { M_BD2 } }	// #98: "C1_1" -- "D1_1"
  cylinder { <-0.938715,1.578354,-3.625142>, <-0.926345,2.207735,-2.799929>, 0.050000  material { M_BD2 } }	// #99: "C1_1" -- "D2_1"
  cylinder { <-0.760881,1.924746,-3.818877>, <-0.733045,1.924746,-4.875835>, 0.050000  material { M_BD2 } }	// #100: "C2_1" -- "C2_1"
  cylinder { <-0.760881,1.924746,-3.818877>, <-0.926345,2.207735,-2.799929>, 0.050000  material { M_BD2 } }	// #101: "C2_1" -- "D2_1"
  cylinder { <-0.733045,1.924746,-4.875835>, <-0.567581,2.207735,-5.894782>, 0.050000  material { M_BD2 } }	// #102: "C2_1" -- "D2_1"
  cylinder { <-2.052116,3.851548,-0.173473>, <-2.797476,4.596908,0.675036>, 0.050000  material { M_BD2 } }	// #103: "C1_2" -- "C1_2"
  cylinder { <-2.052116,3.851548,-0.173473>, <-3.208816,4.445361,0.016583>, 0.050000  material { M_BD2 } }	// #104: "C1_2" -- "C2_2"
  cylinder { <-2.052116,3.851548,-0.173473>, <-1.110365,3.367528,-0.329196>, 0.050000  material { M_BD2 } }	// #105: "C1_2" -- "D1_2"
  cylinder { <1.303550,4.596909,2.891951>, <0.558190,3.851547,3.740462>, 0.050000  material { M_BD2 } }	// #106: "C1_2" -- "C1_2"
  cylinder { <1.303550,4.596909,2.891951>, <0.709737,3.440208,3.082009>, 0.050000  material { M_BD2 } }	// #107: "C1_2" -- "C2_2"
  cylinder { <1.303550,4.596909,2.891951>, <1.787570,5.538660,2.736228>, 0.050000  material { M_BD2 } }	// #108: "C1_2" -- "D1_2"
  cylinder { <0.558190,3.851547,3.740462>, <1.714890,4.445361,3.550405>, 0.050000  material { M_BD2 } }	// #109: "C1_2" -- "C2_2"
  cylinder { <0.558190,3.851547,3.740462>, <-0.383561,3.367528,3.896185>, 0.050000  material { M_BD2 } }	// #110: "C1_2" -- "D1_2"
  cylinder { <-2.797476,4.596908,0.675036>, <-2.203663,3.440208,0.484980>, 0.050000  material { M_BD2 } }	// #111: "C1_2" -- "C2_2"
  cylinder { <-2.797476,4.596908,0.675036>, <-3.281496,5.538659,0.830760>, 0.050000  material { M_BD2 } }	// #112: "C1_2" -- "D1_2"
  cylinder { <-3.208816,4.445361,0.016583>, <-2.203663,3.440208,0.484980>, 0.050000  material { M_BD2 } }	// #113: "C2_2" -- "C2_2"
  cylinder { <-3.208816,4.445361,0.016583>, <-4.152114,4.927835,0.171081>, 0.050000  material { M_BD2 } }	// #114: "C2_2" -- "D2_2"
  cylinder { <0.709737,3.440208,3.082009>, <1.714890,4.445361,3.550405>, 0.050000  material { M_BD2 } }	// #115: "C2_2" -- "C2_2"
  cylinder { <0.709737,3.440208,3.082009>, <0.227263,2.496909,3.236505>, 0.050000  material { M_BD2 } }	// #116: "C2_2" -- "D2_2"
  cylinder { <1.714890,4.445361,3.550405>, <2.658188,4.927835,3.395908>, 0.050000  material { M_BD2 } }	// #117: "C2_2" -- "D2_2"
  cylinder { <-2.203663,3.440208,0.484980>, <-1.721189,2.496910,0.330482>, 0.050000  material { M_BD2 } }	// #118: "C2_2" -- "D2_2"

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}

// -- Coming now: 12 cell edges --

union {
  cylinder { <-12.344888,-5.695864,6.381631>, <3.119012,-5.695864,6.381631>, 0.1000000  material { M_BD1 } }	// #4: * -- *
  cylinder { <-12.344888,-5.695864,6.381631>, <-12.344888,9.768036,6.381631>, 0.1000000  material { M_BD1 } }	// #5: * -- *
  cylinder { <-12.344888,-5.695864,6.381631>, <-12.344888,-5.695864,-5.880068>, 0.1000000  material { M_BD1 } }	// #6: * -- *
  cylinder { <3.119012,-5.695864,6.381631>, <3.119012,9.768036,6.381631>, 0.1000000  material { M_BD1 } }	// #7: * -- *
  cylinder { <3.119012,-5.695864,6.381631>, <3.119012,-5.695864,-5.880068>, 0.1000000  material { M_BD1 } }	// #8: * -- *
  cylinder { <-12.344888,9.768036,6.381631>, <3.119012,9.768036,6.381631>, 0.1000000  material { M_BD1 } }	// #9: * -- *
  cylinder { <-12.344888,9.768036,6.381631>, <-12.344888,9.768036,-5.880068>, 0.1000000  material { M_BD1 } }	// #10: * -- *
  cylinder { <3.119012,9.768036,6.381631>, <3.119012,9.768036,-5.880068>, 0.1000000  material { M_BD1 } }	// #11: * -- *
  cylinder { <-12.344888,-5.695864,-5.880068>, <3.119012,-5.695864,-5.880068>, 0.1000000  material { M_BD1 } }	// #12: * -- *
  cylinder { <-12.344888,-5.695864,-5.880068>, <-12.344888,9.768036,-5.880068>, 0.1000000  material { M_BD1 } }	// #13: * -- *
  cylinder { <3.119012,-5.695864,-5.880068>, <3.119012,9.768036,-5.880068>, 0.1000000  material { M_BD1 } }	// #14: * -- *
  cylinder { <-12.344888,9.768036,-5.880068>, <3.119012,9.768036,-5.880068>, 0.1000000  material { M_BD1 } }	// #15: * -- *

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}

// -- Coming now: 7 polyhedra --

union {	// #1: centered at: "In"
#declare M_PD0 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <-2.81294, 0.23763, -1.15809> <-2.81449, 0.23609, 1.65965> <-3.19181, -2.43453, 0.26304> <-2.81294, 0.23763, -1.15809> }
    polygon { 4 <-2.81294, 0.23763, -1.15809> <-0.14232, 0.61495, 0.23852> <-2.81449, 0.23609, 1.65965> <-2.81294, 0.23763, -1.15809> }
    polygon { 4 <-2.81294, 0.23763, -1.15809> <-3.19181, -2.43453, 0.26304> <-0.63253, -1.82989, -1.28193> <-2.81294, 0.23763, -1.15809> }
    polygon { 4 <-2.81294, 0.23763, -1.15809> <-0.63253, -1.82989, -1.28193> <-0.14232, 0.61495, 0.23852> <-2.81294, 0.23763, -1.15809> }
    polygon { 4 <-2.81449, 0.23609, 1.65965> <-0.74696, -1.94432, 1.78349> <-3.19181, -2.43453, 0.26304> <-2.81449, 0.23609, 1.65965> }
    polygon { 4 <-2.81449, 0.23609, 1.65965> <-0.14232, 0.61495, 0.23852> <-0.74696, -1.94432, 1.78349> <-2.81449, 0.23609, 1.65965> }
    polygon { 4 <-0.63253, -1.82989, -1.28193> <-3.19181, -2.43453, 0.26304> <-0.74696, -1.94432, 1.78349> <-0.63253, -1.82989, -1.28193> }
    polygon { 4 <-0.63253, -1.82989, -1.28193> <-0.74696, -1.94432, 1.78349> <-0.14232, 0.61495, 0.23852> <-0.63253, -1.82989, -1.28193> }
  material { M_PD0 }
  }
  union {
    cylinder { <-2.81294, 0.23763, -1.15809>, <-2.81449, 0.23609, 1.65965>, 0.050 }
    cylinder { <-2.81449, 0.23609, 1.65965>, <-3.19181, -2.43453, 0.26304>, 0.050 }
    cylinder { <-3.19181, -2.43453, 0.26304>, <-2.81294, 0.23763, -1.15809>, 0.050 }
    cylinder { <-2.81294, 0.23763, -1.15809>, <-0.14232, 0.61495, 0.23852>, 0.050 }
    cylinder { <-0.14232, 0.61495, 0.23852>, <-2.81449, 0.23609, 1.65965>, 0.050 }
    cylinder { <-2.81449, 0.23609, 1.65965>, <-2.81294, 0.23763, -1.15809>, 0.050 }
    cylinder { <-2.81294, 0.23763, -1.15809>, <-3.19181, -2.43453, 0.26304>, 0.050 }
    cylinder { <-3.19181, -2.43453, 0.26304>, <-0.63253, -1.82989, -1.28193>, 0.050 }
    cylinder { <-0.63253, -1.82989, -1.28193>, <-2.81294, 0.23763, -1.15809>, 0.050 }
    cylinder { <-2.81294, 0.23763, -1.15809>, <-0.63253, -1.82989, -1.28193>, 0.050 }
    cylinder { <-0.63253, -1.82989, -1.28193>, <-0.14232, 0.61495, 0.23852>, 0.050 }
    cylinder { <-0.14232, 0.61495, 0.23852>, <-2.81294, 0.23763, -1.15809>, 0.050 }
    cylinder { <-2.81449, 0.23609, 1.65965>, <-0.74696, -1.94432, 1.78349>, 0.050 }
    cylinder { <-0.74696, -1.94432, 1.78349>, <-3.19181, -2.43453, 0.26304>, 0.050 }
    cylinder { <-3.19181, -2.43453, 0.26304>, <-2.81449, 0.23609, 1.65965>, 0.050 }
    cylinder { <-2.81449, 0.23609, 1.65965>, <-0.14232, 0.61495, 0.23852>, 0.050 }
    cylinder { <-0.14232, 0.61495, 0.23852>, <-0.74696, -1.94432, 1.78349>, 0.050 }
    cylinder { <-0.74696, -1.94432, 1.78349>, <-2.81449, 0.23609, 1.65965>, 0.050 }
    cylinder { <-0.63253, -1.82989, -1.28193>, <-3.19181, -2.43453, 0.26304>, 0.050 }
    cylinder { <-3.19181, -2.43453, 0.26304>, <-0.74696, -1.94432, 1.78349>, 0.050 }
    cylinder { <-0.74696, -1.94432, 1.78349>, <-0.63253, -1.82989, -1.28193>, 0.050 }
    cylinder { <-0.63253, -1.82989, -1.28193>, <-0.74696, -1.94432, 1.78349>, 0.050 }
    cylinder { <-0.74696, -1.94432, 1.78349>, <-0.14232, 0.61495, 0.23852>, 0.050 }
    cylinder { <-0.14232, 0.61495, 0.23852>, <-0.63253, -1.82989, -1.28193>, 0.050 }
  pigment { color rgb<0, 0, 1> }
  }

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}
union {	// #2: centered at: "In"
#declare M_PD1 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <-2.81449, -3.89587, -4.22351> <-2.81294, -3.89741, -1.40577> <-0.14232, -4.27473, -2.80238> <-2.81449, -3.89587, -4.22351> }
    polygon { 4 <-2.81449, -3.89587, -4.22351> <-3.19181, -1.22525, -2.82690> <-2.81294, -3.89741, -1.40577> <-2.81449, -3.89587, -4.22351> }
    polygon { 4 <-2.81449, -3.89587, -4.22351> <-0.14232, -4.27473, -2.80238> <-0.74696, -1.71546, -4.34736> <-2.81449, -3.89587, -4.22351> }
    polygon { 4 <-2.81449, -3.89587, -4.22351> <-0.74696, -1.71546, -4.34736> <-3.19181, -1.22525, -2.82690> <-2.81449, -3.89587, -4.22351> }
    polygon { 4 <-2.81294, -3.89741, -1.40577> <-0.63253, -1.82989, -1.28193> <-0.14232, -4.27473, -2.80238> <-2.81294, -3.89741, -1.40577> }
    polygon { 4 <-2.81294, -3.89741, -1.40577> <-3.19181, -1.22525, -2.82690> <-0.63253, -1.82989, -1.28193> <-2.81294, -3.89741, -1.40577> }
    polygon { 4 <-0.74696, -1.71546, -4.34736> <-0.14232, -4.27473, -2.80238> <-0.63253, -1.82989, -1.28193> <-0.74696, -1.71546, -4.34736> }
    polygon { 4 <-0.74696, -1.71546, -4.34736> <-0.63253, -1.82989, -1.28193> <-3.19181, -1.22525, -2.82690> <-0.74696, -1.71546, -4.34736> }
  material { M_PD1 }
  }
  union {
    cylinder { <-2.81449, -3.89587, -4.22351>, <-2.81294, -3.89741, -1.40577>, 0.050 }
    cylinder { <-2.81294, -3.89741, -1.40577>, <-0.14232, -4.27473, -2.80238>, 0.050 }
    cylinder { <-0.14232, -4.27473, -2.80238>, <-2.81449, -3.89587, -4.22351>, 0.050 }
    cylinder { <-2.81449, -3.89587, -4.22351>, <-3.19181, -1.22525, -2.82690>, 0.050 }
    cylinder { <-3.19181, -1.22525, -2.82690>, <-2.81294, -3.89741, -1.40577>, 0.050 }
    cylinder { <-2.81294, -3.89741, -1.40577>, <-2.81449, -3.89587, -4.22351>, 0.050 }
    cylinder { <-2.81449, -3.89587, -4.22351>, <-0.14232, -4.27473, -2.80238>, 0.050 }
    cylinder { <-0.14232, -4.27473, -2.80238>, <-0.74696, -1.71546, -4.34736>, 0.050 }
    cylinder { <-0.74696, -1.71546, -4.34736>, <-2.81449, -3.89587, -4.22351>, 0.050 }
    cylinder { <-2.81449, -3.89587, -4.22351>, <-0.74696, -1.71546, -4.34736>, 0.050 }
    cylinder { <-0.74696, -1.71546, -4.34736>, <-3.19181, -1.22525, -2.82690>, 0.050 }
    cylinder { <-3.19181, -1.22525, -2.82690>, <-2.81449, -3.89587, -4.22351>, 0.050 }
    cylinder { <-2.81294, -3.89741, -1.40577>, <-0.63253, -1.82989, -1.28193>, 0.050 }
    cylinder { <-0.63253, -1.82989, -1.28193>, <-0.14232, -4.27473, -2.80238>, 0.050 }
    cylinder { <-0.14232, -4.27473, -2.80238>, <-2.81294, -3.89741, -1.40577>, 0.050 }
    cylinder { <-2.81294, -3.89741, -1.40577>, <-3.19181, -1.22525, -2.82690>, 0.050 }
    cylinder { <-3.19181, -1.22525, -2.82690>, <-0.63253, -1.82989, -1.28193>, 0.050 }
    cylinder { <-0.63253, -1.82989, -1.28193>, <-2.81294, -3.89741, -1.40577>, 0.050 }
    cylinder { <-0.74696, -1.71546, -4.34736>, <-0.14232, -4.27473, -2.80238>, 0.050 }
    cylinder { <-0.14232, -4.27473, -2.80238>, <-0.63253, -1.82989, -1.28193>, 0.050 }
    cylinder { <-0.63253, -1.82989, -1.28193>, <-0.74696, -1.71546, -4.34736>, 0.050 }
    cylinder { <-0.74696, -1.71546, -4.34736>, <-0.63253, -1.82989, -1.28193>, 0.050 }
    cylinder { <-0.63253, -1.82989, -1.28193>, <-3.19181, -1.22525, -2.82690>, 0.050 }
    cylinder { <-3.19181, -1.22525, -2.82690>, <-0.74696, -1.71546, -4.34736>, 0.050 }
  pigment { color rgb<0, 0, 1> }
  }

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}
union {	// #3: centered at: "In"
#declare M_PD2 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <1.31901, -3.89741, 4.97276> <1.32056, -3.89587, 7.79050> <1.69788, -1.22525, 6.39389> <1.31901, -3.89741, 4.97276> }
    polygon { 4 <1.31901, -3.89741, 4.97276> <-1.35160, -4.27473, 6.36937> <1.32056, -3.89587, 7.79050> <1.31901, -3.89741, 4.97276> }
    polygon { 4 <1.31901, -3.89741, 4.97276> <1.69788, -1.22525, 6.39389> <-0.86140, -1.82989, 4.84892> <1.31901, -3.89741, 4.97276> }
    polygon { 4 <1.31901, -3.89741, 4.97276> <-0.86140, -1.82989, 4.84892> <-1.35160, -4.27473, 6.36937> <1.31901, -3.89741, 4.97276> }
    polygon { 4 <1.32056, -3.89587, 7.79050> <-0.74696, -1.71546, 7.91434> <1.69788, -1.22525, 6.39389> <1.32056, -3.89587, 7.79050> }
    polygon { 4 <1.32056, -3.89587, 7.79050> <-1.35160, -4.27473, 6.36937> <-0.74696, -1.71546, 7.91434> <1.32056, -3.89587, 7.79050> }
    polygon { 4 <-0.86140, -1.82989, 4.84892> <1.69788, -1.22525, 6.39389> <-0.74696, -1.71546, 7.91434> <-0.86140, -1.82989, 4.84892> }
    polygon { 4 <-0.86140, -1.82989, 4.84892> <-0.74696, -1.71546, 7.91434> <-1.35160, -4.27473, 6.36937> <-0.86140, -1.82989, 4.84892> }
  material { M_PD2 }
  }
  union {
    cylinder { <1.31901, -3.89741, 4.97276>, <1.32056, -3.89587, 7.79050>, 0.050 }
    cylinder { <1.32056, -3.89587, 7.79050>, <1.69788, -1.22525, 6.39389>, 0.050 }
    cylinder { <1.69788, -1.22525, 6.39389>, <1.31901, -3.89741, 4.97276>, 0.050 }
    cylinder { <1.31901, -3.89741, 4.97276>, <-1.35160, -4.27473, 6.36937>, 0.050 }
    cylinder { <-1.35160, -4.27473, 6.36937>, <1.32056, -3.89587, 7.79050>, 0.050 }
    cylinder { <1.32056, -3.89587, 7.79050>, <1.31901, -3.89741, 4.97276>, 0.050 }
    cylinder { <1.31901, -3.89741, 4.97276>, <1.69788, -1.22525, 6.39389>, 0.050 }
    cylinder { <1.69788, -1.22525, 6.39389>, <-0.86140, -1.82989, 4.84892>, 0.050 }
    cylinder { <-0.86140, -1.82989, 4.84892>, <1.31901, -3.89741, 4.97276>, 0.050 }
    cylinder { <1.31901, -3.89741, 4.97276>, <-0.86140, -1.82989, 4.84892>, 0.050 }
    cylinder { <-0.86140, -1.82989, 4.84892>, <-1.35160, -4.27473, 6.36937>, 0.050 }
    cylinder { <-1.35160, -4.27473, 6.36937>, <1.31901, -3.89741, 4.97276>, 0.050 }
    cylinder { <1.32056, -3.89587, 7.79050>, <-0.74696, -1.71546, 7.91434>, 0.050 }
    cylinder { <-0.74696, -1.71546, 7.91434>, <1.69788, -1.22525, 6.39389>, 0.050 }
    cylinder { <1.69788, -1.22525, 6.39389>, <1.32056, -3.89587, 7.79050>, 0.050 }
    cylinder { <1.32056, -3.89587, 7.79050>, <-1.35160, -4.27473, 6.36937>, 0.050 }
    cylinder { <-1.35160, -4.27473, 6.36937>, <-0.74696, -1.71546, 7.91434>, 0.050 }
    cylinder { <-0.74696, -1.71546, 7.91434>, <1.32056, -3.89587, 7.79050>, 0.050 }
    cylinder { <-0.86140, -1.82989, 4.84892>, <1.69788, -1.22525, 6.39389>, 0.050 }
    cylinder { <1.69788, -1.22525, 6.39389>, <-0.74696, -1.71546, 7.91434>, 0.050 }
    cylinder { <-0.74696, -1.71546, 7.91434>, <-0.86140, -1.82989, 4.84892>, 0.050 }
    cylinder { <-0.86140, -1.82989, 4.84892>, <-0.74696, -1.71546, 7.91434>, 0.050 }
    cylinder { <-0.74696, -1.71546, 7.91434>, <-1.35160, -4.27473, 6.36937>, 0.050 }
    cylinder { <-1.35160, -4.27473, 6.36937>, <-0.86140, -1.82989, 4.84892>, 0.050 }
  pigment { color rgb<0, 0, 1> }
  }

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}
union {	// #4: centered at: "In"
#declare M_PD3 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <1.31901, -3.89741, -7.28894> <1.32056, -3.89587, -4.47120> <1.69788, -1.22525, -5.86781> <1.31901, -3.89741, -7.28894> }
    polygon { 4 <1.31901, -3.89741, -7.28894> <-1.35160, -4.27473, -5.89233> <1.32056, -3.89587, -4.47120> <1.31901, -3.89741, -7.28894> }
    polygon { 4 <1.31901, -3.89741, -7.28894> <1.69788, -1.22525, -5.86781> <-0.86140, -1.82989, -7.41278> <1.31901, -3.89741, -7.28894> }
    polygon { 4 <1.31901, -3.89741, -7.28894> <-0.86140, -1.82989, -7.41278> <-1.35160, -4.27473, -5.89233> <1.31901, -3.89741, -7.28894> }
    polygon { 4 <1.32056, -3.89587, -4.47120> <-0.74696, -1.71546, -4.34736> <1.69788, -1.22525, -5.86781> <1.32056, -3.89587, -4.47120> }
    polygon { 4 <1.32056, -3.89587, -4.47120> <-1.35160, -4.27473, -5.89233> <-0.74696, -1.71546, -4.34736> <1.32056, -3.89587, -4.47120> }
    polygon { 4 <-0.86140, -1.82989, -7.41278> <1.69788, -1.22525, -5.86781> <-0.74696, -1.71546, -4.34736> <-0.86140, -1.82989, -7.41278> }
    polygon { 4 <-0.86140, -1.82989, -7.41278> <-0.74696, -1.71546, -4.34736> <-1.35160, -4.27473, -5.89233> <-0.86140, -1.82989, -7.41278> }
  material { M_PD3 }
  }
  union {
    cylinder { <1.31901, -3.89741, -7.28894>, <1.32056, -3.89587, -4.47120>, 0.050 }
    cylinder { <1.32056, -3.89587, -4.47120>, <1.69788, -1.22525, -5.86781>, 0.050 }
    cylinder { <1.69788, -1.22525, -5.86781>, <1.31901, -3.89741, -7.28894>, 0.050 }
    cylinder { <1.31901, -3.89741, -7.28894>, <-1.35160, -4.27473, -5.89233>, 0.050 }
    cylinder { <-1.35160, -4.27473, -5.89233>, <1.32056, -3.89587, -4.47120>, 0.050 }
    cylinder { <1.32056, -3.89587, -4.47120>, <1.31901, -3.89741, -7.28894>, 0.050 }
    cylinder { <1.31901, -3.89741, -7.28894>, <1.69788, -1.22525, -5.86781>, 0.050 }
    cylinder { <1.69788, -1.22525, -5.86781>, <-0.86140, -1.82989, -7.41278>, 0.050 }
    cylinder { <-0.86140, -1.82989, -7.41278>, <1.31901, -3.89741, -7.28894>, 0.050 }
    cylinder { <1.31901, -3.89741, -7.28894>, <-0.86140, -1.82989, -7.41278>, 0.050 }
    cylinder { <-0.86140, -1.82989, -7.41278>, <-1.35160, -4.27473, -5.89233>, 0.050 }
    cylinder { <-1.35160, -4.27473, -5.89233>, <1.31901, -3.89741, -7.28894>, 0.050 }
    cylinder { <1.32056, -3.89587, -4.47120>, <-0.74696, -1.71546, -4.34736>, 0.050 }
    cylinder { <-0.74696, -1.71546, -4.34736>, <1.69788, -1.22525, -5.86781>, 0.050 }
    cylinder { <1.69788, -1.22525, -5.86781>, <1.32056, -3.89587, -4.47120>, 0.050 }
    cylinder { <1.32056, -3.89587, -4.47120>, <-1.35160, -4.27473, -5.89233>, 0.050 }
    cylinder { <-1.35160, -4.27473, -5.89233>, <-0.74696, -1.71546, -4.34736>, 0.050 }
    cylinder { <-0.74696, -1.71546, -4.34736>, <1.32056, -3.89587, -4.47120>, 0.050 }
    cylinder { <-0.86140, -1.82989, -7.41278>, <1.69788, -1.22525, -5.86781>, 0.050 }
    cylinder { <1.69788, -1.22525, -5.86781>, <-0.74696, -1.71546, -4.34736>, 0.050 }
    cylinder { <-0.74696, -1.71546, -4.34736>, <-0.86140, -1.82989, -7.41278>, 0.050 }
    cylinder { <-0.86140, -1.82989, -7.41278>, <-0.74696, -1.71546, -4.34736>, 0.050 }
    cylinder { <-0.74696, -1.71546, -4.34736>, <-1.35160, -4.27473, -5.89233>, 0.050 }
    cylinder { <-1.35160, -4.27473, -5.89233>, <-0.86140, -1.82989, -7.41278>, 0.050 }
  pigment { color rgb<0, 0, 1> }
  }

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}
union {	// #5: centered at: "In"
#declare M_PD4 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <1.32056, 0.23609, 1.90734> <1.31901, 0.23763, 4.72508> <-1.35160, 0.61495, 3.32847> <1.32056, 0.23609, 1.90734> }
    polygon { 4 <1.32056, 0.23609, 1.90734> <1.69788, -2.43453, 3.30395> <1.31901, 0.23763, 4.72508> <1.32056, 0.23609, 1.90734> }
    polygon { 4 <1.32056, 0.23609, 1.90734> <-1.35160, 0.61495, 3.32847> <-0.74696, -1.94432, 1.78349> <1.32056, 0.23609, 1.90734> }
    polygon { 4 <1.32056, 0.23609, 1.90734> <-0.74696, -1.94432, 1.78349> <1.69788, -2.43453, 3.30395> <1.32056, 0.23609, 1.90734> }
    polygon { 4 <1.31901, 0.23763, 4.72508> <-0.86140, -1.82989, 4.84892> <-1.35160, 0.61495, 3.32847> <1.31901, 0.23763, 4.72508> }
    polygon { 4 <1.31901, 0.23763, 4.72508> <1.69788, -2.43453, 3.30395> <-0.86140, -1.82989, 4.84892> <1.31901, 0.23763, 4.72508> }
    polygon { 4 <-0.74696, -1.94432, 1.78349> <-1.35160, 0.61495, 3.32847> <-0.86140, -1.82989, 4.84892> <-0.74696, -1.94432, 1.78349> }
    polygon { 4 <-0.74696, -1.94432, 1.78349> <-0.86140, -1.82989, 4.84892> <1.69788, -2.43453, 3.30395> <-0.74696, -1.94432, 1.78349> }
  material { M_PD4 }
  }
  union {
    cylinder { <1.32056, 0.23609, 1.90734>, <1.31901, 0.23763, 4.72508>, 0.050 }
    cylinder { <1.31901, 0.23763, 4.72508>, <-1.35160, 0.61495, 3.32847>, 0.050 }
    cylinder { <-1.35160, 0.61495, 3.32847>, <1.32056, 0.23609, 1.90734>, 0.050 }
    cylinder { <1.32056, 0.23609, 1.90734>, <1.69788, -2.43453, 3.30395>, 0.050 }
    cylinder { <1.69788, -2.43453, 3.30395>, <1.31901, 0.23763, 4.72508>, 0.050 }
    cylinder { <1.31901, 0.23763, 4.72508>, <1.32056, 0.23609, 1.90734>, 0.050 }
    cylinder { <1.32056, 0.23609, 1.90734>, <-1.35160, 0.61495, 3.32847>, 0.050 }
    cylinder { <-1.35160, 0.61495, 3.32847>, <-0.74696, -1.94432, 1.78349>, 0.050 }
    cylinder { <-0.74696, -1.94432, 1.78349>, <1.32056, 0.23609, 1.90734>, 0.050 }
    cylinder { <1.32056, 0.23609, 1.90734>, <-0.74696, -1.94432, 1.78349>, 0.050 }
    cylinder { <-0.74696, -1.94432, 1.78349>, <1.69788, -2.43453, 3.30395>, 0.050 }
    cylinder { <1.69788, -2.43453, 3.30395>, <1.32056, 0.23609, 1.90734>, 0.050 }
    cylinder { <1.31901, 0.23763, 4.72508>, <-0.86140, -1.82989, 4.84892>, 0.050 }
    cylinder { <-0.86140, -1.82989, 4.84892>, <-1.35160, 0.61495, 3.32847>, 0.050 }
    cylinder { <-1.35160, 0.61495, 3.32847>, <1.31901, 0.23763, 4.72508>, 0.050 }
    cylinder { <1.31901, 0.23763, 4.72508>, <1.69788, -2.43453, 3.30395>, 0.050 }
    cylinder { <1.69788, -2.43453, 3.30395>, <-0.86140, -1.82989, 4.84892>, 0.050 }
    cylinder { <-0.86140, -1.82989, 4.84892>, <1.31901, 0.23763, 4.72508>, 0.050 }
    cylinder { <-0.74696, -1.94432, 1.78349>, <-1.35160, 0.61495, 3.32847>, 0.050 }
    cylinder { <-1.35160, 0.61495, 3.32847>, <-0.86140, -1.82989, 4.84892>, 0.050 }
    cylinder { <-0.86140, -1.82989, 4.84892>, <-0.74696, -1.94432, 1.78349>, 0.050 }
    cylinder { <-0.74696, -1.94432, 1.78349>, <-0.86140, -1.82989, 4.84892>, 0.050 }
    cylinder { <-0.86140, -1.82989, 4.84892>, <1.69788, -2.43453, 3.30395>, 0.050 }
    cylinder { <1.69788, -2.43453, 3.30395>, <-0.74696, -1.94432, 1.78349>, 0.050 }
  pigment { color rgb<0, 0, 1> }
  }

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}
union {	// #6: centered at: "In"
#declare M_PD5 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <-2.81449, -3.89587, 8.03819> <-2.81294, -3.89741, 10.85593> <-0.14232, -4.27473, 9.45932> <-2.81449, -3.89587, 8.03819> }
    polygon { 4 <-2.81449, -3.89587, 8.03819> <-3.19181, -1.22525, 9.43479> <-2.81294, -3.89741, 10.85593> <-2.81449, -3.89587, 8.03819> }
    polygon { 4 <-2.81449, -3.89587, 8.03819> <-0.14232, -4.27473, 9.45932> <-0.74696, -1.71546, 7.91434> <-2.81449, -3.89587, 8.03819> }
    polygon { 4 <-2.81449, -3.89587, 8.03819> <-0.74696, -1.71546, 7.91434> <-3.19181, -1.22525, 9.43479> <-2.81449, -3.89587, 8.03819> }
    polygon { 4 <-2.81294, -3.89741, 10.85593> <-0.63253, -1.82989, 10.97977> <-0.14232, -4.27473, 9.45932> <-2.81294, -3.89741, 10.85593> }
    polygon { 4 <-2.81294, -3.89741, 10.85593> <-3.19181, -1.22525, 9.43479> <-0.63253, -1.82989, 10.97977> <-2.81294, -3.89741, 10.85593> }
    polygon { 4 <-0.74696, -1.71546, 7.91434> <-0.14232, -4.27473, 9.45932> <-0.63253, -1.82989, 10.97977> <-0.74696, -1.71546, 7.91434> }
    polygon { 4 <-0.74696, -1.71546, 7.91434> <-0.63253, -1.82989, 10.97977> <-3.19181, -1.22525, 9.43479> <-0.74696, -1.71546, 7.91434> }
  material { M_PD5 }
  }
  union {
    cylinder { <-2.81449, -3.89587, 8.03819>, <-2.81294, -3.89741, 10.85593>, 0.050 }
    cylinder { <-2.81294, -3.89741, 10.85593>, <-0.14232, -4.27473, 9.45932>, 0.050 }
    cylinder { <-0.14232, -4.27473, 9.45932>, <-2.81449, -3.89587, 8.03819>, 0.050 }
    cylinder { <-2.81449, -3.89587, 8.03819>, <-3.19181, -1.22525, 9.43479>, 0.050 }
    cylinder { <-3.19181, -1.22525, 9.43479>, <-2.81294, -3.89741, 10.85593>, 0.050 }
    cylinder { <-2.81294, -3.89741, 10.85593>, <-2.81449, -3.89587, 8.03819>, 0.050 }
    cylinder { <-2.81449, -3.89587, 8.03819>, <-0.14232, -4.27473, 9.45932>, 0.050 }
    cylinder { <-0.14232, -4.27473, 9.45932>, <-0.74696, -1.71546, 7.91434>, 0.050 }
    cylinder { <-0.74696, -1.71546, 7.91434>, <-2.81449, -3.89587, 8.03819>, 0.050 }
    cylinder { <-2.81449, -3.89587, 8.03819>, <-0.74696, -1.71546, 7.91434>, 0.050 }
    cylinder { <-0.74696, -1.71546, 7.91434>, <-3.19181, -1.22525, 9.43479>, 0.050 }
    cylinder { <-3.19181, -1.22525, 9.43479>, <-2.81449, -3.89587, 8.03819>, 0.050 }
    cylinder { <-2.81294, -3.89741, 10.85593>, <-0.63253, -1.82989, 10.97977>, 0.050 }
    cylinder { <-0.63253, -1.82989, 10.97977>, <-0.14232, -4.27473, 9.45932>, 0.050 }
    cylinder { <-0.14232, -4.27473, 9.45932>, <-2.81294, -3.89741, 10.85593>, 0.050 }
    cylinder { <-2.81294, -3.89741, 10.85593>, <-3.19181, -1.22525, 9.43479>, 0.050 }
    cylinder { <-3.19181, -1.22525, 9.43479>, <-0.63253, -1.82989, 10.97977>, 0.050 }
    cylinder { <-0.63253, -1.82989, 10.97977>, <-2.81294, -3.89741, 10.85593>, 0.050 }
    cylinder { <-0.74696, -1.71546, 7.91434>, <-0.14232, -4.27473, 9.45932>, 0.050 }
    cylinder { <-0.14232, -4.27473, 9.45932>, <-0.63253, -1.82989, 10.97977>, 0.050 }
    cylinder { <-0.63253, -1.82989, 10.97977>, <-0.74696, -1.71546, 7.91434>, 0.050 }
    cylinder { <-0.74696, -1.71546, 7.91434>, <-0.63253, -1.82989, 10.97977>, 0.050 }
    cylinder { <-0.63253, -1.82989, 10.97977>, <-3.19181, -1.22525, 9.43479>, 0.050 }
    cylinder { <-3.19181, -1.22525, 9.43479>, <-0.74696, -1.71546, 7.91434>, 0.050 }
  pigment { color rgb<0, 0, 1> }
  }

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}
union {	// #7: centered at: "In"
#declare M_PD6 = material { texture { pigment { color rgb<0.752941, 0.752941, 0.752941> transmit 0.5 } finish { F_Global } normal { N_Global } } interior { I_Global } }
  union {
    polygon { 4 <1.32056, 0.23609, -10.35436> <1.31901, 0.23763, -7.53662> <-1.35160, 0.61495, -8.93323> <1.32056, 0.23609, -10.35436> }
    polygon { 4 <1.32056, 0.23609, -10.35436> <1.69788, -2.43453, -8.95775> <1.31901, 0.23763, -7.53662> <1.32056, 0.23609, -10.35436> }
    polygon { 4 <1.32056, 0.23609, -10.35436> <-1.35160, 0.61495, -8.93323> <-0.74696, -1.94432, -10.47820> <1.32056, 0.23609, -10.35436> }
    polygon { 4 <1.32056, 0.23609, -10.35436> <-0.74696, -1.94432, -10.47820> <1.69788, -2.43453, -8.95775> <1.32056, 0.23609, -10.35436> }
    polygon { 4 <1.31901, 0.23763, -7.53662> <-0.86140, -1.82989, -7.41278> <-1.35160, 0.61495, -8.93323> <1.31901, 0.23763, -7.53662> }
    polygon { 4 <1.31901, 0.23763, -7.53662> <1.69788, -2.43453, -8.95775> <-0.86140, -1.82989, -7.41278> <1.31901, 0.23763, -7.53662> }
    polygon { 4 <-0.74696, -1.94432, -10.47820> <-1.35160, 0.61495, -8.93323> <-0.86140, -1.82989, -7.41278> <-0.74696, -1.94432, -10.47820> }
    polygon { 4 <-0.74696, -1.94432, -10.47820> <-0.86140, -1.82989, -7.41278> <1.69788, -2.43453, -8.95775> <-0.74696, -1.94432, -10.47820> }
  material { M_PD6 }
  }
  union {
    cylinder { <1.32056, 0.23609, -10.35436>, <1.31901, 0.23763, -7.53662>, 0.050 }
    cylinder { <1.31901, 0.23763, -7.53662>, <-1.35160, 0.61495, -8.93323>, 0.050 }
    cylinder { <-1.35160, 0.61495, -8.93323>, <1.32056, 0.23609, -10.35436>, 0.050 }
    cylinder { <1.32056, 0.23609, -10.35436>, <1.69788, -2.43453, -8.95775>, 0.050 }
    cylinder { <1.69788, -2.43453, -8.95775>, <1.31901, 0.23763, -7.53662>, 0.050 }
    cylinder { <1.31901, 0.23763, -7.53662>, <1.32056, 0.23609, -10.35436>, 0.050 }
    cylinder { <1.32056, 0.23609, -10.35436>, <-1.35160, 0.61495, -8.93323>, 0.050 }
    cylinder { <-1.35160, 0.61495, -8.93323>, <-0.74696, -1.94432, -10.47820>, 0.050 }
    cylinder { <-0.74696, -1.94432, -10.47820>, <1.32056, 0.23609, -10.35436>, 0.050 }
    cylinder { <1.32056, 0.23609, -10.35436>, <-0.74696, -1.94432, -10.47820>, 0.050 }
    cylinder { <-0.74696, -1.94432, -10.47820>, <1.69788, -2.43453, -8.95775>, 0.050 }
    cylinder { <1.69788, -2.43453, -8.95775>, <1.32056, 0.23609, -10.35436>, 0.050 }
    cylinder { <1.31901, 0.23763, -7.53662>, <-0.86140, -1.82989, -7.41278>, 0.050 }
    cylinder { <-0.86140, -1.82989, -7.41278>, <-1.35160, 0.61495, -8.93323>, 0.050 }
    cylinder { <-1.35160, 0.61495, -8.93323>, <1.31901, 0.23763, -7.53662>, 0.050 }
    cylinder { <1.31901, 0.23763, -7.53662>, <1.69788, -2.43453, -8.95775>, 0.050 }
    cylinder { <1.69788, -2.43453, -8.95775>, <-0.86140, -1.82989, -7.41278>, 0.050 }
    cylinder { <-0.86140, -1.82989, -7.41278>, <1.31901, 0.23763, -7.53662>, 0.050 }
    cylinder { <-0.74696, -1.94432, -10.47820>, <-1.35160, 0.61495, -8.93323>, 0.050 }
    cylinder { <-1.35160, 0.61495, -8.93323>, <-0.86140, -1.82989, -7.41278>, 0.050 }
    cylinder { <-0.86140, -1.82989, -7.41278>, <-0.74696, -1.94432, -10.47820>, 0.050 }
    cylinder { <-0.74696, -1.94432, -10.47820>, <-0.86140, -1.82989, -7.41278>, 0.050 }
    cylinder { <-0.86140, -1.82989, -7.41278>, <1.69788, -2.43453, -8.95775>, 0.050 }
    cylinder { <1.69788, -2.43453, -8.95775>, <-0.74696, -1.94432, -10.47820>, 0.050 }
  pigment { color rgb<0, 0, 1> }
  }

  rotate <drx,dry,drz>

  scale <sx,sy,sz>

  translate <tx,ty,tz>

  rotate <rx,ry,rz>

}
