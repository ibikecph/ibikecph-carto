// waterways

@waterway_width: 1;

#waterway::low[zoom>=8][zoom<=12] {
  [waterway='river'],
  [waterway='canal'] {
    line-color: @water;
    [zoom=8] { line-width: 0.1 * @waterway_width; }
    [zoom=9] { line-width: 0.2 * @waterway_width; }
    [zoom=10]{ line-width: 0.4 * @waterway_width; }
    [zoom=11]{ line-width: 0.6 * @waterway_width; }
    [zoom=12]{ line-width: 0.8 * @waterway_width; }
  }
}

#waterway::med[zoom>=13][zoom<=14] {
  [waterway='river'],
  [waterway='canal'] {
    line-color: @water;
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1.0 * @waterway_width; }
    [zoom=14]{ line-width: 1.5 * @waterway_width; }
  }
  [waterway='stream'] {
    line-color: @water;
    [zoom=13]{ line-width: 0.3 * @waterway_width; }
    [zoom=14]{ line-width: 0.5 * @waterway_width; }
  }
}
  
#waterway::high[zoom>=15] {
  line-color: @water;
  [waterway='river'],
  [waterway='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=15]{ line-width: 2.0 * @waterway_width; }
    [zoom=16]{ line-width: 3.0 * @waterway_width; }
    [zoom=17]{ line-width: 4.0 * @waterway_width; }
    [zoom=18]{ line-width: 5.0 * @waterway_width; }
    [zoom=19]{ line-width: 6.0 * @waterway_width; }
    [zoom>19]{ line-width: 7.0 * @waterway_width; }
  }
  [waterway='stream'] {
    [zoom=15]{ line-width: 0.6 * @waterway_width; }
    [zoom=16]{ line-width: 0.8 * @waterway_width; }
    [zoom=17]{ line-width: 1.0 * @waterway_width; }
    [zoom=18]{ line-width: 1.5 * @waterway_width; }
    [zoom>18]{ line-width: 2.0 * @waterway_width; }
  }
  [waterway='ditch'],
  [waterway='drain'] {
    [zoom=15]{ line-width: 0.2 * @waterway_width; }
    [zoom=16]{ line-width: 0.3 * @waterway_width; }
    [zoom=17]{ line-width: 0.5 * @waterway_width; }
    [zoom=18]{ line-width: 0.7 * @waterway_width; }
    [zoom=19]{ line-width: 1.0 * @waterway_width; }
    [zoom>19]{ line-width: 1.5 * @waterway_width; }
  }
}
