// buildings
#buildings[zoom>=15] { 
  line-width:0;

  //[zoom>=15] { polygon-fill: mix( @residential, @building, 40% ); }
  [zoom=16] { polygon-fill: mix( @land, @building,30% ); }
  [zoom>=17] { polygon-fill: @building; }

  [railway='station'],
  [aeroway='terminal'],
  [amenity='theatre'],
  [amenity='hospital'],
  [amenity='public_building'],
  [amenity='place_of_worship'],
  [amenity='church'],
  [amenity='townhall'],
  [amenity='library'],
  [amenity='mall'] {
     [zoom=15][way_area>=3200] { polygon-fill: @big_building; }
     [zoom=16][way_area>=800]  { polygon-fill: @big_building; }
     [zoom=17][way_area>=200]  { polygon-fill: @big_building; }
     [zoom>=18]                { polygon-fill: @big_building; }
  }
}

