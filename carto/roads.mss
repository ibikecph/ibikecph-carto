// roads

@width: 1.2;

@case_width: 1.3;

@w0: @width * 0.5;
@w1: @width * 1;
@w2: @width * 2;
@w3: @width * 3;
@w4: @width * 4;
@w5: @width * 6;
@w6: @width * 8;
@w7: @width * 9;
@w8: @width * 12;
@w9: @width * 15;
@w10: @width * 18;


//LOW ZOOM
#car_low {
  ::line_5[zoom=5] {
    [sizegroup<=1] { line-color: @ccar_line; }
    [sizegroup=2]  { line-color: @ccar_line; }
  }
  ::line_6[zoom=6] {
    [sizegroup<=1] { line-color: @ccar_line; }
    [sizegroup=2]  { line-color: @ccar_line; }
  }
}

#bike_low {
  ::line_5[zoom=5] {
    [sizegroup<=1] { line-color: @cbike_line; }
    [sizegroup<=2] { line-color: @cbike_line; }
  }
  ::line_6[zoom=6] {
    [sizegroup<=1] { line-color: @cbike_line; }
    [sizegroup<=2] { line-color: @cbike_line; }
  }
}


#car_low,
#bike_low {  
  ::line_5[zoom=5] {
    [sizegroup<=1] { line-width: @w1; }
    [sizegroup=2]  { line-width: @w0; }
  }
  ::line_6[zoom=6] {
    [sizegroup<=1] { line-width: @w1; }
    [sizegroup=2]  { line-width: @w0; }
  }
}

//MEDIUM ZOOM
//line
#car_medium {  
  ::line_7[zoom=7][sizegroup>=0][sizegroup<=3],
  ::line_8[zoom=8][sizegroup>=3][sizegroup<=3],
  ::line_9[zoom=9][sizegroup>=4][sizegroup<=4],
  ::line_10[zoom=10][sizegroup>=4][sizegroup<=4] {
    line-color: @ccar_line;
  }
}

#bike_medium {  
  ::line_7[zoom=7][sizegroup>=0][sizegroup<=3],
  ::line_8[zoom=8][sizegroup>=3][sizegroup<=3],
  ::line_9[zoom=9][sizegroup>=4][sizegroup<=4],
  ::line_10[zoom=10][sizegroup>=4][sizegroup<=4] {
    line-color: @cbike_line;
  }
}

#car_medium,
#bike_medium {
  ::line_7[zoom=7] {
    [sizegroup<=2] { line-width: @w1; }
    [sizegroup=3]  { line-width: @w0; }
  }
  ::line_8[zoom=8] {
    [sizegroup=3]  { line-width: @w1; }
  }
  ::line_9[zoom=9] {
    [sizegroup=4]  { line-width: @w0; }
  }
  ::line_10[zoom=10] {
    [sizegroup=4]  { line-width: @w1; }
  }
}

//case
#car_medium {
  ::case_8[zoom=8][sizegroup<=2],
  ::case_9[zoom=9][sizegroup<=3],
  ::case_10[zoom=10][sizegroup<=3] {
      line-color: @ccar_case;
  }
}

#bike_medium {
  ::case_8[zoom=8][sizegroup<=2],
  ::case_9[zoom=9][sizegroup<=3],
  ::case_10[zoom=10][sizegroup<=3] {
      line-color: @cbike_case;
  }
}

#car_medium,
#bike_medium {
  ::case_8[zoom=8] {
    [sizegroup<=2] { line-width: @w1+@case_width; }
  }
  ::case_9[zoom=9] {
    [sizegroup<=2] { line-width: @w2+@case_width; }
    [sizegroup=3]  { line-width: @w2+@case_width; }
  }
  ::case_10[zoom=10] {
    [sizegroup<=2] { line-width: @w2+@case_width; }
    [sizegroup=3]  { line-width: @w2+@case_width; }
  }
}

//fill
#car_medium {
  ::fill_8[zoom=8] {
    [sizegroup<=2] { line-color: @ccar; }
  }
  ::fill_9[zoom=9] {
    [sizegroup<=2] { line-color: @ccar; }
    [sizegroup=3]  { line-color: @ccar; }
  }
  ::fill_10[zoom=10] {
    [sizegroup<=2] { line-color: @ccar; }
    [sizegroup=3]  { line-color: @ccar; }
  }
}

