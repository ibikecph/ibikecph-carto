// markers

// barriers
#poi[zoom>=16]
{
  [barrier='cycle_barrier'],
  [barrier='kissing_gate']
  {
    marker-file: url("markers/cycle_barrier.svg");
    [zoom=16] { marker-height: 4; }
    [zoom>=17] { marker-height: 6; }
  }
}


// traffic signals
#poi[highway='traffic_signals'][zoom>=17]
{
  marker-file: url("markers/signal.svg");
  [zoom=17] { marker-height: 14; }
  [zoom>=18] { marker-height: 16; }
  marker-opacity: 0.8;
}
