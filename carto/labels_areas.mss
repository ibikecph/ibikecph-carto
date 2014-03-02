//area labels

#area_label {
  ::label_a_10[zoom=10][way_area>=204800000][way_area<409600000],
  ::label_a_11[zoom=11][way_area>=102400000][way_area<204800000],
  ::label_a_12[zoom=12][way_area>=51200000][way_area<102400000],
  ::label_a_13[zoom=13][way_area>=1280000][way_area<51200000],
  ::label_a_14[zoom=14][way_area>=320000][way_area<1280000],
  ::label_a_15[zoom=15][way_area>=80000][way_area<320000],
  ::label_a_16[zoom=16][way_area>=20000][way_area<80000],
  ::label_a_17[zoom=17][way_area>=5000][way_area<20000],
  ::label_a_18[zoom>=18][way_area>=0][way_area<5000] {
    text-name: "[name]";
    text-halo-radius: @label_halo_radius;
    text-halo-fill: @label_halo_place_fill;
    text-face-name: @sans_lt_italic;
    text-size: @ps0;
    text-wrap-width: 50;
    text-fill: @label;
    text-placement: interior;
    text-min-distance: @text_distance;
        
    
    text-fill: @label;
  }

  ::label_b_11[zoom=11][way_area>=204800000][way_area<409600000],
  ::label_b_12[zoom=12][way_area>=102400000][way_area<204800000],
  ::label_b_13[zoom=13][way_area>=51200000][way_area<102400000],
  ::label_b_14[zoom=14][way_area>=1280000][way_area<51200000],
  ::label_b_15[zoom=15][way_area>=320000][way_area<1280000],
  ::label_b_16[zoom=16][way_area>=80000][way_area<320000],
  ::label_b_17[zoom=17][way_area>=20000][way_area<80000],
  ::label_b_18[zoom>=18][way_area>=5000][way_area<20000] {
    text-name: "[name]";
    text-halo-radius: @label_halo_radius;
    text-halo-fill: @label_halo_place_fill;
    text-face-name: @sans_lt_italic;
    text-fill: @label;
    text-placement: interior;
    text-min-distance: @text_distance;
    text-size: @ps1;
    text-wrap-width: 60;
  }

  ::label_c_13[zoom=13][way_area>=102400000][way_area<409600000],
  ::label_c_14[zoom=14][way_area>=51200000][way_area<204800000],
  ::label_c_15[zoom=15][way_area>=1280000][way_area<102400000],
  ::label_c_16[zoom=16][way_area>=320000][way_area<51200000],
  ::label_c_17[zoom=17][way_area>=80000][way_area<1280000],
  ::label_c_18[zoom>=18][way_area>=20000][way_area<320000] {
    text-name: "[name]";
    text-halo-radius: @label_halo_radius;
    text-halo-fill: @label_halo_place_fill;
    text-face-name: @sans_lt_italic;
    text-fill: @label;
    text-placement: interior;
    text-min-distance: @text_distance;
    text-size: @ps2;
    text-wrap-width: 70;
  }
}