#bike_medium {
  ::fill_8[zoom=8] {
    [sizegroup<=2] { line-color: @cbike; }
  }
  ::fill_9[zoom=9] {
    [sizegroup<=2] { line-color: @cbike; }
    [sizegroup=3]  { line-color: @cbike_small; }
  }
  ::fill_10[zoom=10] {
    [sizegroup<=2] { line-color: @cbike; }
    [sizegroup=3]  { line-color: @cbike_small; }
  }
}

#car_medium,
#bike_medium {
  ::fill_8[zoom=8] {
    [sizegroup<=2] { line-width: @w1; }
  }
  ::fill_9[zoom=9] {
    [sizegroup<=2] { line-width: @w2; }
    [sizegroup=3]  { line-width: @w2; }
  }
  ::fill_10[zoom=10] {
    [sizegroup<=2] { line-width: @w2; }
    [sizegroup=3]  { line-width: @w2; }
  }
}



//HIGH ZOOM
//line
#car_tunnels {
  ::line_11[zoom=11][sizegroup>=4][sizegroup<=5],
  ::line_12[zoom=12][sizegroup>=5][sizegroup<=6],
  ::line_13[zoom=13][sizegroup>=6][sizegroup<=7],
  ::line_14[zoom=14][sizegroup>=6][sizegroup<=7],
  ::line_15[zoom=15],
  ::line_16[zoom=16] {
    line-color: @ccar_line_tunnel;
  }
}

#car_grounds,
#car_bridges {  
  ::line_11[zoom=11][sizegroup>=4][sizegroup<=5],
  ::line_12[zoom=12][sizegroup>=5][sizegroup<=6],
  ::line_13[zoom=13][sizegroup>=6][sizegroup<=7],
  ::line_14[zoom=14][sizegroup>=6][sizegroup<=7],
  ::line_15[zoom=15],
  ::line_16[zoom=16] {
    line-color: @ccar_line;
  }
}

#foot_grounds {  
  ::line_11[zoom=11][sizegroup>=4][sizegroup<=5],
  ::line_12[zoom=12][sizegroup>=5][sizegroup<=6],
  ::line_13[zoom=13][sizegroup>=6][sizegroup<=7],
  ::line_14[zoom=14][sizegroup>=6][sizegroup<=7],
  ::line_15[zoom=15] {
    line-color: @cfoot_line;
  }
  ::line_16[zoom=16] {
    line-color: @cfoot_line_dark;
  }
}

#bike_tunnels {
  ::line_11[zoom=11][sizegroup>=4][sizegroup<=5],
  ::line_12[zoom=12][sizegroup>=5][sizegroup<=6],
  ::line_13[zoom=13][sizegroup>=6][sizegroup<=7],
  ::line_14[zoom=14][sizegroup>=6][sizegroup<=7],
  ::line_15[zoom=15],
  ::line_16[zoom=16] {
    line-color: @cbike_line_tunnel;
  }
}

#bike_grounds,
#bike_bridges {  
  ::line_11[zoom=11][sizegroup=4],
  ::line_12[zoom=12][sizegroup=5],
  ::line_13[zoom=13][sizegroup=6],
  ::line_14[zoom=14][sizegroup>=6][sizegroup<=7],
  ::line_16[zoom=16] {
    line-color: @cbike_line_dark;
  }
  ::line_11[zoom=11][sizegroup>=5][sizegroup<=5],
  ::line_12[zoom=12][sizegroup>=6][sizegroup<=6],
  ::line_13[zoom=13][sizegroup>=7][sizegroup<=7],
  ::line_15[zoom=15]
  {
    line-color: @cbike_line;
  }
}

.tunnel {
  ::line_11[zoom=11][sizegroup>=4][sizegroup<=5],
  ::line_12[zoom=12][sizegroup>=5][sizegroup<=6],
  ::line_13[zoom=13][sizegroup>=6][sizegroup<=7],
  ::line_14[zoom=14][sizegroup>=6][sizegroup<=7],
  ::line_15[zoom=15],
  ::line_16[zoom=16] {
    line-dasharray: @tunnel_dash;
  }
}

.way {
  ::line_11[zoom=11] {
    [sizegroup=4] { line-width: @w1; }
    [sizegroup=5] { line-width: @w0; }
  }
  ::line_12[zoom=12] {
    [sizegroup=5] { line-width: @w1; }
    [sizegroup=6] { line-width: @w0; }
  }
  ::line_13[zoom=13] {
    [sizegroup=6] { line-width: @w1; }
    [sizegroup=7] { line-width: @w0; }
  }
  ::line_14[zoom=14] {
    [sizegroup=6] { line-width: @w1; }
    [sizegroup=7] { line-width: @w0; }
  }
  ::line_15[zoom=15] {
    line-width: @w1;
  }
  ::line_16[zoom=16] {
    line-width: @w1;
  }
}

