-- osm2pgsql lua docs: http://lists.openstreetmap.org/pipermail/dev/2013-May/026933.html

function Set (list)
  local set = {}
  for _, l in ipairs(list) do set[l] = true end
  return set
end

polygon_tags = {
	'landuse', 'amenity', 'historic', 'leisure', 'natural', 'place', 'shop', 
	'tourism', 'waterway', 'water', 'building', 'wetland', 'sport', 'public_transport', 
	'harbour', 'office', 'power', 'man_made', 'military', 'aeroway'
}

polygon_keys = { 'building', 'landuse', 'amenity', 'harbour', 'historic', 'leisure',
      'man_made', 'military', 'natural', 'office', 'place', 'power',
      'public_transport', 'shop', 'sport', 'tourism', 'waterway',
      'wetland', 'water', 'aeroway' }

generic_keys = {'access','addr:housename','addr:housenumber','addr:interpolation','admin_level','aerialway','aeroway','amenity','area','barrier',
   'bicycle','brand','bridge','boundary','building','capital','construction','covered','culvert','cutting','denomination','disused','ele',
   'embarkment','foot','generation:source','harbour','highway','historic','hours','intermittent','junction','landuse','layer','leisure','lock',
   'man_made','military','motor_car','name','natural','office','oneway','operator','place','poi','population','power','power_source','public_transport',
   'railway','ref','religion','route','service','shop','sport','surface','toll','tourism','tower:type', 'tracktype','tunnel','water','waterway',
   'wetland','width','wood','type','townhall','museum'}

cycle_highways={ footway=true, track=true, path=true, cycleway=true, bridleway=true }
designations = { public_bridleway=true, byway_open_to_all_traffic=true, restricted_byway=true, public_byway=true, permissive_bridleway=true, bridleway=true, byway=true, public_cycleway=true }
surfaces     = { asphalt=1, paved=1, concrete=1, tarmac=1, paving_stones=1,
	             compacted=2, gravel=2,
	             ground=3, earth=3, cobblestone=3, grass=3, unpaved=3, dirt=3, sand=3,
	             grade1=2, grade2=2, grade3=3, grade4=3, grade5=3 }
cycle_tags   = { 'cycle_solid', 'cycle_gravel', 'cycle_bumpy' }
waterway_tags= { basin=true, canal=true, dock=true, mill_pond=true, pond=true, riverbank=true, stream=true }
leisure_tags = { common=true, golf_course=true, park=true, pitch=true, sports_centre=true, stadium=true }

yes_values = Set { 'yes', '1', 'true' }
no_values = Set { 'no', '0', 'false' }

aeroway_areas = Set {
  'aerodrome',
  'helipad',
  'apron',
  'hangar',
  'runway',
  'terminal'
}

aeroways = Set {
  'runway',
  'taxiway'
}
railways = Set {
  'rail',
  'tram',
  'light_rail',
  'subway',
  'narrow_gauge',
  'preserved',
  'funicular',
  'monorail'
}

waterways = Set {
  'canal',
  'river',
  'stream',
  'drain',
  'ditch'
}

function unify(v)
	if yes_values[v] then
		return 1
	end
	return 0
end

function in_set(v,values)
  if values[v] then
    return true
  end
  return false
end

function sizegroup(tag)
	rank = {
		['motorway'] = 0,
    ['runway'] = 0,
		['trunk'] = 1,
		['primary'] = 2,
		['secondary'] = 3,
		['tertiary'] = 4,
		['motorway_link'] = 4,
		['trunk_link'] = 4,
		['primary_link'] = 4,
		['secondary_link'] = 4,
		['unclassified'] = 5,
		['tertiary_link'] = 5,
    ['taxiway'] = 5,
		['residential'] = 6,
		['living_street'] = 6,
		['pedestrian'] = 7,
		['cycleway'] = 7,
		['service'] = 7,
		['footway'] = 8,
		['path'] = 8,
		['track'] = 8,
		['road'] = 8,
		['minor'] = 8,
		['bridleway'] = 8
  }

  default = 8

  if tag and tag ~= "" then
		return rank[tag] or default
	else
		return default
	end
end

