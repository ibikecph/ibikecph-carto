//road labels

@rl0: 15;
@rl1: 14;
@rl2: 13;
@rl3: 12;
@rl4: 11;
@rl5: 10;

/*
#ref_bike[zoom>=11][zoom<=18][reflen<=8] {
  shield-name: "[ref]";
  shield-size: 9;
  shield-face-name: @sans_bold;
  shield-fill: white;
  shield-file: url(img/shield-motorway-1.png);
  shield-placement: line;
  shield-avoid-edges: true;
  shield-allow-overlap: false;
  shield-spacing: 400;
  shield-min-distance: 300;

  
  [reflen=1] { shield-file: url(img/shield-trunk-1.png); }
  [reflen=2] { shield-file: url(img/shield-trunk-2.png); }
  [reflen=3] { shield-file: url(img/shield-trunk-3.png); }
  [reflen=4] { shield-file: url(img/shield-trunk-4.png); }
  [reflen=5] { shield-file: url(img/shield-trunk-5.png); }
  [reflen=6] { shield-file: url(img/shield-trunk-6.png); }
  [reflen=7] { shield-file: url(img/shield-trunk-7.png); }
  [reflen=8] { shield-file: url(img/shield-trunk-8.png); }
  
//  [type='motorway'] {
//    [reflen=1] { shield-file: url(img/shield-motorway-1.png); }
//    [reflen=2] { shield-file: url(img/shield-motorway-2.png); }
//    [reflen=3] { shield-file: url(img/shield-motorway-3.png); }
//    [reflen=4] { shield-file: url(img/shield-motorway-4.png); }
//    [reflen=5] { shield-file: url(img/shield-motorway-5.png); }
//    [reflen=6] { shield-file: url(img/shield-motorway-6.png); }
//    [reflen=7] { shield-file: url(img/shield-motorway-7.png); }
//    [reflen=8] { shield-file: url(img/shield-motorway-8.png); }
//  }
//  [type='trunk'] {
//    [reflen=1] { shield-file: url(img/shield-trunk-1.png); }
//    [reflen=2] { shield-file: url(img/shield-trunk-2.png); }
//    [reflen=3] { shield-file: url(img/shield-trunk-3.png); }
//    [reflen=4] { shield-file: url(img/shield-trunk-4.png); }
//    [reflen=5] { shield-file: url(img/shield-trunk-5.png); }
//    [reflen=6] { shield-file: url(img/shield-trunk-6.png); }
//    [reflen=7] { shield-file: url(img/shield-trunk-7.png); }
//    [reflen=8] { shield-file: url(img/shield-trunk-8.png); }
//  }
//  [zoom=11] { shield-min-distance: 60; } //50
//  [zoom=12] { shield-min-distance: 80; } //60
//  [zoom=13] { shield-min-distance: 120; } //120
//  [zoom=14] { shield-min-distance: 180; }
//}
*/
/*
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
*/



//#bike_routes[network='ncn'][zoom>=6],
#route_labels {
//  ::national[network='ncn'][zoom>=6],
  ::regional[network='rcn'][zoom>=10],
  ::local[network='lcn'][zoom>=12] {  
    text-name: '[name]';
    text-placement: line;
    text-face-name: @sans_lt;
    text-halo-fill: @road_halo;
    text-halo-radius: @label_halo_radius;
    text-min-distance: 100;
    text-avoid-edges: true;
		text-allow-overlap: false;
		text-min-padding: 100;
    text-max-char-angle-delta: 18;
    text-character-spacing: 0.5;
    text-spacing: 300;
		
		[zoom<17] { text-size: @rl5 * @label_scale; }
		[zoom>=17] { text-size: @rl3 * @label_scale; }
  }
//  ::national[network='ncn'][zoom>=6] { text-fill: hsl( 0, 100%, 80% ); }
  ::regional[network='rcn'][zoom>=10] { text-fill: hsl( 40, 100%, 40% ); }
  ::local[network='lcn'][zoom>=12]    { text-fill: hsl( 80, 100%, 35% ); }
	
}

// ferry route labels
#ferries {
  [zoom>=12] {  
    text-name: '[name]';
    text-placement: line;
    text-face-name: @sans_lt;
    text-halo-fill: @water;
    text-halo-radius: @label_halo_radius;
    text-min-distance: 100;
    text-avoid-edges: true;
    text-max-char-angle-delta: 18;
    text-character-spacing: 0.5;
    text-spacing: 300;
    text-size: @rl5 * @label_scale;
    text-fill: darken( @water, 40% );
  }
}