//casing
.ground {
  ::case_11[zoom=11][sizegroup<=3],
  ::case_12[zoom=12][sizegroup<=4],
  ::case_13[zoom=13][sizegroup<=5],
  ::case_14[zoom=14][sizegroup<=5],
  ::case_15[zoom=15][sizegroup<=7],
  ::case_16[zoom=16][sizegroup<=7],
  ::case_17[zoom=17],
  ::case_18[zoom>=18] {
    line-cap: round;
  }
}

.tunnel,
.bridge {
  ::case_11[zoom=11][sizegroup<=3],
  ::case_12[zoom=12][sizegroup<=4],
  ::case_13[zoom=13][sizegroup<=5],
  ::case_14[zoom=14][sizegroup<=5],
  ::case_15[zoom=15][sizegroup<=7],
  ::case_16[zoom=16][sizegroup<=7],
  ::case_17[zoom=17],
  ::case_18[zoom>=18] {
    line-cap: butt;
  }
}

.tunnel {
  ::case_11[zoom=11][sizegroup<=3],
  ::case_12[zoom=12][sizegroup<=4],
  ::case_13[zoom=13][sizegroup<=5],
  ::case_14[zoom=14][sizegroup<=5],
  ::case_15[zoom=15][sizegroup<=7],
  ::case_16[zoom=16][sizegroup<=7],
  ::case_17[zoom=17],
  ::case_18[zoom>=18] {
    line-dasharray: @tunnel_dash;
  }
}

.car {
  ::case_11[zoom=11][sizegroup<=3],
  ::case_12[zoom=12][sizegroup<=4],
  ::case_13[zoom=13][sizegroup<=5],
  ::case_14[zoom=14][sizegroup<=5],
  ::case_15[zoom=15][sizegroup<=7],
  ::case_16[zoom=16][sizegroup<=7],
  ::case_17[zoom=17],
  ::case_18[zoom>=18] {
    line-join: round;
    line-color: @ccar_case;
  }
}

.foot {
  ::case_11[zoom=11][sizegroup<=3],
  ::case_12[zoom=12][sizegroup<=4],
  ::case_13[zoom=13][sizegroup<=5],
  ::case_14[zoom=14][sizegroup<=5],
  ::case_15[zoom=15][sizegroup<=7],
  ::case_16[zoom=16][sizegroup<=7],
  ::case_17[zoom=17],
  ::case_18[zoom>=18] {
    line-join: round;
    line-color: @cfoot_case;
  }
}

.bike {
  ::case_11[zoom=11][sizegroup<=3],
  ::case_12[zoom=12][sizegroup<=4],
  ::case_13[zoom=13][sizegroup<=5],
  ::case_14[zoom=14][sizegroup<=5],
  ::case_15[zoom=15][sizegroup<=7],
  ::case_16[zoom=16][sizegroup<=7],
  ::case_17[zoom=17],
  ::case_18[zoom>=18] {
    line-join: round;
    line-color: @cbike_case;
  }
}

#bike_bridges {
  ::case_11[zoom=11][sizegroup=4] { line-width: @w1+@case_width; }
  ::case_12[zoom=12][sizegroup=5] { line-width: @w1+@case_width; }
  ::case_13[zoom=13][sizegroup=6] { line-width: @w1+@case_width; }
  ::case_14[zoom=14][sizegroup=6] { line-width: @w1+@case_width; }
  ::case_15[zoom=15][sizegroup=8] { line-width: @w1+@case_width; }

  ::case_11[zoom=11][sizegroup=5] { line-width: @w0+@case_width; }
  ::case_12[zoom=12][sizegroup=6] { line-width: @w0+@case_width; }
  ::case_13[zoom=13][sizegroup=7] { line-width: @w0+@case_width; }
  ::case_14[zoom=14][sizegroup=7] { line-width: @w0+@case_width; }

  ::case_11[zoom=11][sizegroup>=4][sizegroup<=5],
  ::case_12[zoom=12][sizegroup>=5][sizegroup<=6],
  ::case_13[zoom=13][sizegroup>=6][sizegroup<=7],
  ::case_14[zoom=14][sizegroup>=6][sizegroup<=7],
  ::case_15[zoom=15][sizegroup>=8] {
    line-color: @cbike_line_case;
  }
}

