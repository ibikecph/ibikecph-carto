//waterway labels

#waterway_label[waterway='river'][zoom>=13],
#waterway_label[waterway='canal'][zoom>=15],
#waterway_label[waterway='stream'][zoom>=17] {
  text-name: "[name]";
  text-face-name: @sans_italic;
  text-fill: @water * 0.75;
  text-halo-fill: @label_halo_place_fill;
  text-halo-radius: @label_halo_radius;
  text-placement: line;
  text-size: @ps0;
  text-dy: @ps0;
  //text-spacing: 400;
  //text-min-path-length: 200;
  //text-label-position-tolerance: 200;
  //text-min-distance: 400;
  
  text-max-char-angle-delta: 18;
    
  [waterway='river'][zoom=14],
  [waterway='canal'][zoom=16],
  [waterway='stream'][zoom>=18] {
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [waterway='river'][zoom=15],
  [waterway='canal'][zoom=17] {
    text-size: @ps1;
    text-dy: @ps1;
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [waterway='river'][zoom>=16],
  [waterway='canal'][zoom>=18] {
    text-size: @ps2;
    text-dy: @ps2;
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
}
