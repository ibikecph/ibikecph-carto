//label settings
@label_scale: 1.0;
@label_halo_radius: 1.0;
@char_spacing: 0.3;
@line_spacing: 0.5;
@text_distance: 15;
@place_scale: 1.2;
@wrap_width: 50;
@text_step: 1.2;

@ps0: 8.0 *  @place_scale;
@ps1: @ps0 * @text_step;
@ps2: @ps1 * @text_step;
@ps3: @ps2 * @text_step;
@ps4: @ps3 * @text_step;
@ps5: @ps4 * @text_step;
@ps6: @ps5 * @text_step;

@ls_2a:  @ps0;
@ls_3a:  @ps0;
@ls_3a:  @ps0;
@ls_4a:  @ps1;   @ls_4b:  @ps0;
@ls_5a:  @ps2;   @ls_5b:  @ps1;   @ls_5c:  @ps0;
@ls_6a:  @ps3;   @ls_6b:  @ps1;   @ls_6c:  @ps1;    @ls_6d:  @ps0;   
@ls_7a:  @ps4;   @ls_7b:  @ps2;   @ls_7c:  @ps2;    @ls_7d:  @ps1;   @ls_7e:  @ps0;
@ls_8a:  @ps4;   @ls_8b:  @ps2;   @ls_8c:  @ps2;    @ls_8d:  @ps1;   @ls_8e:  @ps0;  @ls_8f:  @ps0; 
@ls_9a:  @ps4;   @ls_9b:  @ps3;   @ls_9c:  @ps2;    @ls_9d:  @ps2;   @ls_9e:  @ps1;  @ls_9f:  @ps0;  @ls_9g:  @ps0;
@ls_10a: @ps5;   @ls_10b: @ps3;   @ls_10c: @ps2;    @ls_10d: @ps2;   @ls_10e: @ps1;  @ls_10f: @ps0;  @ls_10g: @ps0;  @ls_10h: @ps0;
@ls_11a: @ps5;   @ls_11b: @ps4;   @ls_11c: @ps3;    @ls_11d: @ps2;   @ls_11e: @ps1;  @ls_11f: @ps0;  @ls_11g: @ps0;  @ls_11h: @ps0;
@ls_12a: @ps5;   @ls_12b: @ps4;   @ls_12c: @ps3;    @ls_12d: @ps3;   @ls_12e: @ps1;  @ls_12f: @ps0;  @ls_12g: @ps0;  @ls_12h: @ps0;
@ls_13a: @ps6;   @ls_13b: @ps4;   @ls_13c: @ps3;    @ls_13d: @ps3;   @ls_13e: @ps2;  @ls_13f: @ps1;  @ls_13g: @ps0;  @ls_13h: @ps0;  @ls_13i: @ps0;
@ls_14a: @ps6;   @ls_14b: @ps5;   @ls_14c: @ps4;    @ls_14d: @ps3;   @ls_14e: @ps2;  @ls_14f: @ps1;  @ls_14g: @ps0;  @ls_14h: @ps0;  @ls_14i: @ps0;
@ls_15a: @ps6;   @ls_15b: @ps5;   @ls_15c: @ps4;    @ls_15d: @ps3;   @ls_15e: @ps2;  @ls_15f: @ps1;  @ls_15g: @ps1;  @ls_15h: @ps0;  @ls_15i: @ps0;


// fonts and colors
Map { font-directory: url("fonts"); }

@sans_lt:           "Open Sans Regular";
@sans_lt_italic:    "Open Sans Italic";
@sans:              "Open Sans Semibold";
@sans_italic:       "Open Sans Semibold Italic";
@sans_bold:         "Open Sans Bold";
@sans_bold_italic:  "Open Sans Bold Italic";



// landuses
@overlay_mix: 50%;

@land:              hsl(42.9, 33.3%, 91.8%);
@water:             hsl(197.9, 100%, 77.6%);
@brown:             hsl(35, 80%, 70% );
@green:             hsl(69.8, 100%, 47.8%);
@park:              @green;
@meadow:            @green;
@wood:              darken(@green,1%);
@grass:             lighten(@green,1%);
@orchard:           @green;

@agriculture:       mix( @green, @land, 50% );

@beach:             hsl( 50, 80%, 90% );
@sand:              darken( @beach, 10% );
@cemetery:          @park;

@school:            darken( @land, 3% );
@sports:            @park;
@playground:        @land; //yellow;
@zoo:               @sand;
@garden:            @park;

@residential:       darken( @land, 1.5% );
@commercial:        @residential * 0.97;
@industrial:        @residential * 0.96;
@parking:           @residential * 0.95;
@aeroway:           hsl( 300, 15%, 90% );
@construction:      hsl(255, 30%, 93%);
@construction_barrier:	 darken( @construction, 5% );

@building:          desaturate( darken( @land, 4% ), 10% );
@big_building:      darken( @building, 6% );

@hospital:          hsl( 200, 40%, 95% );


// road colors
@casing_shift: 15%;

@debug: 0%;
@case_darken: 20%;
@tunnel_dash: 4,4;

@cbike: white;
@cbike_case: darken( darken( @cbike, @case_darken ), @debug );
@cbike_small: mix( @cbike, @land, 75% );
@cbike_tunnel: mix( @cbike, @land, 60% );
@cbike_line: darken( @land, 8% );
@cbike_line_dark: darken( @land, 10% );
@cbike_line_tunnel: lighten( @cbike, 5% );
@cbike_line_case: mix( @cbike_case, @cbike, 70% );

@caero: hsl( 300, 30%, 90% );
@caero_case: darken( @caero, 4% );
@caero_line: mix( @caero_case, @aeroway, 60% );

@ccar: hsl(0, 100%, 94%);
@ccar_tunnel: mix( @ccar, @land, 60% );
@ccar_line_tunnel: #ddd;
@ccar_case: darken( @ccar, 5% );
@ccar_line: mix( @ccar_case, @land, 30% );

@cfoot: hsl(55, 100%, 70%);
@cfoot_case: darken( @cfoot, 25% );
@cfoot_line: hsl(52, 100%, 50% );
@cfoot_line_dark: hsl(52, 100%, 50% );
@pedestrian_fill: hsl(55, 100%, 60%);
@cfoot_area_case: darken( @pedestrian_fill, 15% );

@cobblestone: darken( @land, 3% );
@cob_scale: 1.5;
@cob_placement: 0.2;

@csteps: darken( @land, 25% );

@crailway: hsl( 0, 0%, 80% );
@crailway_tunnel: hsl( 0, 0%, 80% );
@crailway_hatch: hsl( 0, 0%, 80% );

@cferry: darken( @water, 15% );

@ccycletrack: hsl( 0, 0%, 98%);
@ccyclelane: hsl( 0, 0%, 98%);
@cycletrack_width: 0.6;
@cyclelane_dash: 10,2;

// label colors
@road_text:         black;
@road_text_dim:     lighten( @road_text, 30% );
@road_text_car:     mix( @road_text, @ccar, 30% );
@road_halo:         white;

@label: black;
@label_light: mix( @label, @land, 80% );
@label_dim: mix( @label, @land, 90% );
@label_halo_place_fill: lighten( @land, 5% );