.way {
  ::case_11[zoom=11] {
    [sizegroup<=2]               { line-width: @w3+@case_width; }
    [sizegroup=3]                { line-width: @w2+@case_width; }
  }
  ::case_12[zoom=12] {
    [sizegroup<=2]               { line-width: @w4+@case_width; }
    [sizegroup=3]                { line-width: @w3+@case_width; }
    [sizegroup=4]                { line-width: @w2+@case_width; }
  }
  ::case_13[zoom=13] {
    [sizegroup<=3]               { line-width: @w4+@case_width; }
    [sizegroup=4]                { line-width: @w3+@case_width; }
    [sizegroup=5]                { line-width: @w2+@case_width; }
  }
  ::case_14[zoom=14] {
    [sizegroup<=2]               { line-width: @w5+@case_width; }
    [sizegroup=3]                { line-width: @w4+@case_width; }
    [sizegroup=4]                { line-width: @w3+@case_width; }
    [sizegroup=5]                { line-width: @w2+@case_width; }
  }
  ::case_15[zoom=15] {
    [sizegroup<=3]               { line-width: @w7+@case_width; }
    [sizegroup=4]                { line-width: @w5+@case_width; }
    [sizegroup=5]                { line-width: @w4+@case_width; }
    [sizegroup=6]                { line-width: @w3+@case_width; }
    [sizegroup=7]                { line-width: @w2+@case_width; }
  }
  ::case_16[zoom=16] {
    [sizegroup<=3]               { line-width: @w9+@case_width; }
    [sizegroup=4]                { line-width: @w8+@case_width; }
    [sizegroup=5]                { line-width: @w6+@case_width; }
    [sizegroup=6]                { line-width: @w5+@case_width; }
    [sizegroup=7]                { line-width: @w3+@case_width; }
  }
  ::case_17[zoom=17] {
    [sizegroup<=3]               { line-width: @w10+@case_width; }
    [sizegroup=4]                { line-width: @w9+@case_width; }
    [sizegroup=5]                { line-width: @w8+@case_width; }
    [sizegroup>=6][sizegroup<=7] { line-width: @w6+@case_width; }
    [sizegroup>=8]               { line-width: @w2+@case_width; }
  }
  ::case_18[zoom>=18] {
    [sizegroup<=3]               { line-width: @w10+@case_width; }
    [sizegroup=4]                { line-width: @w9+@case_width; }
    [sizegroup=5]                { line-width: @w8+@case_width; }
    [sizegroup>=6][sizegroup<=7] { line-width: @w7+@case_width; }
    [sizegroup>=8]               { line-width: @w4+@case_width; }
  }
}


//fill
#car_tunnels {
  ::fill_11[zoom=11][sizegroup<=3],
  ::fill_12[zoom=12][sizegroup<=4],
  ::fill_13[zoom=13][sizegroup<=5],
  ::fill_14[zoom=14][sizegroup<=5],
  ::fill_15[zoom=15][sizegroup<=7],
  ::fill_16[zoom=16][sizegroup<=7],
  ::fill_17[zoom=17],
  ::fill_18[zoom>=18] {
    line-color: @ccar_tunnel;
  }
}

#car_grounds,
#car_bridges {
  ::fill_11[zoom=11][sizegroup<=3],
  ::fill_12[zoom=12][sizegroup<=4],
  ::fill_13[zoom=13][sizegroup<=5],
  ::fill_14[zoom=14][sizegroup<=5],
  ::fill_15[zoom=15][sizegroup<=7],
  ::fill_16[zoom=16][sizegroup<=7],
  ::fill_17[zoom=17],
  ::fill_18[zoom>=18] {
    line-color: @ccar;
  }
}

#foot_grounds {
  ::fill_11[zoom=11][sizegroup<=3],
  ::fill_12[zoom=12][sizegroup<=4],
  ::fill_13[zoom=13][sizegroup<=5],
  ::fill_14[zoom=14][sizegroup<=5],
  ::fill_15[zoom=15][sizegroup<=7],
  ::fill_16[zoom=16][sizegroup<=7],
  ::fill_17[zoom=17],
  ::fill_18[zoom>=18] {
    line-color: @cfoot;
  }
}

#bike_tunnels {
  ::fill_11[zoom=11][sizegroup<=3],
  ::fill_12[zoom=12][sizegroup<=4],
  ::fill_13[zoom=13][sizegroup<=5],
  ::fill_14[zoom=14][sizegroup<=5],
  ::fill_15[zoom=15][sizegroup<=7],
  ::fill_16[zoom=16][sizegroup<=7],
  ::fill_17[zoom=17],
  ::fill_18[zoom>=18] {
    line-color: @cbike_tunnel;
  }
}