function modegroup(tags)
  -- Mode field, based on highway types and various other tags.
  -- 
  -- yes: you can bike
  -- push: you can push your bike
  -- no: you cannot ride or push a bike. includes both motorways and some paths in ex park
  -- rail: railways
  -- water: waterways


  if railways[tags['railway']] then
  	return 'rail'
  end

  if tags['route']=='ferry' then
    return 'ferry'
  end

  if waterways[tags['waterway']] then
    return 'water'
  end

  bikeable = Set {
  	'cycleway',
  	'path',
  	'track',
  	'minor',
  	'road',
  	'living_street',
  	'service',
  	'unclassified',
  	'residential',
  	'tertiary_link',
  	'tertiary',
  	'secondary_link',
  	'secondary',
  	'primary_link',
  	'primary'
  }

  pushable = Set {'footway','pedestrian','steps'}
  access_no = Set {'no','private','agricultural','forestery'}
  access_yes = Set {'yes','permissive','designated'}
  tracks_lanes = Set {'lane','track','opposite_lane','opposite_track' }
  foot_yes = Set {'yes','permissive','designated'}
  amenity_yes = Set {'parking','parking_entrance'}



	access = tags['bicycle'] or tags['access']
	
	-- access tag
  if access_no[access] then
		return 'no'
	end

  if access_yes[access] then
    return 'yes'
  end


  -- forbidden
  if tags['highway']=='construction' or tags['railway']=='construction' then
    return 'no'
  end

  cars_only = Set {
    'motorway',
    'motorway_link',
    'trunk',
    'trunk_link',
    'construction',
    'bridleway'
  }
  if cars_only[tags['highway']] then
    return 'no'
  end

  if tags['access']=='private' then
    return 'no'
  end

  if aeroways[tags['aeroway']] then
    return 'no'
  end

  -- ridable
	if bikeable[tags['highway']] then
		return 'yes'
	end

	if amenity_yes[tags['amenity']] then
		return 'yes'
	end

	if tracks_lanes[tags['cycleway']] or
		tracks_lanes[tags['cycleway:left']] or
		tracks_lanes[tags['cycleway:right']] then
		return 'yes'
	end

  -- pushable
	if pushable[tags['highway']] or
		tags['man_made']=='pier' or
		tags['railway']=='platform' or
		tags['public_transport']=='platform' or
		foot_yes[tags['foot']] then
		return 'push'
	end	

  -- unknown, don't show
	return nil
end

function placegroup(tags)
  if tags['place'] then
    if tags['population'] then
      population = tonumber(tags['population'])
      if     population>=1638400 then
        return 0
      elseif population>=409600 and population<1638400 then
        return 1
      elseif population>=102400 and population<409600 then
        return 2
      elseif population>=25600 and population<102400 then
        return 3
      elseif population>=6400 and population<25600 then
        return 4
      elseif population>=1600 and population<6400 then
        return 5
      elseif population>=400 and population<1600 then
        return 6
      elseif population>=100 and population<400 then
        return 7
      elseif population>=0 and population<100 then
        return 8
      end
    else
      place = tags['place']
      if place=='country' then
        return 0
      elseif false then
        return 1
      elseif place=='city' or tags['natural']=='wood' then
        return 2
      elseif false then
        return 3
      elseif place=='town' then
        return 4
      elseif place=='suburb' or place=='locality' then
        return 5
      elseif place=='neighbourhood' then
        return 6
      elseif place=='village' then
        return 7
      elseif place=='hamlet' then
        return 8
      end
    end

  else
    return nil
  end
end

function filter_tags_node (tags, nokeys)
  if nokeys==0 then
    return 1, {} 
  end

	tags["FIXME"] = nil
	tags["note"] = nil
	tags["source"] = nil
  tags['placegroup'] = placegroup(tags)

	return 0, tags
end

function filter_basic_tags_rel (tags, nokeys)
	filter = 0
	tagcount = 0
	for i,v in pairs(tags) do tagcount = tagcount + 1 end
	if tagcount == 0 then
		filter = 1
		return filter, tags
	end

	tags["FIXME"] = nil
	tags["note"] = nil
	tags["source"] = nil

	if ((tags["type"] ~= "route") and (tags["type"] ~= "multipolygon") and (tags["type"] ~= "boundary")) then
		filter = 1
		return filter, tags
	end

	return filter, tags
end

function is_waterarea(tags)
  waterway = Set {
    'riverbank'
  }
  if waterway[tags['waterway']] then
  	return 1
  end

 	natural = Set {
    'water'
  }
  if natural[tags['natural']] then
  	return 1
  end

 	landuse = Set {
    'basin',
    'reservoir'
  }
  if landuse[tags['landuse']] then
  	return 1
  end

  return 0
end