#way_label_bike {  
  ::text_11[zoom=11][sizegroup<=3],
  ::text_12[zoom=12][sizegroup<=4],
  ::text_13[zoom=13][sizegroup<=5],
  ::text_14[zoom=14][sizegroup<=5],
  ::text_15[zoom=15][sizegroup<=7],
  ::text_16[zoom=16][sizegroup<=7],
  ::text_17[zoom=17],
  ::text_18[zoom>=18] {
    text-name: '[name]';
    text-placement: line;
    text-face-name: @sans_lt;
    text-halo-fill: @road_halo;
    text-halo-radius: @label_halo_radius;
    text-min-distance: 60;
    text-avoid-edges: true;
    text-max-char-angle-delta: 18;
  }

  ::text_11[zoom=11][sizegroup<=2],
  ::text_12[zoom=12][sizegroup<=3],
  ::text_13[zoom=13][sizegroup<=3],
  ::text_14[zoom=14][sizegroup<=4],
  ::text_15[zoom=15][sizegroup<=6],
  ::text_16[zoom=16][sizegroup<=7],
  ::text_17[zoom=17],
  ::text_18[zoom>=18] {
    text-fill: @road_text;
  }

  ::text_11[zoom=11][sizegroup=3],
  ::text_12[zoom=12][sizegroup=4],
  ::text_13[zoom=13][sizegroup>=4][sizegroup<=5],
  ::text_14[zoom=14][sizegroup=5],
  ::text_15[zoom=15][sizegroup>=6][sizegroup<=7] {
    text-fill: @road_text_dim;
  }
  
  ::text_11[zoom=11] {
    [sizegroup<=2]               { text-size: @rl5 * @label_scale; }
    [sizegroup=3]                { text-size: @rl5 * @label_scale; }
  }
  ::text_12[zoom=12] {
    [sizegroup<=2]               { text-size: @rl4 * @label_scale; }
    [sizegroup=3]                { text-size: @rl5 * @label_scale; }
    [sizegroup=4]                { text-size: @rl5 * @label_scale; }
  }
  ::text_13[zoom=13] {
    [sizegroup<=3]               { text-size: @rl4 * @label_scale; }
    [sizegroup=4]                { text-size: @rl4 * @label_scale; }
    [sizegroup=5]                { text-size: @rl5 * @label_scale; }
  }
  ::text_14[zoom=14] {
    [sizegroup<=2]               { text-size: @rl3 * @label_scale; }
    [sizegroup=3]                { text-size: @rl3 * @label_scale; }
    [sizegroup=4]                { text-size: @rl4 * @label_scale; }
    [sizegroup=5]                { text-size: @rl4 * @label_scale; }
  }
  ::text_15[zoom=15] {
    [sizegroup<=3]               { text-size: @rl2 * @label_scale; }
    [sizegroup=4]                { text-size: @rl2 * @label_scale; }
    [sizegroup=5]                { text-size: @rl3 * @label_scale; }
    [sizegroup=6]                { text-size: @rl4 * @label_scale; }
    [sizegroup=7]                { text-size: @rl4 * @label_scale; }
  }
  ::text_16[zoom=16] {
    [sizegroup<=3]               { text-size: @rl1 * @label_scale; text-face-name: @sans; }
    [sizegroup=4]                { text-size: @rl1 * @label_scale; }
    [sizegroup=5]                { text-size: @rl2 * @label_scale; }
    [sizegroup=6]                { text-size: @rl3 * @label_scale; }
    [sizegroup=7]                { text-size: @rl4 * @label_scale; }
  }
  ::text_17[zoom=17] {
    [sizegroup<=3]               { text-size: @rl0 * @label_scale; text-face-name: @sans; }
    [sizegroup=4]                { text-size: @rl0 * @label_scale; }
    [sizegroup=5]                { text-size: @rl0 * @label_scale; }
    [sizegroup>=6][sizegroup<=7] { text-size: @rl1 * @label_scale; }
    [sizegroup>=8]               { text-size: @rl2 * @label_scale; }
  }
  ::text_18[zoom>=18] {
    [sizegroup<=3]               { text-size: @rl0 * @label_scale; text-face-name: @sans; }
    [sizegroup=4]                { text-size: @rl0 * @label_scale; }
    [sizegroup=5]                { text-size: @rl0 * @label_scale; }
    [sizegroup>=6][sizegroup<=7] { text-size: @rl1 * @label_scale; }
    [sizegroup>=8]               { text-size: @rl2 * @label_scale; }
  }
}

//oneway arrows
#way_label_bike[oneway!=0][modegroup='yes'] {
  ::oneway_16[zoom=16][sizegroup<=7],
  ::oneway_17[zoom=17],
  ::oneway_18[zoom>=18] {
    marker-placement: line;
    marker-max-error: 0.5;
    marker-spacing: 200;
    marker-file: url(markers/oneway.svg);
    [oneway=-1] { marker-file: url(markers/oneway_reverse.svg); }
    [zoom=16] { marker-transform: "scale(1)"; }
    [zoom>=17] { marker-transform: "scale(1.25)"; }
  }
}