#bike_grounds,
#bike_bridges {
  ::fill_11[zoom=11][sizegroup<=2],
  ::fill_12[zoom=12][sizegroup<=3],
  ::fill_13[zoom=13][sizegroup<=3],
  ::fill_14[zoom=14][sizegroup<=4],
  ::fill_15[zoom=15][sizegroup<=5],
  ::fill_16[zoom=16][sizegroup<=7],
  ::fill_17[zoom=17],
  ::fill_18[zoom>=18] {
    line-color: @cbike;
  }

  ::fill_11[zoom=11][sizegroup=3],
  ::fill_12[zoom=12][sizegroup=4],
  ::fill_13[zoom=13][sizegroup>=4][sizegroup<=5],
  ::fill_14[zoom=14][sizegroup=5],
  ::fill_15[zoom=15][sizegroup>=6][sizegroup<=7],
  ::fill_16[zoom=16][sizegroup=7] {
    line-color: @cbike_small;
  }
}

.way {
  ::fill_11[zoom=11][sizegroup<=3],
  ::fill_12[zoom=12][sizegroup<=4],
  ::fill_13[zoom=13][sizegroup<=5],
  ::fill_14[zoom=14][sizegroup<=5],
  ::fill_15[zoom=15][sizegroup<=7],
  ::fill_16[zoom=16][sizegroup<=7],
  ::fill_17[zoom=17],
  ::fill_18[zoom>=18] {
    line-join: round;
    line-cap: round;
  }

  ::fill_11[zoom=11] {
    [sizegroup<=2]               { line-width: @w3; }
    [sizegroup=3]                { line-width: @w2; }
  }
  ::fill_12[zoom=12] {
    [sizegroup<=2]               { line-width: @w4; }
    [sizegroup=3]                { line-width: @w3; }
    [sizegroup=4]                { line-width: @w2; }
  }
  ::fill_13[zoom=13] {
    [sizegroup<=3]               { line-width: @w4; }
    [sizegroup=4]                { line-width: @w3; }
    [sizegroup=5]                { line-width: @w2; }
  }
  ::fill_14[zoom=14] {
    [sizegroup<=2]               { line-width: @w5; }
    [sizegroup=3]                { line-width: @w4; }
    [sizegroup=4]                { line-width: @w3; }
    [sizegroup=5]                { line-width: @w2; }
  }
  ::fill_15[zoom=15] {
    [sizegroup<=3]               { line-width: @w7; }
    [sizegroup=4]                { line-width: @w5; }
    [sizegroup=5]                { line-width: @w4; }
    [sizegroup=6]                { line-width: @w3; }
    [sizegroup=7]                { line-width: @w2; }
  }
  ::fill_16[zoom=16] {
    [sizegroup<=3]               { line-width: @w9; }
    [sizegroup=4]                { line-width: @w8; }
    [sizegroup=5]                { line-width: @w6; }
    [sizegroup=6]                { line-width: @w5; }
    [sizegroup=7]                { line-width: @w3; }
  }
  ::fill_17[zoom=17] {
    [sizegroup<=3]               { line-width: @w10; }
    [sizegroup=4]                { line-width: @w9; }
    [sizegroup=5]                { line-width: @w8; }
    [sizegroup>=6][sizegroup<=7] { line-width: @w6; }
    [sizegroup>=8]               { line-width: @w2; }
  }
  ::fill_18[zoom>=18] {
    [sizegroup<=3]               { line-width: @w10; }
    [sizegroup=4]                { line-width: @w9; }
    [sizegroup=5]                { line-width: @w8; }
    [sizegroup>=6][sizegroup<=7] { line-width: @w7; }
    [sizegroup>=8]               { line-width: @w4; }
  }
}

// steps
.bike[highway='steps'],
.foot[highway='steps'] {
  ::steps_16[zoom=16],
  ::steps_17[zoom=17],
  ::steps_18[zoom>=18] {
    line-color: @csteps;
  }
  
  ::steps_16[zoom=16] {
    line-width: 5;
    line-dasharray: 1.5, 1.5;
  }
  ::steps_17[zoom=17] {
    line-width: 7;
    line-dasharray: 2,2;
  }
  ::steps_18[zoom>=18] {
    line-width: 9;
    line-dasharray: 2.5,2.5;
  }
}
