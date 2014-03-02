// railways

//HIGH ZOOM

#railway_tunnel {
  ::line[zoom>=11] {
    line-width: 1;
    line-color: @crailway_tunnel;
    line-dasharray: 6,6;
  }
}

#railway_ground {
  ::line[zoom>=11] {
    line-width: 1;
    line-color: @crailway;
  }
}

#railway_ground {
  ::hatch[zoom>=11][zoom<=12] {
    line-width: 2;
    line-color: @crailway_hatch;
    line-dasharray: 1, 15;
  }
  ::hatch[zoom>=13] {
    line-width: 4;
    line-color: @crailway_hatch;
    line-dasharray: 1, 31;
  }
}