function is_landuse(tags)
  landuse = Set {
  	'park',
  	'forest',
  	'residential',
  	'retail',
  	'commercial',
  	'industrial',
  	'military',
  	'railway',
  	'cemetery',
  	'grass',
  	'field',
  	'pasture',
  	'farmyard',
  	'farm',
  	'farmland',
  	'farmyard',
  	'orchard',
  	'vineyard',
  	'meadow',
  	'village_green',
  	'recreation_ground',
  	'allotments',
  	'quarry',
  	'reservoir',
  	'construction'
  }
  if landuse[tags['landuse']] then
  	return 1
  end

  leisure = Set {
  	'park',
  	'garden',
  	'playground',
  	'recreation_ground',
  	'golf_course',
  	'sports_centre',
  	'pitch',
  	'stadium',
  	'common',
  	'nature_reserve'
  }
  if leisure[tags['leisure']] then
  	return 1
  end

  natural = Set {
    'wood',
    'land',
    'scrub',
    'wetland',
    'beach',
    'sand',
    'bare_rock',
    'fell',
    'heath',
    'mud',
    'bay',
    'scree'
  }
  if natural[tags['natural']] then
  	return 1
  end
 	
 	tourism = Set {
    'zoo'
  }
  if tourism[tags['tourism']] then
  	return 1
  end

  highway = Set {
    'pedestrian',
    'footway'
  }
  if highway[tags['highway']] then
  	return 1
  end

  amenity = Set {
    'university',
    'school',
    'college',
    'library',
    'fuel',
    'parking',
    'cinema',
    'theatre',
    'place_of_worship',
    'hospital',
    'grave_yard'
  }
  if amenity[tags['amenity']] then
  	return 1
  end

  place = {
    'island'
  }
  if place[tags['place']] then
  	return 1
  end

  if aeroway_areas[tags['aeroway']] then
  	return 1
  end

  return 0
end

function add_z_order(keyvalues)
   z_order = 0
   if (keyvalues["layer"] ~= nil ) then
      z_order = 10*keyvalues["layer"]
   end

   
   zordering_tags = {{ 'railway', nil, 5, 1}, { 'boundary', 'administrative', 0, 1},
      { 'bridge', 'yes', 10, 0 }, { 'bridge', 'true', 10, 0 }, { 'bridge', 1, 10, 0 },
      { 'tunnel', 'yes', -10, 0}, { 'tunnel', 'true', -10, 0}, { 'tunnel', 1, -10, 0},
      { 'highway', 'minor', 3, 0}, { 'highway', 'road', 3, 0 }, { 'highway', 'unclassified', 3, 0 },
      { 'highway', 'residential', 3, 0 }, { 'highway', 'tertiary_link', 4, 0}, { 'highway', 'tertiary', 4, 0},
      { 'highway', 'secondary_link', 6, 1}, { 'highway', 'secondary', 6, 1},
      { 'highway', 'primary_link', 7, 1}, { 'highway', 'primary', 7, 1},
      { 'highway', 'trunk_link', 8, 1}, { 'highway', 'trunk', 8, 1},
      { 'highway', 'motorway_link', 9, 1}, { 'highway', 'motorway', 9, 1},
}
   
   for i,k in ipairs(zordering_tags) do
      if ((k[2] and keyvalues[k[1]] == k[2]) or (k[2] == nil and keyvalues[k[1]] ~= nil)) then
         if (k[4] == 1) then
            roads = 1
         end
         z_order = z_order + k[3]
      end
   end

   keyvalues["z_order"] = z_order

   return keyvalues, roads
end

function compute_oneway(tags)
  oneway = tags["oneway"]
  oneway_bicycle = tags["oneway:bicycle"]
  junction = tags["junction"]
  highway = tags["highway"]
  implied_oneway = 0

  if junction=="roundabout" or highway=="motorway_link" or highway=="motorway" then
    implied_oneway = 1
  end

  if not oneway and not oneway_bicycle then
    return implied_oneway
  end

  if in_set(oneway_bicycle,yes_values) then
    return 1
  elseif in_set(oneway_bicycle,no_values) then
    return 0
  elseif oneway_bicycle == '-1' then
    return -1
  elseif in_set(oneway,no_values) then
    return 0
  end

  cycleway = tags["cycleway"]
  cycleway_left = tags["cycleway:left"]
  cycleway_right = tags["cycleway:right"]
  cycleways_forward = Set {'track','lane'}
  cycleways_backward = Set {'opposite','opposite_track','opposite_lane'}
  
  if in_set(cycleway,cycleways_backward) then
    if implied_oneway==1 then
      return -1
    else
      return 0
    end
  elseif in_set(cycleway_left,cycleways_forward) and in_set(cycleway_right,cycleways_forward) then
     return 0
  elseif in_set(cycleway_left,cycleways_forward) then
    if implied_oneway==1 then
      return -1
    else
      return 0
    end
  elseif in_set(cycleway_right,cycleways_forward) then
    if implied_oneway==1 then
      return 1
    else
      return 1        --      TODO is this correct?
    end
  elseif oneway == '-1' then
    return -1
  elseif in_set(oneway,yes_values) then
    return 1
  end

  return 0
end

