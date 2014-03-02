# download and unzip data files
fetch_data: data/10m-land.shp data/coastline-good.shp data/shoreline_300.shp


# unzip 
data/10m-land.shp: data/10m-land.zip
	unzip -n data/10m-land.zip -d data
	touch data/10m-land.shp

data/coastline-good.shp: data/coastline-good.zip
	unzip -n data/coastline-good.zip -d data
	touch data/coastline-good.shp

data/shoreline_300.shp: data/shoreline_300.zip
	unzip -n data/shoreline_300.zip -d data
	touch data/shoreline_300.shp

# download
data/10m-land.zip: data
	curl http://mapbox-geodata.s3.amazonaws.com/natural-earth-1.4.0/physical/10m-land.zip -o data/10m-land.zip
	touch data/10m-land.zip


data/coastline-good.zip: data
	curl tilemill-data.s3.amazonaws.com/osm/coastline-good.zip -o data/coastline-good.zip
	touch data/10m-land.zip

data/shoreline_300.zip: data
	curl http://tilemill-data.s3.amazonaws.com/osm/shoreline_300.zip -o data/shoreline_300.zip
	touch data/10m-land.zip

data:
	mkdir -p data