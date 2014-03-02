//land use

@fade_factor: 1;
@fade_18: 100 %;
@fade_17: @fade_18*@fade_factor;
@fade_16: @fade_17*@fade_factor;
@fade_15: @fade_16*@fade_factor;
@fade_14: @fade_15*@fade_factor;
@fade_13: @fade_14*@fade_factor;
@fade_12: @fade_13*@fade_factor;
@fade_11: @fade_12*@fade_factor;
@fade_10: @fade_11*@fade_factor;
@fade_9:  @fade_10*@fade_factor;

@area18: 64;
@area17: @area18 * 4;
@area16: @area17 * 4;
@area15: @area16 * 4;
@area14: @area15 * 4;
@area13: @area14 * 4;
@area12: @area13 * 4;
@area11: @area12 * 4;
@area10: @area11 * 4;
@area9: @area10 * 4;
@area8: @area9 * 4;
@area7: @area8 * 4;
@area6: @area7 * 4;
@area5: @area6 * 4;
@area4: @area5 * 4;
@area3: @area4 * 4;
@area2: @area3 * 4;
@area1: @area2 * 4;
@area0: @area1 * 4;


@water_scale: 0.25;

@water_area18: @area18*@water_scale;
@water_area17: @area17*@water_scale;
@water_area16: @area16*@water_scale;
@water_area15: @area15*@water_scale;
@water_area14: @area14*@water_scale;
@water_area13: @area13*@water_scale;
@water_area12: @area12*@water_scale;
@water_area11: @area11*@water_scale;
@water_area10: @area10*@water_scale;
@water_area9: @area9*@water_scale;
@water_area8: @area8*@water_scale;
@water_area7: @area7*@water_scale;
@water_area6: @area6*@water_scale;
@water_area5: @area5*@water_scale;
@water_area4: @area4*@water_scale;
@water_area3: @area3*@water_scale;
@water_area2: @area2*@water_scale;
@water_area1: @area1*@water_scale;
@water_area0: @area0*@water_scale;

//#landuse_gen0[zoom>3][zoom<=9],
//#landuse_gen1[zoom>9][zoom<=12],
//#landuse[zoom>12] {
#landuse {
  ::landuse_0[zoom=0][way_area>=439804651],
  ::landuse_1[zoom=1][way_area>=109951162],
  ::landuse_2[zoom=2][way_area>=274877904],
  ::landuse_3[zoom=3][way_area>=687194767],
  ::landuse_4[zoom=4][way_area>=171869184],
  ::landuse_5[zoom=5][way_area>=429496729],
  ::landuse_6[zoom=6][way_area>=107374184],
  ::landuse_7[zoom=7][way_area>=268435456],
  ::landuse_8[zoom=8][way_area>=67108864],
  ::landuse_9[zoom=9][way_area>=16777216],
  ::landuse_10[zoom=10][way_area>=4194304],
  ::landuse_11[zoom=11][way_area>=1048576],
  ::landuse_12[zoom=12][way_area>=262144],
  ::landuse_13[zoom=13][way_area>=65536],
  ::landuse_14[zoom=14][way_area>=16384],
  ::landuse_15[zoom=15][way_area>=4096],
  ::landuse_16[zoom=16][way_area>=1024],
  ::landuse_17[zoom=17][way_area>=256],
  ::landuse_18[zoom>=18][way_area>=64]
  {
    [landuse='forest'],
    [natural='wood'] {
      polygon-fill: @wood;
    }
    
    [landuse='meadow'],
    [natural='scrub'] {
      polygon-fill: @meadow;
    }
    
    [landuse='orchard'],
    [landuse='vineyard'] {
      polygon-fill: @orchard;
    }
    
    [landuse='field'],
    [landuse='pasture'],
    [natural='heath'],
    [landuse='grass'],
    [natural='grassland'] {
      polygon-fill: @grass;
    }
    
    [landuse='village_green'],
    [leisure='common'],
    [landuse='recreation_ground'],
    [leisure='park'] {
      polygon-fill: @park;
    }
    
    [leisure='garden'] {
      polygon-fill: @garden;
    }
    
    [leisure='golf_course'],
    [leisure='pitch'],
    [leisure='sports_center'],
    [leisure='stadium'] {
      polygon-fill: @sports;
    }
    
    //rocky
    [natural='beach'] {
      polygon-fill: @beach;
    }
    [natural='bare_rock'],
    [natural='fell'],
    [natural='scree'],
    [natural='sand'] {
      polygon-fill: @sand;
    }
    //farms
    [landuse='farmyard'],
    [landuse='farm'],
    [landuse='farmland'],
    [landuse='farmyard'] {
      polygon-fill: @agriculture;
    }
    //urban
    [leisure='playground'] {
      polygon-fill: @playground;
    }
    [tourism='zoo'] {
      polygon-fill: @zoo;
    }
    [landuse='cemetery'],
    [amenity='grave_yard'] {
      polygon-fill: @cemetery;
    }
    [highway='pedestrian'],
    [highway='footway'] {
      polygon-fill: @pedestrian_fill;
    }

    [landuse='construction'] {
      polygon-fill: @construction;
			[barrier='fence'],
			[barrier='wall']
			{
				line-color: @construction_barrier;
				line-width: 2;
			}
    }

    [landuse='residential'] {
      polygon-fill: @residential;
    }

    [aeroway='aerodrome'],
    [aeroway='helipad'],
    [aeroway='apron'],
    [aeroway='runway'] {
      polygon-fill: @aeroway;
    }
  }
}
/*
#landuse_overlays[landuse='nature_reserve'][zoom>6] {
  line-color: darken(@wood,25%);
  line-opacity:  0.3;
  line-dasharray: 1,1;
  polygon-fill: darken(@wood,25%);
  polygon-opacity: 0.1;
  [zoom=7] { line-width: 0.4; }
  [zoom=8] { line-width: 0.6; }
  [zoom=9] { line-width: 0.8; }
  [zoom=10] { line-width: 1.0; }
  [zoom=11] { line-width: 1.5; }
  [zoom>=12] { line-width: 2.0; }
}
*/
// wetlands
#landuse_overlays[natural='wetland'][zoom>11] {
  [zoom>11][zoom<=14] { polygon-pattern-file:url(img/marsh-16.png); }
  [zoom>14] { polygon-pattern-file:url(img/marsh-32.png);}
}

