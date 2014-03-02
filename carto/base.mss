//base

//first draw water everywhere
Map {
  background-color: @water;
  
  // increase to avoid anomalities at the edges
  buffer-size: 256;
}

//then draw land
#land[zoom>=0][zoom<6],
#shoreline[zoom>=6][zoom<10],
#coastline[zoom>=10] {
  polygon-gamma: 0.75;
  polygon-fill: @land;
}
