//stations

#station_nodes,
#station_polygons {
  ::icon_13[zoom=13] {
    marker-file: url("markers/square.svg");
    marker-height: 3;
    marker-placement: interior;
  }

  ::icon_14[zoom=14] {
    marker-file: url("markers/square.svg");
    marker-height: 4;
    marker-placement: interior;
  }

  ::icon_15[zoom>=15]
  {
    [metro=true][stog=true]   { marker-file: url("markers/metro_s-tog.svg"); }
    [metro=true][stog=false]  { marker-file: url("markers/metro.svg"); }
    [metro=false][stog=true]  { marker-file: url("markers/s-tog.svg"); }
    [metro=false][stog=false] { marker-file: url("markers/square.svg"); }

    [stog=true],
    [metro=true] {
      [zoom=15]  { marker-height: 14; }
      [zoom=16],
      [zoom=17]  { marker-height: 18; }
      [zoom>=18] { marker-height: 24; }
    }

    [metro=false][stog=false] {
      [zoom=15]  { marker-height: 6; }
      [zoom>=16] { marker-height: 7; }
    }

    marker-placement: interior;
  }

  ::label[zoom>=14]
  {
    text-placement: interior;
    //text-min-distance: 5;
    text-line-spacing: 0;
    text-wrap-width: @wrap_width;
    text-name: [name];
    text-face-name: @sans_lt;
    text-fill: @label;
    text-halo-fill: @label_halo_place_fill;
    text-halo-radius: @label_halo_radius;
    text-character-spacing: @char_spacing;

    text-placement-type: simple;
    text-placements: "E,W,S,N,SE,NE,SW,NW";
    [zoom=14]  { text-dx: 6; text-dy: 6; text-size: 10; }
    [zoom=15]  { text-dx: 14; text-dy: 12; text-size: 11; }
    [zoom=16],
    [zoom=17]  { text-dx: 18; text-dy: 16; text-size: 12; }
    [zoom>=18] { text-dx: 24; text-dy: 22; text-size: 14; }
  }
}