// water areas
//#water_gen0[zoom>3][zoom<=9],
//#water_gen1[zoom>9][zoom<=12],
//#water[zoom>12] {
#water {
	::water_0[zoom=0][way_area>=439804651],
	::water_1[zoom=1][way_area>=109951162],
	::water_2[zoom=2][way_area>=274877904],
	::water_3[zoom=3][way_area>=687194767],
	::water_4[zoom=4][way_area>=171869184],
	::water_5[zoom=5][way_area>=429496729],
	::water_6[zoom=6][way_area>=107374184],
	::water_7[zoom=7][way_area>=268435456],
	::water_8[zoom=8][way_area>=67108864],
	::water_9[zoom=9][way_area>=16777216],
	::water_10[zoom=10][way_area>=4194304],
	::water_11[zoom=11][way_area>=1048576],
	::water_12[zoom=12][way_area>=262144],
	::water_13[zoom=13][way_area>=65536],
	::water_14[zoom=14][way_area>=16384],
	::water_15[zoom=15][way_area>=4096],
	::water_16[zoom=16][way_area>=1024],
	::water_17[zoom=17][way_area>=256],
	::water_18[zoom>=18][way_area>=64]
/*
  ::water_0[zoom=0][way_area>=@water_area0],
  ::water_1[zoom=1][way_area>=@water_area1],
  ::water_2[zoom=2][way_area>=@water_area2],
  ::water_3[zoom=3][way_area>=@water_area3],
  ::water_4[zoom=4][way_area>=@water_area4],
  ::water_5[zoom=5][way_area>=@water_area5],
  ::water_6[zoom=6][way_area>=@water_area6],
  ::water_7[zoom=7][way_area>=@water_area7],
  ::water_8[zoom=8][way_area>=@water_area8],
  ::water_9[zoom=9][way_area>=@water_area9],
  ::water_10[zoom=10][way_area>=@water_area10],
  ::water_11[zoom=11][way_area>=@water_area11],
  ::water_12[zoom=12][way_area>=@water_area12],
  ::water_13[zoom=13][way_area>=@water_area13],
  ::water_14[zoom=14][way_area>=@water_area14],
  ::water_15[zoom=15][way_area>=@water_area15],
  ::water_16[zoom=16][way_area>=@water_area16],
  ::water_17[zoom=17][way_area>=@water_area17],
  ::water_18[zoom>=18][way_area>=@water_area18]
*/
	{
    polygon-fill: @water;
}

}

