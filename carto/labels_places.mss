//place labels
#place
{
  ::place_a[zoom>=2][zoom<=7] {
    [placegroup=0] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans;
      text-fill: @label;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;

      [zoom=2] { text-size: @ls_2a; text-fill: @label_dim; }
      [zoom=3] { text-size: @ls_3a; }
      [zoom=4] { text-size: @ls_4a; }
      [zoom=5] { text-size: @ls_5a; }
      [zoom=6] { text-size: @ls_6a; }
      [zoom=7] { text-size: @ls_7a; }
      
      [place='neighbourhood'], [place='suburb'] { text-fill: @label_light; }
      [place='island'],[place='islet'],[place='locality'] { text-transform: none; text-face-name: @sans_lt_italic; }
    }
  }

  ::place_b[zoom>=4][zoom<=15] {
    [placegroup=1] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans;
      text-fill: @label;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;

      [zoom=4] { text-size: @ls_4b; text-fill: @label_dim; }
      [zoom=5] { text-size: @ls_5b; }
      [zoom=6] { text-size: @ls_6b; }
      [zoom=7] { text-size: @ls_7b; }
      [zoom=8] { text-size: @ls_8b; }
      [zoom=9] { text-size: @ls_9b; }
      [zoom=10] { text-size: @ls_10b; }
      [zoom=11] { text-size: @ls_11b; }
      [zoom=12] { text-size: @ls_12b; text-fill: @label_dim; }
      [zoom=13] { text-size: @ls_13b; text-fill: @label_dim; }
      [zoom=14] { text-size: @ls_14b; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
      [zoom=15] { text-size: @ls_15b; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }

      [place='neighbourhood'], [place='suburb'] { text-fill: @label_light; }
      [place='island'],[place='islet'],[place='locality'] { text-transform: none; text-face-name: @sans_lt_italic; }
    }
  }
  
  ::place_c[zoom>=5][zoom<=15] {
    [placegroup=2] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans_lt;
      text-fill: @label;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;

      [zoom=5] { text-size: @ls_5c; text-fill: @label_dim;  }
      [zoom=6] { text-size: @ls_6c; }
      [zoom=7] { text-size: @ls_7c; }
      [zoom=8] { text-size: @ls_8c; }
      [zoom=9] { text-size: @ls_9c; }
      [zoom=10] { text-size: @ls_10c; }
      [zoom=11] { text-size: @ls_11c; }
      [zoom=12] { text-size: @ls_12c; text-fill: @label_dim; }
      [zoom=13] { text-size: @ls_13c; text-fill: @label_dim; }
      [zoom=14] { text-size: @ls_14c; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
      [zoom=15] { text-size: @ls_15c; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
  
      [place='neighbourhood'], [place='suburb'] { text-fill: @label_light; }
      [place='island'],[place='islet'],[place='locality'] { text-transform: none; text-face-name: @sans_lt_italic; }
    }
  }
  
  ::place_d[zoom>=6][zoom<=15] {
    [placegroup=3] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans_lt;
      text-fill: @label;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;

      [zoom=6] { text-size: @ls_6d; text-fill: @label_dim; }
      [zoom=7] { text-size: @ls_7d; }
      [zoom=8] { text-size: @ls_8d; }
      [zoom=9] { text-size: @ls_9d; }
      [zoom=10] { text-size: @ls_10d; }
      [zoom=11] { text-size: @ls_11d; }
      [zoom=12] { text-size: @ls_12d; }
      [zoom=13] { text-size: @ls_13d; }
      [zoom=14] { text-size: @ls_14d; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
      [zoom=15] { text-size: @ls_15d; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
    
      [place='neighbourhood'], [place='suburb'] { text-fill: @label_light; }
      [place='island'],[place='islet'],[place='locality'] { text-transform: none; text-face-name: @sans_lt_italic; }
    }
  }
  
  ::place_e[zoom>=7][zoom<=15] {
    [placegroup=4] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans_lt;
      text-fill: @label;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;

      [zoom=7] { text-size: @ls_7e; text-fill: @label_dim; }
      [zoom=8] { text-size: @ls_8e; }
      [zoom=9] { text-size: @ls_9e; }
      [zoom=10] { text-size: @ls_10e; }
      [zoom=11] { text-size: @ls_11e; }
      [zoom=12] { text-size: @ls_12e; }
      [zoom=13] { text-size: @ls_13e; }
      [zoom=14] { text-size: @ls_14e; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
      [zoom=15] { text-size: @ls_15e; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
    
      [place='neighbourhood'], [place='suburb'] { text-fill: @label_light; }
      [place='island'],[place='islet'],[place='locality'] { text-transform: none; text-face-name: @sans_lt_italic; }
    }
  }
  
  ::place_f[zoom>=8][zoom<=15] {
    [placegroup=5] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans_lt;
      text-fill: @label;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;

      [zoom=8] { text-size: @ls_8f; text-fill: @label_dim; }
      [zoom=9] { text-size: @ls_9f; }
      [zoom=10] { text-size: @ls_10f; }
      [zoom=11] { text-size: @ls_11f; }
      [zoom=12] { text-size: @ls_12f; }
      [zoom=13] { text-size: @ls_13f; }
      [zoom=14] { text-size: @ls_14f; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
      [zoom=15] { text-size: @ls_15f; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
    
      [place='neighbourhood'], [place='suburb'] { text-fill: @label_light; }
      [place='island'],[place='islet'],[place='locality'] { text-transform: none; text-face-name: @sans_lt_italic; }
    }
  }

  ::place_g[zoom>=9][zoom<=15] {
    [placegroup=6] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans_lt;
      text-fill: @label;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;
      
      [zoom=9] { text-size: @ls_9g; text-fill: @label_dim; }
      [zoom=10] { text-size: @ls_10g; text-fill: @label_dim; }
      [zoom=11] { text-size: @ls_11g; }
      [zoom=12] { text-size: @ls_12g; }
      [zoom=13] { text-size: @ls_13g; }
      [zoom=14] { text-size: @ls_14g; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
      [zoom=15] { text-size: @ls_15g; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
    
      [place='neighbourhood'], [place='suburb'] { text-fill: @label_light; }
      [place='island'],[place='islet'],[place='locality'] { text-transform: none; text-face-name: @sans_lt_italic; }
    }
  }

  ::place_h[zoom>=11][zoom<=15] {
    [placegroup=7] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans_lt;
      text-fill: @label;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;
      
      [zoom=11] { text-size: @ls_11h; text-fill: @label_dim;  }
      [zoom=12] { text-size: @ls_12h; }
      [zoom=13] { text-size: @ls_13h; }
      [zoom=14] { text-size: @ls_14h; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
      [zoom=15] { text-size: @ls_15h; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
    
      [place='neighbourhood'], [place='suburb'] { text-fill: @label_light; }
      [place='island'],[place='islet'],[place='locality'] { text-transform: none; text-face-name: @sans_lt_italic; }
    }
  }

  ::place_i[zoom>=14][zoom<=15] {
    [placegroup=8] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans_lt;
      text-fill: @label;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;
      
      [zoom=14] { text-size: @ls_14i; text-transform: uppercase; text-fill: @label_dim; text-face-name: @sans; }
      [zoom=15] { text-size: @ls_15i; text-transform: uppercase; text-fill: @label_light; text-face-name: @sans; }
    
      [place='neighbourhood'], [place='suburb'] { text-fill: @label_light; }
      [place='island'],[place='islet'],[place='locality'] { text-transform: none; text-face-name: @sans_lt_italic; }
    }
  }
  
  ::island[zoom>=10][zoom<=15] {
    [place='island'] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans_lt_italic;
      text-fill: @label_dim;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;
      
      [zoom=10] { text-size: @ls_10f; text-fill: @label_light; }
      [zoom=11] { text-size: @ls_11f; }
      [zoom=12] { text-size: @ls_12f; }
      [zoom=13] { text-size: @ls_13f; }
      [zoom=14] { text-size: @ls_14f; }
      [zoom=15] { text-size: @ls_15f; }
    }
  }

  ::islet[zoom>=12][zoom<=15] {
    [place='islet'] {
      text-min-distance: @text_distance;
      text-line-spacing: @line_spacing;
      text-wrap-width: @wrap_width;
      text-name: [name];
      text-face-name: @sans_lt_italic;
      text-fill: @label_dim;
      text-halo-fill: @label_halo_place_fill;
      text-halo-radius: @label_halo_radius;
      text-character-spacing: @char_spacing;
      text-allow-overlap: false;
      
      [zoom=14] { text-size: @ls_14g; text-fill: @label_light; }
      [zoom=15] { text-size: @ls_15g; }
    }
  }

}
 