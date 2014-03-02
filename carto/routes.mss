// routes

@route_width_2: 0.8;
@route_width_1: 1.0;
@route_width_0: 1.5;

@route_casing_width: 1.2;

#bike_routes {
/*
  ::national[network='ncn'][zoom>=8] {
    line-color: hsl( 0, 100%, 85% );
    line-width: 2;
		comp-op: multiply;
  }
*/
	
  ::local_casing[network='lcn'][zoom>=12],
	::regional_casing[network='rcn'][zoom>=10]
  {
    line-color: hsl(0,0%,60%);
    line-join: round;
	  [zoom>=10][zoom<12]	{ line-width: @route_width_2 + 2*@route_casing_width; }
	  [zoom>=12][zoom<14]	{ line-width: @route_width_1 + 2*@route_casing_width; }
		[zoom>=14]          { line-width: @route_width_0 + 2*@route_casing_width; }
		comp-op: screen;
  }

  ::local[network='lcn'][zoom>=12] {
    line-color: hsl( 80, 100%, 45% );
  }

  ::regional[network='rcn'][zoom>=10] {
    line-color: hsl( 40, 100%, 70% );
  }

  ::local[network='lcn'][zoom>=12],
  ::regional[network='rcn'][zoom>=10] {
	  [zoom>=10][zoom<12]	{ line-width: @route_width_2; }
	  [zoom>=12][zoom<14]	{ line-width: @route_width_1; }
		[zoom>=14]          { line-width: @route_width_0; }
  }

}
