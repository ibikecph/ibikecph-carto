create index polygon_modegroup on planet_osm_polygon (highway);
create index polygon_area on planet_osm_polygon (way_area);
create index polygon_is_landuse on planet_osm_polygon (is_landuse);
create index polygon_is_waterarea on planet_osm_polygon (is_waterarea);
create index polygon_name on planet_osm_polygon (name);
create index polygon_geometry on planet_osm_polygon USING GIST(way);

create index line_modegroup on planet_osm_line (highway);
create index line_modegroup on planet_osm_line (modegroup);
create index line_building on planet_osm_line (building);
create index line_tunnel on planet_osm_line (tunnel);
create index line_bridge on planet_osm_line (bridge);
create index line_route on planet_osm_line (route);
create index line_ref on planet_osm_line (ref);
create index line_length on planet_osm_line (ST_Length(way));
create index line_geometry on planet_osm_line USING GIST(way);

create index road_modegroup on planet_osm_roads (highway);
create index road_geometry on planet_osm_roads USING GIST(way);
create index road_modegroup on planet_osm_roads (modegroup);
create index road_sizegroup on planet_osm_roads (sizegroup);

create index point_placegroup on planet_osm_point (placegroup);
create index point_name on planet_osm_point (name);
create index point_railway on planet_osm_point (railway);
create index point_barrier on planet_osm_point (barrier);
create index point_highway on planet_osm_point (LOWER(network));