function filter_tags_relation_member (keyvalues, keyvaluemembers, roles, membercount)
  filter = 0
  boundary = 0
  polygon = 0
  roads = 0
  membersuperseeded = {}
  for i = 1, membercount do
    membersuperseeded[i] = 1
  end

  type = keyvalues["type"]
  keyvalues["type"] = nil

  if (type == "boundary") then
    boundary = 1
  end
  if ((type == "multipolygon") and keyvalues["boundary"]) then
    boundary = 1
  elseif (type == "multipolygon") then
    polygon = 1
    polytagcount = 0
    for i,k in ipairs(polygon_keys) do
      if keyvalues[k] then
        polytagcount = polytagcount + 1
      end
    end
    
    -- copy tags from members
    for i = 1,membercount do
      if (roles[i] == "outer") then
        for k,v in pairs(keyvaluemembers[i]) do
          keyvalues[k] = v
        end
      end
    end
    
    -- TODO if an inner member in a multipolygon has tags that are not in the relation,
    -- then we should probably retain it, which seems to be what this code is doing:
    --for i = 1,membercount do
    --  for k,v in pairs(keyvaluemembers[i]) do
    --    if ((keyvalues[k] == nil) or (keyvalues[k] ~= v)) then
    --      for j,k2 in ipairs(generic_keys) do
    --        if (k == k2) then
    --          membersuperseeded[i] = 0
    --          break
    --        end
    --      end
    --    end
    --  end
    --end

    keyvalues['is_landuse'] = is_landuse(keyvalues)
    keyvalues['is_waterarea'] = is_waterarea(keyvalues)
--  elseif (type == "route") then
--    if keyvalues["route"] == 'bicycle' then
--    end
  end

  -- keyvalues, roads = add_z_order(keyvalues)

  return filter, keyvalues, membersuperseeded, boundary, polygon, roads
end

function filter_tags_generic(keyvalues, nokeys)
   filter = 0
   tagcount = 0

   if nokeys == 0 then
      filter = 1
      return filter, keyvalues
   end

   delete_tags = { 'FIXME', 'note', 'source', 'description' }

   for i,k in ipairs(delete_tags) do
      keyvalues[k] = nil
   end
   
   for k,v in pairs(keyvalues) do
      for i, k2 in ipairs(generic_keys) do if k2 == k then tagcount = tagcount + 1; end end
   end
   if tagcount == 0 then
      filter = 1
   end

   return filter, keyvalues
end

function filter_tags_way (keyvalues, nokeys)
  -- The first return value is filter, a flag which you should set to 1 if the way/node/relation 
  -- should be filtered out and not added to the database, 0 otherwise. 
  -- (They will still end up in the slim mode tables, but not in the rendering tables)

  -- The second return value is tags, a transformed (or unchanged) set of tags.

  -- filter_tags_way returns two additional flags. poly should be 1 if the way should 
  -- be treated as a polygon, 0 as a line. roads should be 1 if the way should be added 
  -- to the planet_osm_roads table, 0 otherwise.

  filter = 0
  poly = 0
  tagcount = 0
  roads = 0

  
  filter, keyvalues = filter_tags_generic(keyvalues, nokeys)
  if filter == 1 then
    return filter, keyvalues, poly, roads
  end

   
  if yes_values[keyvalues["area"]] then
    poly = 1
  elseif no_values[keyvalues["area"]] then
    poly = 0
  else
    for i,k in ipairs(polygon_keys) do
      if keyvalues[k] then
        poly=1
        break
      end
    end
  end

  -- determine mode
  keyvalues['modegroup'] = modegroup(keyvalues)

  -- filter away unroutable lines like fences, etc
  if poly==0 and keyvalues['modegroup']==nil then
    return 1, keyvalues, poly, roads
  end


  -- filter out unwanted lines
  --if (not tags['highway'] or tags['highway'] == '') and
  --  (not tags['route'] or tags['route'] == '') and
  --  (not tags['railway'] or tags['railway']=='') and
  --  (not tags['amenity'] or tags['amenity']=='') and
  --  (not tags['man_made'] or tags['man_made']=='') and
  --    (not tags['public_transport'] or tags['public_transport']=='')
  --    then
  --  return 1, [], 0, 0
  --end

  -- determine landuses and waterareas
  if poly==1 then
    keyvalues['is_landuse'] = is_landuse(keyvalues)
    keyvalues['is_waterarea'] = is_waterarea(keyvalues)
  end
  -- determine mode
  keyvalues['sizegroup'] = sizegroup(keyvalues['highway'] or keyvalues['aeroway'])
  
  -- determine oneway
  keyvalues['oneway'] = compute_oneway(keyvalues)

  -- unify tunnel and bridge tags
  keyvalues['tunnel'] = unify(keyvalues['tunnel'])
  keyvalues['bridge'] = unify(keyvalues['bridge'])

  --keyvalues, roads = add_z_order(keyvalues)

  -- place big roads in low-zoom 'planet_osm_roads' table
  if keyvalues['sizegroup'] <= 4 then
    roads = 1
  end
  
  return filter, keyvalues, poly, roads
end
